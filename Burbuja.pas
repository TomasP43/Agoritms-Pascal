program ordenar_string;
uses crt;
var
   cadena : array[1..100] of string;
   i,j,n : integer;
   aux : string;

procedure ordenar;
begin
   for i:=1 to n-1 do
      for j:=i+1 to n do
         if cadena[i]>cadena[j] then
         begin
            aux:=cadena[i];
            cadena[i]:=cadena[j];
            cadena[j]:=aux;
         end;
end;

begin
   clrscr;
   writeln('Ingrese la cantidad de elementos del arreglo:');
   readln(n);
   writeln('Ingrese los elementos del arreglo:');
   for i:=1 to n do
      readln(cadena[i]);
   ordenar;
   writeln('El arreglo ordenado es:');
   for i:=1 to n do
      writeln(cadena[i]);S
end.