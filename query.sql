SELECT
    S.Spieler_ID,
    S.Familienname,
    S.Vorname,
    count(*) AS scored_Tore
FROM
    Spieler S
    INNER JOIN Tore T ON S.Spieler_ID = T.Spieler_ID
WHERE
    S.Verteidiger = 1
GROUP BY
    S.Spieler_ID,
    S.Familienname,
    S.Vorname
ORDER BY
    S.Spieler_ID DESC,
    scored_Tore DESC
LIMIT 10;

