BEGIN{
  #Caracteres que separam as palavras
  RS=" [.!?] ";
  sentenceCount = 0;
  limit = 1;
}

#Para ser considerada palavra tem de ser constituida por os caracteres indicados && nao conter dois travessoes seguidos 
($0 !~ (/!|/) && $0 !~ (/[#|@-]/)) && $0 !~ (/\^'+*-~:!#$%&@()\[\]=<>«»ºª_€\$/) && $0 !~ (/[0-9]/){
  frase = $0;
  sentenceCount++;
  if( frase in tabelaOcorrencias )
    tabelaOcorrencias[ frase ] ++;
  else
    tabelaOcorrencias[ frase ] = 1;
    
  #limitar a quantidade de frases
  if(length(tabelaOcorrencias) == 250000) exit 1;
}

END{
  print "Número de frases: "sentenceCount;
  printf "\\n";
  print "Número de frases diferentes: "length(tabelaOcorrencias);
  printf "\\n";
  print "Quociente entre o total de frases diferentes e o total de frases: "length(tabelaOcorrencias)/sentenceCount;
}
