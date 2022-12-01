#!/bin/bash

#trazer o texto corpus
cat ../corpus/text.txt | 
#executar o script awk e colocar o output num ficheiro
gawk -f script_2.awk > ../corpus_txt/text_separated.txt