%{

#include <stdlib.h>
#include <stdio.h>

int fahrenheit;
int celsius;

void eval();
    
%}

FAHRENHEIT [0-9]+[fF]

%%


{FAHRENHEIT} {
	
	fahrenheit = atoi(yytext);


eval();
	printf("%0dC", celsius);
}

%%


void eval() {
	celsius = (fahrenheit - 32) *5/9;
}

