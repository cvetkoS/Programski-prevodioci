%option noyywrap yylineno

%{
	#define YYSTYPE char*
	#include "zadatak3.tab.h"
%}

%%

[\t\n]+ 		 { /* skip */ }
"."    			 { return _DOT; }
"?"			 { return _QUESTIONM; }
"!"			 { return _EXCLAMATIONM; }
","			 { return _COMMA; }
[A-Z][a-z]* 		 { yylval = yytext ; return _CAPITAL_WORD ; }
[a-z]+ 			 { yylval = yytext ; return _WORD ; }
. 			 { 					}
