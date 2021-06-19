-- Create table for importing ATM data
CREATE TABLE atm(
	id INT,
	latitude FLOAT,
	longitude FLOAT,
	city VARCHAR(60),
	state VARCHAR(60)
);

SELECT * FROM atm;

-- Create table for importing population data
CREATE TABLE population(
	state varchar(60),
	population int
);

SELECT * 
FROM population;

--    DATA CLEANING   -------

-- Number of cities have state abbreviation or US as prefix
-- Birmingham, US / Richmond, CA, US / Corona CA
SELECT * FROM atm
WHERE city LIKE '%US';

SELECT * FROM atm
WHERE city LIKE '%,FL';

-- Remove state abbreviation or US as prefix
UPDATE atm
SET city = LEFT(city, POSITION(',' IN city) - 1)
WHERE POSITION(',' IN city) > 0;

UPDATE atm
SET city = LEFT(city, POSITION(' FL' IN city) - 1)
WHERE POSITION(' FL' IN city) > 0;

-- Change all NY city names to "New York" for city comparisions
UPDATE atm 
SET  city = 'New York'
WHERE city in ('Jamaica, Queens', 'Bronx', 'Astoria', 'Brooklyn', 'Staten Island', 'Manhattan', 'Harlem', 'Far Rockaway', 'Ozone Park', 'Jackson Heights', 'Flushing', 'Rego Park');

UPDATE atm
SET state ='Hawaii'
WHERE state = 'Hawai'

-- NULL check
SELECT * FROM atm 
WHERE latitude IS NULL;

SELECT * FROM atm 
WHERE longitude IS NULL;

SELECT * FROM atm 
WHERE city IS NULL;

SELECT * FROM atm 
WHERE state IS NULL;

SELECT * FROM population
WHERE state IS NULL

SELECT * FROM population
WHERE population IS NULL

-- Checking duplicate state in population table
SELECT DISTINCT state
FROM population;
-- Returned 52 records which is equal to the total records in the table

-- Copy cleased ATM data into a csv file for further processing in Python
COPY(
SELECT *
FROM atm
	)
TO 'C:\Tapas\atm.csv' DELIMITER ',' CSV HEADER;

-- Copy group by city data into a csv file

COPY(
SELECT city, max(latitude) lat, max(longitude) lon, COUNT(*) ATM
FROM atm
GROUP BY city
ORDER BY COUNT(*) DESC
	)
TO 'C:\Tapas\city_atm.csv' DELIMITER ',' CSV HEADER;

-- Group ATM table to show ATM count per state
-- Copy the query result to a csv file for further analysis in Python
COPY(
SELECT population.state, population, state_atm.atm_count 
FROM population 
INNER JOIN 
(
SELECT state, COUNT(*) "atm_count"
FROM atm 
GROUP BY state
	) AS state_atm 
ON state_atm.state = population.state
ORDER BY state_atm.atm_count DESC
	)
TO 'C:\Tapas\atm_pop.csv' DELIMITER ',' CSV HEADER;
