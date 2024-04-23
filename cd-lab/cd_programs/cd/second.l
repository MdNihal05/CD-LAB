%{
	#include<stdio.h>
	/* we can have comments*/
	int m;
%}

%%
[0-9]+ {m=atoi(yytext);
if(m%2==0)
printf("even");
else
printf("odd");
}
.* {printf("wrong not a no");}
%%
int main()
{
printf("enter the i/p");
yylex();
	return 0;
}
int yywrap()
{return 1;}