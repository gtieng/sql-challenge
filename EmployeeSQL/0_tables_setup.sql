-- sql-challenge table setup
-- by Gerard Tieng


CREATE TABLE departments (
    dept_no char(4),
    dept_name varchar
);

CREATE TABLE dept_manager (
    dept_no char(4),
    emp_no int,
    from_date date,
    to_date date
);

CREATE TABLE dept_emp (
    emp_no int,
    dept_no char(4),
    from_date date,
    to_date date
);

CREATE TABLE salaries (
    emp_no int,
    salary int,
    from_date date,
    to_date date
);

CREATE TABLE employees (
    emp_no int,
    birth_date date,
    first_name varchar,
    last_name varchar,
    gender char(1),
    hire_date date
    
);

CREATE TABLE titles (
    emp_no int,
    title varchar,
    from_date date,
    to_date date
);