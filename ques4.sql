SELECT CAST(ROUND(AVG(LAT_N), 4) AS DECIMAL(10,4)) FROM (
    SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
           COUNT(*) OVER () AS cnt
    FROM STATION
) t
WHERE rn = (cnt + 1) / 2
   OR rn = (cnt + 2) / 2;
