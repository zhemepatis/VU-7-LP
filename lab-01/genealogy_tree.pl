% seserys(Sesuo1, Sesuo2) - Asmenys Sesuo1 ir Sesuo2 yra seserys;
% dede(Dede, SunenasDukterecia) - Pirmasis asmuo (Dede) yra antrojo (SunenasDukterecia) dėdė (tėčio ar mamos brolis);
% trys_draugai(Draugas1, Draugas2, Draugas3) - Asmenys Draugas1, Draugas2 ir Draugas3 yra panašaus amžiaus ir turi tą patį pomėgį;
% gera_pora(Asmuo1, Asmuo2) - Asmenys Asmuo1 ir Asmuo2 yra panašaus amžiaus ir turi tą patį pomėgį;

% asmenys
asmuo(darta, moteris, 67, muzika).
asmuo(martins, vyras, 71, masinos).
asmuo(solveiga, moteris, 68, muzika).
asmuo(reinis, vyras, 69, muzika).

asmuo(lauma, moteris, 34, begimas).
asmuo(deivids, vyras, 35, begimas).
asmuo(dana, moteris, 30, mezgimas).
asmuo(jans, vyras, 31, keliavimas).
asmuo(upe, moteris, 35, keliavimas).
asmuo(lauris, vyras, 27, begimas).
asmuo(klints, vyras, 43, keliavimas).

asmuo(aivars, vyras, 10, futbolas).
asmuo(aina, moteris, 12, gimnastika).
asmuo(arina, moteris, 13, muzika).
asmuo(anete, moteris, 14, muzika).
asmuo(vita, moteris, 4, puzles).
asmuo(ulrika, moteris, 9, futbolas).
asmuo(kristaps, vyras, 10, futbolas).
asmuo(laime, moteris, 14, muzika).

% poros
pora(martins, darta).
pora(reinis, solveiga).

pora(deivids, lauma).
pora(jans, dana).
pora(klints, upe).
    
% mamos  
mama(darta, lauma).
mama(darta, dana).

mama(solveiga, jans).
mama(solveiga, upe).
mama(solveiga, lauris).

mama(lauma, aivars).
mama(lauma, aina).
mama(lauma, arina).
mama(lauma, anete).

mama(dana, ulrika).
mama(dana, vita).
    
mama(upe, laime).
mama(upe, kristaps).

% predikatai
tetis(T, A) :- mama(M, A), pora(T, M).

brolis_ar_sesuo(A1, A2) :- mama(M, A1), mama(M, A2), A1 \= A2.
sesuo(S, A) :- brolis_ar_sesuo(S, A), asmuo(S, moteris, _, _).
brolis(B, A) :- brolis_ar_sesuo(B, A), asmuo(B, vyras, _, _).
seserys(S1, S2) :- sesuo(S1, S2), asmuo(S2, moteris, _, _).

dede(D, A) :- mama(M, A), brolis(D, M), !.
dede(D, A) :- tetis(T, A), brolis(D, T).
