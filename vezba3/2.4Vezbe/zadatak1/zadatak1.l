%option noyywrap yylineno

	int capital_word = 0;
	int word = 0;

%{
	#define YYSTYPE char*

%}

%%

[A-Z][a-z]+		{ capital_word++; }
[a-z]+			{ word++; }
. 	


%%

int main() {
	yylex();
	printf("Capital words: %d \n", capital_word);
	printf("Words: %d \n", word);
}
