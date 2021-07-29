USE third_test_db;

SELECT CONCAT(first_Name, last_name)
FROM third_test_db.employee
WHERE first_Name LIKE ('e%')
  AND last_Name LIKE ('%e');

SELECT *
FROM third_test_db.employee
WHERE MONTH(birth_date) = 12
  AND day(birth_date) = 25;