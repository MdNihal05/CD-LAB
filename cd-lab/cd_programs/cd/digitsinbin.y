%{
  #include <stdio.h>
  int yylex(void);
  int count = 0,c1 = 0;
%}
%token digit
%%
N : L {printf("No.of bits : %d\n",c1);return 0;}
|L '\n' {printf("No.of bits : %d\n",c1);return 0;};
L : L B {c1 = count;}
L : B {c1 = count;}
B : digit {count = count+1;}
;
%%

void main()
{
   yyparse();
}
void yyerror(char *s)
{

}