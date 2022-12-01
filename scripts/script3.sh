#!/bin/bash

echo 'Número de caracteres: '`wc -m ../text.txt;` '\nNúmero de linhas: '`wc -l ../text.txt;` '\nNúmero de palavras: '`wc -w ../text.txt; ` '\n'`cat ../text.txt | gawk -f script3_words.awk -v wordCount=\`wc -w ../text.txt\`;` '\n'`cat ../text.txt | gawk -f script3_sentences.awk` > ../corpus_info/corpus_info.txt; sed -i 's/..\/text.txt/ /g' ../corpus_info/corpus_info.txt

