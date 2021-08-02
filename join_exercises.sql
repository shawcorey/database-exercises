use employees;
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
from dept_manager as dm
         join employees e on e.emp_no = dm.emp_no
         join departments d on d.dept_no = dm.dept_no
where to_date = '9999-01-01'
order by dept_name;
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
from dept_manager as dm
         join employees e on e.emp_no = dm.emp_no
         join departments d on d.dept_no = dm.dept_no
where to_date = '9999-01-01'
  and e.gender = 'F'
order by dept_name;
SELECT title, count(*) Total
from titles as t
         join employees e on e.emp_no = t.emp_no
         join dept_emp de on e.emp_no = de.emp_no
group by title;
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
from dept_manager as dm
         join employees e on e.emp_no = dm.emp_no
         join salaries s on e.emp_no = s.emp_no
         join departments d on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01'
order by dept_name;