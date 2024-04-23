%option noyywrap
%{
	#include<stdio.h>
	#include "Sample3.tab.h"
%}

%%
[()] {return yytext[0]; }
%%
