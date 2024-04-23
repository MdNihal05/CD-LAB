%{
#include <stdio.h>
%}

DIGIT [0-9]

%%
{DIGIT}+ {
    int num = atoi(yytext);
    if (num % 2 == 0)
        printf("%d is even.\n", num);
    else
        printf("%d is odd.\n", num);
}
.|\n    { /* Ignore all other characters */ }
%%

int yywrap() {
    return 1;
}

int main() {
    printf("enter the number");
    yylex();
    return 0;
}

