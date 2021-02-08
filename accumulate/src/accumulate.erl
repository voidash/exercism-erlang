-module(accumulate).

-export([accumulate/2]).

accumulate(_Fn, _Ls) ->
  [_Fn(X) ||X <- _Ls].
