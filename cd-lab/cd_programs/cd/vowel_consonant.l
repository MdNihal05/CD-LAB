%option noyywrap
%{
	#include<stdio.h>
	int Vc=0, Cc=0;
%}

%%
[aeiouAEIOU] {Vc++;}
[a-zA-Z] {Cc++;}
%%
int main()
{
    yylex();
    printf("\nCount of Vowels: %d", Vc);
    printf("\nCount of Consonants: %d", Cc);
	return 0;
}