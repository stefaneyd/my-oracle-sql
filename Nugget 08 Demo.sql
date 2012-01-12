--Nugger #8: Displaying Data from Multiple Tables

DESCRIBE employees;

DESCRIBE departments;

select *
from user_constraints
where table_name = 'DEPARTMENTS';

select column_name, position, constraint_name
from user_cons_columns;

DESCRIPE user_constraints;

SELECT * FROM user_constraints;

select constraint_name, constraint_tpe, table_name
from user_constraint_name;
where table_name = 'DEPARTMENTS';

select column_name, position, constraint_name
from user_cons_columns;

SELECT employee_id, last_name, department_id
FROM employees;

SELECT department_id, department_name
FROM departments;

SELECT e.employee_id, e.last_name, d.department_name
FROM employees e JOIN departments d --Same as INNER JOIN
USING(department_id) --means the column name is the same in these tables
ORDER BY employee_id;

SELECT e.employee_id, e.last_name, d.department_name
FROM employees e JOIN departments d
ON(e.department_id = d.department_id) --for matching columns when their name is not the same
ORDER BY employee_id;

--self-joins
SELECT employee_id, last_name, manager_id
FROM employees;

SELECT employee_id, last_name
FROM employees;

SELECT e.last_name Employee,
m.last_name Manager
FROM employees e JOIN employees m
ON(e.manager_id = m.employee_id)
ORDER BY employee ASC;

SELECT e.employee_id, d.department_name, l.city, l.state_province
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id;

--left outer join
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT OUTER JOIN departments d
ON(e.department_id = d.department_id)
ORDER BY e.last_name; --look for Kim Grant NULL value in department_name

--right outer join
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
RIGHT OUTER JOIN departments d
ON(e.department_id = d.department_id)
ORDER BY e.last_name; --look for NULL last names

--full outer join
SELECT e.first_name, e.last_name, d.department_name
FROM EMPLOYEES E
FULL OUTER JOIN departments d
ON(E.DEPARTMENT_ID = D.DEPARTMENT_ID)
ORDER BY e.last_name; --look for Kim Grant, NULL employees

--cross join (Cartesian product)
select first_name, last_name, department_name
from employees
CROSS JOIN departments;