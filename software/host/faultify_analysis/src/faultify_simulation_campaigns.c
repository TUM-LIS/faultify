/* (c) 2013 David May */

#include "faultify_simulation_campaigns.h"

int faultify_simulation_campaign_init(uint32_t numInj,
				      uint32_t numIn,
				      uint32_t numOut,
				struct faultify_handle * ftx)
{

  fsc.debug = 0;
  // malloc prm 
  fsc.probability_relation_matrix = (uint32_t*)malloc(sizeof(uint32_t)*numInj*numOut);
  if (fsc.probability_relation_matrix == NULL)
    return 0;
  // malloc prm 
  fsc.probability_relation_matrix_p_0_5 = (uint32_t*)malloc(sizeof(uint32_t)*numInj*numOut);
  if (fsc.probability_relation_matrix_p_0_5 == NULL)
    return 0;

  fsc.numInj = numInj;
  fsc.numIn = numIn;
  fsc.numOut = numOut;
  fsc.simCycles = 100000;
  
  fsc.max_output_error_probability = (double*)malloc(sizeof(double)*numOut);
  if (fsc.max_output_error_probability == NULL)
    return 0;
  
  fsc.output_regs = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  fsc.one_influence_regs = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  fsc.non_recoverable_regs = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  fsc.wobble_regs = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  fsc.high_r_regs = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  fsc.reduced_search_space =  g_array_new(FALSE,FALSE,sizeof(uint32_t));
  fsc.data_path_regs = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  // enable circuit reset between simulations
  // TODO right now done statically in µB firmware 
  //faultify_enable_circuit_reset();

  ftx->numInj = numInj;
  ftx->numIn = numIn;
  ftx->numOut = numOut;
  fsc.ftx = ftx;

  
  return 1;
}


int faultify_simulation_set_max_output_error_probability_at(uint32_t injPos,double pe){
  fsc.max_output_error_probability[injPos] = pe;
  return 1;
}

int faultify_simulation_create_probability_relation_matrix(uint32_t numCycles) {
  
  int inj,out,i;
  
  // error probablities at registers
  double * probabilities;
  double * zeros;
  // sum of errors at output of circuit
  uint32_t * soe_out;
  
  probabilities = (double*) malloc(sizeof(double)*fsc.numInj);
  soe_out = (uint32_t*) malloc(sizeof(uint32_t)*fsc.numOut);
  zeros = (double*) malloc(sizeof(double)*fsc.numInj);
  for (i=0;i<fsc.numInj;i++){
    zeros[i] = 0.0;
  }
  for (inj=0;inj<fsc.numInj;inj++) {
    fprintf(stderr,"%u \t",inj);
    for (i=0;i<fsc.numInj;i++){
      probabilities[i] = 0.0;
    }
    probabilities[inj] = 0.5; // or 1.0
    // run campaign
    faultify_comm_configure(fsc.ftx,fsc.numInj,probabilities);
    faultify_comm_run(fsc.ftx,numCycles,soe_out);
    // create p_p_matrix
    for (out=0;out<fsc.numOut;out++) {
      fsc.probability_relation_matrix_p_0_5[inj*fsc.numOut+out] = soe_out[out];
    }
    // recovery run
    faultify_comm_configure(fsc.ftx,fsc.numInj,zeros);
    faultify_comm_run(fsc.ftx,10000,soe_out);
  
  }
  fprintf(stderr,"\n");

  return 1;
}

