-- On which day it was the largest tip in January? (note: it's not a typo, it's "tip", not "trip")

SELECT
	CAST(tpep_pickup_datetime AS DATE) as "day",
	tip_amount
FROM
	yellow_taxi_trips t
GROUP BY
	t.tip_amount,
	"day"
ORDER BY tip_amount DESC