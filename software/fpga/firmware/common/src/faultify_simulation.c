/* David May LIS 2013 */

#include "faultify_simulation.h"


uint32_t faultify_backend_read_register(uint32_t addr,uint32_t *data) {
  *data = Xil_In32(XPAR_FAULTIFY_AXI_WRAPPER_0_BASEADDR+(addr*4));
  return 0;
}

uint32_t faultify_backend_write_register(uint32_t addr, uint32_t data) {
  FAULTIFY_AXI_WRAPPER_mWriteSlaveReg0(XPAR_FAULTIFY_AXI_WRAPPER_0_BASEADDR,addr*4,data);
  return 0;
}

#define TIMEOUT 10

uint32_t read_from_sim(uint32_t addr,uint32_t * data){
  
  uint32_t return_val=1;
  uint32_t retry=0;
  
  while ((return_val>0) & (retry<TIMEOUT)) {
    retry++;
    return_val = faultify_backend_read_register(addr,data);
    if (return_val>0) {
      //printf("retrying...\n");
    }
    if ((return_val==0) & (retry>1)) {
      //printf("read data %X\n",*data);
    }
  }
  
  return 0;
}

uint32_t write_to_sim(uint32_t addr,uint32_t data){
  return faultify_backend_write_register(addr,data);
}

/* Bit-order reversion */
uint32_t faultify_reverse(register uint32_t x)
{

  x = (((x & 0xaaaaaaaa) >> 1) | ((x & 0x55555555) << 1));
  x = (((x & 0xcccccccc) >> 2) | ((x & 0x33333333) << 2));
  x = (((x & 0xf0f0f0f0) >> 4) | ((x & 0x0f0f0f0f) << 4));
  x = (((x & 0xff00ff00) >> 8) | ((x & 0x00ff00ff) << 8));
  return((x >> 16) | (x << 16));

}

/* floating point to fixed 0:32 conversion */
uint32_t faultify_prob_conv(double probability) {
  return (probability == 1.0) ?
    0xFFFFFFFF : faultify_reverse((uint32_t)(probability*0x100000000));
}


/* Calling steps necessary to configure one PE */
int faultify_configure_pe(uint32_t location,uint64_t seed,uint32_t probability){
  write_to_sim(REG_PE_LOCATION,location); // pe #0
  write_to_sim(REG_SEED_LOW,(uint32_t)(seed & 0xFFFFFFFF)); // seed_low
  write_to_sim(REG_SEED_HIGH,seed >> 32); // seed _high
  write_to_sim(REG_PROB,probability); // prob
  write_to_sim(REG_CONTROL,0x00000001); // store
  return 0;
}


/* read back error probability of one PE */
uint32_t faultify_read_probability(uint32_t location) {
  uint32_t val;
  write_to_sim(REG_PE_LOCATION,location); // pe #0
  read_from_sim(REG_PROB,&val);
  return val;
}

/* read temporary soe & cycle cnt */
uint32_t faultify_read_temp_result(uint32_t location,uint32_t * soe,uint32_t * cnt) {
  write_to_sim(REG_READ_LOCATION,location); 
  read_from_sim(REG_NUM_ERR,soe);
  read_from_sim(REG_TMPCNT,cnt);
  return 0;
}

/* read cnt of simulated cycles */
uint32_t faultify_read_cycle_count(uint32_t location) {
  uint32_t cnt;
  write_to_sim(REG_READ_LOCATION,location); 
  read_from_sim(REG_TMPCNT,&cnt);
  return cnt;
}

/* shift settings into binomial generators */
int faultify_shift_settings(void) {
  write_to_sim(REG_CONTROL,0x00000002); // shift pe settings
  return 0;
}

/* run the simulation for x cycles */
int faultify_start_simulation(uint32_t sim_cycles) {
  write_to_sim(REG_SIM_CYCLES,sim_cycles);
  write_to_sim(REG_CONTROL,0x00000004); // start simulation
  return 0;
}

/* run the simulation for infinite cycles */
int faultify_start_free_simulation(void) {
  write_to_sim(REG_CONTROL,0x00000008); // start simulation
  return 0;
}

/* stop the simulation */
int faultify_stop_free_simulation(void) {
  write_to_sim(REG_CONTROL,0x00000010); // stop simulation
  return 0;
}

