% Gabrielė Rinkevičiūtė
% Informatika 4 k., 2 gr.
% Variantas: 1.4

% keliai
kelias(vilnius, utena, 112).
kelias(vilnius, kaunas, 105).
kelias(vilnius, panevezys, 137).
kelias(vilnius, alytus, 109).

kelias(kaunas, marijampole, 64).
kelias(kaunas, siauliai, 149).
kelias(kaunas, klaipeda, 216).
kelias(kaunas, utena, 139).

kelias(siauliai, panevezys, 91).

% predikatai
galima_pasiekti(M1, M2, L) :- kelias(M1, M2, A), A =< L.
galima_pasiekti(M1, M2, L) :- kelias(M1, MT, AT), AT =< L, galima_pasiekti(MT, M2, L).