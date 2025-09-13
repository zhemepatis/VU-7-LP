% seserys(Sesuo1, Sesuo2) - Asmenys Sesuo1 ir Sesuo2 yra seserys;
% dede(Dede, SunenasDukterecia) - Pirmasis asmuo (Dede) yra antrojo (SunenasDukterecia) dėdė (tėčio ar mamos brolis);
% trys_draugai(Draugas1, Draugas2, Draugas3) - Asmenys Draugas1, Draugas2 ir Draugas3 yra panašaus amžiaus ir turi tą patį pomėgį;
% gera_pora(Asmuo1, Asmuo2) - Asmenys Asmuo1 ir Asmuo2 yra panašaus amžiaus ir turi tą patį pomėgį;

% asmuo(Vardas, Lytis, Amžius, Pomėgis);
% mama(Mama, Vaikas);
% pora(Vyras, Žmona).

% pirma seima
asmuo(lauma, moteris, ??, ??).
asmuo(deivids, vyras, ??, ??).

pora(deivids, lauma).

asmuo(aivars, vyras, ??, ??).
asmuo(aina, moteris, ??, ??).
asmuo(arina, moteris, ??, ??).
asmuo(anete, moteris, ??, ??).
    
mama(lauma, aivars).
mama(lauma, aina).
mama(lauma, arina).
mama(lauma, anete).
    
% antra seima
asmuo(dana, moteris, ??, ??).
asmuo(jans, vyras, ??, ??).

pora(jans, dana).

asmuo(vita, moteris, ??, ??).
asmuo(ulrika, moteris, ??, ??).

mama(dana, ulrika).
mama(dana, vita).

% trecia seima
asmuo(upe, moteris, ??, ??).
asmuo(klints, vyras, ??, ??).

pora(klints, upe).

asmuo(kristaps, vyras, ??, ??).
asmuo(laime, moteris, ??, ??).

mama(upe, laime).
mama(upe, kristaps).
