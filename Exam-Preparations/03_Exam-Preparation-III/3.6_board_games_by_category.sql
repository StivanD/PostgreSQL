SELECT
	bg.id,
	bg.name,
	bg.release_year,
	c.name AS category_name
FROM
	board_games AS bg
JOIN
	categories AS C
ON
	c.id = bg.category_id
WHERE
	c.name in ('Strategy Games', 'Wargames')
ORDER BY
	bg.release_year DESC;