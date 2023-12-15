member(X, [X|R]).
member(X, [Y|R]) :- member(X,R).

append([X|Y], Z, [X|W]) :- append(Y,Z,W).
append([], X, X).

/*
production rules for the water jug problem
*/
maneuver(X, Y, Z):-X=:=2, Y=:=0, write('done').
maneuver(X, Y, Z):-X<4, \+ member(Z, (4,Y)), append(Z, [(4,Y)], A), write('Fill 4 gallon jug\n'), maneuver(4,Y,A).
maneuver(X, Y, Z):-Y<3, \+ member(Z, (X,3)), append(Z, [(X,3)], A), write('Fill 3 gallon jug\b'), maneuver(X,3,A).
maneuver(X, Y, Z):-X>0, \+ member(Z, (0,Y)), append(Z, [(0,Y)], A), write('Empty the 4 gallon jug\n'), maneuver(0,Y,A).
maneuver(X, Y, Z):-Y>0, \+ member(Z, (X,0)), append(Z, [(X,0)], A), write('Empty the 3 gallon jug\n'), maneuver(X,0,A).
maneuver(X, Y, Z):-X+Y>=4, Y>0, \+ member(Z, (4,Y-(4-X))), append(Z, [(4,Y-(4-X))], A), write('Pour from 3 gallon jug to 4 gallon jug\n'), ma$
maneuver(X, Y, Z):-X+Y>=3, X>0, \+ member(Z, (X-(3-Y),3)), append(Z, [(X-(3-Y),3)], A), write('Pour from 4 gallon jug to 3 gallon jug\n'), ma$
maneuver(X, Y, Z):-X+Y=<4, Y>0, \+ member(Z, (X+Y, 0)), append(Z, [(X+Y, 0)], A), write('Pour the water in the 3 gallon jug into the 4 gallon$
maneuver(X, Y, Z):-X+Y=<4, Y>0, \+ member(Z, (0, X+Y)), append(Z, [(0, X+Y)], A), write('Pour the water in the 4 gallon jug into the 3 gallon$
