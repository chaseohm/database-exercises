use employees;

SELECT *
FROM employees
WHERE first_name = 'Irena' and gender = 'M' or first_name = 'Vidya' and gender = 'M' or first_name = 'Maya' and gender = 'M';


SELECT *
FROM employees
where last_name like 'E%' and last_name like '%E';

select *
from employees
where hire_date like '199%' and birth_date like '%-12-25';

select *
from employees
where birth_date like '%-12-25';

select *
from employees
where last_name like '%q%' and not last_name like '%qu%';