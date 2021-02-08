-module(hello_world).

-export([hello/0]).


hello() -> io:format("Hello, World!").
