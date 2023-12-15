fill(X,Y).
fill(2,0):-nl,write('goal state reached......').
fill(X,Y):-X=0,Y=<1,nl,write('Fill the 4-Gallon Jug:(4,'),write(Y),write(')'),fill(4,Y).

fill(X,Y):- Y=0,X=3,nl,write('Fill the 3-GallonJug:'), write(X), write(',3)'),fill(X,3).

fill(X,Y):-X+Y>=4,Y=3,X=3,Y1 is Y-(4-X),nl, write('Pour water from 3-Gallon jug to 4-gallon until it is full: (4,'), write(Y1),write(')'),fill(4,Y1).

fill(X,Y):-X+Y>=3,X=4,Y=<1,X1 is X-(3-Y),nl, write('Pourwater from 4-Gallon jug to 3- gallon until it is full: '),write(X1),write(',3)'),fill(X1,3).

fill(X,Y):-X+Y=<4,X=0,Y>1,X1 is X+Y,nl,write('Pour all the water from 3-Gallon jug to 4- gallon:('),write(X1),write(',O)'),fill(X1,0).
