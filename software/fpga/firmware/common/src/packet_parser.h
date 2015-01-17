/*
 * packet_parser.h
 *
 *  Created on: Nov 14, 2014
 *      Author: david
 */


#ifndef PACKET_PARSER_H_
#define PACKET_PARSER_H_

#include <stdio.h>
#include <string.h>

#include "xparameters.h"

#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#ifdef __arm__
#include "xil_printf.h"
#endif

#include "lwip/inet.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#include <stdint.h>

#include "faultify_simulation.h"

uint8_t * buffer;
double * pe;
// f-a-u-l
#define MAGIC_NR_LOW 0x6661756c
// t-i-f-y
#define MAGIC_NR_HIGH 0x74696679


enum commands {cmd_identify=1,
	       cmd_configure=2,
               cmd_run=3,
               cmd_start_free_run=4,
               cmd_stop_free_run=5,
               cmd_user_data_type_1=6,
	       cmd_speed_test=7};

int packet_parser(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_identify(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_configure(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_run(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_start_free_run(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_stop_free_run(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_viterbi_decode(struct tcp_pcb *pcb,unsigned char * data,int len);
int comm_speed_test(struct tcp_pcb *pcb,unsigned char * data,int len);



#endif /* PACKET_PARSER_H_ */
