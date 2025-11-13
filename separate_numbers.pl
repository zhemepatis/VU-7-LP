separate([], [], []).

separate([Head | Tail], Positives, Negatives) :- Head == 0, separate(Tail, Positives, Negatives).
separate([Head | Tail], Positives, [Head | Negatives]) :- Head < 0, separate(Tail, Positives, Negatives).
separate([Head | Tail], [Head | Positives], Negatives) :- Head > 0, separate(Tail, Positives, Negatives).