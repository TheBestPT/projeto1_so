
BEGIN{
  #Register Separator - é alterado para separar a entrada cada vez que encontra um dos carateres abaixo ai sendo cada entrada uma palavra
  RS="[ \n\t,.«»:)(;/?¿\"!]+";
  limit = 1;
}

( $0 !~ /\-\-/) && ( $0 !~ /^[@]+$/){
  #limitar a quantidade de palavras
  if(limit++ == 250000) exit 1;
  #colocar a palavra em letras pequenas
  palavra = tolower($0);
  #Verificar se a palavra se ja existe no array se existir incrementar mais um ocorrência senão colocar a palavra no array com uma ocorrência
  if( palavra in tabelaOcorrencias ){
    tabelaOcorrencias[ palavra ] ++;
  }else{
    tabelaOcorrencias[ palavra] = 1;
  }
}

END{
  #Fazer print de todas as palavras e a quantidade de vez que esta se repete no texto
  for( palavra in tabelaOcorrencias ){
    print palavra, tabelaOcorrencias[ palavra ];
  }   
}