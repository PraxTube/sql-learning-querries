SELECT
    M.Regionname,
    count(*) AS Anzahl
FROM
    Spieler S
    INNER JOIN Spielerauftritte A ON S.Spieler_ID = A.Spieler_ID
    INNER JOIN Mannschaften M ON A.Mannschafts_ID = M.Mannschafts_ID
WHERE
    S.Weiblich = 0
GROUP BY
    M.Regionname
ORDER BY
    M.Regionname ASC;

