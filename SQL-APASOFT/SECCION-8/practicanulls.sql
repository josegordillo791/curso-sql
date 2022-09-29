/*
De la tabla LOCATIONS visualizar el nombre de la ciudad y el estado_provincia. En el caso de que no tenga que aparezca el texto “No tiene”
• Visualizar el salario de los empleados incrementado en la comisión 
(PCT_COMMISSION). Si no tiene comisión solo debe salir el salario
• Seleccionar el nombre del departamento y el manager_id. Si no tiene, 
debe salir un -1
• De la tabla LOCATIONS, devolver NULL si la ciudad y la provincia son 
iguales. Si no son iguales devolver la CITY
*/

select city,nvl(state_province,'No tiene') from locations;


select first_name||' '||last_name "Nombre" ,salary ,nvl(commission_pct+salary,salary) from employees
;

select department_name,nvl(manager_id,-1) from departments;

select location_id,city,state_province , nullif(city,state_province) from locations
where nullif(city,state_province) is null;