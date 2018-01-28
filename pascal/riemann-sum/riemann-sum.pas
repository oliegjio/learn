program integral;
uses math;

const
  pi = 3.14;

var
  n : integer;
  low : real;
  high : real;
  h : real;
  sum: real;
  step : real;
  result : real;

function f(x : real) : real;
begin
  f := 1 / (power(cos(x), 2))
end;

function f2(x : real) : real;
begin
  f2 := 1 / ln(x);
end;

(* Main Block: *)
begin
  n := 5;
  low := 2;
  high := 5;
  sum := 0;
  h := (high - low) / n;
  step := low;

  while (step < high) do
  begin
    sum := sum + f2(step);
    step := step + h;
  end;

  result := sum * h;

  writeln(result);
end.
