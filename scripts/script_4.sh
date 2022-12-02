#!/bin/bash

#capturar o corpus
cat ../corpus/text.txt |
#executar o script awk e colocar o output num ficheiro
gawk -f script_4.awk > ../words_dict/word.txt ; 
#fazer ordenação por ordem alfabética
sort -o ../words_dict/word.txt ../words_dict/word.txt;
#as primeiras linhas do ficheiro têm linhas indesejadas então com o sed estas são apagadas desde a primeira até a 184
sed -i '1,184d' ../words_dict/word.txt