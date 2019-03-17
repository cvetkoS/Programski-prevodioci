%option noyywrap yylineno

%{
	#define YYSTYPE char*
	#include "zadatak4.tab.h"
%}

%%
[ \t]			 { 	 	}
"."    			 { return _DOT; }
"?"			 { return _QUESTIONM; }
"!"			 { return _EXCLAMATIONM; }
(\n)+		 	 { return _NEWLINE; }
[A-Z][a-z]* 		 { yylval = yytext ; return _CAPITAL_WORD ; }
[a-z]+ 			 { yylval = yytext ; return _WORD ; }
. 			 { 					}
