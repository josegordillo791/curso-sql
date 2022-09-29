/*
Visualizar el nombre y salario de los empleados de los que el número de
empleado es impar (PISTA: MOD)
• Prueba con los siguientes valores aplicando las funciones TRUNC y
ROUND, con 1 y 2 decimales.
25.67,0
25.67,1
25.34,1
25.34,2
25.67,-1
*/

select * from employees
where mod(employee_id,2)<>0;

select trunc(25.64,0),
          trunc(25.67,1),
          trunc(25.34,1) ,
          trunc(25.34,2),
          trunc(25.67,-1)
from dual
union select round(25.64,0),
          round(25.67,1),
          round(25.34,1) ,
          round(25.34,2),
          round(25.67,-1)
from dual;