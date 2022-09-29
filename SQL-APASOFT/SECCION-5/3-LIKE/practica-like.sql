/*• Indicar los datos de los empleados cuyo FIRST_NAME empieza por ‘J’
• Averiguar los empleados que comienzan por ‘S’ y terminan en ‘n’
• Indicar los países que tienen una “r” en la segunda letra (Tabla COUNTRIES*/

select * 
from employees
where first_name like 'J%';

select * 
from employees
where first_name like 'J%n';

select *
from countries
where country_name LIKE '_r%';

