BEGIN{
    RS=" [.;?¿] ";
    limit = 1;
}


($0 !~ (/!|/) && $0 !~ (/[#|@-]/)){
    if(limit++ == 250000) exit 1;
    frase = $0;
    #print RT;
    #if (limit > 3) exit 1;
    gsub(" ", "|", frase);
    frase = frase RT;
    if( frase in tabelaOcorrencias ){
       tabelaOcorrencias[ frase ] ++;
    }else{
        tabelaOcorrencias[ frase] = 1;
    }
}



END{
    for( frase in tabelaOcorrencias ){
        print frase, tabelaOcorrencias[ frase ];
    } 
}