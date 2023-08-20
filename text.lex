%option noyywrap
%{
	#include<stdio.h>
	int count = 0;
%}
digit [0-9]
letter [A-Za-z]
%%
{letter}({letter}|{digit})* {printf("Id is %s\n",yytext);}
. {printf("Invaild.\n");}
%%
int main()
{
yylex();
	return 0;
}