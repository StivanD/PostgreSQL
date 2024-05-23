SELECT
	continent_name,
	TRIM(TRAILING FROM continent_name)
FROM
	continents;
    
/*
DOES THE SAME THING

SELECT
	continent_name,
	RTRIM(continent_name)
FROM
	continents;
*/