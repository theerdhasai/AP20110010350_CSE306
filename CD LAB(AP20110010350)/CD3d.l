%option noyywrap
%{
#include<stdio.h>
%}

%%

[0-1]*00 {printf("string accepted");}

[0-9]* {printf("string rejected");}
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
return 0;
}