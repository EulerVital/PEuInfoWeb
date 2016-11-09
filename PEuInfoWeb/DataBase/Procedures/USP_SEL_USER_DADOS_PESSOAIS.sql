IF EXISTS (SELECT * FROM SYS.procedures WHERE name = 'USP_SEL_USER_DADOS_PESSOAIS')
BEGIN
	DROP PROC USP_SEL_USER_DADOS_PESSOAIS
END
GO

CREATE PROC USP_SEL_USER_DADOS_PESSOAIS
	 @Id INT = NULL
	,@Nome VARCHAR(100) = NULL
	,@Email VARCHAR(300) = NULL
	,@Senha VARCHAR(100) = NULL
	,@Tefone VARCHAR(20) = NULL
	,@Celular VARCHAR(20) = NULL
	,@DataNascimento VARCHAR(10) = NULL
AS
BEGIN
	IF @Id IS NULL
	BEGIN
		SELECT 
			 Nome
			,Email
			,Senha
			,Telefone
			,Celular
			,DataNascimento
		FROM 
			TB_USER_DADOS_PESSOAIS
	END
	ELSE
		SELECT 
			 Nome
			,Email
			,Senha
			,Telefone
			,Celular
			,DataNascimento
		FROM 
			TB_USER_DADOS_PESSOAIS
		WHERE
			ID = COALESCE(@Id,Id)
END
GO