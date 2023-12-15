temp:-
    write('Enter a temp in Celsius: '),
    read(Number),
    process(Number).
process(stop):- !.
process(Number):-
    C is (Number*1.8)+32,
    write('Temprature in Farenheit is'),write(C),nl,
    C<32,nl,write(C), write(" is Below freezing temp"),temp.

