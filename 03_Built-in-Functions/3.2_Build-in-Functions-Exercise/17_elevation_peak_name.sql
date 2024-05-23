SELECT
	CONCAT_WS(
		' ',
		elevation,
		repeat('-', 3) || Repeat('>', 2),
		peak_name
	) AS "Elevation -->> Peak Name"
FROM
	peaks
WHERE 
	elevation >= 4884;