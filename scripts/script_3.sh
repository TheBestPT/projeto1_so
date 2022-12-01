#!/bin/bash

#Neste script optamos por fazer uso do wc para contar carateres, linhas e palavras e dois scripts awk para contar palavras diferentes e numero de frases 
#e de frases diferentes e ainda calcular os cocientes
echo -e 'Número de caracteres: '`wc -m ../corpus/text.txt;` '\nNúmero de linhas: '`wc -l ../corpus/text.txt;` '\nNúmero de palavras: '`wc -w ../corpus/text.txt; ` '\n'`cat ../corpus/text.txt | gawk -f script3_words.awk -v wordCount=\`wc -w ../corpus/text.txt\`;` '\n'`cat ../corpus/text.txt | gawk -f script3_sentences.awk` > ../corpus_info/corpus_info.txt; sed -i 's/..\/corpus\/text.txt/ /g' ../corpus_info/corpus_info.txt
