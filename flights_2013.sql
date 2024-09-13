-- SQL file for Flight Delay Analysis

-- Average delay by carrier
SELECT carrier, AVG(dep_delay) AS avg_dep_delay, AVG(arr_delay) AS avg_arr_delay
FROM flights2013.flights
WHERE dep_delay IS NOT NULL AND arr_delay IS NOT NULL
GROUP BY carrier
ORDER BY avg_dep_delay DESC;

-- Most delayed flights
SELECT flight, carrier, origin, dest, dep_delay, arr_delay
FROM flights2013.flights
WHERE dep_delay > 0 OR arr_delay > 0
ORDER BY dep_delay DESC, arr_delay DESC
LIMIT 10;

-- On-time Performance by carrier
SELECT carrier, COUNT(*) AS on_time_flights
FROM flights2013.flights
WHERE dep_delay <= 0 AND arr_delay <= 0
GROUP BY carrier
ORDER BY on_time_flights DESC;

-- Average Delay by Day of Week
SELECT EXTRACT(DAYOFWEEK FROM time_hour) AS day_of_week, AVG(dep_delay) AS avg_dep_delay, AVG(arr_delay) AS avg_arr_delay
FROM flights2013.flights
WHERE dep_delay IS NOT NULL AND arr_delay IS NOT NULL
GROUP BY day_of_week
ORDER BY day_of_week;

-- Most Frequent Routes
SELECT origin, dest, COUNT(*) AS flight_count
FROM flights2013.flights
GROUP BY origin, dest
ORDER BY flight_count DESC
LIMIT 10;
