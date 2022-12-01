BEGIN{
    RS=" [.;?¿] ";
    previousSetence = "";
    limit = 1;
}


{
    if(limit++ == 250000) exit 1;
    frase = $0;
    fraseTmp = $0;
    gsub(" ", "|", frase);
    frase = frase RT;
    if(previousSetence != "")
        frase = previousSetence " " frase
    previousSetence = ""
    if( frase in tabelaOcorrencias ){
    tabelaOcorrencias[ frase ] ++;
    }else{
        tabelaOcorrencias[ frase] = 1;
    }
    
    previousSetence = fraseTmp;
}



END{
    for( frase in tabelaOcorrencias ){
        print frase, tabelaOcorrencias[ frase ];
    } 
}