SELECT COUNT(EMPLOYEE_ID),DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID=50
GROUP BY DEPARTMENT_ID; --CANTIDAD DE EMPLEADOS DEL DEPARTAMENTO 50

select count(employee_id),to_char(hire_date,'yyyy')
from employees
where to_char(hire_date,'yyyy')=2007
group by to_char(hire_date,'yyyy'); --CANTIDAD DE EMPLEADOS QUE INGRESARON ENE L AÑO 2007

select sum(salary) "SUMA SALARIO",department_id "DEPARTAMENTO"
from employees 
where department_id=100
group by department_id;--SUMA DE SALARIO DEL DEPARTAMENTO 100

select round(avg(salary),2),department_id
from employees
group by department_id;--Mostrar el salario medio por departamento, con dos decimales


select  country_id,count(city) from locations
group by country_id;
--• Mostrar el country_id y el número de ciudades que hay en ese país.


select department_id "DEPARTAMENTO",avg(salary) "PROMEDIO SALARIO"
from employees
where commission_pct is not null
group by department_id;--Mostrar el promedio de salario de los empleados por departamento que
--tengan comisión



select to_char(hire_date,'yyyy') "AÑO" ,count(employee_id) "CANTIDAD"
from employees
GROUP BY to_char(hire_date,'yyyy')
having count(employee_id)>10;--Mostrar los años en que ingresaron más de 10 empleados

select department_id "DEPARTAMENTO",to_char(hire_date,'yyyy') "AÑO",count(employee_id) "EMPLEADOS QUE INGRESARON"
from employees
group by department_id,to_char(hire_date,'yyyy')
order by department_id,to_char(hire_date,'yyyy');
--Mostrar por departamento y año el número de empleados que 
--ingresaron

SELECT * FROM EMPLOYEES;

select distinct (department_id) "DEPARTAMENTO",COUNT(MANAGER_ID)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID,MANAGER_ID
HAVING count(employee_id)>5;
/*Mostrar los departament_id de los departamentos que tienen managers 
que tienen a cargo más de 5 empleados*/

