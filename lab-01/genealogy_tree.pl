% Gabrielė Rinkevičiūtė
% Informatika 4 k., 2 gr.
% Variantai: 7, 10, 39, 42

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
moteris(A) :- asmuo(A, moteris, _, _).
vyras(A) :- asmuo(A, vyras, _, _).

tetis(T, A) :- mama(M, A), pora(T, M).

brolis_ar_sesuo(A1, A2) :- mama(M, A1), mama(M, A2), A1 \= A2.
sesuo(S, A) :- brolis_ar_sesuo(S, A), moteris(S).
brolis(B, A) :- brolis_ar_sesuo(B, A), vyras(B).
seserys(S1, S2) :- sesuo(S1, S2), moteris(S2).

dede(D, A) :- mama(M, A), brolis(D, M).
dede(D, A) :- tetis(T, A), brolis(D, T).

panasaus_amziaus(A1, A2) :- asmuo(A1, _, AM1, _), asmuo(A2, _, AM2, _), A1 \= A2, abs(AM1 - AM2) < 5.
tas_pats_pomegis(A1, A2) :- asmuo(A1, _, _, P), asmuo(A2, _, _, P).

gera_pora(A1, A2) :- pora(A1, A2), panasaus_amziaus(A1, A2), tas_pats_pomegis(A1, A2).

trys_draugai(A1, A2, A3) :- 
    panasaus_amziaus(A1, A2), 
    panasaus_amziaus(A2, A3), 
    panasaus_amziaus(A1, A3), 
    tas_pats_pomegis(A1, A2),
    tas_pats_pomegis(A2, A3),
    tas_pats_pomegis(A1, A3).