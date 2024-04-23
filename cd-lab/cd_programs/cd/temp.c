#include<stdio.h>
#include<ctype.h>
int n;
char prodset[20][20];
void addToResult(char *result,char val){
    int k;
    for(k=0;result[k]!='\0';k++){
        if(result[k]==val){
            return;
        }
    }
    result[k]=val;
    result[k+1]='\0';
}
void first(char *result,char c){
    char subresult[20];
    subresult[0]='\0';
    result[0]='\0';
    int foe=0;
    if(!isupper(c)){
        addToResult(result,c);
        return;
    }
    int i,k;
    for(i=0;i<n;i++){
        if(prodset[i][0]==c){
            if(prodset[i][2]=='$'){
                addToResult(result,'$');
                return;
            }
            else{
                int j=2;
                while(prodset[i][j]!='\0'){
                    foe=0;
                    first(subresult,prodset[i][j]);
                    for(k=0;subresult[k]!='\0';k++){
                        addToResult(result,subresult[k]);
                    }
                    for(k=0;subresult[k]!='\0';k++){
                        if(subresult[k]=='$'){
                            foe=1;
                            break;

                        }
                    }
                    if(foe==0) break;
                    j++;
                }
            }
        }
    }
}

int main(){
    printf("No of prods:");
    scanf("%d",&n);
    printf("Enter prods:");
    int i;
    for(i=0;i<n;i++){
        scanf("%s",prodset[i]);
    }
    int choice;
    char result[20];
    char ch;
    scanf("%c", &ch);
    do{
		printf("Enter character: ");
        scanf(" %c", &ch);
        first(result,ch);
        printf("first of");
        for(i=0;result[i]!='\0';i++) printf("%c ",result[i]);
        scanf("%d",&choice);
    }while(choice==1);

}
