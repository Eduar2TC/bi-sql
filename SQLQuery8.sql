USE EMPRESA

/*DRAWING TABLE*/
DROP TABLE IF EXISTS SpatialTable
GO

CREATE TABLE SpatialTable(
		id INT IDENTITY (0, 10),
		GeoCol1 GEOMETRY,
		GeoCol2 AS GeoCol1.STAsText()
)
/*Lines*/
TRUNCATE TABLE SpatialTable
GO
/*INSERT INTO SpatialTable ( GeoCol1 )
			VALUES( GEOMETRY::STGeomFromText('LINESTRING (0 20, 100 20)', 0)) 
			GO
SELECT * FROM SpatialTable
GO*/

INSERT INTO SpatialTable ( GeoCol1 )
			VALUES( GEOMETRY::STGeomFromText('POLYGON((5 0,2.5 9,9.5 3.5,0.5 3.5,7.5 9,5 0))', 0)) 
			GO
SELECT * FROM SpatialTable
GO