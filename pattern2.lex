%option noyywrap
%{
    #include <stdio.h>
%}

%%
a(bc)+de     { printf("Pattern matched.\n"); }
[a-zA-Z]+    { printf("Pattern not matched.\n"); }
"\n"        {}
%%
int main() {
    yylex();
    return 0;
}
