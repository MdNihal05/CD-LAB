%{
	#include<stdio.h>
	int yylex();
	extern int yyerror(char *s);
%}
%token a
%%
S : a A {printf("Vaild");}
A : a;
%%
int main()
{
        yyparse();
	return 0;
}

int yyerror(char *s)
{
     printf("%s", s);
}