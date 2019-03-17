%option noyywrap yylineno


%{
	#define YYSTYPE char*

%}

%%

[a][m] 				{ printf("br\n"); }
[c][o][l][o][r]			{ printf("colour\n"); }
[f][a][l][l] 			{ printf("autumn\n"); }
[c][o][o][k][i][e] 		{ printf("biscuit\n"); }
[f][r][i][e][s]			{ printf("chips\n"); }
[f][r][e][e][w][a][y]		{ printf("motorway\n"); }
