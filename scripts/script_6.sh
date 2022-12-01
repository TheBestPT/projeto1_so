#!/bin/bash

cat ../text.txt | gawk -f script_6.awk > ../stences_dict/setences.txt ; sed -i '/^$/d'  ../stences_dict/setences.txt ; sort -o ../stences_dict/setences.txt ../stences_dict/setences.txt 