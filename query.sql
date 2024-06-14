select Turnieranzahl, Spieler_ID, Familienname, Vorname from Spieler where Verteidiger = 1 and Turnieranzahl > 0 order by Turnieranzahl desc, Spieler_ID desc limit 10;
