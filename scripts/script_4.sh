#!/bin/bash

#capturar o corpus
cat ../corpus/text.txt |
#executar o script awk e colocar o output num ficheiro
gawk -f script_4.awk > ../words_dict/word.txt ; 
#fazer ordenação por ordem alfabética
sort -o ../words_dict/word.txt ../words_dict/word.txt;
sed -i '1,192d' ../words_dict/word.txt