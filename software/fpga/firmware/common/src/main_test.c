
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "faultify_simulation.h"


#define numInj 140
#define numOut 41
#define cycles 10000
int main(void) {


double pe[numInj];
uint32_t result[numOut];

int i;
for (i=0;i<numInj;i++) {
	pe[i] = 0.0f;
}
//pe[0] = 0.0001f;
pe[100] = 0.0001f;

faultify_run_campaign(numInj,numOut,cycles,&pe[0],&result[0]);

return 1;
}
