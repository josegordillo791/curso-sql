INSERT INTO productos2 (code,name ) VALUES (1,'CLAVOS' );

INSERT INTO productos2 (code,name ) VALUES (2,'ARANDELAS' );

INSERT INTO productos2 (code,name ) VALUES (3,'ESCARPIAS' );

SAVEPOINT A;

UPDATE PRODUCTOS2 SET NAME='TORNILLOS' WHERE CODE=3;

rollback to A;
