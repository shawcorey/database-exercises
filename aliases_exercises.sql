use employees;
select concat(first_name, ' ', last_name) as 'Full name'
from employeeslimit 10;
select concat(first_name, ' ', last_name) as 'Full name', birth_date as 'DOB'
from employeeslimit 10;
select concat(emp_no, ' - ', first_name, ' ', last_name) as 'Full name', birth_date as 'DOB'
from employeeslimit 10;