WITH SpielerInAllTurniere AS (
    SELECT
        Spieler_ID
    FROM
        Tore T
    GROUP BY
        Spieler_ID
    HAVING
        COUNT(DISTINCT Turnier_ID) = (
            SELECT
                COUNT(DISTINCT Turnier_ID)
            FROM
                Tore))
SELECT
    S.Spieler_ID,
    S.Familienname,
    S.Vorname
FROM
    Spieler S
    INNER JOIN SpielerInAllTurniere I ON S.Spieler_ID = I.Spieler_ID
ORDER BY
    S.Spieler_ID ASC,
    S.Familienname ASC,
    S.Vorname ASC
LIMIT 10;

