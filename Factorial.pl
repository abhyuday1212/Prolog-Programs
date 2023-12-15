fact(0,1).
fact(N,F):-
(

 % The below is for +ve factorial.
 N>0 ->
 (
  N1 is N-1,
  fact(N1,F1),
  F is N*F1
 )
 ;

 % The below is for -ve factorial.
 N<0 ->
 (
  N1 is N+1,
  fact(N1,F1),
  F is N*F1
 )
).
