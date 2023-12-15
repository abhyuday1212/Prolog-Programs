fib(1, 1):- !.
fib(2, 1):- !.
fib(N, Result):-
    N > 2,
    X is N - 1,
    Y is N - 2,
    fib(X, F1),
    fib(Y, F2),
    Result is F1 + F2.

series(0):- !.
series(N):-
    fib(N, Result),
    write(Result), write(' '),
    X is N - 1,
    series(X).
