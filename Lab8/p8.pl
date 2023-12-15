go:-
write("1.monkey jump"),nl, read(Jump),
write("2.Stick Length"),nl, read(Stick),
write("3.Height of ceiling"),nl, read(Height),
write("4.Height of table"),nl, read(Table), attempt(_,Height,Jump,Stick,Table), read(_).


attempt(0,Height,Jump,_,_):-
write("monkey jumped to catch banana"),nl, Height=<Jump,
task(1).
attempt(1,Height,Jump,Stick,_):-
write("monkey jumped with stick to catch banana"),nl, Height=<Jump+Stick,
task(1).

attempt(2,Height,Jump,Stick,Table):-
write("monkey jumped with table having stick to catch banana"),nl, Height=<Jump+Stick+Table,
task(1).
attempt(3,Height,Jump,_,Table):-
write("monkey jumped with table to catch banana"),nl, Height=<Jump+Table,
task(1).
attempt(4,Height,Jump,Stick,Table):-
write("monkey jumped with table having stick to catch banana"),nl, Height>=Jump+Table+Stick,
write("unsuccessful").
task(1):-
write("successful").
