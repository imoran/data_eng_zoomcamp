-- What was the most popular destination for passengers picked up in central park on January 14? Enter the zone name (not id)

SELECT 
	*
FROM
    (SELECT
        CONCAT(zpu."Borough", ' / ', zpu."Zone") AS "pickup_loc",
        CONCAT(zdo."Borough", ' / ', zdo."Zone") AS "dropoff_loc", 
        CAST('2020-01-14' AS DATE) as "day",
        COUNT(1)
    FROM
        yellow_taxi_trips t,
        taxi_zones zpu,
        taxi_zones zdo
    WHERE
        t."PULocationID" = zpu."LocationID" AND
        t."DOLocationID" = zdo."LocationID"
    GROUP BY
        "day",
        "pickup_loc",
        "dropoff_loc"
    ) as innerTable 
WHERE 
	"pickup_loc" LIKE '%Central Park%'
ORDER BY
	"count" DESC