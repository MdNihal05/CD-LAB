%{
#include<stdio.h>
void yyerror(char *s);
%}

%token digit

%%
N:L {$$=$1;printf("decimal value is %d",$$);}
L:L B {$$=$1*2+$2}
|B {$$=$1;}
B:digit {$$=$1;}
;
%%

void main(){
yyparse();
}
void yyerror(char *s){
printf("%s",s);
}
