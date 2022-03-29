--Practica 5 SELF JOINS
DROP TABLE IF EXISTS dbo.X
DROP TABLE IF EXISTS dbo.Y
GO
CREATE TABLE Y(id INT PRIMARY KEY NOT NULL, nom VARCHAR(30));
CREATE TABLE X(id INT, nom VARCHAR(30));
GO

SELECT * FROM X;
GO

INSERT INTO X VALUES(1, 'Juan'); /*Tabla izquierda*/
INSERT INTO X VALUES(1, 'Pepe');
INSERT INTO X VALUES(6, 'Gil');
INSERT INTO X VALUES(2, 'Alan');
INSERT INTO X VALUES(4, 'Saul');
GO
INSERT INTO Y VALUES(1, 'Diana'); /*Tabla derecha*/
INSERT INTO Y VALUES(2, 'Maria');
INSERT INTO Y VALUES(3, 'Yaz');
INSERT INTO Y VALUES(4, 'Ana');
INSERT INTO Y VALUES(5, 'Ross');
GO

--INNER JOIN
SELECT * FROM Y INNER JOIN X ON Y.id = X.id; 
GO
--INNER JOIN ALTERNATIVO
SELECT * FROM X, Y WHERE Y.id = X.id
GO
--RIGHT JOIN
SELECT * FROM X RIGHT JOIN Y ON Y.id = X.id; /*Despues de la clausula On la tabla se toma como lado derecho*/
GO
--RIGHT JOIN CON SUBQUERIES (SELF RIGHT JOIN)
SELECT * FROM X, Y WHERE Y.id = X.id
UNION ALL
SELECT NULL, NULL, * FROM Y WHERE Y.id NOT IN (SELECT id FROM X);
GO

--LEFT JOIN 
SELECT * FROM X LEFT JOIN Y ON Y.id = X.id;
GO
--LEFT JOIN CON SUBQUERIES (SELF LEFT JOIN)
SELECT * FROM X , Y WHERE Y.id = X.id
UNION ALL 
SELECT *, NULL, NULL FROM X WHERE X.id NOT IN (SELECT id FROM Y); 
GO

--FULL JOIN
SELECT * FROM X FULL JOIN Y ON Y.id = X.id;
GO
--FULL JOIN CON SUBQUERIES (SELF FULL JOIN)
SELECT * FROM X, Y WHERE Y.id = X.id
UNION ALL /*RIGHT JOIN*/
SELECT NULL, NULL, * FROM Y WHERE Y.id NOT IN (SELECT id FROM X)
UNION ALL /*LEFT JOIN*/
SELECT *, NULL, NULL FROM X WHERE X.id NOT IN (SELECT id FROM Y); 
GO

--Con sentencias Where
--RIGHT EXCLUDING JOIN
/*RIGHT EXCLUDING JOIN devuelve todos los registros de la Tabla Y que no coinciden con ningún registro de la Tabla X.*/
SELECT * FROM X RIGHT JOIN Y ON Y.id = X.id WHERE X.id IS NULL;
GO
/*CON SUBQUERIES*/
SELECT NULL AS id, NULL AS nom, * FROM Y WHERE id NOT IN (SELECT X.id FROM X);
GO

--LEFT EXLUDING JOIN
/*LEFT EXCLUDING JOIN devuelve todos los registros de la Tabla X que no coinciden con ningún registro de la Tabla Y*/
SELECT * FROM X LEFT JOIN Y ON Y.id = X.id WHERE Y.id is NULL;
GO
/*CON SUBQUERIES*/
SELECT *, NULL AS id, NULL AS nom FROM X WHERE id NOT IN (SELECT Y.id FROM Y);
GO

--OUTER EXLUDING JOIN 
/*OUTER EXCLUDING JOIN devuelve todos los registros de Table X y todos los registros de Table Y que no coinciden*/
SELECT * FROM X FULL JOIN Y ON Y.id = X.id WHERE X.id is NULL OR Y.id IS NULL;
GO
/*CON SUBQUERIES*/
/*UNION DE RIGHT EXCLUDING JOIN Y LEFT EXCLUDING JOIN*/
SELECT NULL AS id, NULL AS nom, * FROM Y WHERE id NOT IN (SELECT X.id FROM X) --UNION DE RIGHT
UNION ALL
SELECT *, NULL AS id, NULL AS nom FROM X WHERE id NOT IN (SELECT Y.id FROM Y);
GO

--CROSS JOIN
/*CROSS JOIN es un producto cartesiano de Table X y Table Y. Cada fila de Table X se empareja con cada fila de Table Y; es por eso que un CROSS JOIN no tiene sentido en la mayoría de las situaciones.*/
SELECT * FROM X CROSS JOIN Y
GO
/*Forma alterna*/
SELECT * FROM X, Y;
GO
--SELF JOIN
/*Este tipo de JOIN se usa generalmente en el caso de un tipo de relación unaria, donde una tabla se combina consigo misma.*/
SELECT * FROM X AS A1
JOIN X AS A2
ON A1.id = A2.id;
GO

SELECT * FROM X, Y WHERE X.id = Y.id
GO

