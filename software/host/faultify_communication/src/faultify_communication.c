/* faultify 2014 david may */
#include "faultify_communication.h"

int8_t faultify_comm_init(struct faultify_handle **ftx) {
  
  struct faultify_handle *fh = (struct faultify_handle*) calloc(1,sizeof(struct faultify_handle));
  if (!fh) {
    return 1;
  }
  // socket
  fh->sockfd = socket(AF_INET, SOCK_STREAM, 0);
  if (fh->sockfd < 0) {
    return 1;
  }

  // timeout
  struct timeval tv;

  tv.tv_sec = 20;  // 5 sec too much/less?
  tv.tv_usec = 0;  
  setsockopt(fh->sockfd, SOL_SOCKET,
	     SO_RCVTIMEO, (char *)&tv,
	     sizeof(struct timeval));

  fh->version_host_software[0] = HOST_SW_VER_MAJOR;
  fh->version_host_software[1] = HOST_SW_VER_MINOR;

  *ftx = fh;
  return 0;
}

int8_t faultify_comm_connect(struct faultify_handle *ftx) {

  ftx->portno = 7;
  ftx->server = gethostbyname("192.168.1.10");
  if (ftx->server == NULL) {
    return 1;
  }
  bzero((char *) &ftx->serv_addr, sizeof(ftx->serv_addr));
  ftx->serv_addr.sin_family = AF_INET;
  bcopy((char *)ftx->server->h_addr, 
	(char *)&ftx->serv_addr.sin_addr.s_addr,
	ftx->server->h_length);
  ftx->serv_addr.sin_port = htons(ftx->portno);
  
  fprintf(stderr,"connecting to %s \n",inet_ntoa(ftx->serv_addr.sin_addr));

  if (connect(ftx->sockfd,(struct sockaddr *) &ftx->serv_addr,sizeof(ftx->serv_addr)) < 0) {
    return 1;
  }
  
  return 0;
}


int8_t faultify_comm_disconnect(struct faultify_handle *ftx) { 
  close(ftx->sockfd);
  return 0;
}


int8_t faultify_comm_identify(struct faultify_handle *ftx) {
  uint8_t send_buffer[16];
  bzero(send_buffer,16);
  uint8_t recv_buffer[20];
  bzero(recv_buffer,20);

  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_identify);
  
  // req/answ
  send_buffer[10] = 0x01;

  // last 
  send_buffer[11] = 0x01;

  // length 
  faultify_packet_set_packet_length(send_buffer,0);


  int r;
  
  r = write(ftx->sockfd,send_buffer,16);
  if (r<0) {
    return 1;
  }

  r = read(ftx->sockfd,recv_buffer,20);
  if (r < 0) 
    printf("ERROR reading from socket");
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }

  if (cmd_identify != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }

  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }

  if (faultify_packet_check_length(recv_buffer)!= 4) {
    printf("ERROR wrong response length\n");
  }
  
  ftx->version_fpga_software[0] = recv_buffer[16];
  ftx->version_fpga_software[1] = recv_buffer[17];
  ftx->version_fpga_hardware[0] = recv_buffer[18];
  ftx->version_fpga_hardware[1] = recv_buffer[19];
  /*
  int i;
  for (i=0;i<20;i++) {
    printf("%X ",recv_buffer[i]);
  }
  printf("\n");
  */
  return 0;
}



uint8_t faultify_packet_check_sequence(uint8_t *data) {
  if (!(data[0] == ((MAGIC_NR_LOW>>24) & 0xFF) &&
	data[1] == ((MAGIC_NR_LOW>>16) & 0XFF) &&
	data[2] == ((MAGIC_NR_LOW>>8 ) & 0xFF) &&
	data[3] == ((MAGIC_NR_LOW   ) & 0xFF) &&
	data[4] == ((MAGIC_NR_HIGH>>24) & 0xFF) &&
	data[5] == ((MAGIC_NR_HIGH>>16) & 0Xff) &&
	data[6] == ((MAGIC_NR_HIGH>>8) & 0Xff) &&
	data[7] == ((MAGIC_NR_HIGH) & 0xFF))) {
    return 1;
  }
  return 0;

}

enum commands faultify_packet_check_cmd_type(uint8_t *data) {
  /* command type */
  unsigned int cmd_cat;
  cmd_cat = data[8];
  cmd_cat <<= 8;
  cmd_cat |= data[9];
  return (enum commands)cmd_cat;
}


