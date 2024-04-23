%option noyywrap
%{
    #include<stdio.h>
%}

%%
[-]?[0-9]+ {printf("We found Integer");}
%%

int main()
{
    printf("Enter any digit\n");
    yylex();
    
    return 0;
}
