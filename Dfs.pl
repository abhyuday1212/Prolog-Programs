edge(a, b).
edge(b, c).
edge(b, d).
edge(c, e).
edge(d, e).
edge(e, f).
edge(e, g).

dfs(Node, Node, _) :-
    write('Goal reached!'), nl.

dfs(CurrentNode, Goal, Visited) :-
    edge(CurrentNode, NextNode),
    \+ member(NextNode, Visited),
    write('Visiting: '), write(NextNode), nl,
    dfs(NextNode, Goal, [NextNode | Visited]).

start :-
    write('Starting from: a'), nl,
    dfs(a, g, [a]).