uint32_t faultify_packet_check_length(uint8_t *data) {
  return ( ((uint32_t)data[12] << 24) |
	   ((uint32_t)data[13] << 16) | 
	   ((uint32_t)data[14] << 8 ) |
	    (uint32_t)data[15]           );

}

uint8_t faultify_packet_set_magic_number(uint8_t *data) {
  // magic number
  data[0] = (MAGIC_NR_LOW >> 24) & 0xff;
  data[1] = (MAGIC_NR_LOW >> 16) & 0xff;
  data[2] = (MAGIC_NR_LOW >> 8) & 0xff;
  data[3] = (MAGIC_NR_LOW >> 0) & 0xff;
  data[4] = (MAGIC_NR_HIGH >> 24) & 0xff;
  data[5] = (MAGIC_NR_HIGH >> 16) & 0xff;
  data[6] = (MAGIC_NR_HIGH >> 8) & 0xff;
  data[7] = (MAGIC_NR_HIGH >> 0) & 0xff;
  return 0;
}

uint8_t faultify_packet_set_packet_type(uint8_t *data,enum commands cmd){

  data[8] = ((uint16_t)cmd >> 8) & 0xFF;
  data[9] = ((uint16_t)cmd >> 0) & 0xFF;
  return 0;
}

uint8_t faultify_packet_set_packet_length(uint8_t *data,uint32_t len){
  data[12] = (uint8_t)(len >> 24) & 0xff;
  data[13] = (uint8_t)(len >> 16) & 0xff;
  data[14] = (uint8_t)(len >> 8) & 0xff;
  data[15] = (uint8_t)(len) & 0xff;
  return 0; 
}

uint8_t faultify_packet_set_cycles(uint8_t *data,uint32_t cycles){
  data[16] = (uint8_t)(cycles >> 24) & 0xff;
  data[17] = (uint8_t)(cycles >> 16) & 0xff;
  data[18] = (uint8_t)(cycles >> 8) & 0xff;
  data[19] = (uint8_t)(cycles) & 0xff;
  return 0;   
}

int8_t faultify_comm_speed_test(struct faultify_handle *ftx,uint32_t numData) {
  uint8_t send_buffer[16+numData];
  bzero(send_buffer,16);
  uint8_t recv_buffer[16+numData];
  bzero(recv_buffer,16);
  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_speed_test);
  // req/answ
  send_buffer[10] = 0x01;
  // last 
  send_buffer[11] = 0x01;
  // length
  faultify_packet_set_packet_length(send_buffer,numData);
  
  // random payload
  int ii;
  for (ii=0;ii<numData;ii++) {
    send_buffer[16+ii] =ii;
  }
  // split packets HACK
#define PKG_LEN 1024
  int r;
  int pkg=0,idx=0;
	printf("sending %i packets\n",(16+numData)/PKG_LEN);
  for (pkg=0;pkg<((16+numData)/PKG_LEN);pkg++) {
    	r = write(ftx->sockfd,&send_buffer[pkg*PKG_LEN],PKG_LEN);
	printf("sent: %u\n",r);
        usleep(50000);
    if (r<0) {
      return 1;
    } else {
      idx +=PKG_LEN;
    }

  }
  //printf("now: %u\n",(16+sizeof(double)*len)-(pkg*1024));
  r = write(ftx->sockfd,&send_buffer[idx],(16+numData)-(pkg*PKG_LEN));
  if (r<0) {
    return 1;
  }


  ssize_t bytes_read=0;
	idx = 0;
  while (bytes_read<(16+numData)) {
	bytes_read += read(ftx->sockfd,&recv_buffer[idx],16+numData);
	idx += bytes_read;
	usleep(40000);
  }

  
  if (r < 0) 
    printf("ERROR reading from socket");
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }
  
  if (cmd_speed_test != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }
  
  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }
  
  if (faultify_packet_check_length(recv_buffer)!= numData) {
    printf("resp len: %u\n",faultify_packet_check_length(recv_buffer));
    printf("expected: %u\n",numData);
    printf("ERROR wrong response length\n");
    exit(1);
  }

  for (ii=0;ii<numData;ii++) {
	if (send_buffer[16+ii] != recv_buffer[16+ii])
	  	printf("e@%u %u!=%u\n",ii,send_buffer[16+ii],recv_buffer[16+ii]);	
  }

  return 0;


}



