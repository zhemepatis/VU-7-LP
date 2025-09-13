% seserys(Sesuo1, Sesuo2) - Asmenys Sesuo1 ir Sesuo2 yra seserys;
% dede(Dede, SunenasDukterecia) - Pirmasis asmuo (Dede) yra antrojo (SunenasDukterecia) dėdė (tėčio ar mamos brolis);
% trys_draugai(Draugas1, Draugas2, Draugas3) - Asmenys Draugas1, Draugas2 ir Draugas3 yra panašaus amžiaus ir turi tą patį pomėgį;
% gera_pora(Asmuo1, Asmuo2) - Asmenys Asmuo1 ir Asmuo2 yra panašaus amžiaus ir turi tą patį pomėgį;

% pirma seima
asmuo(lauma, moteris, 34, begimas).
asmuo(deivids, vyras, 35, begimas).

asmuo(aivars, vyras, 10, futbolas).
asmuo(aina, moteris, 12, gimnastika).
asmuo(arina, moteris, 13, muzika).
asmuo(anete, moteris, 14, muzika).

pora(deivids, lauma).
mama(lauma, aivars).
mama(lauma, aina).
mama(lauma, arina).
mama(lauma, anete).
    
% antra seima
asmuo(dana, moteris, 30, mezgimas).
asmuo(jans, vyras, 31, keliavimas).

asmuo(vita, moteris, 4, puzles).
asmuo(ulrika, moteris, 9, futbolas).

pora(jans, dana).
mama(dana, ulrika).
mama(dana, vita).

% trecia seima
asmuo(upe, moteris, 35, keliavimas).
asmuo(klints, vyras, 43, keliavimas).

asmuo(kristaps, vyras, 10, futbolas).
asmuo(laime, moteris, 14, muzika).

pora(klints, upe).
mama(upe, laime).
mama(upe, kristaps).
