flex --noyywrap zadatak1d.l
gcc -o zadatak1d lex.yy.c -l l
./zadatak1d < br.txt
