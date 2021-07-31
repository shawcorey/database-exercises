USE employees;

SELECT CONCAT(first_Name, last_name)
FROM employees
WHERE first_Name LIKE ('e%')
  AND last_Name LIKE ('%e');

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND day(birth_date) = 25;