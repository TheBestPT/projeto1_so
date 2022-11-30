BEGIN{
    RS=" [.;?¿] ";
}


{
    frase = $0;
    print $0;
    frase = gsub(" ", "|", frase);
    print(frase)
    #if( frase in tabelaOcorrencias ){
     #   tabelaOcorrencias[ frase ] ++;
    #}else{
     #   tabelaOcorrencias[ frase] = 1;
    #}
}



END{
    #for( frase in tabelaOcorrencias ){
    #    print frase, tabelaOcorrencias[ palavra ];
    #} 
}