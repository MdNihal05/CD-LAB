%{
	#include<stdio.h>
	int yylex(void);
	void yyerror(char *s);
	int flag=0;
%}
%token '+' '*'
%% 
E:L {printf("valid");};
L:L L '*'
|L L '+' ;
%%
void main(){
yyparse();
if(flag==1)printf("invalid");	
return;
}
void yyerror(char *s){
	flag=1;
}