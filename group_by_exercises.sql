use employees;
SELECT distinct titlefrom titles;
SELECT last_namefrom employeeswhere last_name like 'E%E'
GROUP by last_name;
SELECT first_name, last_name, count(last_name)
from employeeswhere last_name like 'E%E'
group by first_name, last_name;
SELECT last_name, count(last_name)
from employeeswhere last_name like '%Q%'  and (last_name not like '%qu%')
group by last_name;
SELECT count(gender) as "Number of gender:", genderfrom employees
where first_name in ('irena', 'vidya', 'maya')
group by gender;