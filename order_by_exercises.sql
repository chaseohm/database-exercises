use employees;

SELECT *
FROM employees
WHERE first_name = 'Irena' and gender = 'M' or first_name = 'Vidya' and gender = 'M' or first_name = 'Maya' and gender = 'M'
order by last_name, first_name;


SELECT *
FROM employees
where last_name like 'E%' and last_name like '%E'
order by emp_no;

select *
from employees
where hire_date like '199%' and birth_date like '%-12-25'
order by birth_date, hire_date desc ;

select *
from employees
where birth_date like '%-12-25';

select *
from employees
where last_name like '%q%' and not last_name like '%qu%';