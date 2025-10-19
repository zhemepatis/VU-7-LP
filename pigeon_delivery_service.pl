% Gabrielė Rinkevičiūtė
% Informatika 4 k., 2 gr.
% Variantas: 1.4

% tracks
track(vilnius, utena, 112).
track(vilnius, kaunas, 105).
track(vilnius, panevezys, 137).
track(vilnius, alytus, 109).

track(kaunas, marijampole, 64).
track(kaunas, siauliai, 149).
track(kaunas, klaipeda, 216).
track(kaunas, utena, 139).

track(siauliai, panevezys, 91).

% predicates
can_be_reached(City1, City2, Restriction) :- track(City1, City2, Distance), Distance =< Restriction.
can_be_reached(City1, City2, Restriction) :- track(City1, ICity, IDistance), IDistance =< Restriction, can_be_reached(ICity, City2, Restriction).