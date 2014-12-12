/* David May LIS 2013 */


#include <stdint.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <math.h>

#include "platform_config.h"
#include "faultify_axi_wrapper.h"


#define REG_CONTROL        0x00000000
#define REG_PE_LOCATION    0x00000001
#define REG_SEED_LOW       0x00000002
#define REG_SEED_HIGH      0x00000003
#define REG_PROB           0x00000004
#define REG_READ_LOCATION  0x00000005
#define REG_NUM_ERR        0x00000006
#define REG_SIM_CYCLES     0x00000007
#define REG_DEBUG          0x00000008
#define REG_RESET          0x00000009
#define REG_STATUS         0x0000000F
#define REG_TMPCNT         0x0000000A




int faultify_configure_pe(uint32_t location,uint64_t seed,uint32_t probability);
int faultify_shift_settings(void);
int faultify_start_simulation(uint32_t sim_cycles);
int faultify_read_num_errors(uint32_t location, uint32_t * num_errors);
int faultify_poll_for_idle(void);
uint32_t faultify_prob_conv(double probability);
uint32_t faultify_read_probability(uint32_t location);
uint32_t faultify_debug_read(void);
void faultify_enable_circuit_reset(void);
void faultify_disable_circuit_reset(void);


void faultify_run_campaign(uint32_t numInj,
			   uint32_t numOut,
			   uint32_t numCycles,
			   double * probs,
			   uint32_t * result);

void faultify_run_free(uint32_t numInj,
		       uint32_t numOut,
		       double * probs,
		       double thr,
		       uint32_t * cycles,
		       uint32_t * result);

