-module(convert_list).
-export([convertir_lista/1, convierte0/5,convierte0/1]).
-include("../include/macros_gaus.hrl").

convierte0(Fila,Colum,Col,Num,Cont)when Cont=<Col->
    [? num_cero(element(Cont,Colum), Num, element(Cont,Fila))|convierte0(Fila,Colum,Col,Num,Cont+1)];

convierte0(_Fila,_Colum,_Col,_Num,_Cont) ->
   [].

convierte0([]) ->
  [];

convierte0([H|T]) ->
   [tuple_to_list(H)|convierte0(T)].

%%--// se acaba de convertir la Lista en tupla
convertir_lista([]) ->
    [];

%%--//se convierte la lista en tupla
convertir_lista([H|T]) ->
   [list_to_tuple(H)|convertir_lista(T)].
