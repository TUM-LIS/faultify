#include "faultify_communication.h"


struct faultify_handle *ftx;

static int32_t llr[412] = {-6,-5,-3,5,-3,-6,4,3,-5,3,-6,7,-2,-8,0,5,-7,-2,-4,-4,-7,
		4,-5,7,-4,0,-3,7,3,0,-3,4,0,3,7,4,0,4,4,-8,6,-4,0,3,-3,-3,7,-2,-2,-6,3,-3,4,
		3,-2,-4,2,-1,-8,0,7,6,7,-4,-4,5,-5,5,-2,-1,3,7,3,2,4,-8,1,3,-1,2,-2,2,3,1,0,
		3,5,-6,-5,6,7,0,-5,-6,-8,2,3,-2,-5,-2,-5,0,1,0,4,-8,7,0,5,-6,-5,2,2,-1,0,-3,
		-2,-2,-2,0,-4,3,-4,-5,1,-4,3,6,2,-8,3,-7,6,3,-1,-2,7,2,0,2,-2,-2,-7,3,-8,6,
		1,0,0,-5,1,5,-3,2,4,6,-2,5,-6,-7,-4,-2,1,-5,1,-8,-3,4,4,-5,-2,6,6,0,3,4,-3,
		-5,-5,0,-5,5,7,-6,6,2,4,-4,7,-1,0,-1,0,1,4,0,7,7,6,2,0,-3,-1,-5,-7,3,7,-4,
		3,4,0,-1,5,-5,-6,6,3,-8,-2,-4,3,0,-7,6,-5,5,-4,4,7,6,-2,-8,2,7,5,3,-2,-5,
		-2,-3,-7,0,4,-2,-3,7,-5,-8,2,0,0,-7,-3,6,1,1,-3,4,-8,2,3,7,6,-4,4,-1,-2,
		4,7,0,-1,-2,-2,0,7,-3,-1,-4,-3,0,-5,1,-3,4,3,4,4,7,1,7,1,2,-1,0,7,5,6,6,
		2,7,-1,-2,0,-4,0,-2,7,-7,5,6,3,0,-5,4,-2,1,6,0,7,5,5,7,7,-6,0,-6,6,-2,
		-3,-8,1,-3,0,5,1,7,7,4,-6,-8,-1,2,-2,5,7,0,-2,4,-5,0,4,-5,1,3,4,-5,6,
		-8,-1,6,5,-6,3,4,3,-6,6,0,-7,-7,6,0,4,-4,1,-2,-2,-3,0,1,5,-4,-3,-1,0,
		-5,3,1,-6,7,-3,3,3,-6,-5,-1,-5,7,3,-5,-2,0,0,-6,3,0,-6,7,-5,3,-7,1};



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
  ftx->numOut=5;
  ftx->numCycles = 0;
  double pe[ftx->numInj];
  int i;
  for (i=0;i<ftx->numInj;i++)
    pe[i] = 0.0f;
  
  r = faultify_comm_configure(ftx,ftx->numInj,&pe[0]);
  if (r) {
    fprintf(stderr,"failed to configure the emulator\n");
    return 1;
  } else {
    fprintf(stderr,"configured the emulator\n");
  }
  
  uint32_t result[ftx->numOut];
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
  
  /* Main loop */
#define NUM_BLK  1
  int blk;
  uint8_t decoded[200];
  for (blk = 0;blk<NUM_BLK;blk++) {
    /* load LLR */
    /* read decoded data */
    faultify_comm_viterbi_decode(ftx,&llr[0],412,&decoded[0]);
    for (i=0;i<200;i++) {
      printf("%u\n",decoded[i]);
    }
    printf("\n");
    /* read back temporary sim result */



    
  }
  

  /* Stop the free run */
  r = faultify_comm_stop_free_run(ftx,&(ftx->numCycles),result);
  printf("%u\n",ftx->numCycles);
  for (i=0;i<ftx->numOut;i++) {
    printf("%u\n",result[i]);
  }


  r = faultify_comm_disconnect(ftx);


  return 0;
}