int faultify_simulation_create_probability_relation_matrix_viterbi(int32_t * llr,uint32_t num_blks) {
  
  int inj,out,i;
  
  // error probablities at registers
  double * probabilities;
  double * zeros;
  // sum of errors at output of circuit
  uint32_t * soe_out;
  probabilities = (double*) malloc(sizeof(double)*fsc.numInj);
  soe_out = (uint32_t*) malloc(sizeof(uint32_t)*fsc.numOut);
  zeros = (double*) malloc(sizeof(double)*fsc.numInj);
  for (i=0;i<fsc.numInj;i++){
    zeros[i] = 0.0;
  }
  for (inj=0;inj<fsc.numInj;inj++) {
    fprintf(stderr,"%u \t",inj);
    for (i=0;i<fsc.numInj;i++){
      probabilities[i] = 0.0;
    }
    probabilities[inj] = 0.5; // or 1.0
    // run campaign
    uint8_t tmp[200];
    faultify_comm_configure(fsc.ftx,fsc.numInj,probabilities);
     faultify_comm_start_free_run(fsc.ftx);
    for (i=0;i<num_blks;i++) {
      faultify_comm_viterbi_decode(fsc.ftx,&llr[(412*i)],412,tmp);
    }
    faultify_comm_stop_free_run(fsc.ftx,&(fsc.ftx->numCycles),&soe_out[0]);

    // create p_p_matrix
    for (out=0;out<fsc.numOut;out++) {
      fsc.probability_relation_matrix_p_0_5[inj*fsc.numOut+out] = soe_out[out];
    }
      
  }
  fprintf(stderr,"\n");

  return 1;
}


int faultify_simulation_find_output_registers()
{
  int i,j;
  double sum,ssum;
  
  for (i=0;i<fsc.numInj;i++) {
    sum = 0;
    ssum = 0;
    for (j=0;j<fsc.numOut;j++) {
      if (fsc.probability_relation_matrix[i*fsc.numOut+j] > 0)
	sum++;
      ssum += fsc.probability_relation_matrix[i*fsc.numOut+j];
    }
    
    if (sum == 1 && ssum == fsc.simCycles) {
      g_array_append_val(fsc.output_regs, i);   
    }
    if (sum == 1 && ssum != fsc.simCycles) {
      g_array_append_val(fsc.one_influence_regs, i);   
    }
  }
  
  g_print("%s : DONE\n",__FUNCTION__);
  return 1;
}


int faultify_unique(GArray *in, GArray *out,uint32_t range){
  int i,j;
  
  for (i=0;i<range;i++){
    for (j=0;j<in->len;j++)
      if (g_array_index(in, int, j) == i) {
	g_array_append_val(out,i);
	break;
      }
  }
  return 1;
}

int faultify_simulation_find_data_path_registers() {
  int i,j;
  int isValid,isNonZero;
  GArray * tmp,* tmp2;
  tmp = g_array_new(FALSE,FALSE,sizeof(uint32_t));
  tmp2 = g_array_new(FALSE,FALSE,sizeof(uint32_t));

  // generate list of outputs that have to be zero
  for (i=0;i<fsc.numOut;i++) {
    if (fsc.max_output_error_probability[i]==0.0f){
      g_array_append_val(tmp, i); 
    }
  }
  for (i=0;i<fsc.numOut;i++) {
    if (fsc.max_output_error_probability[i]>0.0f){
      g_array_append_val(tmp2, i); 
    }
  }
  
 
  
  for (i=0;i<fsc.numInj;i++) {
    isValid = 1;
    for (j=0;j<tmp->len;j++) {
      if (fsc.probability_relation_matrix[i*fsc.numOut+g_array_index(tmp, int, j)] > 0) {
	//isValid = 0;
      }
      if (fsc.probability_relation_matrix_p_0_5[i*fsc.numOut+g_array_index(tmp, int, j)] > 0) {
	isValid = 0;
      }
    }
    /**************
needed ? or not ?
    ****************/
    isNonZero = 1;
    for (j=0;j<tmp2->len;j++) {
      if (fsc.probability_relation_matrix[i*fsc.numOut+g_array_index(tmp2, int, j)] > 0) {
      	//isNonZero = 1;
      }
      if (fsc.probability_relation_matrix_p_0_5[i*fsc.numOut+g_array_index(tmp2, int, j)] > 0) {
	isNonZero = 1;
      }
    }

    if (isValid == 1 && isNonZero == 1) {
      g_array_append_val(fsc.data_path_regs,i);
    }
  }
  
  
  return 1;
}

void faultify_simulation_print_array(GArray* a) {
  int i;
  printf("Array holds: ");
  for (i = 0; i < a->len; i++)
    printf("%d ", g_array_index(a, int, i));
  printf("\n");
}
