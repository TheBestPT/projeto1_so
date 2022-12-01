#!/bin/bash

#capturar o corpus
cat ../text.txt |
#executar o script awk e colocar o output num ficheiro
gawk -f script_7.awk > ../stences_dict/setences_pairs.txt ;
#fazer ordenação por ordem alfabética
sort -o ../stences_dict/setences_pairs.txt ../stences_dict/setences_pairs.txt