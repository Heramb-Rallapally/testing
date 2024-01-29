%{
#include<stdio.h>
int v=0;
int c=0;

%}

%%
[ \t\n]+ {;}
[aeiouAEIOU] {v++;}

[^aeiouAEIOU] {c++;}
%%

int main()
{
yylex();
printf("The number of vowels is %d \n",v);
printf("The number of consonants is %d",c);
}
int yywrap()
{
return 1;
}