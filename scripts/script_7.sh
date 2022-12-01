#!/bin/bash

#linesRemove=`wc -l ../stences_dict/setences_pairs.txt > howManyLines.txt; cut -d ' ' -f 1 howManyLines.txt; rm howManyLines.txt`
#linesRemove=expr$linesRemove-59;
#echo $linesRemove

#capturar o corpus
cat ../text.txt |
#executar o script awk e colocar o output num ficheiro
gawk -f script_7.awk > ../stences_dict/setences_pairs.txt ;
#fazer ordenação por ordem alfabética
sort -o ../stences_dict/setences_pairs.txt ../stences_dict/setences_pairs.txt;
#tail -n +59 ../stences_dict/setences_pairs.txt > ../stences_dict/setences_pairs.txt;
sed -i '1,59d' ../stences_dict/setences_pairs.txt