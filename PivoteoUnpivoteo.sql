use intellinet
GO

CREATE TABLE Venta_Productos(
	id INT PRIMARY KEY,
	Agente VARCHAR( 50 ),
	Pais VARCHAR( 50 ),
	Cantidad INT
)
GO

INSERT INTO Venta_Productos
	VALUES(1, 'David', 'India', 450),
		  (2, 'Juan', 'India', 350),
		  (3, 'Carlos', 'India', 540),
		  (4, 'Carlos', 'India', 430),
		  (5, 'David', 'India', 230),
		  (6, 'David', 'India', 280),
		  (7, 'Alma', 'India', 140),
		  (8, 'David', 'UK', 140),
		  (9, 'Yaz', 'UK', 140),
		  (10, 'Juan', 'UK', 480),
		  (11, 'Juan', 'UK', 200),
		  (12, 'Carlos', 'UK', 260),
		  (13 , 'Juan', 'UK', 660),
		  (14 , 'Carlos', 'UK', 120),
		  (15 , 'David', 'UK', 220),
		  (16 , 'Carlos', 'UK', 420),
		  (17 , 'David', 'UK', 320),
		  (18 , 'Juan', 'US', 340),
		  (19 , 'David', 'US', 200),
		  (20 , 'Juan', 'US', 130),
		  (21 , 'Carlos', 'US', 180),
		  (22 , 'Carlos', 'US', 360),
		  (23 , 'Alma', 'US', 140)
GO

SELECT * FROM Venta_Productos
GO

SELECT Pais, Agente, Sum( Cantidad) AS Total FROM Venta_Productos
		GROUP BY Pais, Agente
		ORDER BY Pais, Agente
GO
SELECT Pais, Sum(Cantidad) as Total FROM Venta_Productos
GROUP BY Pais
GO
/*Pivoteo*/
SELECT Pais, SUM( Carlos ) AS Carlos, SUM( David ) AS David, SUM( Juan ) AS Juan FROM Venta_Productos
	   PIVOT(
			SUM(Cantidad)FOR Agente IN (Carlos, David, Juan)
	   ) AS TABLA GROUP BY Pais
/*ROTAR Coulumnas y renglones*/
SELECT Agente, SUM(India) AS INDIA, SUM(US) AS ESTADOS_UNIDOS, SUM(UK) AS REINO_UNIDO FROM Venta_Productos
	   PIVOT(
			SUM(Cantidad) FOR Pais IN (India, US, UK)
	   ) AS pivotTable GROUP BY Agente
GO

/*Array de elementos*/
SELECT '[' +  CAST(Venta_Productos.Agente AS VARCHAR ( 50 )) + '], ' FROM Venta_Productos GROUP BY Agente
GO
/*Con Procedimientos*/
DECLARE @nombres VARCHAR( MAX ); --Array para almacenar los nombres
SET @nombres = ''; /*Inicialización como cadena vacia*/
SELECT @nombres = @nombres + '[' +  CAST(Agente AS VARCHAR ( 50 )) + '],' FROM dbo.Venta_Productos GROUP BY Agente /*Casting to string*/
SET @nombres = LEFT(@nombres, LEN(@nombres) - 1);
--PRINT(@nombres) /*Imprimiendo el array*/

DECLARE @SQLString NVARCHAR( MAX ); 

SET @SQLString =N'
				SELECT Pais, SUM( Carlos ) AS Carlos, SUM( David ) AS David, SUM( Juan ) AS Juan, SUM( Yaz ) AS Yaz FROM Venta_Productos
				PIVOT(
					SUM( Cantidad ) FOR Agente IN (' + @nombres + ')
				) AS Tabla GROUP BY Pais
				';

--PRINT( @SQLString )
EXECUTE sp_executesql @SQLString
GO

/*INTO (Almacena en una nueva tabla)*/
SELECT Agente, SUM(India) AS INDIA, SUM(US) AS ESTADOS_UNIDOS, SUM(UK) AS REINO_UNIDO 
INTO Nueva_Tabla_Venta_Productos
FROM Venta_Productos
	   PIVOT(
			SUM(Cantidad) FOR Pais IN (India, US, UK)
	   ) AS pivotTable GROUP BY Agente
GO
/*Verificando la existencia la nueva tabla (CORTE-CÓPIA DE TABLA EN UN Tiempo determinado)*/
SELECT * FROM Nueva_Tabla_Venta_Productos
GO
/*Despivotear Tabla de una tabla ya pivoteada en una tabla*/
SELECT Agente, Ciudad, Venta FROM Nueva_Tabla_Venta_Productos
UNPIVOT(
	Venta FOR Ciudad IN (India, Estados_Unidos, Reino_Unido)
) AS unpivotTable
GO