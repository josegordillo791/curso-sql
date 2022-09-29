--Visualizar el nombre del país y el nombre de la región. (tablas COUNTRIES 
--y REGIONS). Usar un natural join
select c.country_name,r.region_name from countries c
natural join regions r;

--Usando el ejemplo anterior visualizar también el nombre de la ciudad, 
--añadiendo una nueva tabla (LOCATIONS)
select c.country_name,r.region_name ,l.city from countries c
natural join regions r natural join locations l;

/*ndicar el nombre del departamento y la media de sus salario*/
select avg(e.salary) "MEDIA SALARIO",d.department_name "DEPARTAMENTO"
from departments d  join employees e 
using(department_id)
group by d.department_name
;

/*Mostrar el nombre del departamento, el del manager a cargo y la ciudad a la 
que pertenece. Debemos usar la cláusula ON y/o la cláusula USING para 
realizar la operación.*/

select e.first_name||' '||e.last_name "MANAGER" , d.department_name "DEPARTAMENTO" ,l.city
from employees e join departments d on e.department_id=d.department_id join locations l on d.location_id=l.location_id 
;


/*
Mostrar job_title, el department_name, el last_name de empleado y 
hire_date de todos los empleados que entraron entre el 2002 y el 2004.
Usar cláusulas using
*/


select j.job_title "TRABAJO",d.department_name "DEPARTAMENTO",e.last_name "APELLIDO EMPLEADO" ,e.hire_date "FECHA INGRESO"
from departments d join employees  e using (department_id)
join jobs j using (job_id)
where to_char(hire_date,'yyyy') between 2002 and 2004;

/*
Mostrar el job_title y la media de los salarios de cada uno, siempre que la 
media supere los 7000*/

Select j.job_title "TRABAJO IDE",round(avg(e.salary),1) "MEDIA SALARIO"
from jobs j join employees e using(job_id)
group by j.job_title
having avg(e.salary) >7000;

/*
Mostrar el nombre de la región y el número de departamentos en cada una 
de las regiones
*/


select r.region_name,count(d.department_id)
from departments d join locations l using(location_id)
join countries c using(country_id) join regions r using(region_id)
group by r.region_name;

/* Mostrar el nombre del empleado, el departamento y el país donde trabaja 
(debemos usar la cláusual using)*/




