%{

#include<stdio.h>
void yyerror(char *s);
int c1=0;
%}

%token digit

%%
N : L {printf("no.of bits: %d", c1); return 0;}
L : L B { }
  | B { }
B : digit { c1 = c1 + 1; }
;
%%
void main(){
yyparse();
}
void yyerror(char *s)
{

};
