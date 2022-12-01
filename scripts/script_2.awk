BEGIN{
  #Register Separator - é alterado para separar a entrada cada vez que encontra um espaço e . ou ; ou ? e no final outro espaço
  RS=" [.?!] ";
  limit = 1;
}


{
  #Limitar a quantidade de frases possiveis
  if(limit++ == 250000) exit 1;
  #Ao fazer print sequencialmente este já vai aparecer como se fosse feito um \n
  print $0 RT;
}


END{
}
