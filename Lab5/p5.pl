fib(A,1,S):-
    A is 1,
    S is 1.
fib(A,2,S):-
    A is 1,
    S is 2.
fib(A,N,S):-
    X is N-1,
    Y is N-2,
    fib(P,X,S1),
    fib(Q,Y,S2),
    A is P+Q,
    S is A+P+S2.
series(0):-!.
series(N):-
    fib(A,N,S),
    write(A),
    X is N-1,
    series(X).