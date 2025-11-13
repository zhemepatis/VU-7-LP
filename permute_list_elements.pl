swap([], _, []).

swap([OriginalElement | OriginalTail], PermutationsList, [PermutedElement | PermutationsTail]) :- 
    apply_permutation(OriginalElement, PermutationsList, PermutedElement), 
    swap(OriginalTail, PermutationsList, PermutationsTail).

% helper function for applying permutations

apply_permutation(OriginalElement, [], OriginalElement).
apply_permutation(OriginalElement, [p(OriginalElement, PermutedElement) | _], PermutedElement).

apply_permutation(OriginalElement, [p(X, _) | Tail], PermutedElement) :-
    OriginalElement \= X, 
    apply_permutation(OriginalElement, Tail, PermutedElement).