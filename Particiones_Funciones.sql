use intellinet
GO
SELECT GENDER AS Genero, COUNT( * ) AS TotalSexos, AVG( SALARY ) AS PromedioSalario, 
	   MIN( SALARY ) AS SalarioMinimo, MAX( SALARY ) AS SalarioMaximo 
FROM Employees
GROUP BY GENDER
GO

/*Estadisticas de Salarios*/
SELECT NAME AS Nombre, SALARY AS Salario, GENDER AS Genero, TotalSexos, PromedioSalario, SalarioMaximo, SalarioMinimo
FROM Employees
	INNER JOIN
		(SELECT GENDER AS Genero, COUNT( * ) AS TotalSexos, AVG( SALARY ) AS PromedioSalario, 
			   MIN( SALARY ) AS SalarioMinimo, MAX( SALARY ) AS SalarioMaximo 
		FROM Employees
		GROUP BY GENDER
		) AS Genders
		ON Genders.Genero = Employees.Gender
GO
/*Estadusticas de salario con Particiones*/
SELECT NAME AS NOMBRE, SALARY AS SALARIO, GENDER AS GENERO,
	   COUNT( GENDER ) OVER( PARTITION BY GENDER ) AS TotaLGeneros,
	   AVG( SALARY ) OVER ( PARTITION BY GENDER ) AS PromedioSalario,
	   MIN( SALARY ) OVER ( PARTITION BY GENDER ) AS MinSalario,
	   MAX( SALARY ) OVER ( PARTITION BY GENDER ) AS MaxSalario
FROM Employees
GO