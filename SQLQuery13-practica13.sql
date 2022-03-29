-- [DBMYSQL].[proceso6_checar]..[usuario] no contiene columnas que se puedan seleccionar o el usuario actual no tiene permisos en ese objeto.
GO


SELECT * FROM [DBMYSQL]...[proceso6_checar.usuario]
GO

CREATE TABLE TIPO_USUARIO(
		id INT,
		PUESTO VARCHAR( 20 )
)
GO

INSERT INTO TIPO_USUARIO(id, PUESTO)
	   VALUES(1, 'ADMIN'),
			(2, 'COMPRAS'),
			(3, 'VENTAS'),
			(4, 'RENTA')
	GO
SELECT * FROM TIPO_USUARIO AS TIPO INNER JOIN [DBMYSQL]...[proceso6_checar.usuario] AS USUARIO ON TIPO.id = USUARIO.id
GO
