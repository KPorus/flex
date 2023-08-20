%option noyywrap
%{
#include <stdio.h>
%}

%%
^[^aeiou]   { printf("Pattern matched.\n"); }
^[a-zA-Z]+    { printf("Pattern not matched.\n"); }
%%
int main() {
    yylex();
    return 0;
}
