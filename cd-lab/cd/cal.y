%{
#include<stdio.h>
%}

%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'


%%
AE:E{printf("Result=%d\n",$$);
printf("valid");
return 0;}

E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
|E'+''+' {$$=$$+1;}
|NUMBER {$$=$1;}
;
%%
void main(){

yyparse();

}

void yyerror()
{
printf("invalid");
}
