--PRACTICA FUNCIONES DE CARACTER
/*
En la tabla LOCATIONS, averiguar las ciudades que son de Canada o
Estados unidos (Country_id=CA o US) y que la longitud del nombre de la
calle sea superior a 15.
• Muestra la longitud del nombre y el salario anual (por 14) para los
empleados cuyo apellido contenga el carácter 'b' después de la 3ª
posición.
• Averiguar los empleados que ganan entre 4000 y 7000 euros y que
tienen alguna 'a' en el nombre. (Debemos usar INSTR y da igual que sea
mayúscula que minúsculas) y que tengan comisión.
• Visualizar las iniciales de nombre y apellidos separados por puntos. Por
ejemplo:
*/

select *
from locations
where country_id in ('CA','US')
and length(street_address)>15;

select length(first_name),salary*14 as "SALARIO ANUAL"
from employees
where instr(last_name,'b')>3;

/*• Averiguar los empleados que ganan entre 4000 y 7000 euros y que
tienen alguna 'a' en el nombre. (Debemos usar INSTR y da igual que sea
mayúscula que minúsculas) y que tengan comisión.*/

select first_name,last_name,salary||' $'
from employees
where instr(lower(first_name),'a')<>0 or instr(upper(first_name),'a')<>0 ;

select substr(first_name,1,1)||'.'||substr(last_name,1,1)
from employees;