BEGIN{
    #Register Separator - é alterado para separar a entrada cada vez que encontra um espaço e . ou ; ou ? e no final outro espaço
    RS=" [.?!] ";
    limit = 1;
}


($0 !~ (/!|/) && $0 !~ (/[#|@-]/)){
    #Limitar a quantidade de frases possiveis
    if(limit++ == 250000) exit 1;
    frase = $0;
    #Usar o gsub que é em outras linguagens mais conhecido com replace
    #para substituir todos os espçaos para da frases por |
    gsub(" ", "|", frase);
    #Concatenar a faze com o seu ponto final que é removido por causa de regex
    frase = frase RT;
    #Verificar se a frase ja existe no array se existir incrementar mais um ocorrência senão colocar a frase no array com uma ocorrência
    if( frase in tabelaOcorrencias ){
       tabelaOcorrencias[ frase ] ++;
    }else{
        tabelaOcorrencias[ frase] = 1;
    }
}



END{
    #Fazer print da frase e a sua ocorrencia no texto
    for( frase in tabelaOcorrencias ){
        print frase, tabelaOcorrencias[ frase ];
    } 
}