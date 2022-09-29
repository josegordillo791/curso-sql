/*
. Funciones de conversion. TO_CHAR
� Indicar los empleados que entraron en Mayo en la empresa. Debemos 
buscar por la abreviatura del mes
� Indicar los empleados que entraron en el a�o 2007 usando la funci�n 
to_char
� �Qu� d�a de la semana (en letra) era el d�a que naciste?
� Averiguar los empleados que entraron en el mes de Junio. Debemos 
preguntar por el mes en letra. Nota: La funci�n TO_CHAR puede 
devolver espacios a la derecha)
� Visualizar el salario de los empleados con dos decimales y en d�lares y 
tambi�n en la moneda local (el ejemplo es con euros, suponiendo que el 
cambio est� en 0,79$)

*/

select * from employees
where  TO_CHAR(to_date(hire_date,'dd-mm-yyyy'),'mon')='may'; --Empleados que entraron en mayo

select * from employees
where  TO_CHAR(to_date(hire_date,'dd-mm-yyyy'),'yyyy')='2007'; --Empleados que entraron en 2007

select TO_CHAR(to_date('27-04-1991','dd-mm-yyyy'),'day') from dual;

SELECT TO_CHAR(to_date('01-05-2022','dd-mm-yyyy'),'mon') FROM DUAL;

SELECT TO_CHAR(sysdate, 'mon') FROM DUAL;

/* Averiguar los empleados que entraron en el mes de Junio. Debemos 
preguntar por el mes en letra. Nota: La funci�n TO_CHAR puede 
devolver espacios a la derecha)*/

select * from employees
where rtrim(to_char(hire_date,'month'))='junio';

/*Visualizar el salario de los empleados con dos decimales y en d�lares y 
tambi�n en la moneda local (el ejemplo es con euros, suponiendo que el 
cambio est� en 0,79$)*/

SELECT SALARY,TO_CHAR(SALARY,'$99,999.99') AS DOLARES, 
TO_CHAR(SALARY*0.79,'U99,999.99') AS EUROS FROM EMPLOYEES





