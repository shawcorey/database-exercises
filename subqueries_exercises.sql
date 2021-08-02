SELECT e.first_name as first_name,
       e.first_name as last_name,
       (SELECT CONCAT(first_name, ' ', last_name) FROM employees manager_emp WHERE dm.emp_no = manager_emp.emp_no) as Manager
FROM employees e
     JOIN dept_emp de on e.emp_no = de.emp_no
     JOIN dept_manager dm on de.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01';
