# Exploring Multiple Tables of Employee Information with SQL
For reasons including access restrictions, space limitations, and more, information within a database may not always lie within one source. A main benefit of using SQL databases to store information is the speed and ease of this method to join multiple tables and query slices of information.

In this project, we will load multiple tables of employee data from a fictional company into a SQL database and demonstrate a few different ways in which SQL can be used to query data. The following is the list of tables and their corresponding column titles:

 - Departments (department id, department name)
 - Department_Emp (employee id, department id, from date, to date)
 - Dept_Manager (department id, employee id, from date, to date)
 - Employees (employee id, birthdate, first name, last name, gender, hire date)
 - Salaries (employee id, salary, from date, to date)
 - Titles (employee id, title, from date, to date)

## Understanding Data Relationships
In order to completely understand the given data, an Entity Relationship Diagram (ERD) is a useful figure to draft before diving in. Here, we can see that the `Employee id` is one of the most valuable keys of content with ways to connect together 4 of the 6 tables in our database. Meanwhile, information stored in tables like `Salary` and `Titles` have no other avenue to the larger databases without the `Employee id` key.
\
\
![](https://github.com/gtieng/sql-challenge/blob/master/EmployeeSQL/sql_erd.001.png)

## Setting Up Database Tables
After an ERD is established, a schema can be drafted. This technical diagram informs how tables should be set up in the database with identifications for primary and secondary keys, as well as the datatypes of each column within each table.
\
\
![](https://github.com/gtieng/sql-challenge/blob/master/EmployeeSQL/sql_schema.004.png)


Below is an example of SQL code based on the schema to insert the table `employees` along with the names of its columns into our database. Note here that there are datatypes representing integers (`int`), dates (`date`), strings with variable lengths (`varchar`), and strings with set lengths (`char`).

```
CREATE TABLE employees (
    emp_no int,
    birth_date date,
    first_name varchar,
    last_name varchar,
    gender char(1),
    hire_date date  
);
```

## Data Exploration
With the data for this project conveniently made available as `.csv` files to import into our database, we'll move ahead to the demonstrating SQL query structures.

### 1. Basic Selection
In SQL, query statements are comprised of a combination of clauses with the most basic type making use of `SELECT` to choose columns to display and `FROM` to identify the data source. The use of `*` denotes selecting all data.

```
select *
from employees
```
![](https://github.com/gtieng/sql-challenge/blob/master/readme_images/1_basic.png)
```
Successfully run. Total query runtime: 317 msec.
300024 rows affected.
```
### 2. Querying with Joins
Selecting data from two or more sources requires the use of the `JOIN` clause in conjunction with `FROM` and must also specify the common key from each table using `ON`. Here, instead of querying all data, we will choose select columns from each data source.

```
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no;
```
![](https://github.com/gtieng/sql-challenge/blob/master/readme_images/2_joins.png)
```
Successfully run. Total query runtime: 588 msec.
300024 rows affected.
```




## Authors

**Gerard Tieng** - Data Analyst & Social Media Marketer \
[http://www.twitter.com/gerardtieng](http://www.twitter.com/gerardtieng) \
[http://www.linkedin.com/in/gerardtieng](http://www.linkedin.com/in/gerardtieng)
