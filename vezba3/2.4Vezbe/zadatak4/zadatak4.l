%option noyywrap yylineno

%{
  
	char *hours[] = { "00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "01", "02", "03", "04", "05", "06", 					"07", "08", "09", "10", "11", "12" };
 
%}

%%

[0-9]\:[0-5][0-9]		{ printf("%s:%d AM", hours[atoi(yytext)], atoi(yytext+2));	}
[0][0-9]\:[0-5][0-9]		{ printf("%s:%d AM", hours[atoi(yytext)], atoi(yytext+3));	}
[1][0-1]\:[0-5][0-9]		{ printf("%s:%d AM", hours[atoi(yytext)], atoi(yytext+3));	}
[1][2-9]\:[0-5][0-9]		{ printf("%s:%d PM", hours[atoi(yytext)], atoi(yytext+3));	}
[2][0-3]\:[0-5][0-9]		{ printf("%s:%d PM", hours[atoi(yytext)], atoi(yytext+3));	}
