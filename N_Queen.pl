four_queens(Board) :-
    Board = [Q1, Q2, Q3, Q4],
    permutation([1, 2, 3, 4], Board),
    no_diagonal_conflict(Q1, Q2, 1),
    no_diagonal_conflict(Q1, Q3, 2),
    no_diagonal_conflict(Q1, Q4, 3),
    no_diagonal_conflict(Q2, Q3, 1),
    no_diagonal_conflict(Q2, Q4, 2),
    no_diagonal_conflict(Q3, Q4, 1).
no_diagonal_conflict(I, J, K) :- abs(I - J) =\= K.
