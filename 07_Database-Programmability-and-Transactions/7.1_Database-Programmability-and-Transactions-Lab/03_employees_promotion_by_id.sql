CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(
	id INT
)
AS
$$
BEGIN
	UPDATE
		employees AS e
	SET
		salary = salary * 1.05
	WHERE
		e.employee_id = id;
	
	IF (SELECT employee_id FROM employees WHERE employee_id = id) IS NULL THEN
		ROLLBACK;
	END IF;
END;
$$
LANGUAGE plpgsql;