%{
	#include<stdio.h>
	int yylex();
	int yyerror(char *s);
%}
%token Number '+' '*'
%%
E:E'+'T {$$=$1+$3; printf("%d", $$);}
E:T{$$=$1;}
T:T'*'F {$$=$1*$3;}
T:F {$$=$1;}
F:Number {$$=$1;};
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