/* Mostrar los compañeros que trabajan en el mismo departamento que 
John Chen*/

SELECT first_name||' '||last_name "Name",department_id FROM EMPLOYEES
where department_id =(select department_id from employees 
where first_name='John' and last_name='Chen');

select *
from departments
where location_id=(select location_id
from locations where city='Toronto');

SELECT FIRST_NAME
FROM EMPLOYEES 
WHERE EMPLOYEE_ID IN 
(SELECT MANAGER_ID FROM EMPLOYEES 
GROUP BY MANAGER_ID 
HAVING COUNT(*)>5);


select city from locations
where location_id=(select location_id from departments  where department_id= (select department_id from employees
where first_name='Guy' and last_name='Himuro'));

--Empleados con SALARIO MINIMO
select *from employees
where salary=(select min(salary) from employees);

--Mostrar los detalles de los departamentos en los cuales el salario 
--máximo sea mayor a 10000.

select * from departments where department_id in (
                                                                                select department_id 
                                                                                from employees
                                                                                group by department_id
                                                                                having max(salary)>10000);
-- Indicar los tipos de trabajo de los empleados que entraron en la empresa 
--entre 2002 y 2003                                                                                
select job_id 
from employees
where employee_id in (select employee_id from employees 
where to_char(hire_Date,'yyyy') between '2002' and '2003');