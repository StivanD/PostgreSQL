CREATE OR REPLACE PROCEDURE sp_increase_salaries(
	department_name VARCHAR(50)
)
AS
$$
BEGIN
	UPDATE
		employees
	SET
		salary = salary * 1.05
	WHERE
		department_id = (
			SELECT
				department_id
			FROM
				departments AS d
			WHERE
				department_name = d.name
		);
END;		
$$
LANGUAGE plpgsql;