%{
#include<stdio.h>
int c=0;
int l=0;
int w=0;
%}

%%
[\n]+ {l++;}
[' ']+ {c++;w++;}
[a-zA-Z0-9] {c++;};
%%

int main()
{
yylex();
printf("THE NUMBER OF WORDS=%d\n",w+l);
printf("THE NUMBER OF lines=%d\n",l);
printf("THE NUMBER OF characters=%d\n",c);
}

int yywrap()
{
return 1;
}