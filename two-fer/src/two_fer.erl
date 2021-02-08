-module(two_fer).

-export([two_fer/0, two_fer/1]).


two_fer() -> io:format('One for X, one for me.').

two_fer(_Name) -> io:format('One for ~s, one for me.',[_Name]).

