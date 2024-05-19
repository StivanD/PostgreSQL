SELECT DISTINCT on (name)
	name, 
	area AS area_km2
FROM cities
ORDER BY name DESC;
