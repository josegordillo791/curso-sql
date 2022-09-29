/*AND-OR-NOT
� Obtener el nombre y la fecha de la entrada y el tipo de trabajo de los
empleados que sean IT_PROG y que ganen menos de 6000 d�lares
� Seleccionar los empleados que trabajen en el departamento 50 o 80,
cuyo nombre comience por S y que ganen m�s de 3000 d�lares.
� �Qu� empleados de job_id IT_PROG tienen un prefijo 5 en el tel�fono
y entraron en la empresa en el a�o 2007?*/

select * from employees
where job_id='IT_PROG' and salary<6000;

select * from employees
where department_id in(50,80) and first_name like 'S%'
and salary>3000;

select * from employees
where phone_number like '%5%'
and hire_date between to_Date('01-01-2007','dd-mm-yyyy') and to_Date('31-12-2007','dd-mm-yyyy');
