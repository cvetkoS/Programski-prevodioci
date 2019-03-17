%{

	#include <stdio.h>
	#define YYSTYPE char*
	int yylex(void);
	int yyparse(void);
	int yyerror(char *s);
	extern int yylineno;
	int declarative_sentence_counter = 0;
        int interrogative_sentence_counter = 0;
        int exculpatory_sentence_counter = 0;
%}

%token _DOT
%token _QUESTIONM
%token _EXCLAMATIONM
%token _CAPITAL_WORD
%token _WORD
%token _COMMA

%%

text
	: /* empty text */
	| text _CAPITAL_WORD e endings
	;

e
	: /* empty */
	| e _WORD
        | e _COMMA _WORD
        | e _COMMA _CAPITAL_WORD
	| e _CAPITAL_WORD
	;

endings
    : e _DOT { declarative_sentence_counter++; }
    | e _QUESTIONM { interrogative_sentence_counter++; }
    | e _EXCLAMATIONM { exculpatory_sentence_counter++; }
    ;
%%

int main()
{
	yyparse();
	printf("broj izjavnih recenica: %d.\n", declarative_sentence_counter);
	printf("broj upitnih recenica: %d.\n", interrogative_sentence_counter);
	printf("broj uzvicnih recenica: %d.\n", exculpatory_sentence_counter);
}

int yyerror(char *s)
{
	fprintf(stderr, "line %d: SYNTAX ERROR %s\n", yylineno, s);
}
