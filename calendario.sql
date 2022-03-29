USE master
GO
DECLARE @fecha DATE; 

DECLARE @mes VARCHAR(2)= '10';

DECLARE @anio VARCHAR(4)='2020';

DECLARE @dia INT = 0; 

DECLARE @i INT = 1; 

DECLARE @aux INT = -1; 

SELECT  @dia = DATEPART(dw,@anio + '/'+ @mes+ '/1') 

DECLARE @calENDario TABLE( 
			do VARCHAR(3), 
			lu VARCHAR(3),
			ma VARCHAR(3),
			mi VARCHAR(3),
			ju VARCHAR(3),
			vi VARCHAR(3),
			sa VARCHAR(3)  

); 
IF (@dia = 1)
	BEGIN  
		SELECT @fecha= DATEADD(day,-7, @anio + '/'+ @mes+ '/1'); 
	END	  
ELSE IF (@dia = 2) 
	BEGIN  
		SELECT @fecha= DATEADD(day,-1, @anio + '/'+ @mes+ '/1'); 
	END  
ELSE IF (@dia = 3) 
	BEGIN  
		SELECT @fecha= DATEADD(day,-2, @anio + '/'+ @mes+ '/1'); 
	END  
ELSE IF (@dia = 4) 
	BEGIN  
		SELECT @fecha= DATEADD(day,-3, @anio + '/'+ @mes+ '/1'); 
	END  
ELSE IF (@dia = 5) 
	BEGIN  
		SELECT @fecha= DATEADD(day,-4, @anio + '/'+ @mes+ '/1'); 
	END 
ELSE IF (@dia = 6) 
	BEGIN  
		SELECT @fecha= DATEADD(day,-5, @anio + '/'+ @mes+ '/1'); 
	END  
ELSE IF (@dia = 7) 
	BEGIN  
		SELECT @fecha= DATEADD(day,-6, @anio + '/'+ @mes+ '/1'); 
	END  

WHILE @i <= 6 
	BEGIN 
		insert INTO @calendario values (convert(VARCHAR(2),day(DATEADD(day,@aux+1, @fecha))) ,  

		convert(VARCHAR(2),day(DATEADD(day,@aux+2, @fecha))), 

		convert(VARCHAR(2),day(DATEADD(day,@aux+3, @fecha))), 

		convert(VARCHAR(2),day(DATEADD(day,@aux+4, @fecha))), 

		convert(VARCHAR(2),day(DATEADD(day,@aux+5, @fecha))), 

		convert(VARCHAR(2),day(DATEADD(day,@aux+6, @fecha))), 

		convert(VARCHAR(2),day(DATEADD(day,@aux+7, @fecha))) ); 

		set @aux = @aux + 7;   

		set @i = @i +1; 
END; 

  
SELECT * from @calendario; 

  

SELECT do from @calendario 

union all  

SELECT sa from @calendario;


CREATE FUNCTION calendario( @mes VARCHAR( 2 ), @anio VARCHAR( 4 ) )

RETURNS @calendario TABLE( 
				do VARCHAR(3), 
				lu VARCHAR(3),
				ma VARCHAR(3),
				mi VARCHAR(3),
				ju VARCHAR(3),
				vi VARCHAR(3),
				sa VARCHAR(3)  

	)
	AS BEGIN
		DECLARE @fecha DATE; 
		DECLARE @dia INT = 0; 

		DECLARE @i INT = 1; 

		DECLARE @aux INT = -1; 

		SELECT  @dia = DATEPART(dw,@anio + '/'+ @mes+ '/1') 

		IF (@dia = 1)
			BEGIN  
				SELECT @fecha= DATEADD(day,-7, @anio + '/'+ @mes+ '/1'); 
			END	  
		ELSE IF (@dia = 2) 
			BEGIN  
				SELECT @fecha= DATEADD(day,-1, @anio + '/'+ @mes+ '/1'); 
			END  
		ELSE IF (@dia = 3) 
			BEGIN  
				SELECT @fecha= DATEADD(day,-2, @anio + '/'+ @mes+ '/1'); 
			END  
		ELSE IF (@dia = 4) 
			BEGIN  
				SELECT @fecha= DATEADD(day,-3, @anio + '/'+ @mes+ '/1'); 
			END  
		ELSE IF (@dia = 5) 
			BEGIN  
				SELECT @fecha= DATEADD(day,-4, @anio + '/'+ @mes+ '/1'); 
			END 
		ELSE IF (@dia = 6) 
			BEGIN  
				SELECT @fecha= DATEADD(day,-5, @anio + '/'+ @mes+ '/1'); 
			END  
		ELSE IF (@dia = 7) 
			BEGIN  
				SELECT @fecha= DATEADD(day,-6, @anio + '/'+ @mes+ '/1'); 
			END  

		WHILE @i <= 6 
			BEGIN 
				insert INTO @calendario values (convert(VARCHAR(2),day(DATEADD(day,@aux+1, @fecha))) ,  

				convert(VARCHAR(2),day(DATEADD(day,@aux+2, @fecha))), 

				convert(VARCHAR(2),day(DATEADD(day,@aux+3, @fecha))), 

				convert(VARCHAR(2),day(DATEADD(day,@aux+4, @fecha))), 

				convert(VARCHAR(2),day(DATEADD(day,@aux+5, @fecha))), 

				convert(VARCHAR(2),day(DATEADD(day,@aux+6, @fecha))), 

				convert(VARCHAR(2),day(DATEADD(day,@aux+7, @fecha))) ); 

				set @aux = @aux + 7;   

				set @i = @i +1; 
		END; 
		RETURN 
END
SELECT * FROM dbo.calendario( '10', '2018' );
GO