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

  
  ftx->numInj = 282;
  double pe[ftx->numInj];
  int i;
  for (i=0;i<ftx->numInj;i++)
    pe[i] = 0.5f;
  
  r = faultify_comm_configure(ftx,ftx->numInj,&pe[0]);
  if (r) {
    fprintf(stderr,"failed to configure the emulator\n");
    return 1;
  } else {
    fprintf(stderr,"configured the emulator\n");
  }
  

  ftx->numOut=5;
  ftx->numCycles = 100000;
  uint32_t result[ftx->numOut];
  for (i=0;i<ftx->numOut;i++) {
    result[i] = 0;
  }
  r = faultify_comm_run(ftx,ftx->numCycles,result);
  if (r) {
    fprintf(stderr,"failed to run the emulator\n");
  } else {
    fprintf(stderr,"ran the emulator\n");
  }
  for (i=0;i<ftx->numOut;i++) {
    printf("%f\n",(double)result[i]/ftx->numCycles);
  }
  
  r = faultify_comm_start_free_run(ftx);
  if (r) {
    fprintf(stderr,"failed to start a free run\n");
  } else {
    fprintf(stderr,"started free run\n");
  }

  sleep(1);

  r = faultify_comm_stop_free_run(ftx,&(ftx->numCycles),result);
  printf("%u\n",ftx->numCycles);
  for (i=0;i<ftx->numOut;i++) {
    printf("%u\n",result[i]);
  }


  r = faultify_comm_speed_test(ftx,2000);

  r = faultify_comm_disconnect(ftx);


  return 0;
}
