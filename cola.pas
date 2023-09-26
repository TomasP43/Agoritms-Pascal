program colas;
uses crt;

const
        max = 3;

type
        tcola = record
                        frente:integer;
                        fin:integer;
                        dato: array[1..3]of integer;
        end;

var
votro,operacion:string;
vcola:tcola;

procedure iniciarcola(var pcola:tcola);
begin
         clrscr;
        pcola.frente:= 1;
        pcola.fin:= 1;
end;

function colavacia (pcola:tcola): boolean;
begin
        if pcola.frente = pcola.fin then
                colavacia:=true
        else
                colavacia:=false;
end;

function colallena (pcola:tcola):boolean;
var
        vsiguiente:integer;
begin
        vsiguiente:= (pcola.fin mod 3) + 1;
        if vsiguiente = pcola.frente then
                colallena:= true
        else
                colallena:= false
end;

procedure meter(var pcola:tcola);
var
        vdato:integer;
begin
        if colallena(pcola) then
                writeln('cola llena')
        else
                begin
                        readln(vdato);
                        pcola.dato[pcola.fin]:=vdato;
                        pcola.fin:=((pcola.fin mod 3) +1);
                end;
end;

procedure sacar(var pcola:tcola);
begin
        if colavacia(pcola) then
                writeln('cola vacia')
        else
                begin
                        writeln(pcola.dato[pcola.frente]);
                        pcola.frente:=((pcola.frente mod 3)+1);
                end;
end;
begin
    iniciarcola(vcola);
    votro:='';
    while votro <> 'n' do
    begin
        writeln('que desea hacer');
        readln(operacion);
        if operacion = 'meter' then
                begin
                        meter(vcola);
                        writeln('continuar?');
                        readln(votro);
                end
        else if operacion = 'sacar' then
                begin
                        sacar(vcola);
                        writeln('continuar?');
                        readln(votro);
                end;
        end;
end.
