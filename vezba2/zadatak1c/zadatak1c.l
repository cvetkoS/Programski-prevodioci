%{
    int realnopo=0;
    int realnone=0;
%}


%%

\+?[0-9]+"."+	           {realnopo++;  }	
-[0-9]+"."+		   {realnone++;	 } 

%%

int main() {
	yylex();
	printf("\nNumber of positive real number: %d",realnopo);
	printf("\nNumber of negative real numbers: %d\n",realnone);
}
