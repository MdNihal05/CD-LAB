%{
	#include<stdio.h>
%}

%%
">"|"<"|"<="|">="|"=="|"!=" {printf("Relational opearators= %s",yytext);}
.* {printf("wrong");}
%%
int main()
{
printf("enter the i/p");
yylex();
return 0;
}
int yywrap()
{return 1;}