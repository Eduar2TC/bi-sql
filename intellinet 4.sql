USE EMPRESA
GO
/*Traigo los datos de Intellinet (intellinet.sql) para insertarlos en EMPLEADO 4*/

CREATE TABLE EMPLEADO4(
    id INT PRIMARY KEY NOT NULL,
    APELLIDOS VARCHAR (50),
    NOMBRE VARCHAR (50),
    SEXO VARCHAR (50),
    PUESTO VARCHAR (50), 
    IMAGEN VARBINARY(MAX) NULL
);
/*Copiando registros de tabla a tabla*/
/*INSERT INTO EMPLEADO4(id, APELLIDOS, NOMBRE, SEXO, PUESTO)
			SELECT intellinet.dbo.empleado.ID,  
							intellinet.dbo.empleado.APELLIDOS,
							intellinet.dbo.empleado.NOMBRE,
							intellinet.dbo.empleado.SEXO,
							intellinet.dbo.empleado.PUESTO
									FROM intellinet.dbo.empleado
GO*/
/*Insertando ID e Imagen para cada id*/
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201409587 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201409587.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201410260 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201410260.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201417795 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201417795.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201503731 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201503731.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201511219 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201511219.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201527112 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201527112.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201558317 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201558317.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201621922 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201621922.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201631524 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201631524.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201643839 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201643839.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201647957 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201647957.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201658563 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201658563.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201718099 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201718099.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201722320 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201722320.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201728123 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201728123.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201731153 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201731153.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201731994 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201731994.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201732709 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201732709.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201733898 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201733898.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201734061 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201734061.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201734804 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201734804.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201736923 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201736923.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201738077 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201738077.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201738265 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201738265.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201748095 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201748095.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201749651 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201749651.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201756698 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201756698.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201758049 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201758049.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201225154 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201225154.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201231100 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201231100.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201307880 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201307880.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201325083 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201325083.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201344373 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201344373.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201409587 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201409587.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201410260 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201410260.jpg', Single_Blob) AS IMAGEN
INSERT INTO EMPLEADO4 (id, IMAGEN ) SELECT 201417795 ,BulkColumn  FROM Openrowset( Bulk 'C:\Users\eduar\Desktop\Inteligencia de Negocios\foto\201417795.jpg', Single_Blob) AS IMAGEN
/*Vuelco de datos de la tabla intellinet a EMPLEADO4 con INNER JOIN*/
UPDATE EMPLEADO4 
	   SET APELLIDOS = intellinetEmpleado.APELLIDOS,
			NOMBRE = intellinetEmpleado.NOMBRE,
			SEXO = intellinetEmpleado.SEXO,
			PUESTO = intellinetEmpleado.PUESTO
		FROM EMPLEADO4 AS Emp4
		INNER JOIN intellinet.dbo.empleado AS intellinetEmpleado
		ON Emp4.id =  intellinetEmpleado.ID
WHERE Emp4.id = intellinetEmpleado.ID
GO

/*Verificando*/
SELECT * FROM EMPLEADO4
GO
SELECT COUNT(*) AS TOTAL FROM EMPLEADO4 WHERE PUESTO = 'Vendedor'
GO
SELECT COUNT(*) AS TOTAL  FROM EMPLEADO4 WHERE PUESTO = 'Repartidor' AND SEXO ='M' 

SELECT COUNT(*) AS TOTAL_HOMBRES FROM EMPLEADO4 WHERE SEXO = 'M'
GO
SELECT COUNT(*) AS TOTAL_MUJERES FROM EMPLEADO4 WHERE SEXO = 'F'
GO

SELECT (SELECT COUNT(*) FROM EMPLEADO4 WHERE SEXO = 'M') AS TOTAL_HOMBRES ,
       (SELECT COUNT(*) FROM EMPLEADO4 WHERE SEXO = 'F') AS TOTAL_MUJERES
GO
