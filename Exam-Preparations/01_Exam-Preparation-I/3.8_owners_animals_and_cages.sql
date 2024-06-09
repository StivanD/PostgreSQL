SELECT
	CONCAT(
		o.name,
		' - ',
		a.name
	) AS "owners - animals",
	o.phone_number,
	ac.cage_id
FROM
	animals AS a
JOIN
	owners AS o
ON
	a.owner_id = o.id
JOIN
	animals_cages AS ac
ON
	ac.animal_id = a.id
WHERE
	a.animal_type_id = 1
ORDER BY
	o.name,
	a.name DESC;