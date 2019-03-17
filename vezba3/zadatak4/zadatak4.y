%{
    #include <stdio.h>
    #define YYSTYPE char*
    int yylex(void);
    int yyparse(void);
    int yyerror(char *s);
    extern int yylineno;
    int paragraph_counter=0;
    int word_counter = 0;
    int declarative_sentence_counter = 0;
    int interrogative_sentence_counter = 0;
    int exculpatory_sentence_counter = 0;
%}

%token _NEWLINE
%token _WORD
%token _DOT
%token _QUESTIONM
%token _EXCLAMATIONM
%token _CAPITAL_WORD

%%

paragraph
    : 
    | paragraph _CAPITAL_WORD e _NEWLINE {paragraph_counter++;}
    ;
e
    :
    | e _WORD { word_counter++; }
    | e _CAPITAL_WORD { word_counter++; }
    | e _DOT { declarative_sentence_counter++; }
    | e _QUESTIONM { interrogative_sentence_counter++; }
    | e _EXCLAMATIONM { exculpatory_sentence_counter++; }
    ;


%%

int main()
{
    yyparse();
    printf("broj reci: %d.\n", word_counter);
    printf("broj izjavnih recenica: %d.\n", declarative_sentence_counter);
    printf("broj upitnih recenica: %d.\n", interrogative_sentence_counter);
    printf("broj uzvicnih recenica: %d.\n", exculpatory_sentence_counter);
    printf("Broj pasusa je: %d\n", paragraph_counter);
    return 0;
}

int yyerror(char *s)
{
	fprintf(stderr, "line %d: SYNTAX ERROR %s\n", yylineno, s);
}

