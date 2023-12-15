temp:-
    write('Enter a temp in Celsius: '),
    read(Number),
    process(Number).

process(stop):- !.

process(Number):-
    C is (Number*1.8)+32,
    write('Temperature in Fahrenheit is '), write(C), nl,
    (C < 32 ->
        write(C), write(' is Below freezing temp'), nl
    ;
        true
    ),
    temp.
