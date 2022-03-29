SELECT @@VERSION
GO

  

DECLARE @hola VARCHAR(20) = 'hola mundo'; 

PRINT @hola  
SELECT @hola  

DECLARE @hora INT = (SELECT DATEPART(HOUR, GETDATE())); 
PRINT @hora 

DECLARE @hora1 INT; 
SET @hora1  = 102; 
PRINT @hora1  

IF (@hora1 = 12) 
	BEGIN 
		PRINT 'muy bien' 
		PRINT 'muy ' 
	END
ELSE  
	BEGIN 
		PRINT 'mal' 
	END   

DECLARE @i INT = 0; 
WHILE @i < 10  
	BEGIN 
	PRINT @i 
	SET @i = @i + 1;  
END  