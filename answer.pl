prepend(E, L, [E|L]).

addElement(E, [], [E]).
addElement(E, [H|T], [H|ExtendedTail]):-addElement(E, T, ExtendedTail).

hasLength([], 0).
hasLength([H|T], X):-hasLength(T, Y), X is Y+1.

remove(E, [], []).
remove(E, [E|T], T).
remove(E, [H|T], [H|NewTail]):-remove(E, T, NewTail).
