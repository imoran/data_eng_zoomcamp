-- How many taxi trips were there on January 15?

SELECT
	CAST(tpep_pickup_datetime AS DATE) as "day", 
	COUNT(1)
FROM
	yellow_taxi_trips t
GROUP BY
	CAST(tpep_pickup_datetime AS DATE)
ORDER BY "day" ASC