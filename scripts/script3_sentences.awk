BEGIN{
  #Caracteres que separam as palavras
  RS=" [.;?] ";
  sentenceCount = 0;
}

#Para ser considerada palavra tem de ser constituida por os caracteres indicados && nao conter dois travessoes seguidos 
#( $0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇ]+$/ ) && 
( $0 !~ /\-\-/) {
  frase = $0;
  sentenceCount++;
  if( frase in tabelaOcorrencias )
    tabelaOcorrencias[ frase ] ++;
  else
    tabelaOcorrencias[ frase ] = 1;
}

END{
  print "Número de frases: "sentenceCount;
  printf "\\n";
  print "Número de frases diferentes: "length(tabelaOcorrencias);
  printf "\\n";
  print "Quociente entre o total de frases diferentes e o total de frases: "length(tabelaOcorrencias)/sentenceCount;
}
