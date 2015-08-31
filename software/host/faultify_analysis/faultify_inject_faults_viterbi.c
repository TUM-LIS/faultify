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
  FILE *pe_fh,*fh;
  if (argc<5) 
    exit(1);
  
  numOut = atoi(argv[1]);
  numInj = atoi(argv[2]);
  pe_fh = fopen(argv[3],"r");
  fh = fopen(argv[4],"r");
  if (!fh)
    printf("error!\n");
  numCycles = atoi(argv[5]);
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
  faultify_comm_start_free_run(ftx);
  //faultify_comm_run(ftx,numCycles,soe_out);
  
  int32_t llr_f[412];
  /* Main loop */
#define NUM_BLK  100
  int blk;
  uint8_t decoded[200];
  for (blk = 0;blk<NUM_BLK;blk++) {
    /* load LLR */
    for (i=0;i<412;i++) {
      fscanf(fh,"%i",&llr_f[i]);
    }
    /* read decoded data */
    faultify_comm_viterbi_decode(ftx,&llr_f[0],412,&decoded[0]);
    
  }
  /* Stop the free run */
  faultify_comm_stop_free_run(ftx,&numCycles,soe_out);
  

  FILE *res_fh;
  res_fh = fopen("result.txt","w+");
  for (i=0;i<numOut;i++) {
    fprintf(res_fh,"%u\n",soe_out[i]);
  }

  r = faultify_comm_disconnect(ftx);

  return 1;
}
