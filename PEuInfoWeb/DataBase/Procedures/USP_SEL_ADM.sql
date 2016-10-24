IF EXISTS (SELECT * FROM SYS.procedures WHERE name = 'USP_SEL_ADM')
BEGIN
	DROP PROC USP_SEL_ADM
END
GO

CREATE PROC USP_SEL_ADM
	 @Nome VARCHAR(100) = NULL
	,@Email VARCHAR(300) = NULL
	,@Senha VARCHAR(100) = NULL
AS
BEGIN
	SELECT 
		 NOME
		,EMAIL
	FROM 
		TB_ADM
	WHERE
		NOME = COALESCE(@Nome,NOME)
END
GO