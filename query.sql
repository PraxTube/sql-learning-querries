SELECT
    S.Spieler_ID,
    S.Familienname,
    S.Vorname,
    count(*) AS Auftritte
FROM
    Spieler S
    INNER JOIN Spielerauftritte A ON S.Spieler_ID = A.Spieler_ID
GROUP BY
    S.Spieler_ID,
    S.Familienname,
    S.Vorname
HAVING
    count(*) > 5
ORDER BY
    S.Spieler_ID DESC,
    Auftritte ASC
LIMIT 10;

