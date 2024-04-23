%{
	#include<stdio.h>
	int  yyerror(char *s);
	
%}
%token id '+' '*'
%%
E : E '+' T {printf ("Valid");}
E : T {};
T : T '*' F {}
T : F {};
F : id {};
%%
int main()
{
        yyparse();
	return 0;
}
int  yyerror(char *s)
{
printf("\n%s", s);
}