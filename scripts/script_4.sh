#!/bin/bash

cat ../text.txt | gawk -f script_4.awk > ../words_dict/word.txt ; sort -o ../words_dict/word.txt ../words_dict/word.txt