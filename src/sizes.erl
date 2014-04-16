-module(sizes).
-export([tam_col/1,tam_fil/1]).

tam_fil([]) ->
   0;
tam_fil([_H|T]) ->
   tam_fil(T)+1.

%%--//Saca la cantidad de columnas de una fila
tam_col([]) ->
   0;

tam_col([_H|T]) ->
   tam_col(T) +1.
