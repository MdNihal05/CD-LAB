%{
#include<stdio.h>
void yyerror(char *s);
%}

%token '(' ')'

%%


S:L {printf("valid");return 0;}
L:L '(' L ')' {}
| {}
;

%%
int main(){
yyparse();
}
void yyerror(char *s){
printf("%s",s);
printf("invalid");
}
