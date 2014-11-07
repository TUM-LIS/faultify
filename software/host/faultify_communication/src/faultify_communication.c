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

  // magic number
  send_buffer[0] = (MAGIC_NR_LOW >> 24) & 0xff;
  send_buffer[1] = (MAGIC_NR_LOW >> 16) & 0xff;
  send_buffer[2] = (MAGIC_NR_LOW >> 8) & 0xff;
  send_buffer[3] = (MAGIC_NR_LOW >> 0) & 0xff;
  send_buffer[4] = (MAGIC_NR_HIGH >> 24) & 0xff;
  send_buffer[5] = (MAGIC_NR_HIGH >> 16) & 0xff;
  send_buffer[6] = (MAGIC_NR_HIGH >> 8) & 0xff;
  send_buffer[7] = (MAGIC_NR_HIGH >> 0) & 0xff;

  // type
  send_buffer[8] = ((uint16_t)cmd_identify >> 8) & 0xFF;
  send_buffer[9] = ((uint16_t)cmd_identify >> 0) & 0xFF;
  
  // req/answ
  send_buffer[10] = 0x01;

  // last 
  send_buffer[11] = 0x01;

  // length 
  send_buffer[12] = 0x00;
  send_buffer[13] = 0x00;
  send_buffer[14] = 0x00;
  send_buffer[15] = 0x00;
  int r;
  
  r = write(ftx->sockfd,send_buffer,16);
  if (r<0) {
    return 1;
  }

  r = read(ftx->sockfd,send_buffer,16);
  if (r < 0) 
    printf("ERROR reading from socket");
  int i;
  for (i=0;i<16;i++) {
    printf("%X ",send_buffer[i]);
  }
  
  return 0;
}
