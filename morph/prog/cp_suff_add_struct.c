#include "struct1.h"
#include "struct.h"
cp_suff_add_struct(suff_add,ch_ar)
char suff_add[SUFFWORDSIZE];
char ch_ar[SUFFWORDSIZE];
{
struct suff_add_info dummy;
int i,size;
i=0;
size=sizeof(dummy);
for(i=0;i<size;i++)
suff_add[i]=*ch_ar++;
}
