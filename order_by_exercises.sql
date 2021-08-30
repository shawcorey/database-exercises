use employees;
select *
from employeeswhere first_name in ('irene', 'vidya', 'maya')
order by first_name, last_name;
select *
from employeeswhere last_name like 'E%';
select *
from employeeswhere last_name like '%q%';
SELECT *
from employeeswhere gender = 'm' AND    (first_name = 'irene'        or first_name = 'vidya'        or first_name = 'maya')
order by first_name, last_name;
SELECT *
FROM employeesWHERE last_name like '%E'
order by emp_no;
SELECT *
FROM employeesWHERE last_name like 'E%E';
SELECT *
FROM employeesWHERE last_name like '%q%'  AND last_name NOT like ('%qu%');