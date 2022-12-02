#!/bin/bash

#capturar o corpus
cat ../corpus/text.txt |
#executar o script awk e colocar o output num ficheiro
gawk -f script_7.awk > ../stences_dict/setences_pairs.txt ;
#fazer ordenação por ordem alfabética
sort -o ../stences_dict/setences_pairs.txt ../stences_dict/setences_pairs.txt;
#as primeiras linhas do ficheiro têm linhas indesejadas então com o sed estas são apagadas desde a primeira até a 59
sed -i '1,59d' ../stences_dict/setences_pairs.txt