/* read back the amount of errors of one PE */
int faultify_read_num_errors(uint32_t location, uint32_t * num_errors) {
  write_to_sim(REG_READ_LOCATION,location);
  read_from_sim(REG_NUM_ERR,num_errors);
  return 0;
}

/* read debug register */
uint32_t faultify_debug_read(void) {
  uint32_t data;
  read_from_sim(REG_DEBUG,&data);
  return data;
}


/* poll status register to see if simulator is idle */
int faultify_poll_for_idle(void) {
  uint32_t data = 0xFFFFFFFF;
  // poll for idle
  while (data != 0x00000000) {
    read_from_sim(REG_STATUS,&data);
    //printf("control_reg: %X\n",data);
  }
  return 1;
}


/* single check for idle */
int faultify_check_for_idle(void) {
  uint32_t data = 0xFFFFFFFF;
  read_from_sim(REG_STATUS,&data);
  if (data == 0x00000000)
    return 1;
  return 0;
}

/* enable circuit reset between simulations */
void faultify_enable_circuit_reset(void) {
  write_to_sim(REG_RESET,1);
}

/* disable circuit reset between simulations */
void faultify_disable_circuit_reset(void) {
  write_to_sim(REG_RESET,0);
}

/* start a free run */
void faultify_start_free_campaign(uint32_t numInj,
				  uint32_t numOut,
				  double * probs) {
  
  uint64_t myRandomInteger;
  int i;
  
  faultify_poll_for_idle();
  for (i=0;i<numInj;i++) {
    myRandomInteger = rand()+1;//1234*i+9985983;
    faultify_configure_pe(numInj-1-i,myRandomInteger,faultify_prob_conv(probs[i]));
    faultify_poll_for_idle();
  }
  
  // store settings
  faultify_shift_settings();
  faultify_poll_for_idle();
  
  // start simulation
  faultify_start_free_simulation();
}

/* stop a free campaign */
void faultify_stop_free_campaign(uint32_t numOut,
				 uint32_t * cycles,
				 uint32_t * result) {
  
  faultify_stop_free_simulation();
  *cycles = faultify_read_cycle_count(0);
  int i;
  // readback errors
  for (i=0;i<numOut;i++) {
    faultify_read_num_errors(i,&result[i]);
  }
  
}


/* run one campaign */
void faultify_run_campaign(uint32_t numInj,
			   uint32_t numOut,
			   uint32_t numCycles,
			   double * probs,
			   uint32_t * result) {

  uint64_t myRandomInteger;
  int i;
  
  faultify_poll_for_idle();
  for (i=0;i<numInj;i++) {
    myRandomInteger = rand()+1;//1234*i+9985983;
    faultify_configure_pe(numInj-1-i,myRandomInteger,faultify_prob_conv(probs[i]));
    faultify_poll_for_idle();
  }
  
  // store settings
  faultify_shift_settings();
  faultify_poll_for_idle();
  
  // start simulation
  faultify_start_simulation(numCycles);
#if 0
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

#endif
  #if 0

XLlFifo * ctrl_fifo;
    XLlFifo * data_fifo;

    ctrl_fifo = malloc(sizeof(XLlFifo));
data_fifo = malloc(sizeof(XLlFifo));
if (data_fifo==NULL)
	   print("malloc error data_fifo...");
if (ctrl_fifo==NULL)
	   print("malloc error ctrl_fifo...");
  XLlFifo_Initialize(ctrl_fifo, XPAR_AXI_FIFO_MM_S_CTRL_BASEADDR);
    XLlFifo_Initialize(data_fifo, XPAR_AXI_FIFO_MM_S_DATA_BASEADDR);
  uint32_t config_data=0;
    config_data = (55 << 16);
    config_data |= 50;

      print("Config Decoder...");
    XLlFifo_Write(ctrl_fifo, &config_data, 4);
    XLlFifo_TxSetLen(ctrl_fifo, 4);
      print("done\n");

   print("Transmitting one Block...");
  int fr=0;
    uint32_t temp1,temp2,temp3;
    for (fr=0;fr<412;fr+=2) {
    	temp3 = 0;
    	temp1 = (llr[fr] & 0xF);
    	temp2 = (llr[fr+1] & 0xF);
    	temp3 = temp2 << 8;
    	temp3 |= temp1;
    	XLlFifo_Write(data_fifo, &temp3, 4);
 	}
      	XLlFifo_TxSetLen(data_fifo, 412*4/2);
    print("done\n");
 uint32_t buffer;

	while (XLlFifo_RxOccupancy(data_fifo)) {
	    //xil_printf("%x\n",XLlFifo_RxOccupancy(data_fifo));
 		int frame_len = XLlFifo_RxGetLen(data_fifo);
		while (frame_len) {
 			XLlFifo_Read(data_fifo, &buffer, 4);
 			xil_printf("%x\n",buffer);
 			frame_len -= 4;
		}
 	}

free(data_fifo);
free(ctrl_fifo);
#endif
  // wait 
  faultify_poll_for_idle();
  
  // readback errors
  for (i=0;i<numOut;i++) {
    faultify_poll_for_idle();
    faultify_read_num_errors(i,&result[i]);
  }

  
}

