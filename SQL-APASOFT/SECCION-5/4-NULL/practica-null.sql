/*• Listar las ciudades de la tabla LOCATIONS no tienen STATE_PROVINCE
• Averiguar el nombre, salario y comisión de aquellos empleados que tienen
comisión. También debemos visualizar una columna calculada denominada
“Sueldo Total”, que sea el sueldo más la comisión*/

select * from locations
where state_province is null;

select first_name,last_name,salary,salary+commission_pct as "SUELDO TOTAL" from employees
where commission_pct is not null;

