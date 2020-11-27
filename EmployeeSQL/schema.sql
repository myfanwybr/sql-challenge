create table departments(
dept_no VARCHAR PRIMARY KEY, 
dept_name VARCHAR
);

SELECT * from departments;

create table titles(
title_id varchar PRIMARY KEY, 
title varchar);

create table employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR, 
birth_date date, 
first_name VARCHAR, 
last_name VARCHAR, 
sex VARCHAR, 
hire_date date, 
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));


select * from employees;



create table department_employee(
emp_no INT,
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
PRIMARY KEY (emp_no, dept_no)
);

create table department_manager(
dept_no VARCHAR, 
emp_no INT, 
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no, emp_no)
);

create table salaries (
emp_no INT, 
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
PRIMARY KEY (emp_no, salary)
);

				
