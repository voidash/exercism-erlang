-module(raindrops).
-export([convert/1]).


convert(Number) ->
  % originally thought List = (against_factory(3,"Pling"))(Number)++and so on but 
  % doesn't work 
  % the error is 
  % ** exception error: no function clause matching 
  %   raindrops:'-against_factory/2-fun-0-'(12) (raindrops.erl, line 14)
  %   in function  raindrops:convert/1 (raindrops.erl, line 6)
  
  A = against_factory(3,"Pling"),
  B = against_factory(5,"Plang"),
  C = against_factory(3,"Plong"),
  List = A(Number) ++ B(Number) ++ C(Number),
                    case List of 
                      [] ->  Number;
                      List -> List
                    end.

against_factory( Factor, Output) -> 
  fun(Number) when Number rem Factor =:= 0 -> Output end.



