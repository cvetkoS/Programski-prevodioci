flex --noyywrap zadatak2.l
gcc -o zadatak2 lex.yy.c -l l
./zadatak2 < comment.txt
