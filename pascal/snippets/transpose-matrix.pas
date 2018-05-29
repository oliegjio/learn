program transpose;

const
  n = 3;
  m = 2;

var
  matrix : array [1..n, 1..m] of integer;
  i : integer;
  j : integer;
  f : textfile;

begin
  
  for i := 1 to n do
  begin
  
    for j := 1 to m do
    begin
      write(i);
      write(' : ');
      write(j);
      write(' - ');
      readln(matrix[i, j]);
    end;
    
  end;
  
  assign(f, 'matrix.txt');
  rewrite(f);
  
  for j := 1 to m do
  begin
  
    for i := 1 to n do
    begin
      write(f, ' ');
      write(f, matrix[i, j]);
      write(f, ' ');
    end;
    
    writeln(f);
  
  end;
  
  close(f);
  
end.