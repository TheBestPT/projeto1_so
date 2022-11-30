
BEGIN{
  RS="[ \n\t,.«»:)(;/?¿\"!]+";
  previousWord = "";
  i = 1;
}


#( $0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇ]+$/ ) && 
( $0 !~ /\-\-/) && ( $0 !~ /^[@]+$/){
    
    palavra = $0;
    tmpPalavra = $0;
    
    if(previousWord != "")
       palavra = previousWord  " "  palavra
    previousWord = ""
    #print "palavra: " palavra

    if( palavra in tabelaOcorrencias){
        tabelaOcorrencias[ palavra ] ++;
    }else{
        tabelaOcorrencias[ palavra ] = 1;
    }
    previousWord = tmpPalavra;  


}

END{
    
  for( palavra in tabelaOcorrencias ){
    print palavra, tabelaOcorrencias[ palavra ];
  } 
  


}