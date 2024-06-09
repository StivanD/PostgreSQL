CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not (
	IN animal_name VARCHAR(30),
	OUT owner_name VARCHAR(50)
)
AS 
$$  
BEGIN
    owner_name := (
	SELECT 
		COALESCE(o.name, 'For adoption')
    FROM
		animals AS a
    LEFT JOIN
		owners AS o
	ON
		a.owner_id = o.id
    WHERE
		a.name = animal_name
	);

    RAISE INFO '%', owner_name;
END;
$$
LANGUAGE plpgsql;
