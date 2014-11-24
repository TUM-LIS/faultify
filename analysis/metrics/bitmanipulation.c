#include <stdio.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>


int byte_to_bit(int endian, unsigned char *ibuf, int ilen, unsigned char *obuf, int *olen)
{
    int i,j;
    for (i=0; i<ilen; i++)
    {
        for (j=0; j<8; j++)
        {
            if (endian == 0)
            {
                obuf[(i*8) + j] = (ibuf[i]>>j) & 1;             //le
            }
            else
            {
                obuf[(i*8) + j] = (ibuf[i]>>(7-j)) & 1;         //be
            }
        }
    }
    *olen = ilen * 8;
    return 0;
}


// endian = 0 - little endian
// endian = 1 - big endian
int bit_to_byte(int endian, unsigned char *ibuf, int ilen, unsigned char *obuf, int *olen)
{
    int i,j;
    j = 0;
    for (i=0; i<ilen; i+=8)
    {
            if (endian == 0)
            {
                obuf[j] = (ibuf[i+0]<<0) + (ibuf[i+1]<<1) + (ibuf[i+2]<<2) + (ibuf[i+3]<<3) +       //le
                    (ibuf[i+4]<<4) + (ibuf[i+5]<<5) + (ibuf[i+6]<<6) + (ibuf[i+7]<<7);
            }
            else
            {
                obuf[j] = (ibuf[i+0]<<7) + (ibuf[i+1]<<6) + (ibuf[i+2]<<5) + (ibuf[i+3]<<4) +       //be
                    (ibuf[i+4]<<3) + (ibuf[i+5]<<2) + (ibuf[i+6]<<1) + (ibuf[i+7]<<0);
            }
        j++;
    }
    *olen = j;
    return 0;
}



int fp_precision_reduction(double *in,unsigned int len,unsigned int precision) {
  unsigned int i,b;
  for (i=0;i<len;i++) {
    for (b=0;b<(52-precision);b++) {
      // unset bits
      *(unsigned long *)&in[i] &= ~((unsigned long)1 << b);
    }  
  }
  //printf("%lf\n",in[0][0]);
  return 1;
}


int fp_uniform_fault_injection(double *in,unsigned int len, double p_e) {
  
  unsigned int i,b;
  double r;
  for (i=0;i<len;i++) {
    for (b=0;b<64;b++) {
      // fault injection
      r = ((double)rand())/RAND_MAX;
      if (r>p_e) {
        // nothing
      } else {
        // toggle
        *(unsigned long *)&in[i] ^= ((unsigned long)1 << b);
      }
    }  
  }
  return 1;
  
}


int fp_fault_injection(double *in,unsigned int len, double *p_e) {
  
  unsigned int i,b;
  double r;
  for (i=0;i<len;i++) {
    for (b=0;b<64;b++) {
      // fault injection
      r = ((double)rand())/RAND_MAX;
      if (r>p_e[b]) {
        // nothing
      } else {
        // toggle
        *(unsigned long *)&in[i] ^= ((unsigned long)1 << b);
      }
    }  
  }
  return 1;
  
}
