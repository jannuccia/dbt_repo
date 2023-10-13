WITH avg_temp_per_weekday AS (
    SELECT
        TO_CHAR(date, 'Day') AS weekday,
        AVG(avgtemp_c) AS average_temperature
    FROM
        prep_temp
    GROUP BY
        TO_CHAR(date, 'Day')
)
SELECT *
FROM avg_temp_per_weekday