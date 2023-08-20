%option noyywrap
%{
	#include<stdio.h>
	int i = 0;
%}
letter[A-Za-z]
digit[0-9]
%%
({letter}|{digit})+ {i++;}
"\n" {printf("Total number of word is : %d\n",i);}
%%
int main()
{
yylex();
	return 0;
}