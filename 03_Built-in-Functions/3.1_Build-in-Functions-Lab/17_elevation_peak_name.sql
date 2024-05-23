SELECT
	CONCAT_WS(
		' ',
		elevation,
		repeat('-', 3) || Repeat('>', 2),
		peak_name
	)
FROM
	peaks
WHERE 
	elevation >= 4884;