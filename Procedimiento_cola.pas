program Pila;
Type
    tpila=record
        cima:integer;
        dato:array[1..100]of String
//el array puede ser del tamaño que necesites y el tipo que quieras;
Var
    NombrePila:tpila;
procedure Inicializar_Pila(Var Ppila:tpila);
begin
    Ppila.cima=0;
end;

function Pilallena(Ppila:tpila):Boolean;
begin
    if Ppila.cima = 100 Then
        Pilallena=true else
        begin
            Pilallena:=false;
        end;
end;

function Pilavacia(Ppila:tpila):Boolean;
begin
    if Ppila.cima = 0 Then
        Pilallena=true else
        begin
            Pilallena:=false;
        end;
end;

procedure meter (var Ppila:tpila)
    var 
        Vapel:String[15];
    begin
        whrit(Vapel);
        if Pilallena(Ppila)= true Then
