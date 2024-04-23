%{
	#include<stdio.h>
	int yylex();
	int yyerror(char *s);
	int Pc = 0;
%}
%token '(' ')'
%%
A : S {printf ("Count : %d", Pc);}
S : '(' S ')'  {Pc = Pc+1;}
S : {(Pc = 0);}
%%
int main()
{
        yyparse();
	return 0;
}
int yyerror (char *s)
{
     printf("%s", s);
}