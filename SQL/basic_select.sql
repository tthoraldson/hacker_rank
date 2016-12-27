-- revising the select query I
SELECT *
FROM city
WHERE (POPULATION > 100000) AND (COUNTRYCODE = "USA");

-- revising the select query II
SELECT NAME
FROM CITY
WHERE (POPULATION > 120000) AND (COUNTRYCODE = "USA");

-- select all
SELECT *
FROM CITY;

-- select by ID
SELECT *
FROM CITY
WHERE (ID = 1661);

-- japanese cities attributes
SELECT *
FROM CITY
WHERE (COUNTRYCODE = "JPN");

-- japanese cities name
SELECT NAME
FROM CITY
WHERE (COUNTRYCODE = "JPN");

-- weather observation station 1
SELECT CITY, STATE
FROM STATION;

-- weather obvservation station 2
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;

-- weather observation station 3
SELECT DISTINCT CITY
FROM STATION
WHERE MOD (ID, 2) = 0;

-- weather observation station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

-- weather observation station 5
-- struggle
SELECT CITY, LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY)=(
    SELECT MAX(LENGTH(CITY))
    FROM STATION
    )
OR LENGTH(CITY)=(
    SELECT MIN(LENGTH(CITY))
    FROM STATION
    )
AND ROWNUM=1;

-- weather observation station 6
SELECT UNIQUE CITY
FROM STATION
WHERE SUBSTR(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U');

-- weather observation station 7
SELECT UNIQUE CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, -1, 1)) IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 8
SELECT UNIQUE CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, -1, 1)) IN ('a', 'e', 'i', 'o', 'u') AND LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 9
SELECT UNIQUE CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 10
SELECT UNIQUE CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, -1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 11
SELECT UNIQUE CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, -1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') OR LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 12
SELECT UNIQUE CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, -1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') AND LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 13
SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE (LAT_N > 38.7880) AND (LAT_N < 137.3245);
