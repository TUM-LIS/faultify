/* (c) David May */

#include <stdio.h>
#include <glib.h>
#include "faultify_communication.h"
#include "faultify_simulation_campaigns.h"

#define b14 1

#if b14
#define numInj 216
#define numIn 32
#define numOut 54
#endif

struct faultify_handle *ftx;

int main (void) {

  int out,o,inj;
  FILE *fh,*fh_prm;
  fh = fopen("dpcp.txt","w+");
  fh_prm = fopen("prm.csv","w+");

  double dpcp_list[numInj];

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
  
  
  // init
  faultify_simulation_campaign_init(numInj,numIn,numOut,ftx);

  for (out=0;out<numOut;out++) {
    fsc.max_output_error_probability[out] = 0.0f;
  }
  //for (out=56;out<88;out++) /*h264*/
  for(out=20;out<52;out++) /*b14*/
    fsc.max_output_error_probability[out] = 0.5f;
  
  fsc.simCycles = 1000000;

  faultify_simulation_create_probability_relation_matrix(fsc.simCycles);

  faultify_simulation_find_data_path_registers();

  // emitting PRM
  for (inj=0;inj<numInj;inj++) {
    for (out=0;out<numOut;out++) {
      fprintf(fh_prm,"%u",fsc.probability_relation_matrix_p_0_5[(inj*numOut)+out]);
      if (out<numOut-1) {
	fprintf(fh_prm,",");
      }
    }
      fprintf(fh_prm,"\n");
  }
  fclose(fh_prm);
  
  for (o=0;o<numInj;o++){
    dpcp_list[o] = 0.0f;
  }
  for (o=0;o<fsc.data_path_regs->len;o++){
    fprintf(stdout,"[5] - %u - %u,\n",o,g_array_index(fsc.data_path_regs,int,o));
    dpcp_list[g_array_index(fsc.data_path_regs,int,o)] = 0.5f;
  }
  for (o=0;o<numInj;o++){
    fprintf(fh,"%f\n",dpcp_list[o]);
  }
  fclose(fh);


  // test separation
  uint32_t out_test[numOut];
  faultify_comm_configure(ftx,numInj,dpcp_list);
  faultify_comm_run(ftx,10000000,out_test);
  for (out=0;out<numOut;out++) {
    printf("%u\n",out_test[out]);
    if ((fsc.max_output_error_probability[out]==0) && out_test[out]>0) {
      printf("ERRRRRR@%u\n",out);
    }
  }
  r = faultify_comm_disconnect(ftx);

  return 1;
}
