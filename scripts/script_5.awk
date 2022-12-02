
BEGIN{
  #Register Separator - é alterado para separar a entrada cada vez que encontra um dos carateres abaixo ai sendo cada entrada uma palavra
  RS="[ \n\t,.«»:)(;/?¿\"!]+";
  #Inicializar a varivel da palavra anterior
  previousWord = "";
  limit = 1;
}


#regex extras para garantir que não haja palavras com só carateres indesejados
( $0 !~ /\-\-/) && ( $0 !~ /^[@]+$/) && $0 !~ (/\^'+*-~:!#$%&@()\[\]=<>«»ºª_€\$/) && $0 !~ (/[0-9]/){
    palavra = $0;
    tmpPalavra = $0;

    #juntar a palavra anterior com a palavra corrente
    if(previousWord != ""){
       palavra = previousWord  " "  palavra;

       #Verificar se o par de palavras se ja existe no array se existir incrementar mais um ocorrência senão colocar o por de palavras no array com uma ocorrência
      if( palavra in tabelaOcorrencias){
          tabelaOcorrencias[ palavra ] ++;
      }else{
          tabelaOcorrencias[ palavra ] = 1;
      }

      #limitar a quantidade de palavras
      if(length(tabelaOcorrencias) == 250000) exit 1;
    }
    
    #mudar a palavra anterior para a palavra corrente
    previousWord = tmpPalavra;
}

END{
    
  for( palavra in tabelaOcorrencias ){
    print palavra, tabelaOcorrencias[ palavra ];
  } 
  


}