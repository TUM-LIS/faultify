#include "packet_parser.h"


int comm_identify(struct tcp_pcb *pcb,char * data,int len) {
  
  err_t err;
  int send_len = 20;
  char send_buffer[send_len];
  
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
  send_buffer[8] = (cmd_identify >> 8) & 0xFF;
  send_buffer[9] = (cmd_identify >> 0) & 0xFF;
  
  // req/answ
  send_buffer[10] = 0x00;
  
  // last
  send_buffer[11] = 0x01;
  
  // length
  send_buffer[12] = (char)((unsigned long)send_len >> 24) & 0xff;
  send_buffer[13] = (char)((unsigned long)send_len >> 16) & 0xff;
  send_buffer[14] = (char)((unsigned long)send_len >> 8) & 0xff;
  send_buffer[15] = (char)((unsigned long)send_len) & 0xff;
  
  // identification
  send_buffer[16] = 0x00; // hw ver
  send_buffer[17] = 0x01; // hw ver
  send_buffer[18] = 0x00; // sw ver
  send_buffer[19] = 0x01; // sw ver
  xil_printf("%d\n",tcp_sndbuf(pcb));
  if (tcp_sndbuf(pcb) > send_len) {
    err = tcp_write(pcb, send_buffer, send_len, 1);
  } else
    xil_printf("no space in tcp_sndbuf\n\r");
}


int packet_parser(struct tcp_pcb *pcb,char * data,int len){
  
  err_t err;
  xil_printf("DBG: len: %d\n",len);
  if (len<16) {
    return 1;
  }
  
  /* check for magic sequence */
  if (!(data[0] == ((MAGIC_NR_LOW>>24) & 0xFF) && data[1] == ((MAGIC_NR_LOW>>16) & 0XFF) &&
	data[2] == ((MAGIC_NR_LOW>>8 ) & 0xFF) && data[3] == ((MAGIC_NR_LOW   ) & 0xFF) &&
	data[4] == ((MAGIC_NR_HIGH>>24) & 0xFF) && data[5] == ((MAGIC_NR_HIGH>>16) & 0Xff) &&
	data[6] == ((MAGIC_NR_HIGH>>8) & 0Xff) && data[7] == ((MAGIC_NR_HIGH) & 0xFF))) {
    return 1;
  }
  
  /* command type */
  enum commands rec_cmd;
  unsigned int cmd_cat;
  cmd_cat = data[8];
  cmd_cat <<= 8;
  cmd_cat |= data[9];
  rec_cmd = (enum commands)cmd_cat;
  
  if (rec_cmd == cmd_identify) {
    xil_printf("identify\n");
    comm_identify(pcb,data,len);
  }
  
}


