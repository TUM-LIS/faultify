#include "packet_parser.h"

unsigned char comm_packet_set_magic_number(unsigned char *data) {
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

unsigned char comm_packet_set_packet_type(unsigned char *data,enum commands cmd){

  data[8] = ((unsigned short)cmd >> 8) & 0xFF;
  data[9] = ((unsigned short)cmd >> 0) & 0xFF;
  return 0;
}

unsigned char comm_packet_set_packet_length(unsigned char *data,unsigned int len){
  data[12] = (unsigned char)(len >> 24) & 0xff;
  data[13] = (unsigned char)(len >> 16) & 0xff;
  data[14] = (unsigned char)(len >> 8) & 0xff;
  data[15] = (unsigned char)(len) & 0xff;
  return 0;
}

unsigned char comm_packet_check_sequence(unsigned char *data) {
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

enum commands comm_packet_check_cmd_type(unsigned char *data) {
  /* command type */
  unsigned int cmd_cat;
  cmd_cat = data[8];
  cmd_cat <<= 8;
  cmd_cat |= data[9];
  return (enum commands)cmd_cat;
}

unsigned int comm_packet_check_length(unsigned char *data) {
  return ( ((unsigned int)data[12] << 24) |
	   ((unsigned int)data[13] << 16) | 
	   ((unsigned int)data[14] << 8 ) |
	    (unsigned int)data[15]           );

}


int comm_configure(struct tcp_pcb *pcb,unsigned char * data,int len) {

  unsigned int numInj;
  double *pe;

  numInj = comm_packet_check_length(data)/sizeof(double);
  xil_printf("numInj = %X \n",numInj);
  unsigned int i;
  /*
  for (i=0;i<len;i++) {
    xil_printf("%X ",data[i]);
  }
  xil_printf("\n");
  */
  
  pe = malloc(numInj*sizeof(double));

  unsigned int ii;
  ii=16;
  for (i=0;i<numInj;i++) {
    memcpy(&pe[i],&data[ii],sizeof(double));
    ii += sizeof(double);
  }
  /*
  int whole, thousandths;
  for (i=0;i<numInj;i++) {
    whole = pe[i];
    thousandths = (pe[i] - whole) * 1000;
    xil_printf("%d.%3d\n", whole, thousandths);
    }
  */

  // configure emulator
  uint32_t numOut = 54;
  uint32_t cycles = 1000000;
  uint32_t result[numOut];
  faultify_run_campaign(numInj,numOut,cycles,&pe[0],&result[0]);
  for (i=0;i<numOut;i++) {
    xil_printf("%d\n",result[i]);
  }

  //send response
  int send_len = 16;
  unsigned char send_buffer[send_len];
  // magic number
  comm_packet_set_magic_number(send_buffer);
  // type
  comm_packet_set_packet_type(send_buffer,cmd_configure);
  // req/answ
  send_buffer[10] = 0x00;
  // last
  send_buffer[11] = 0x01;
  // length
  comm_packet_set_packet_length(send_buffer,0);
  if (tcp_sndbuf(pcb) > send_len) {
    tcp_write(pcb, send_buffer, send_len, 1);
  } else
    xil_printf("no space in tcp_sndbuf\n\r");
  
  return 0;
}
  
int comm_identify(struct tcp_pcb *pcb,unsigned char * data,int len) {
  
  int send_len = 20;
  unsigned char send_buffer[send_len];
  
  // magic number
  comm_packet_set_magic_number(send_buffer);
  // type
  comm_packet_set_packet_type(send_buffer,cmd_identify);
  // req/answ
  send_buffer[10] = 0x00;
  // last
  send_buffer[11] = 0x01;
  // length
  comm_packet_set_packet_length(send_buffer,4);

  // identification
  send_buffer[16] = 0x00; // hw ver
  send_buffer[17] = 0x01; // hw ver
  send_buffer[18] = 0x00; // sw ver
  send_buffer[19] = 0x01; // sw ver
  //xil_printf("%d\n",tcp_sndbuf(pcb));
  if (tcp_sndbuf(pcb) > send_len) {
    tcp_write(pcb, send_buffer, send_len, 1);
  } else
    xil_printf("no space in tcp_sndbuf\n\r");

  return 0;
}


int packet_parser(struct tcp_pcb *pcb,unsigned char * data,int len){
  
  xil_printf("DBG: len: %d\n",len);
  if (len<16) {
    return 1;
  }
  
  /* check for magic sequence */
  if (comm_packet_check_sequence(data)) {
    return 1;
  }
  
  /* command type */
  enum commands rec_cmd;
  rec_cmd = comm_packet_check_cmd_type(data);
  
  if (rec_cmd == cmd_identify) {
    xil_printf("identify\n");
    comm_identify(pcb,data,len);
  }
  if (rec_cmd == cmd_configure) {
    xil_printf("configure\n");
    comm_configure(pcb,data,len);
  }

  return 0;
  
}


