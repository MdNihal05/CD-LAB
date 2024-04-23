%{
int in_word = 0;
%}

%%
[A-Za-z]+ {
    if (strlen(yytext) == 3 && yytext[0] == 'A') {
    	in_word++;
        printf("%s\n", yytext);
    }
}
.|\n       {  }
%%

int yywrap() {return 1;}

int main() {
    yylex();
    printf("no of words start with A and length 3 are %d",in_word);
    return 0;
}

