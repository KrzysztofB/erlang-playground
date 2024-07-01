-module(diamond).

-export([rows/1]).


rows("A") -> ["A"];
rows([Letter|[]]) -> rows($A, Letter, []).

rows(Letter, Letter, Lines) -> lists:reverse(Lines) ++ [line(Letter, Letter)] ++ Lines;

rows(Current, Letter, Lines) when (Current =< $Z) -> 
    Line = line(Current, Letter),
    rows(Current+1, Letter, [Line | Lines ]).
	
line($A, Letter) when ($A =< Letter) -> outerSpaces($A, Letter) ++ [$A] ++ outerSpaces($A, Letter);
line(Current, Letter) when (Current =< Letter) -> outerSpaces(Current, Letter) ++ [Current] ++ innerSpaces(Current) ++ [Current] ++ outerSpaces(Current, Letter).

outerSpaces(Current, Letter) when (Current =< Letter) -> spaces(Letter - Current).
innerSpaces(Letter) when (Letter >= $A) andalso (Letter =< $Z) -> spaces(2 * (Letter - $A) - 1).


spaces(N) when N > 0 -> spaces(1, N, " ");
spaces(_) -> "".
spaces(N, N, Spaces) -> Spaces;
spaces(Counter, N, Spaces) -> spaces(Counter+1, N, Spaces ++ " ").



