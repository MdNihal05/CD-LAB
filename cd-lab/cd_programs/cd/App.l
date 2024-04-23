%option noyywrap
%{
	#include<stdio.h>
	#include "y.tab.h"
%}

%%
[0-9] {return id;}
[+*] {return yytext[0];}
%%
