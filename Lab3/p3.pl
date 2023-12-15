cube:-
    write('Enter a number '),
    read(Number),
    process(Number).
process(stop) :- !.
process(Number) :-
    C is Number*Number*Number,
    write('Cube of'),write(Number),write(':'),write(C),nl,cube.
likes(lili, cat).
likes(jhon,dog).
see('sample_predicate.txt'),
read(X),
read(Y),
seen,
read(Z).
the_end.
