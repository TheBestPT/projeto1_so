BEGIN{
    #Register Separator - é alterado para separar a entrada cada vez que encontra um espaço e . ou ; ou ? e no final outro espaço
    RS=" [.?!] ";
    limit = 1;
}

#regex extras para garantir que não haja frases com só carateres indesejados
($0 !~ (/!|/) && $0 !~ (/[#|@-]/)) && $0 !~ (/\^'+*-~:!#$%&@()\[\]=<>«»ºª_€\$/) && $0 !~ (/[0-9]/){
    frase = $0;

    #Concatenar a faze com o seu ponto final que é removido por causa de regex
    frase = frase RT;

    #Usar o gsub que é em outras linguagens mais conhecido com replace
    #para substituir todos os espçaos para da frases por |
    gsub(" ", "|", frase);

    #Verificar se a frase ja existe no array se existir incrementar mais um ocorrência senão colocar a frase no array com uma ocorrência
    if( frase in tabelaOcorrencias ){
       tabelaOcorrencias[ frase ] ++;
    }else{
        tabelaOcorrencias[ frase] = 1;
    }
    
    #limitar a quantidade de frases
    if(length(tabelaOcorrencias) == 250000) exit 1;
}



END{
    #Fazer print da frase e a sua ocorrencia no texto
    for( frase in tabelaOcorrencias ){
        print frase, tabelaOcorrencias[ frase ];
    } 
}