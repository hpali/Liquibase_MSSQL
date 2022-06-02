CREATE FUNCTION [PercentChange]
(
      
       @initialValue DECIMAL (18,5), 
       @finalValue DECIMAL (18,5) 

)
RETURNS DECIMAL(8,3)
AS
BEGIN
      
     DECLARE @pctValue DECIMAL(8,3)

     IF (@initialValue = 0 AND @finalValue = 0)  
        SET @pctValue = 0;
     ELSE IF (@initialValue != 0 AND @finalValue != 0)  
        SET @pctValue  = ( (@finalValue / COALESCE ( @initialValue, 1 ) ) - 1) * 100  ;
     ELSE   
        SET @pctValue  = 
                    CASE WHEN ( @finalValue > @initialValue ) 
                    THEN 1 
                    ELSE -1 
                    END ;

   
     RETURN @pctValue

END



