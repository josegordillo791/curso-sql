/*
Visualizar los siguientes datos con CASE.
o Si el departamento es 50 ponemos Transporte
o Si el departamento es 90 ponemos Direcci�n
o Cualquier otro n�mero ponemos �Otro departamento�*/

select first_name,last_name,
case 
     when department_id=50 then 'Transporte'
     when department_id=90 then 'Direccion'
     else 'Otro departamento'
end
from employees;
/*
Mostrar de la tabla LOCATIONS, la ciudad y el pa�s. Ponemos los 
siguientes datos dependiendo de COUNTRY_ID.
o Si es US y CA ponemos Am�rica del Norte
o Si es CH, UK, DE,IT ponemos Europa
o Si es BR ponemos Am�rica del Sur
o Si no es ninguno ponemos �Otra zona
*/

select location_id,
          city
          ,state_province,
          case 
               when country_id='US' or country_id='CA' then 'America del Norte'
               when country_id='CH' or country_id='UK' or country_id='DE' or country_id='IT' then 'Europa'
               when country_id='BR' then 'America del Sur'
               else 'Otra zona'
          end
from locations;