%{
#include<stdio.h>
void yyerror(char *s);

%}

%token NUMBER
%left '+''-'
%left '*''/''%'

%%
S:E {printf("accepted");return 0;}
E:E'+'T {}
E:E'-'T {} 
E:T{}
T:T'*'F {}
T:T'/'F {}
T:F {}
F:NUMBER {}
;
%%

int main(){
yyparse();
}
void yyerror(char *s){
printf("%s",s);
}
