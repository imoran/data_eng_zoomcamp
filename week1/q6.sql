-- What's the pickup-dropoff pair with the largest average price for a ride (calculated based on total_amount)?

SELECT
	CONCAT(zpu."Borough", ' / ', zpu."Zone") AS "pickup_loc",
	CONCAT(zdo."Borough", ' / ', zdo."Zone") AS "dropoff_loc",
	total_amount
FROM
	yellow_taxi_trips t,
	taxi_zones zpu,
	taxi_zones zdo
WHERE
	t."PULocationID" = zpu."LocationID" AND
	t."DOLocationID" = zdo."LocationID"
GROUP BY
	"pickup_loc",
	"dropoff_loc",
	"total_amount"
ORDER BY
	AVG(total_amount) DESC