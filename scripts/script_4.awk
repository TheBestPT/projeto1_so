
BEGIN{
  RS="[ \n\t,.«»:)(;/?¿\"!]+";
  limit = 1;
}


#( $0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇ]+$/ ) && 
( $0 !~ /\-\-/) && ( $0 !~ /^[@]+$/){
  if(limit++ == 250000) exit 1;
  palavra = $0;
  #print limit
  if( palavra in tabelaOcorrencias ){
    tabelaOcorrencias[ palavra ] ++;
  }else{
    tabelaOcorrencias[ palavra] = 1;
  }
    


}

END{
    
  for( palavra in tabelaOcorrencias ){
    print palavra, tabelaOcorrencias[ palavra ];
  } 
  


}