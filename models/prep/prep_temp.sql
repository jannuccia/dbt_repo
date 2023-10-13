WITH temp_daily AS (
    SELECT * 
    FROM {{ref('staging_temp')}}
),
add_weekday AS (
    SELECT *,
        trim(to_char(date, 'Day')) AS weekday,
        date_part('day', date) AS day_num
    FROM temp_daily
)
SELECT *
FROM add_weekday