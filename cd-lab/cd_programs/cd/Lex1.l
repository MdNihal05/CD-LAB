%option noyywrap
%{
	#include<stdio.h>
%}

%%
"cse" {printf("Welcome!!!");}
%%
int main()
{
        yylex();
	return 0;
}