int8_t faultify_comm_viterbi_decode(struct faultify_handle *ftx,int32_t *llr, uint32_t len, uint8_t *decoded) {
 uint8_t send_buffer[16+len];
  bzero(send_buffer,16);
  uint8_t recv_buffer[16+(len/4-6)];
  bzero(recv_buffer,16);
  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_user_data_type_1);
  // req/answ
  send_buffer[10] = 0x01;
  // last 
  send_buffer[11] = 0x01;
  // length
  faultify_packet_set_packet_length(send_buffer,len);

  int ii;
  for (ii=0;ii<len;ii++) {
    memcpy(&send_buffer[16+ii],&llr[ii],sizeof(uint8_t));
  }
  int r;
  int pkg=0,idx=0;
  for (pkg=0;pkg<((16+len)/1024);pkg++) {
    r = write(ftx->sockfd,&send_buffer[pkg*1024],1024);
    if (r<0) {
      return 1;
    } else {
      idx +=1024;
    }
    usleep(100000);
  }
  //printf("now: %u\n",(16+sizeof(double)*len)-(pkg*1024));
  r = write(ftx->sockfd,&send_buffer[idx],(16+len)-(pkg*1024));
 if (r<0) {
    return 1;
  }
  r = read(ftx->sockfd,recv_buffer,16+(len/2-6));
  if (r < 0) 
    printf("ERROR reading from socket");
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }
  
  if (cmd_user_data_type_1 != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }
  
  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }
  
  if (faultify_packet_check_length(recv_buffer)!= (len/2-6)) {
    printf("resp len: %u\n",faultify_packet_check_length(recv_buffer));
    printf("expected: %u\n",(len/2-6));
    printf("ERROR wrong response length\n");
    exit(1);
  }

  for (ii=0;ii<(len/2-6);ii++) {
    decoded[ii] = recv_buffer[16+ii];
  }

  
  return 0;

  

}



int8_t faultify_comm_start_free_run(struct faultify_handle *ftx) {
  uint8_t send_buffer[16];
  bzero(send_buffer,16);
  uint8_t recv_buffer[16];
  bzero(recv_buffer,16);
  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_start_free_run);
  // req/answ
  send_buffer[10] = 0x01;
  // last 
  send_buffer[11] = 0x01;
  // length
  faultify_packet_set_packet_length(send_buffer,0*sizeof(uint32_t));

  int r;
  r = write(ftx->sockfd,send_buffer,16);
  if (r<0) {
    return 1;
  }
  r = read(ftx->sockfd,recv_buffer,16);
  if (r < 0) 
    printf("ERROR reading from socket");
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }
  
  if (cmd_start_free_run != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }
  
  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }
  
  if (faultify_packet_check_length(recv_buffer)!= 0) {
    printf("resp len: %u\n",faultify_packet_check_length(recv_buffer));
    printf("expected: %lu\n",sizeof(uint32_t)*ftx->numOut);
    printf("ERROR wrong response length\n");
    exit(1);
  }
  
  return 0;


}

int8_t faultify_comm_stop_free_run(struct faultify_handle *ftx,uint32_t * cycles,uint32_t * numErrors){
 uint8_t send_buffer[16+sizeof(uint32_t)*0];
  bzero(send_buffer,16+sizeof(uint32_t)*0);
  uint8_t recv_buffer[16+sizeof(uint32_t)*(ftx->numOut+1)];
  bzero(recv_buffer,16+sizeof(uint32_t)*(ftx->numOut+1));
  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_stop_free_run);
  // req/answ
  send_buffer[10] = 0x01;
  // last 
  send_buffer[11] = 0x01;
  // length
  faultify_packet_set_packet_length(send_buffer,0*sizeof(uint32_t));


  int r;
  r = write(ftx->sockfd,send_buffer,16+sizeof(uint32_t)*0);
  if (r<0) {
    return 1;
  }
  r = read(ftx->sockfd,recv_buffer,16+sizeof(uint32_t)*(ftx->numOut+1));
  if (r < 0) 
    printf("ERROR reading from socket");
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }
  
  if (cmd_stop_free_run != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }
  
  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }
  
  if (faultify_packet_check_length(recv_buffer)!= sizeof(uint32_t)*ftx->numOut) {
    printf("resp len: %u\n",faultify_packet_check_length(recv_buffer));
    printf("expected: %lu\n",sizeof(uint32_t)*ftx->numOut);
    printf("ERROR wrong response length\n");
    exit(1);
  }
  
  uint32_t i,ii;
  ii=16;
  for (i=0;i<ftx->numOut;i++) {
    memcpy(&numErrors[i],&recv_buffer[ii],sizeof(uint32_t));
    ii += sizeof(uint32_t);
  }
  memcpy(cycles,&recv_buffer[ii],sizeof(uint32_t));


  return 0;


}


