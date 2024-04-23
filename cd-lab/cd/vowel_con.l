%{
#include <stdio.h>
int vowel_count = 0;
int consonant_count = 0;
%}

%%
[aAeEiIoOuU]    { vowel_count++; }
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]    { consonant_count++; }
[ \t\n]         ; // Ignore whitespace characters
.               ; // Ignore any other characters
%%

int main() {
    printf("enter the sentence");
    yylex();
    printf("Number of vowels: %d\n", vowel_count);
    printf("Number of consonants: %d\n", consonant_count);
    return 0;
}

int yywrap() {
    return 1;
}
