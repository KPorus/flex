%option noyywrap
%{
#include <stdio.h>
int Vcount = 0;
int Ccount = 0;
%}

%%
[aeiouAEIOU] { Vcount++; printf("%s is a vowel.\n", yytext); }
[a-zA-Z]     { Ccount++; printf("%s is a consonant.\n", yytext);}
"\n"           { printf("Total Vowel: %d\n", Vcount); Vcount = 0;  printf("Total Consonants: %d\n", Ccount); Ccount = 0;}
.            { /* Ignore any other character */ }
%%

int main()
{
    yylex();
    return 0;
}
