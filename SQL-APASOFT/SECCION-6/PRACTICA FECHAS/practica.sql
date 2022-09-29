/*Funciones de fecha
• Indicar el número de días que los empleados llevan en la empresa
• Indicar la fecha que será dentro de 15 días
• ¿Cuántos MESES faltan para la navidad? La cifra debe salir
redondeada, con 1 decimal
• Indicar la fecha de entrada de un empleado y el último día del mes que
entró
• Utilizando la función ROUND, indicar los empleados que entraron en los
últimos 15 días de cada mes
*/
select first_name||' '||last_name "Nombre " ,hire_date, sysdate-hire_date "Dias trabajados"
from employees;

select round(months_between(to_Date('25-12-2022','dd-mm-yyyy'),sysdate),1)  "Meses para navidad" from dual;

select first_name||' '||last_name "Nombre " ,hire_date,last_day(hire_Date) "Ultimo día del mes que entro" 
from employees;

select first_name||' '||last_name "Nombre", hire_date,ROUND(HIRE_DATE,'MONTH') from employees
where ROUND(HIRE_DATE,'MONTH')>hire_date;