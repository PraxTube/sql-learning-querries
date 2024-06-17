CREATE VIEW Union_Turnier_IDs AS
SELECT
    Turnier_ID,
    Spieler_ID
FROM
    tore
UNION
SELECT
    Turnier_ID,
    Spieler_ID
FROM
    Spielerauftritte;

SELECT
    COUNT(G.Spieler_ID) AS scored_Tore,
    A.Spieler_ID,
    A.Turnier_ID
FROM
    Union_Turnier_IDs A
    LEFT JOIN Tore G ON A.Turnier_ID = G.Turnier_ID
        AND A.Spieler_ID = G.Spieler_ID
GROUP BY
    A.Spieler_ID,
    A.Turnier_ID
ORDER BY
    scored_Tore ASC,
    A.Spieler_ID DESC,
    A.Turnier_ID ASC
LIMIT 10;