int8_t faultify_comm_run(struct faultify_handle *ftx,uint32_t cycles,uint32_t * numErrors) {
  uint8_t send_buffer[16+sizeof(uint32_t)*1];
  bzero(send_buffer,16+sizeof(uint32_t)*1);
  uint8_t recv_buffer[16+sizeof(uint32_t)*ftx->numOut];
  bzero(recv_buffer,16+sizeof(uint32_t)*ftx->numOut);
  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_run);
  // req/answ
  send_buffer[10] = 0x01;
  // last 
  send_buffer[11] = 0x01;
  // length
  faultify_packet_set_packet_length(send_buffer,1*sizeof(uint32_t));
  // cycles
  faultify_packet_set_cycles(send_buffer,cycles);

  int r;
  r = write(ftx->sockfd,send_buffer,16+sizeof(uint32_t)*1);
  if (r<0) {
    return 1;
  }
  r = read(ftx->sockfd,recv_buffer,16+sizeof(uint32_t)*ftx->numOut);
  if (r < 0) 
    printf("ERROR reading from socket");
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }
  
  if (cmd_run != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }
  
  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }
  
  if (faultify_packet_check_length(recv_buffer)!= sizeof(uint32_t)*ftx->numOut) {
    printf("resp len: %u\n",faultify_packet_check_length(recv_buffer));
    printf("expected: %lu\n",sizeof(uint32_t)*ftx->numOut);
    printf("ERROR wrong response length\n");
    exit(1);
  }
  
  uint32_t i,ii;
  ii=16;
  for (i=0;i<ftx->numOut;i++) {
    memcpy(&numErrors[i],&recv_buffer[ii],sizeof(uint32_t));
    ii += sizeof(uint32_t);
  }

  return 0;
}



int8_t faultify_comm_configure(struct faultify_handle *ftx, uint32_t len,double *pe) {
  uint8_t send_buffer[16+sizeof(double)*len];
  bzero(send_buffer,16+sizeof(double)*len);
  uint8_t recv_buffer[16+sizeof(double)*len];
  bzero(recv_buffer,16+sizeof(double)*len);

  //  magic number
  faultify_packet_set_magic_number(send_buffer);
  // type
  faultify_packet_set_packet_type(send_buffer,cmd_configure);
  // req/answ
  send_buffer[10] = 0x01;
  // last
  send_buffer[11] = 0x01;
  
  // length
  faultify_packet_set_packet_length(send_buffer,len*sizeof(double));
  //printf("DBG: packet length field: %lu\n",len*sizeof(double));
  uint32_t i,ii;
  i = 0;
  for (ii=0;ii<len*sizeof(double);ii+=sizeof(double)) {
    memcpy(&send_buffer[16+ii],&pe[i++],sizeof(double));
  }
  int r;
  int pkg=0,idx=0;
  for (pkg=0;pkg<((16+sizeof(double)*len)/1024);pkg++) {
  	r = write(ftx->sockfd,&send_buffer[pkg*1024],1024);
  	if (r<0) {
    		return 1;
  	} else {
		idx +=1024;
	}
	usleep(100000);
  }
  //printf("now: %u\n",(16+sizeof(double)*len)-(pkg*1024));
  r = write(ftx->sockfd,&send_buffer[idx],(16+sizeof(double)*len)-(pkg*1024));
  if (r<0) {
    return 1;
  }

  r = read(ftx->sockfd,recv_buffer,16);
  if (r < 0) 
    printf("%s ERROR reading from socket",__FUNCTION__);
  
  r = faultify_packet_check_sequence(recv_buffer);
  if (r) {
    printf("ERROR wrong magic number\n");
  }
  
  if (cmd_configure != faultify_packet_check_cmd_type(recv_buffer)) {
    printf("ERROR wrong command response\n");
  }
  
  if  (recv_buffer[10]) {
    printf("ERROR not a response\n");
  }
  
  if (faultify_packet_check_length(recv_buffer)!= 0) {
    printf("ERROR wrong response length\n");
  }
  return 0;
}
