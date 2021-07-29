USE third_test_db;

SELECT CONCAT(first_name, last_name)
FROM third_test_db.employee
WHERE first_name LIKE ('e%')
  AND last_name LIKE ('%e');

SELECT * third_test_db FROM;