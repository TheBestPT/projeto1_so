#!/bin/bash

cat ../text.txt | gawk -f script_7.awk > ../stences_dict/setences_pairs.txt 
#; sort -o ../stences_dict/setences_pairs.txt ../stences_dict/setences_pairs.txt