BEGIN{
  #Caracteres que separam as palavras
  RS="[ \n\t,.«»:)(;/?\"!]+";
}

#Para ser considerada palavra tem de ser constituida por os caracteres indicados && nao conter dois travessoes seguidos 
#( $0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇ]+$/ ) && 
( $0 !~ /\-\-/) {
  palavra = $0;
  
  if( palavra in tabelaOcorrencias )
    tabelaOcorrencias[ palavra ] ++;
  else
    tabelaOcorrencias[ palavra ] = 1;
}

END{
  print "Número de palavras diferentes: "length(tabelaOcorrencias);
  printf "\\n";
  print "Quociente entre o total de palavras diferentes e o total de palavras: "length(tabelaOcorrencias)/wordCount;
}
