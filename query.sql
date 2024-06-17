WITH AverageGoals AS (
    SELECT
        AVG(Tore_scored) AS Average_Tore
    FROM (
        SELECT
            Turnier_ID,
            COUNT(*) AS Tore_scored
        FROM
            Tore
        GROUP BY
            Turnier_ID)
),
TournamentsWithGoals AS (
    SELECT
        Turnier_ID,
        COUNT(*) AS Tore_scored
    FROM
        Tore
    GROUP BY
        Turnier_ID
)
SELECT
    t.Turnier_ID,
    t.Tore_scored
FROM
    TournamentsWithGoals t,
    AverageGoals a
WHERE
    t.Tore_scored > 0
    AND t.Tore_scored > a.Average_Tore
ORDER BY
    t.Turnier_ID DESC
LIMIT 10;

