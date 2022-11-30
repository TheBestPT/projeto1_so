BEGIN{
  RS=" [.;?¿] ";
  allPhrases = "";
}


{
  print $0 RT;
  #allPhrases += $0 RT "\n" 
}


END{
	#system("cat > ../corpus_txt/text_separeted.txt")
}
