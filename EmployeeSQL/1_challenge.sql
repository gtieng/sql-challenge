-- sql-challenge code
-- by Gerard Tieng

-- 1. List the following details of each employee:
-- • employee number
-- • last name
-- • first name
-- • gender
-- • salary

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no;


-- 2. List employees who were hired in 1996.

select emp_no, first_name, last_name
from employees
where hire_date between '1986-01-01' and '1986-12-31';