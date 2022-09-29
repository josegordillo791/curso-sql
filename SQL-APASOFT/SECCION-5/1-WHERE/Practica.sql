/*Averigua los empleados que trabajen en el departamento 100*/
select * from employees
where department_id=100;

/* Usando la tabla LOCATIONS, averigua el nombre de la Ciudad (city) y la dirección (Street_address) de los departamentos 
situados en Estados Unidos (COUNTRY_ID=US);*/
select city,street_address,decode(country_id,'US','Estados Unidos') as "CIUDAD" from locations
where country_id='US';
/*Visualiza los países que están en la región 3. (REGION_ID de la tabla COUNTRIES */
Select * from countries
where region_id=3;
/*
•	Averiguar el nombre y salario de los empleados que NO tengan como jefe al MANAGER 114 (columna MANAGER_ID) */
select first_name||' '||last_name nombre,salary salario from
employees
where manager_id<>114;

/*Visualizar los empleados que empezaron a trabajar a partir del año 2006 */
select first_name||' '||last_name nombre ,hire_date ingreso 
from employees
where hire_date>to_Date('31-12-2006','dd-mm-yyyy');

/*Seleccionar los empleados que tenga como tipo de trabajo ‘ST_CLERK’ */
select first_name||' '||last_name nombre,job_id
from employees
where job_id='ST_CLERK';

/*Indicar los datos de los empleados que tengan como apellidos “Smith” (LAST_NAME)*/
select first_name||' '||last_name nombre 
from employees
where last_name='Smith';

