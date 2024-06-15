SELECT
    Turnier_ID,
    Spieler_ID,
    count(*) AS played_Spiele
FROM
    Spielerauftritte
GROUP BY
    Turnier_ID,
    Spieler_ID
HAVING
    played_Spiele > 0
ORDER BY
    played_Spiele ASC,
    Turnier_ID DESC,
    Spieler_ID DESC
LIMIT 10;

