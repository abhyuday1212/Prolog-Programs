list_delete(X,[X],[]).
list_delete(X,[X|L1],L1).
list_delete(X,[Y|L2],[Y|L1]):-list_delete(X,L2,L1).
list_insert(X,L,R) :- list_delete(X,R,L).
