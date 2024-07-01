-module(darts).
%%-import([math]).
-export([score/2]).


score(X, Y) -> D = distance(X,Y), score_distance(D).
distance(X,Y) -> math:sqrt(X*X + Y*Y).
score_distance(D) when D =< 1.0 -> 10;
score_distance(D) when D =< 5 -> 5;
score_distance(D) when D =< 10 -> 1;
score_distance(_) -> 0.
