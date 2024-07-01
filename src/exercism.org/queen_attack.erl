-module(queen_attack).

-export([can_attack/2]).

can_attack({X,_},{X,_} ) -> true;
can_attack({_,Y},{_,Y} ) -> true;
can_attack({X1,Y1},{X2,Y2} ) when X1+Y1 =:= X2+Y2 -> true;
can_attack({X1,Y1},{X2,Y2} ) when X1-Y1 =:= X2-Y2 -> true;
can_attack(_,_) -> false.

