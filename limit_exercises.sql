use employees;
SELECT distinct last_namefrom employeesorder by last_name desclimit 10;
select emp_nofrom(select * from salaries order by salary desc limit 5) as `s*`;
select emp_nofrom(select * from salaries order by salary desc limit 5 offset 45) as `s*`;