-module(change).
-export([saca0/7, saca1/4]).
-include("../include/macros_gaus.hrl").

%%--// Saca el pivote y convierte la fila
saca1(Fila,Col,Nc,Num)when Nc=<Col ->
   [element(Nc,Fila)/Num|saca1(Fila,Col,Nc+1,Num)];

%%--//Se acaba la fila a convertir donde esta el 1
saca1(_Fila,_Col,_Nc,_Num) ->
   [].

saca0(Tup1,_Fila,Fil,_Col,Fil,_C1,Fil) ->
    Tup1;

saca0(Tup1,Fila,Fil,Col,Nf,C1,C2)when C2=:=Fil ->
   Num=element(C1, Fila),
   Col1=element(Nf, Tup1),
   Li=list_to_tuple(convert_list:convierte0(Fila,Col1,Col,? num_contrario(Num),1)),
   Tup2=setelement(C2, Tup1, Li),%%        <---------Aqui me quede
   Tup2;

saca0(Tup1,_Fila,Fil,Col,Nf,C1,C2)when C1=:=C2 ->
   saca0(Tup1,element(C2+1, Tup1),Fil,Col,Nf,C1,C2+1);

saca0(Tup1,Fila,Fil,Col,Nf,C1,C2) ->
   Num=element(C1, Fila),
   %%Num1=Num*-1,
   Col1=element(Nf, Tup1),
   Li=list_to_tuple(convert_list:convierte0(Fila,Col1,Col,? num_contrario(Num),1)),
   Tup2=setelement(C2, Tup1, Li),%%        <---------Aqui me quede
   C3=C2+1,
   saca0(Tup2,element(C3, Tup2),Fil,Col,Nf,C1,C2+1).
