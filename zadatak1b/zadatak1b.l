%{

    int hexno=0;

%}


%%

0[xX][0-9a-fA-F]+           hexno++;

%%

int main()
{
    yylex();
    printf("\nNumber of hex numbers: %d ",hexno);
} 