void faultify_run_free(uint32_t numInj,
		       uint32_t numOut,
		       double * probs,
		       double thr,
		       uint32_t * cycles,  
		       uint32_t * result) {
  
  uint64_t myRandomInteger;
  int i,j,k,l;
  uint32_t soe,cnt;
  uint32_t N = 1000;
  uint32_t M = 100;

  double vals[numOut][N];
  double stds[numOut][M];
  double curr_mean;
  double curr_std;

  uint8_t done;
  uint8_t done_out[numOut];

  faultify_poll_for_idle();
  for (i=0;i<numInj;i++) {
    myRandomInteger = i;
    faultify_configure_pe(numInj-1-i,(uint64_t)myRandomInteger,faultify_prob_conv(probs[i]));
    faultify_poll_for_idle();
  }
 
  // store settings
  faultify_shift_settings();
  faultify_poll_for_idle();

  // start simulation
  faultify_start_free_simulation();

  // TODO: timer
  done = 0 ;
  j = 0;
  // reset values
  for (k=0;k<numOut;k++) {
    for (l=0;l<M;l++) {
      stds[k][l] = 1.0f;
    }
  }

  uint32_t tim=0;
  while (done == 0) {
    
    usleep(10);
    tim++;
    
    // fill buffer
    if (j<N) {
      for (k=0;k<numOut;k++) {
	faultify_read_temp_result(k,&soe,&cnt);
	vals[k][j] = (double)soe/(double)cnt;
	//if ((tim%10)==0)
	//  fprintf(stdout,"[4] - %u - %u - %f \n",k,soe,vals[k][N-1]);
      }
    }
    // calculate
    if (j>=N) {
      for (k=0;k<numOut;k++) {
	for (l=1;l<N;l++) {
	  vals[k][l-1] = vals[k][l];
	}
	faultify_read_temp_result(k,&soe,&cnt);
	vals[k][N-1] = (double)soe/(double)cnt;
	//if ((tim%10)==0)
	//  fprintf(stdout,"[4] - %u - %u - %f \n",k,soe,vals[k][N-1]);
	
	// calculate variance
	curr_mean = 0;
	for (l=0;l<N;l++) {
	  curr_mean += vals[k][l]; 
	}
	curr_mean /= N;
	curr_std = 0;
	
	for (l=0;l<N;l++) {
	  curr_std += pow((vals[k][l] - curr_mean),2); 
	}
	curr_std /= (N-1);
	curr_std = sqrt(curr_std);
	
	// shift stds
	for (l=1;l<M;l++) {
	  stds[k][l-1] = stds[k][l];
	}
	// add latest val
	stds[k][M-1] = curr_std;
	// check for condition
	done_out[k] = 1;
	for (l=0;l<M;l++) {
	  if (stds[k][l] > thr) {
	    done_out[k] = 0;
	  }
	}
      }
      
      done = 1;
      for (k=0;k<numOut;k++) {
	if (done_out[k] != 1) {
	  done = 0;
	}
      }
     
      if (done == 1) {
	//for (k=0;k<numOut;k++) {
	//  fprintf(stdout,"k:%u %4.10f  \n",k,stds[k][M-1]);
	//
      }
      

    }
    j++;
    
  }
  
  
  faultify_stop_free_simulation();
  *cycles = faultify_read_cycle_count(0);
  
  // readback errors
  for (i=0;i<numOut;i++) {
    faultify_read_num_errors(i,&result[i]);
  }

  
}


