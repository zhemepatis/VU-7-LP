swap([], _, []).

swap([OriginalElement | OriginalTail], PermutationsList, [PermutedElement | PermutationsTail]) :- 
    apply_permutation(OriginalElement, PermutationsList, PermutedElement), 
    swap(OriginalTail, PermutationsList, PermutationsTail).

apply_permutation(OriginalElement, [], OriginalElement).
apply_permutation(OriginalElement, [k(OriginalElement, PermutedElement) | _], PermutedElement).

apply_permutation(OriginalElement, [k(X, _) | Tail], PermutedElement) :-
    OriginalElement \= X, 
    apply_permutation(OriginalElement, Tail, PermutedElement).