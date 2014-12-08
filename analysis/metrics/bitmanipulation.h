int byte_to_bit(int endian, unsigned char *ibuf, int ilen, unsigned char *obuf, int *olen);
int bit_to_byte(int endian, unsigned char *ibuf, int ilen, unsigned char *obuf, int *olen);
int fp_precision_reduction(double *in,unsigned int len,unsigned int precision);
int fp_uniform_fault_injection(double *in,unsigned int len, double p_e);
int fp_fault_injection(double *in,unsigned int len, double *p_e);
int binary_fault_injection(int *in,unsigned int len,unsigned int bits, double *p_e);
