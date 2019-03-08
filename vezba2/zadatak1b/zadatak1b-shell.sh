flex --noyywrap zadatak1b.l
gcc -o zadatak1b lex.yy.c -l l
./zadatak1b < br.txt
