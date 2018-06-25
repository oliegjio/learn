program transpose;

const
  n = 4;
  m = 3;

var
  matrix : array [1 .. n, 1 .. m] of integer;
  i : integer;
  j : integer;
  k : integer;
  source : textfile;
  dist : textfile;
  line : string;
  splited : array of string;

begin
  
  assign(source, 'matrix.txt');
  rewrite(source);
  
  assign(dist, 't-matrix.txt');
  rewrite(dist);
  
  k := 1;
  while eof(source) do
  begin
    readln(source, line);
    splited := line.split();
    k := k + 1;
  end;
  
  // for j := 1 to m do
  // begin
  
  //   for i := 1 to n do
  //   begin
  //     write(dist, ' ');
  //     write(dist, matrix[i, j]);
  //     write(dist, ' ');
  //   end;
    
  //   writeln(dist);
  
  // end;
  
  close(source);
  close(dist);
  
end.