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


-- 3. List the manager of each department with the following information:
-- • department number
-- • department name
-- • the manager's employee number
-- • last name
-- • first name
-- • and start and end employment dates

select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
from dept_manager as m
join departments as d on m.dept_no = d.dept_no
join employees as e on m.emp_no = e.emp_no;


-- 4. List the department of each employee with the following information:
-- • employee number
-- • last name
-- • first name
-- • and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as k
join departments as d on k.dept_no = d.dept_no
join employees as e on k.emp_no = e.emp_no;


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

select *
from employees
where first_name = 'Hercules' and last_name = 'B%';