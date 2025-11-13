first_n_elements(_, 0, []).
first_n_elements([Head | Tail1], Number, [Head | Tail2]) :- INumber is Number - 1, first_n_elements(Tail1, INumber, Tail2).