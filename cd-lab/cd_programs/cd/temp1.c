#include<stdio.h>
#include<ctype.h>
#include<string.h>
int n,count,i=0,j=0,k;
char f[20],prodset[20][20];
void first(char c){
    if(islower(c)){
        f[n++]=c;
    }
    for(i=0;i<count;i++){
        if(prodset[i][0]==c){
            if(prodset[i][2]=='$')follow(prodset[i][0]);
            else first(prodset[i][2]);
        }
    }
}
void follow(char c){
    if(prodset[0][0]==c){
        f[n++]='$';
    }
    for(i=0;i<count;i++){
        for(j=2;j<strlen(prodset[i]);j++){
            if(prodset[i][j]==c){
                if(prodset[i][j+1]!='\0')first(prodset[i][j+1]);
                if(prodset[i][j+1]=='\0'&&prodset[i][0]!=c) follow(prodset[i][0]);
            }
        }
    }
}

int main(){
    char ch;
    int choice;
    scanf("%d",&count);
    for(i=0;i<count;i++){
        scanf("%s",prodset[i]);
    }
    do{
        n=0;
        printf("Enter char");
        scanf(" %c",&ch);
        follow(ch);
        for(k=0;f[k]!='\0';k++) printf("%c",f[k]);
        scanf("%d",&choice);
    }while(choice==1);
}