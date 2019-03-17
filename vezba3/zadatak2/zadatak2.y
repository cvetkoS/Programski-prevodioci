%{

	#include <stdio.h>
	#define YYSTYPE char*
	int yylex(void);
	int yyparse(void);
	int yyerror(char *s);
	extern int yylineno;
	int word_counter = 0;
	int declarative_sentence_counter = 0;
        int interrogative_sentence_counter = 0;
        int exculpatory_sentence_counter = 0;
%}

%token _DOT
%token _QUESTIONM
%token _EXCLAMATIONM
%token _CAPITAL_WORD
%token _WORD

%%


sentence
	:
	| sentence _CAPITAL_WORD words _DOT { word_counter++; declarative_sentence_counter++; }
        | sentence _CAPITAL_WORD words _QUESTIONM { word_counter++; interrogative_sentence_counter++; }
        | sentence _CAPITAL_WORD words _EXCLAMATIONM { word_counter++; exculpatory_sentence_counter++; }
	;
words
	: /* empty */
	| words _WORD { word_counter++; }
	| words _CAPITAL_WORD { word_counter++; }
	;
%%

int main()
{
	yyparse();
	printf("Broj reci: %d.\n", word_counter);
	printf("broj izjavnih recenica: %d.\n", declarative_sentence_counter);
	printf("broj upitnih recenica: %d.\n", interrogative_sentence_counter);
	printf("broj uzvicnih recenica: %d.\n", exculpatory_sentence_counter);
}

int yyerror(char *s)
{
	fprintf(stderr, "line %d: SYNTAX ERROR %s\n", yylineno, s);
}
