SELECT
	CONCAT(
		a.id,
		' ',
		a.username
	) AS id_username,
	a.email
FROM
	accounts AS a
JOIN
	accounts_photos AS ap
ON
	ap.account_id = a.id
WHERE
	a.id = ap.photo_id;