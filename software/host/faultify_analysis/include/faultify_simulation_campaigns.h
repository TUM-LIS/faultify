/* (C) 2013 David May */

/* find different flavors of registers */

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include "glib.h"
#include "faultify_communication.h"
//#include "faultify_simulation.h"

struct faultify_simulation_campaign {
  uint32_t debug;

  uint32_t * probability_relation_matrix;
  uint32_t * probability_relation_matrix_p_0_5;

  uint32_t numInj;
  uint32_t numIn;
  uint32_t numOut;
  uint32_t simCycles;
  double  * max_output_error_probability;

  GArray * output_regs;
  GArray * one_influence_regs;
  GArray * non_recoverable_regs;
  GArray * high_r_regs;
  GArray * wobble_regs;
  GArray * reduced_search_space;
  GArray * data_path_regs;

  struct faultify_handle * ftx;

} fsc;

int faultify_simulation_campaign_init(uint32_t numInj,
				      uint32_t numIn,
				      uint32_t numOut,
				      struct faultify_handle *);

int faultify_simulation_set_max_output_error_probability_at(uint32_t injPos,double pe);


int faultify_simulation_create_probability_relation_matrix(uint32_t numCycles);
int faultify_simulation_create_probability_relation_matrix_viterbi(int32_t *llr);

int faultify_simulation_find_output_registers();

int faultify_simulation_find_high_r_registers(); 


int faultify_simulation_find_data_path_registers(void);
void faultify_simulation_print_array(GArray* a);

