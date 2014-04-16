-module(get_size).
-export([inicio/4]).

%%--//Es mas grande la cantidad de columnas que la de filas
estado(Col,Fil)when Col=:=Fil ->
    true;

%%--// si no es mas grande la cantidad de columnas que la de filas
estado(_Col,_Fil) ->
    false.

%%--//Termina de verificar el tamaño y empieza a convertir la lista en tupla
inicio([],[H1|T1],Fil, true) ->
   Tup=convert_list:convertir_lista([H1|T1]),
   delete:elimina_gauss(list_to_tuple(Tup),Fil,Fil+1,1,1);

%%--//Saca el tamaño de la fila y verifica si es mayor al de la fila
inicio([H|T],[H1|T1], Fil, true) ->
  Col=sizes:tam_col(H),
  Estado=estado(Col-1,Fil),
  inicio(T,[H1|T1],Fil,Estado);

%%--//Si la cantidad de filas no es menor  a la de columnas
inicio([_H|_T],[_H1|_T1], _Fil, false) ->
   io:format("~nERROR: Matriz no valida, el numero de filas debe ser mas chico que el de columnas~n").
