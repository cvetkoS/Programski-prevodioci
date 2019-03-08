%{
    int postiveno=0;
    int negtiveno=0;
%}


%%

\+?[0-9]+                   postiveno++;
-[0-9]+                     negtiveno++;

%%

int main()
{
    yylex();
    printf("\nNumber of positive integer numbers: %d",postiveno);
    printf("\nNumber of negative integer numbers: %d",negtiveno);
} 



