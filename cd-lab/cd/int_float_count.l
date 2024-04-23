%{
int intCount = 0;
int floatCount = 0;
%}

%%
[0-9]+      { intCount++; }
[0-9]+"."[0-9]+   { floatCount++; }
[ \t\n]     ;
.           ;

%%
int yywrap()
{
return 1;

}
int main() {
    printf("enter the integers and floating numbers");
    yylex();
    printf("Number of integers: %d\n", intCount);
    printf("Number of floating point numbers: %d\n", floatCount);
    return 0;
}
