%{
#include<stdio.h>
int len;
void func(int l);
%}
%%
[a-zA-Z0-9]+ {len=yyleng;func(len);}
%%
void func(int l)
{
   if(yytext[0]=='A' || yytext[0]=='a')
   {
      if(l==3)
      {
         printf("%s :is the valid word\n",yytext);
      }
      else 
      {
        printf("%s :is word is not of length 3\n",yytext);
      }
   }
   else 
   {
    printf("%s: word does not start with A or a\n",yytext);
   }
 }
int yywrap(){}

int main()
{
   printf("enter the string\n");
   yylex();
   return 0;
 }

