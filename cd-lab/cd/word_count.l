%{
#include<stdio.h>
int wc=0,ch=0,l=0,t=0;
%}
%%
[\n] {l++;ch++;}
[a-zA-Z0-9']+ {wc++;ch+=yyleng;}
[\t] {t++;ch++;}
. {ch++;}
%%
yywrap(){}
int main()
{
  printf("Enter the string:");
  yylex();
  printf("\nLine count :%d",l);
  printf("\nWord count: %d",wc);
  printf("\ncharecteres count: %d",ch);
  printf("\n tab space count:%d",t);
  return 0;
}
