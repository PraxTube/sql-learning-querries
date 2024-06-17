SELECT
    S.Spieler_ID,
    TR.Turniername,
    S.Familienname,
    S.Vorname,
    COUNT(*) AS scored_Tore
FROM
    Spieler S
    INNER JOIN Tore T ON S.Spieler_ID = T.Spieler_ID
    INNER JOIN Turniere TR ON T.Turnier_ID = TR.Turnier_ID
WHERE
    S.Spieler_ID IN (
        SELECT
            Spieler_ID,
        FROM
            Spieler
        WHERE
            Turnieranzahl < 2)
GROUP BY
    S.Spieler_ID,
    TR.Turniername,
    S.Familienname,
    S.Vorname
ORDER BY
    S.Spieler_ID DESC,
    TR.Turniername ASC,
    scored_Tore DESC
LIMIT 10;

