/*
#include <stdio.h>

main()
{
char word[50];
char pdgm[50];
getline(word);
while(word[0]!='\0')
{
get_paradigm(word,pdgm);
printf("%s,%s\n",word,pdgm);
getline(word);
}
}
*/

#include <string.h>
#include "defn.h"

get_paradigm(word,pdgm)
char word[WORD_SIZE];
char pdgm[WORD_SIZE];
{
int n;
struct exp_pdgm *tag;
pdgm[0]='\0';
n = strlen(word);
switch(word[n-1]) {
case 'a' : strcpy(pdgm,"Gara");
	   break;
case 'A' : strcpy(pdgm,"ladakA");
	   break;
case 'i' : strcpy(pdgm,"kavi");
	   break;
case 'I' : strcpy(pdgm,"ladakI");
	   break;
case 'u' : strcpy(pdgm,"Sawru");
	   break;
case 'U' : strcpy(pdgm,"AlU");
	   break;
case 'z' : strcpy(pdgm,"kuAz");
	   break;
case 'M' : strcpy(pdgm,"sarasoM");
	   break;
case 'o' : strcpy(pdgm,"redio");
	   break;
}
}
