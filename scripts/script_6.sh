#!/bin/bash

#capturar o corpus
cat ../corpus/text.txt | 
#executar o script awk e colocar o output num ficheiro
gawk -f script_6.awk > ../stences_dict/setences.txt ; sed -i '/^$/d'  ../stences_dict/setences.txt ;
#fazer ordenação por ordem alfabética
sort -o ../stences_dict/setences.txt ../stences_dict/setences.txt;
#as primeiras linhas do ficheiro têm linhas indesejadas então com o sed estas são apagadas desde a primeira até a 44
sed -i '1,44d' ../stences_dict/setences.txt