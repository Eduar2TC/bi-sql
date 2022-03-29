USE Liverpool
GO

CREATE TYPE HILTZ FROM CHAR( 20 ) NULL;

CREATE TABLE TABLETEMP(
id INT,
NOM HILTZ
);
GO

INSERT INTO TABLETEMP VALUES(1, 'PEPE' )
GO
SELECT * FROM TABLETEMP
GO
/*Tipo de dato tabla*/

CREATE TYPE CUENTA AS TABLE(
	NOMBRE VARCHAR( 50 ),
	COSTO INT
)
GO

DECLARE @MITABLA AS CUENTA; /*Tablas virtuales o temporales*/
INSERT INTO @MITABLA VALUES( 'SILLA', 20 );
SELECT * FROM @MITABLA;

CREATE TABLE #U(  /*Tablas temporales solo accesible por el usuario que la creo*/
	id INT,
	NOMBRE VARCHAR( 20 )
)
GO
INSERT INTO #U VALUES( 1, 'PEPE' );
SELECT * FROM #U
GO

/*Permitir acceso a la tabla entre los usuarios*/
CREATE TABLE ##U(  /*Tablas temporales solo accesible por el usuario que la creo*/
	id INT,
	NOMBRE VARCHAR( 20 )
)
GO
INSERT INTO ##U VALUES( 1, 'PEPE' );
SELECT * FROM ##U
GO