SELECT * FROM COCHES1
UNION
SELECT * FROM COCHES2; --El operador union debe tener la misma cantidad de columnas y el mismo tipo de datos 

SELECT * FROM COCHES1
UNION ALL
SELECT * FROM COCHES2;  --Parecido al anterior pero no elimina las filas repetidas 

--SELECT * FROM COCHES1
SELECT * FROM COCHES1
INTERSECT --devuelve solo las filas que devuelve ambas consultas 
SELECT * FROM COCHES2;  


SELECT * FROM COCHES1
MINUS -- retorna los de la primer consulta menos la segunda 
SELECT * FROM COCHES2;  

