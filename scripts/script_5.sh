#!/bin/bash

#capturar o corpus
cat ../corpus/text.txt | 
#executar o script awk e colocar o output num ficheiro
gawk -f script_5.awk > ../words_dict/word_pairs.txt ;
#fazer ordenação por ordem alfabética
sort -o ../words_dict/word_pairs.txt ../words_dict/word_pairs.txt