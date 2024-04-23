%option noyywrap
%{
	#include<stdio.h>
        #include "Sample4.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return Num;}
[-+*/%()] {return yytext[0];}
%%
