program pila;
uses crt;

const
        max = 10;

type
        Tpila = record
                cima: integer;
                dato: array [1..max] of integer;
        end;
var
        vdato:integer;
        vpila:Tpila;
        votro:string;
        operacion:string;

procedure Inicializarpila(var Ppila:Tpila);
begin
        ppila.cima:=0;
        clrscr;
end;

function Pilallena(ppila:Tpila):boolean;
begin
    if ppila.cima = max then
        Pilallena:=true
    else
        Pilallena:=false;
end;

function Pilavacia(ppila:Tpila):boolean;
begin
    if ppila.cima=0 then
        Pilavacia := true
    else
        Pilavacia := false;
end;

procedure Meter(var ppila:tpila);
var
    vdato:integer;
begin
    readln(vdato);
    if Pilallena(ppila) then
        writeln('Pila llena')
    else
        begin
            ppila.cima:= ppila.cima + 1;
            ppila.dato[ppila.cima]:= vdato;
        end;
end;

procedure Sacar(var ppila:tpila);
begin
    if Pilavacia(ppila) then
        writeln('Pila Vacia')
    else
        begin
        writeln(ppila.dato[ppila.cima]);
        ppila.cima:=ppila.cima - 1;
        end;
end;

begin
    inicializarpila(vpila);
    votro:='';
    while votro <> 'n' do
    begin
        writeln('que desea hacer');
        readln(operacion);
        if operacion = 'meter' then
                begin
                        meter(vpila);
                        writeln('continuar?');
                        readln(votro);
                end
        else if operacion = 'sacar' then
                begin
                        sacar(vpila);
                        writeln('continuar?');
                        readln(votro);
                end;
        end;
end.
