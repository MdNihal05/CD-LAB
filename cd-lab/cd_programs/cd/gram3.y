%{
	#include<stdio.h>
	int yylex(void);
	void yyerror(char *s);
	int flag=0;
%}
%token id
%token '=' '*'
%% 
S:L '=' R {printf("valid");}
|R ;
L:'*' R {}
|id ;
R:L {};
%%
void main(){
yyparse();
if(flag==1)printf("invalid");	
return;
}
void yyerror(char *s){
	flag=1;
}