% Gabrielė Rinkevičiūtė
% Informatika 4 k., 2 gr.
% Variantas: 5.3

remainder(Dividend, Divisor, Remainder) :-
    Divisor \= 0,
    IDivisor is abs(Divisor),
    remainder_helper(Dividend, IDivisor, Remainder).

remainder_helper(Dividend, Divisor, Remainder) :- 
    Dividend >= 0,
    Dividend < Divisor, 
    Remainder = Dividend.

remainder_helper(Dividend, Divisor, Remainder) :- 
    Dividend >= Divisor,
    IDifference is (Dividend - Divisor),
    remainder_helper(IDifference, Divisor, Remainder).

remainder_helper(Dividend, Divisor, Remainder) :- 
    Dividend < 0,
    ISum is (Dividend + Divisor),
    remainder_helper(ISum, Divisor, Remainder).