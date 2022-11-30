#!/bin/bash

cat ../text.txt | gawk -f script_5.awk > ../words_dict/word_pairs.txt | sort -o ../words_dict/word_pairs.txt ../words_dict/word_pairs.txt