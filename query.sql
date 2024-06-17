WITH TurnierCount AS (
    SELECT
        COUNT(DISTINCT Turnier_ID) AS turnier_count
    FROM
        Spielerauftritte
),
PositionCounts AS (
    SELECT
        Positionscode,
        Turnier_ID,
        COUNT(*) AS count_positions
    FROM
        Spielerauftritte
    GROUP BY
        Positionscode,
        Turnier_ID
),
AveragePositions AS (
    SELECT
        Positionscode,
        sum(count_positions) AS avg_count_positions
    FROM
        PositionCounts
    GROUP BY
        Positionscode
)
SELECT
    A.Positionscode,
    A.avg_count_positions / T.turnier_count AS Average
FROM
    AveragePositions A,
    TurnierCount T
ORDER BY
    A.Positionscode ASC
LIMIT 10;

