SELECT 
    CAST(SUM(Torhueter) AS INT128) AS "Anzahl Torhueter",
    CAST(SUM(Verteidiger) AS INT128) AS "Anzahl Verteidiger",
    CAST(SUM(Mittelfeldspieler) AS INT128) AS "Anzahl Mittelfeldspieler",
    CAST(SUM(Stuermer) AS INT128) AS "Anzahl Stuermer"
FROM 
    Spieler
WHERE 
    Familienname LIKE 'A%';
