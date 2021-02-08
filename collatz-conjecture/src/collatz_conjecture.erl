-module(collatz_conjecture).

-export([steps/1]).


steps(_N) -> collatz(_N,0).

collatz(N,Step) -> 
 if N >= 1 ->
  if N rem 2 =:= 0 ->
       collatz(N/2,Step+1);
  N rem 2 /= 0 -> 
       collatz(3*N+1,Step+1)
  end;
true -> 
      Step
  end.

