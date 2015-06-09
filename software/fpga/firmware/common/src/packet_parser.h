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


#include <stdint.h>

#include "lwip/inet.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwipopts.h"

#include "faultify_simulation.h"

uint8_t * buffer;
double * pe;
// f-a-u-l
#define MAGIC_NR_LOW 0x6661756c
// t-i-f-y
#define MAGIC_NR_HIGH 0x74696679


uint8_t *llr_buffer;

enum commands {cmd_identify=1,
	       cmd_configure=2,
               cmd_run=3,
               cmd_start_free_run=4,
               cmd_stop_free_run=5,
               cmd_user_data_type_1=6,
	       cmd_speed_test=7,
	       cmd_store_llr=8,
	       cmd_decode_llr=9};

int packet_parser(int sd,unsigned char * data,int len);
int comm_identify(int sd,unsigned char * data,int len);
int comm_configure(int sd,unsigned char * data,int len);
int comm_run(int sd,unsigned char * data,int len);
int comm_start_free_run(int sd,unsigned char * data,int len);
int comm_stop_free_run(int sd,unsigned char * data,int len);
int comm_viterbi_decode(int sd,unsigned char * data,int len);
int comm_speed_test(int sd,unsigned char * data,int len);
int comm_store_llr(int sd,unsigned char * data,int len);
int comm_decode_llr(int sd,unsigned char * data,int len);



#endif /* PACKET_PARSER_H_ */
