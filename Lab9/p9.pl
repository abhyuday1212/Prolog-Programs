% edge(StartNode, EndNode)
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).

% dfs(StartNode, EndNode, Path)
dfs(Node, Node, Path, Path).
dfs(StartNode, EndNode, Visited, Path) :-
    edge(StartNode, X),
    \+ member(X, Visited),
    dfs(X, EndNode, [X|Visited], Path).
