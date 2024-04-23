%{
	#include<stdio.h>
	int yyerror(char *s);
%}
%token Number '+' '*'
%%
E : E '+' T {printf("+");};
E : T {};
T : T '*' F {printf("*");};
T : F {};
F : Number {printf ("%d", $1);};
%%
int main()
{
        printf("\nEnter Inorder Expression : ");
	yyparse();
	//return 0;
}
int  yyerror(char *s)
{
printf("\n%s", s);
}