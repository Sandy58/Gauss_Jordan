-module(main).
-export([fun1/1]).

%%--//Recive matriz y Saca la cantidad de filas y manda a sacar la cantidad de columnas
fun1([H|T]) ->
  Fil= sizes:tam_fil([H|T]),
  get_size:inicio([H|T],[H|T],Fil,true).
