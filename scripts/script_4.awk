
BEGIN{
  RS="[ \n\t,.«»:)(;/?¿\"!]+";
}


#( $0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇ]+$/ ) && 
( $0 !~ /\-\-/) && ( $0 !~ /^[@]+$/){
  palavra = $0;
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