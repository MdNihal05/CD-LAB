%option noyywrap
%{
	#include<stdio.h>
	int num;
	void CheckEO(int num);
%}

%%
[0-9]+ {num = atoi(yytext); CheckEO(num);}
%%
void CheckEO(int num)
{
if (num%2==0)
	 {
	    printf("Even");
	 }
	 else
	 {
	    printf("Odd");
	 }
}
int main()
{
    printf("Enter the number : ");
    yylex();
    

	return 0;
}