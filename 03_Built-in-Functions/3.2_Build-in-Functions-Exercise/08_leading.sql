SELECT
	continent_name,
	TRIM(LEADING FROM continent_name)
FROM
	continents;
	
/*
DOES THE SAME THING

SELECT
	continent_name,
	LTRIM(continent_name)
FROM
	continents;
*/