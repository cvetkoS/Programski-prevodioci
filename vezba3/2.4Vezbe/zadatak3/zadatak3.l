%option noyywrap yylineno

%{
  
	char *months[] = { "", "Januar", "Februar", "Mart", "April", "Maj", "Jun", "Jul", "Avgust", "Septembar", 					"Oktobar", "Novembar", "Decembar" };
 
%}

%%

[0-9]{2}\/[0-9]{2}\/[0-9]{4}		{ printf("%s %d, %d.", months[atoi(yytext)], atoi(yytext+3), atoi(yytext+6));	}
