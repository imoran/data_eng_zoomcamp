SELECT 
    COUNT(0)
FROM 
    `tokyo-equator-339211.nytaxi.fhv_tripdata` 
WHERE 
    (pickup_datetime BETWEEN "2019-01-01 00:00:01" AND "2019-03-31 23:59:59") AND 
    (dispatching_base_num = "B00987" OR 
    dispatching_base_num = "B02060" OR 
    dispatching_base_num = "B02279");
