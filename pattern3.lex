%option noyywrap
%{
	#include<stdio.h>
%}

%%
a(bc)?de|ade { printf("Pattern matched.\n"); }
[a-zA-Z]+    { printf("Pattern not matched.\n"); }
"\n" {}
%%
int main()
{
yylex();
	return 0;
}