#include <string.h>
#include "struct.h"

void
build_struct(word,ch_ar1,ch_ar2)
char word[SUFFWORDSIZE];
char ch_ar1[100][2000];
char ch_ar2[100][2000];
{
struct lex_info *tag,dummy;
char * tag_dummy;
char  tmp[1000];
int i,j,k,k1;
i=0;
tag= (struct lex_info *)malloc(sizeof(struct lex_info));
while(ch_ar1[i][0] !='\0')
{
strcpy(tag->word,word);
k=0;
tag->priority=ch_ar1[i][k]; /* Currently priorities range between 0 to 9 */
k++;  /* To absorb priority */
k++;  /* To absorb " */      
k++;  /* To absorb , */             
k++;  /* To absorb " */      
while((ch_ar1[i][k] != '"') && (ch_ar1[i][k] != '\0'))
{
 tmp[k-4] = ch_ar1[i][k];
 k++;
}
if(k>1) tmp[k-4] = '\0';
else tmp[0] = '\0';
strcpy(tag->pdgm,tmp);
 k++;  /* To absorb " */      
 k++; /*  To absorb , */
 k++; /*  To absorb " */
k1 = k;
k=0;
while(ch_ar1[i][k1] != '"' && ch_ar1[i][k1] != '\0') tmp[k++] = ch_ar1[i][k1++];
if(k>1) tmp[k] = '\0';
else tmp[0] = '\0';
strcpy(tag->cat,tmp);
/*
sscanf(ch_ar1[i],"%s,%s",tag->pdgm,tag->cat);
*/
tag_dummy = (char *)tag;
for(j=0;j<sizeof(dummy);j++)
ch_ar2[i][j] = tag_dummy[j];
i++;
}
strcpy(ch_ar2[i],"");
}
