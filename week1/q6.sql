-- What's the pickup-dropoff pair with the largest average price for a ride (calculated based on total_amount)?

SELECT
	zpu."Borough" || ' / ' || zpu."Zone" AS pickup_loc,
	zdo."Borough" || ' / ' || zdo."Zone" AS dropoff_loc
FROM
	yellow_taxi_trips t,
	taxi_zones zpu,
	taxi_zones zdo
WHERE
	t."PULocationID" = zpu."LocationID" AND
	t."DOLocationID" = zdo."LocationID"
GROUP BY
	"pickup_loc",
	"dropoff_loc"
ORDER BY
	AVG("total_amount") DESC
LIMIT
	1