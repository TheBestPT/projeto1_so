BEGIN{
  #Caracteres que separam as palavras
  RS="[ \n\t,.«»:)(;/?\"!]+";
  countWords = 1;
  limit = 1;
}

#Para ser considerada palavra tem de ser constituida por os caracteres indicados && nao conter dois travessoes seguidos 
( $0 !~ /\-\-/) && ( $0 !~ /^[@]+$/) && $0 !~ (/\^'+*-~:!#$%&@()\[\]=<>«»ºª_€\$/) && $0 !~ (/[0-9]/) {
  palavra = tolower($0);
  countWords++;
  if( palavra in tabelaOcorrencias )
    tabelaOcorrencias[ palavra ] ++;
  else
    tabelaOcorrencias[ palavra ] = 1;

  #limitar a quantidade de palavras
  if(length(tabelaOcorrencias) == 250000) exit 1;
}

END{
  print "Numero de palavras: "countWords;
  printf "\\n"
  print "Número de palavras diferentes: "length(tabelaOcorrencias);
  printf "\\n"
  print "Quociente entre o total de palavras diferentes e o total de palavras: "length(tabelaOcorrencias)/countWords;
}
