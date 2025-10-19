% Gabrielė Rinkevičiūtė
% Informatika 4 k., 2 gr.
% Variantas: 5.3

% daugyba
multiplication(1, Multiplier, Multiplier).

multiplication(Multiplier1, Multiplier2, Product) :- 
    Multiplier1 > 1,
    IMultiplier is (Multiplier1 - 1),
    IProduct is (Product - Multiplier2),
    multiplication(IMultiplier, Multiplier2, IProduct).

multiplication(Multiplier1, Multiplier2, Product) :- 
    Multiplier1 < 1,
    IMultiplier is (Multiplier1 + 1),
    IProduct is (Product + Multiplier2),
    multiplication(IMultiplier, Multiplier2, IProduct).

% sveikųjų skaičių dalybos liekana
remainder(Dividend, Divisor, Remainder) :- 
    multiplication(Divisor, _, Product),
    ISum is Product + Remainder,
    ISum == Dividend.