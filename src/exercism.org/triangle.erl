-module(triangle).

-export([kind/3]).

kind(A, A, A) -> isTriangle(A,A,A, "equilateral");
kind(A, A, B) -> isTriangle(A,A,B, "isosceles ");
kind(A, B, A) -> isTriangle(A,B,A, "isosceles ");
kind(B, A, A) -> isTriangle(B,A,A, "isosceles");
kind(A, B, C) -> isTriangle(A,B,C, "scalene").

isTriangle(A,B,C, _) when (A =< 0) or (B =< 0) or (C =< 0) -> {error, "all side lengths must be positive"};
isTriangle(_A,_B,_C, Response) -> Response.
