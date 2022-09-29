

SELECT TO_NUMBER('1210.73','9999.99') FROM DUAL;
SELECT TO_NUMBER('$127.2','$999.99') FROM DUAL;

select phone_number "Telefono" , 
to_number(substr(phone_number,1,3))*2 "digitos" from employees;


SELECT TO_DATE('10 DE FEBRERO DE 2018','dd "DE" MONTH "DE" YYYY')
FROM DUAL;

SELECT TO_DATE('FACTURA: MARZO0806','"FACTURA:" MONTHYYDD')
FROM DUAL; 
