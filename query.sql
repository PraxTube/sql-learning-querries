SELECT
    S.Spieler_ID,
    S.Familienname,
    S.Vorname,
FROM
    Spieler S
    INNER JOIN Spielerauftritte A ON S.Spieler_ID = A.Spieler_ID
    INNER JOIN Spiele SP ON A.Spiel_ID = SP.Spiel_ID
WHERE
    SP.Gruppenphase = 1
GROUP BY
    S.Spieler_ID,
    S.Familienname,
    S.Vorname
ORDER BY
    S.Spieler_ID DESC
LIMIT 10;

