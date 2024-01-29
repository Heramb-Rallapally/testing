%{
#include<stdio.h>
int len=0;
%}

%%
[' ']+ {printf("NEW WORD \n");len++;}
%%

int main()
{
yylex();
printf("The number of words=%d",len+1);
}

int yywrap()
{
return 1;}


