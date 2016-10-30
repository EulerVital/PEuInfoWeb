IF EXISTS (SELECT * FROM SYS.PROCEDURES WHERE NAME = 'USP_DEL_ADM')
BEGIN
	DROP PROC USP_DEL_ADM
END
GO

CREATE PROC USP_DEL_ADM
	 @id INT  = NULL
AS
BEGIN
	IF @id IS NOT NULL
	BEGIN
		DELETE FROM 
			TB_ADM
		WHERE 
			ID = COALESCE(@id,ID)
	END 
END
GO