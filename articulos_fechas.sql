USE Liverpool
GO

SELECT *, DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) AS DIFERENCIA FROM FACTURA AS FACT 
	INNER JOIN ENTREGA ENT
	ON FACT.id = ENT.idFactura
	ORDER BY DIFERENCIA ASC
GO

/*Maximo de dias para hacer una entrega*/
SELECT TOP 1 DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) AS DIFERENCIA_DIAS FROM FACTURA AS FACT 
	INNER JOIN ENTREGA ENT
	ON FACT.id = ENT.idFactura
	ORDER BY DIFERENCIA_DIAS DESC
GO
/*Agrupacion de los dias de espera sin contar el numero de repeticiones de los registros de los dias de espera*/
SELECT DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) AS DIAS_DE_ESPERA, DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) AS REPETICIONES  FROM FACTURA AS FACT 
	INNER JOIN ENTREGA ENT
	ON FACT.id = ENT.idFactura
	GROUP BY DATEDIFF(DAY, FACT.FECHA, ENT.FECHA)
	ORDER BY REPETICIONES DESC
GO
/*La Media segun el numero de dias que se tarda en la entrega entrega*/
SELECT DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) AS DIAS_DE_ESPERA, COUNT( DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) ) AS REPETICIONES  FROM FACTURA AS FACT 
	INNER JOIN ENTREGA ENT
	ON FACT.id = ENT.idFactura
	GROUP BY DATEDIFF(DAY, FACT.FECHA, ENT.FECHA)
	ORDER BY REPETICIONES DESC
GO

/*Mediana o promedio*/
SELECT COUNT(DIAS_DE_ESPERA) AS TOTAL_DIAS, SUM(REPETICIONES) AS SUMA_REPETICIONES, ( SUM( REPETICIONES) / COUNT(DIAS_DE_ESPERA) ) AS PROMEDIO
FROM
	(
	SELECT DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) AS DIAS_DE_ESPERA, COUNT( DATEDIFF(DAY, FACT.FECHA, ENT.FECHA) ) AS REPETICIONES  FROM FACTURA AS FACT 
		INNER JOIN ENTREGA ENT
		ON FACT.id = ENT.idFactura
		GROUP BY DATEDIFF(DAY, FACT.FECHA, ENT.FECHA)
	) AS X;

/*Funciones (Semana del año)*/
CREATE FUNCTION semana( @semana INT, @anio VARCHAR( 250 ) )
	RETURNS DATE
	AS BEGIN
		DECLARE @cnt INT = 1;
		DECLARE @fecha DATE;
		SET @fecha = @anio +'/1/1';
			WHILE (@cnt < 365)
				BEGIN
					IF( DATEPART( WEEK, @fecha ) = @semana )
						BEGIN
							IF( @semana = 1 )
								BEGIN
									DECLARE @x INT = DATEPART( DW, @fecha );
									IF( @x > 1 )
										BEGIN
											SET @fecha = DATEADD( DAY, ( @x* -1 ) + 1, @fecha );
										END
									RETURN @fecha
								END
								ELSE
									BEGIN
										RETURN @fecha
									END
							END
						SET @fecha = DATEADD( DAY, 1, @fecha );
						SET @cnt = @cnt + 1;
						END
					RETURN @fecha;
			END
/*Llamada de la funcion*/
SELECT dbo.semana( 10, '2018' ) AS FECHA
GO

USE liverpool
GO

SELECT * FROM FACTURA WHERE FECHA = dbo.semana( 10, '2018' ) --Semana 10 del 2018
GO