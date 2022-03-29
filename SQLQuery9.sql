USE MASTER

USE EMPRESA

SELECT * FROM [dbo].EMPLEADO
GO

SELECT * FROM dbo.EMPLEADO2
GO

SELECT MAX(EMPLEADO2.id) AS MAX FROM EMPLEADO2
GO
/*SUBCONSULTA (Selecciona todos los campos miestras - condicion en la misma tabla)*/
SELECT * FROM EMPLEADO2 WHERE EMPLEADO2.id /*Selecciona todos los campos del id maximo*/
		IN ( SELECT MAX(EMPLEADO2.id) AS MAX FROM EMPLEADO2 )
	GO

	/*Agregando columna adicional*/ 
/*Solo la primera columna debe devolver un valor*/
SELECT /*columna 1*/( SELECT MAX(EMPLEADO2.id) AS MAX FROM EMPLEADO2 ) AS MAXIMO, * /*columna 2*/ FROM EMPLEADO2
GO

/*CONFLICTOS*/
/*Consulta 1*/
SELECT * FROM EMPLEADO Emp1 INNER JOIN EMPLEADO2 AS Emp2 ON Emp1.id = Emp2.id
GO
SELECT Emp1.*, Emp2.id AS id2, Emp2.NOMBRE as NOMBRE2, Emp2.GENERO AS GENERO2, Emp2.FECHA AS FECHA2 FROM EMPLEADO Emp1 INNER JOIN EMPLEADO2 AS Emp2 ON Emp1.id = Emp2.id
GO
/*Con subconsultas (Error por repeticion de campos)*/
SELECT * FROM ( SELECT * FROM EMPLEADO AS TABLA_EMPLEADO1 INNER JOIN EMPLEADO2 AS TABLA_EMPLEADO2
				ON TABLA_EMPLEADO2.id = TABLA_EMPLEADO1.id
				) AS X
GO

/*Inserccion de imagenes*/
CREATE TABLE PROFILE(
	id INT,
	NAME VARCHAR (50) NOT NULL,
	IMAGEN VARBINARY ( MAX ) NOT NULL
)
GO

INSERT INTO PROFILE(id, NAME, IMAGEN)	
		SELECT 
			1, 
			'PEPE', 
			 BulkColumn FROM Openrowset(Bulk 'C:\Users\eduar\Desktop\gato-garka.jpg', Single_Blob) AS IMAGEN
GO

SELECT * FROM PROFILE
GO