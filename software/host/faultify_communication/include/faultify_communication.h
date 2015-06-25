#pragma once

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h> 
#include <arpa/inet.h>


#define HOST_SW_VER_MAJOR 0x00
#define HOST_SW_VER_MINOR 0x01


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
	       cmd_speed_test=7,
	       cmd_store_llr=8,
	       cmd_decode_llr=9};

struct faultify_handle {
  int portno;
  int sockfd;
  struct hostent *server;

  struct sockaddr_in serv_addr;
  uint8_t version_fpga_software[2];
  uint8_t version_fpga_hardware[2];
  uint8_t version_host_software[2];
  uint32_t circuit_identifier;
  uint32_t numInj;
  uint32_t numIn;
  uint32_t numOut;
  uint32_t numCycles;

};

int8_t faultify_comm_init(struct faultify_handle **ftx);
int8_t faultify_comm_connect(struct faultify_handle *ftx);
int8_t faultify_comm_disconnect(struct faultify_handle *ftx);
int8_t faultify_comm_identify(struct faultify_handle *ftx);
int8_t faultify_comm_configure(struct faultify_handle *ftx,uint32_t len,double *pe);
int8_t faultify_comm_run(struct faultify_handle *ftx,uint32_t cycles,uint32_t * numErrors);

int8_t faultify_comm_start_free_run(struct faultify_handle *ftx);
int8_t faultify_comm_stop_free_run(struct faultify_handle *ftx,uint32_t * cycles,uint32_t * numErrors);
int8_t faultify_comm_viterbi_decode(struct faultify_handle *ftx,int32_t *llr,uint32_t len,uint8_t *decoded);
int8_t faultify_comm_speed_test(struct faultify_handle *ftx,uint32_t numData);
int8_t faultify_comm_load_llr(struct faultify_handle *ftx,int32_t *llr,uint32_t len);



uint8_t faultify_packet_check_sequence(uint8_t *data);
enum commands faultify_packet_check_cmd_type(uint8_t *data);
uint32_t faultify_packet_check_length(uint8_t *data);
uint8_t faultify_packet_set_magic_number(uint8_t *data);
uint8_t faultify_packet_set_packet_type(uint8_t *data,enum commands cmd);
uint8_t faultify_packet_set_packet_length(uint8_t *data,uint32_t len);
uint8_t faultify_packet_set_packet_length(uint8_t *data,uint32_t len);
uint8_t faultify_packet_set_cycles(uint8_t *data,uint32_t cycles);


/*
http://www.linuxhowtos.org/C_C++/socket.htm
| magic number | cmd type | req/answ | last   | length | data |
| 8 Byte       | 2 Byte   | 1 Byte   | 1 Byte | 4 Byte | x    |


#define PORT xx
#define MAX_FRAME_SIZE xx
#define cmd_identify 1
#define cmd_configure 2
#define cmd_start_sim 3
#define cmd_stop_sim 4
#define cmd_read_res 5

typedef sim_str {
uint8_t version_fpga_software[2];
uint8_t version_fpga_hardware[2];
uint8_t version_host_software[2];
uint32_t circuit_identifier;
uint32_t numInj;
uint32_t numOut;
uint32_t numIn;
char * ip;
uint32_t baseaddr;

};
faultify_comm_connect(simulator struct *)
faultify_comm_identify(simulator strct*)
faultify_comm_configure_pe(sim str *,*pe)
faultify_comm_start_simulation(sim str*,cycles/time/variance/free)
faultify_comm_stop_simulation(sim str*);
faultify_comm_read_result(sim str*,*output_error_probs)
 */
