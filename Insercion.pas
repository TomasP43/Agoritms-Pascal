program OrdenarCadenas;
var
  i, j : integer;
  temp : string;
  nombres : array[1..5] of string;
begin
  nombres[1] := 'Juan';
  nombres[2] := 'Pedro';
  nombres[3] := 'Luis';
  nombres[4] := 'Ana';
  nombres[5] := 'Maria';

  for i := 2 to 5 do
    begin
      temp := nombres[i];
      j := i - 1;
      while (j > 0) and (nombres[j] > temp) do
        begin
          nombres[j + 1] := nombres[j];
          j := j - 1;
        end;
      nombres[j + 1] := temp;
    end;

  for i := 1 to 5 do
    writeln(nombres[i]);
end.