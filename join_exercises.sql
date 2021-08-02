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
# 4
SELECT title, count(*) Total
from titles as t
         join employees e on e.emp_no = t.emp_no
         join dept_emp de on e.emp_no = de.emp_no
group by title;
# 5
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
from dept_manager as dm
         join employees e on e.emp_no = dm.emp_no
         join salaries s on e.emp_no = s.emp_no
         join departments d on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01'
order by dept_name;
# The Bonus
select CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name,
       CONCAT(m.first_name, ' ', m.last_name) AS Manger
from employees.employees e
         join dept_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
         join dept_manager dm on de.dept_no = dm.dept_no
         join employees m on dm.emp_no = m.emp_no
where de.to_date = '9999-01-01'
  and dm.to_date = '9999-01-01'
order by dept_name, e.emp_no;