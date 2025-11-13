sum(Digits1, Digits2, SumDigits) :- 
    reverse_list(Digits1, ReversedDigits1), 
    reverse_list(Digits2, ReversedDigits2), 
    sum_digits(ReversedDigits1, ReversedDigits2, 0, ReversedSumDigits),
    reverse_list(ReversedSumDigits, SumDigits).

% helper function to sum digits

sum_digits([], [], 0, []).
sum_digits([], [], Carry, [Carry]) :- Carry > 0.

sum_digits([Head1 | Tail1], [], Carry, [IDigit | IResult]) :-
    ISum is Head1 + Carry,
    IDigit is ISum mod 10,
    ICarry is ISum // 10,
    sum_digits(Tail1, [], ICarry, IResult).

sum_digits([], [Head2 | Tail2], Carry, [IDigit | IResult]) :-
    ISum is Head2 + Carry,
    IDigit is ISum mod 10,
    ICarry is ISum // 10,
    sum_digits([], Tail2, ICarry, IResult).

sum_digits([Head1 | Tail1], [Head2 | Tail2], Carry, [IDigit | IResult]) :-
    ISum is Head1 + Head2 + Carry,
    IDigit is ISum mod 10,
    ICarry is ISum // 10,
    sum_digits(Tail1, Tail2, ICarry, IResult).

% helper function to reverse list

reverse_list(List, Reversed) :- reverse_list_helper(List, [], Reversed).

reverse_list_helper([], IList, IList).
reverse_list_helper([Head | Tail], IList, Reversed) :- reverse_list_helper(Tail, [Head | IList], Reversed).