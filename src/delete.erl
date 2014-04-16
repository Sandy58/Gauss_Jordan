-module(delete).
-export([elimina_gauss/5]).

elimina_gauss(Tup1,Fil,_Col,_Nc,Nf)when Nf>Fil ->
    List=tuple_to_list(Tup1),
    convert_list:convierte0(List);

%%--//Saca la fila donde se sacara el 1 y se almacena la fila convertida
elimina_gauss(Tup1,Fil,Col,Nc,Nf) ->
   Fila=element(Nf, Tup1),
   Tup2=setelement(Nf, Tup1, list_to_tuple(change:saca1(Fila,Col,1,element(Nc, Fila)))),  %%<---SACA1
   Tup3=change:saca0(Tup2,element(1, Tup2),Fil,Col,Nf,Nc,1),%%<------Ultimo visto
   elimina_gauss(Tup3,Fil,Col,Nc+1,Nf+1).  %%<----------------Ultimo aca
