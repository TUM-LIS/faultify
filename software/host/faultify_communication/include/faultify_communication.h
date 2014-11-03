

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

faultify_comm_identify(simulator strct*)
faultify_comm_configure_pe(sim str *,*pe)
faultify_comm_start_simulation(sim str*,cycles/time/variance/free)
faultify_comm_stop_simulation(sim str*);
faultify_comm_read_result(sim str*,*output_error_probs)
 */
