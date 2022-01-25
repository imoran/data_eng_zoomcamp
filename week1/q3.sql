-- How many taxi trips were there on January 15?

SELECT
	CAST(tpep_pickup_datetime AS DATE) as "day", 
	COUNT(1)
FROM
	yellow_taxi_trips
WHERE
	CAST(tpep_pickup_datetime AS DATE) = '2021-01-15'
GROUP BY
	"day"