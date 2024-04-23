%option noyywrap
%{
	#include<stdio.h>
	int Ic=0,Dc=0; 
%}

%%
[-]?[0-9]+ {Ic++;}
[-]?[0-9]+?[\.][0-9]+ {Dc++;}
%%
int main()
{
    yylex();
    printf("\nCount of Integers : %d", Ic);
    printf("\nCount of Decimal point Numbers : %d", Dc);
	return 0;
}