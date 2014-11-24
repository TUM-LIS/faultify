#include "faultify_communication.h"


struct faultify_handle *ftx;

int main(void) {
  
  int r; 

  r = faultify_comm_init(&ftx);
  if (r) {
    fprintf(stderr,"failed to init handle\n");
  }

  r = faultify_comm_connect(ftx);
  if (r) {
    fprintf(stderr,"failed to connect to emulator\n");
  } else {
    fprintf(stderr,"connected to emulator\n");

  }

  r = faultify_comm_identify(ftx);
  if (r) {
    fprintf(stderr,"failed to identify the emulator\n");
  } else {
    fprintf(stderr,"identified the emulator\n");
    fprintf(stderr,"SW: %u.%u HW: %u.%u \n",ftx->version_fpga_software[0],
	    ftx->version_fpga_software[1],
	    ftx->version_fpga_hardware[0],
	    ftx->version_fpga_hardware[1]);
  }
  
  double pe[10];
  int i;
  for (i=0;i<10;i++)
    pe[i] = 0.01*i;
  
  r = faultify_comm_configure(ftx,10,&pe[0]);
  if (r) {
    fprintf(stderr,"failed to configure the emulator\n");
  } else {
    fprintf(stderr,"configured the emulator\n");
  }


  r = faultify_comm_disconnect(ftx);


  return 0;
}
