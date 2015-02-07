/* (c) David May */

#include <stdio.h>
#include <glib.h>
#include "faultify_communication.h"
#include "faultify_simulation_campaigns.h"


#define viterbi 1

#if viterbi
//#define numInj 200
#define numInj 178
#define numIn 69
#define numOut 5
#endif

struct faultify_handle *ftx;

int main (int argc, char *argv[]) {

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
  
#if viterbi
  //fsc.max_output_error_probability[2] = 0.5f;
#endif

    fsc.simCycles = 100000;

    FILE *fhf;
    int db;
    
    if (argc>1) {
      db = atoi(argv[1]);
	}		
    else {
      db = 0;
	}
    printf("dB: %i\n",db);
    if (db==0)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_0/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==2)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_2/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==4)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_4/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==6)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_6/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==8)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_8/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==10)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_10/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==12)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_12/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==14)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_14/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==16)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_16/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==18)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_18/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==20)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_20/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==22)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_22/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==24)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_24/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==26)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_26/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==28)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_28/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==30)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_30/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==32)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_32/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==34)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_34/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==36)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_36/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==38)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_38/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==40)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_40/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==42)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_42/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==44)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_44/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==46)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_46/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==48)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_48/llr_BL_200_WL_55_AL_50_in.txt","r");
    if (db==50)
      fhf = fopen("../faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_50/llr_BL_200_WL_55_AL_50_in.txt","r");
   
    int32_t llr[412*500];
    int i;
    for (i=0;i<500*412;i++) {
      fscanf(fhf,"%i",&llr[i]);
    }

    //faultify_simulation_create_probability_relation_matrix(fsc.simCycles);
    faultify_simulation_create_probability_relation_matrix_viterbi(&llr[0],500);

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
  faultify_comm_start_free_run(ftx);
  uint8_t tmp[200];
  faultify_comm_viterbi_decode(ftx,&llr[0],412,tmp);
  faultify_comm_stop_free_run(ftx,&(ftx->numCycles),&out_test[0]);
  for (out=0;out<numOut;out++) {
    printf("%u\n",out_test[out]);
    if ((fsc.max_output_error_probability[out]==0) && out_test[out]>0) {
      printf("ERRRRRR@%u\n",out);
    }
  }

  r = faultify_comm_disconnect(ftx);

  return 1;
}
