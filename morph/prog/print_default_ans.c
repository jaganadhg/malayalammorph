#include "defn.h"

extern void resufun();

void
print_default_ans(word)
char word[Morphsize];
{
int offset;
offset = 1; /* This is the offset from feature_value.c file corresponding to 
singular direct case */
resufun(word,offset);
}
