%{

    int breakno=0;
%}


%%

[bB][rR][eE][aA][kK]        breakno++;
%%

int main()
{
    yylex();
    printf("\nNumber of break keywords in a file: %d\n",breakno);
} 
