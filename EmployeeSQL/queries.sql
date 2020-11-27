select emp_no, last_name, first_name, sex,
(select salary from salaries
				 where employees.emp_no=salaries.emp_no) AS "salary"
from employees;

select first_name, last_name, hire_date from employees
where extract(year from hire_date)=1986;

select dept_no,
(select dept_name from departments
where department_manager.dept_no=departments.dept_no), 
emp_no, 
(select first_name from employees
where department_manager.emp_no=employees.emp_no),
(select last_name from employees
where department_manager.emp_no=employees.emp_no)
from department_manager;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from ((department_employee
inner join employees on 
department_employee.emp_no=employees.emp_no)
inner join departments on 
	  department_employee.dept_no=departments.dept_no)
select first_name, last_name, sex from employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules' ;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from ((department_employee
inner join employees on 
department_employee.emp_no=employees.emp_no)
inner join departments on 
	  department_employee.dept_no=departments.dept_no)
	  where dept_name= 'Sales' ;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from ((department_employee
inner join employees on 
department_employee.emp_no=employees.emp_no)
inner join departments on 
	  department_employee.dept_no=departments.dept_no)
	  where dept_name= 'Sales'OR dept_name='Development
;

select last_name, count(last_name) as "last name count"
from employees
group by last_name
order by "last name count" DESC