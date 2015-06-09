#include "faultify_communication.h"


struct faultify_handle *ftx;

#include <sys/time.h>

struct timeval tval_before, tval_after, tval_result;



int main(int argc, char *argv[]) {
  
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

  ftx->numInj = 200;
  //ftx->numInj = 178;
  ftx->numOut=5;
  ftx->numCycles = 0;
  double pe[ftx->numInj];
  int i;
  for (i=0;i<ftx->numInj;i++)
    pe[i] = 0.00f;
  uint32_t result[ftx->numOut];


  FILE *fh;
  fh = fopen("llr.bin","r");
  if (fh==NULL) {
    fprintf(stderr,"error: could not open file\n");
    goto exiter;
  } 
  
  
  r = faultify_comm_configure(ftx,ftx->numInj,&pe[0]);
  if (r) {
    fprintf(stderr,"failed to configure the emulator\n");
    return 1;
  } else {
    fprintf(stderr,"configured the emulator\n");
  }
  
  for (i=0;i<ftx->numOut;i++) {
    result[i] = 0;
  }
  
  /* Start a free run */
  r = faultify_comm_start_free_run(ftx);
  if (r) {
    fprintf(stderr,"failed to start a free run\n");
  } else {
    fprintf(stderr,"started free run\n");
  }
  
  /* start time meas */
  gettimeofday(&tval_before, NULL);
  

  int32_t llr_f[412*10];

  /* Main loop */
  uint8_t decoded[200];

  FILE *fh_out;
  fh_out = fopen("result.txt","w+");
  
  
  int k;
  int numblk=1;
  if (argc>1) {
    numblk = atoi(argv[1]);
  }
  
  for (k=0;k<numblk;k++) {
    /* load LLR */
    //for (i=0;i<412;i++) {
    //  fscanf(fh,"%i",&llr_f[i]);
    //}
    fread(&llr_f[0],4,412*10,fh);
    /* read decoded data */
    faultify_comm_load_llr(ftx,&llr_f[0],412*10);
    
    /* write out result */
    //for (i=0;i<200;i++) {
    //  fprintf(fh_out,"%u\n",decoded[i]);
    //}
    
  }
  
  fclose(fh_out);
  
  /* stop time meas */
  gettimeofday(&tval_after, NULL);
  timersub(&tval_after, &tval_before, &tval_result);
  
  
  /* Stop the free run */
  r = faultify_comm_stop_free_run(ftx,&(ftx->numCycles),result);
  printf("%u\n",ftx->numCycles);
  /*
  for (i=0;i<ftx->numOut;i++) {
    printf("%u\n",result[i]);
  }
  */

  
  printf("Time elapsed: %ld.%06ld\n", (long int)tval_result.tv_sec, (long int)tval_result.tv_usec);
  printf("average decoded kbits/s: %f\n",(double)(412*numblk*10)/tval_result.tv_sec/1024);
  
  
  fclose(fh);

 exiter:
  r = faultify_comm_disconnect(ftx);


  return 0;
}
