SELECT
    COUNT(*)
FROM
    employees
WHERE
    salary > (SELECT AVG(salary) AS salary FROM employees);