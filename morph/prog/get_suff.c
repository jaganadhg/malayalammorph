#include <string.h>
#include <stdio.h>
#include "defn.h"

void 
get_suff(morph,suff,position)
char suff[SUFFWORDSIZE],morph[Morphsize];
int position;
{
char chr[2];
chr[0]=morph[position];
chr[1]='\0';
strcat(suff,chr);
}
