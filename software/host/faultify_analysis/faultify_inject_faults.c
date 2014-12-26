/* (c) David May */

#include <stdio.h>
#include <glib.h>
#include "faultify_communication.h"

struct faultify_handle *ftx;

int main (int argc,char *argv[]) {

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
  
  uint32_t numCycles = 1000000;
  uint32_t numOut,numInj;
  FILE *pe_fh;
  if (argc<4) 
    exit(1);
  
  numOut = atoi(argv[1]);
  numInj = atoi(argv[2]);
  pe_fh = fopen(argv[3],"r");
  numCycles = atoi(argv[4]);
  ftx->numOut= numOut;
  ftx->numInj = numInj;

  uint32_t soe_out[numOut];
  double pe[numInj];
  double errorSumPerCycle;
  int i;
  for (i=0;i<numInj;i++) {
    fscanf(pe_fh,"%lf",&pe[i]);
    errorSumPerCycle += pe[i];
  }
  fclose(pe_fh);

  printf("injecting faults with avg. rate of %f for %u cycles\n",errorSumPerCycle,numCycles);

  faultify_comm_configure(ftx,numInj,pe);
  faultify_comm_run(ftx,numCycles,soe_out);

  FILE *res_fh;
  res_fh = fopen("result.txt","w+");
  for (i=0;i<numOut;i++) {
    fprintf(res_fh,"%u\n",soe_out[i]);
  }

  r = faultify_comm_disconnect(ftx);

  return 1;
}
