IF EXISTS (SELECT * FROM SYS.procedures WHERE NAME = 'USP_INS_USER_DADOS_PESSOAIS')
BEGIN
	DROP PROC USP_INS_USER_DADOS_PESSOAIS
END
GO

CREATE PROC USP_INS_USER_DADOS_PESSOAIS
	 @Id INT = NULL
	,@Nome VARCHAR(100) = NULL
	,@Email VARCHAR(200) = NULL
	,@Senha VARCHAR(100) = NULL
	,@Telefone VARCHAR(20) = NULL
	,@Celular VARCHAR(20) = NULL
	,@DataNascimento VARCHAR(10) = NULL
AS
BEGIN
	IF @Id IS NULL
	BEGIN
		INSERT INTO
			TB_USER_DADOS_PESSOAIS
		VALUES
		(
			 @Nome
			,LOWER(@Email)
			,@Senha
			,@Telefone
			,@Celular
			,@DataNascimento
		)
	END
	ELSE
	BEGIN
		UPDATE TB_USER_DADOS_PESSOAIS SET
			 Nome = @Nome
			,Email = LOWER(@Email)
			,Senha = @Senha
			,Telefone = @Telefone
			,Celular = @Celular
			,DataNascimento = @DataNascimento
		WHERE
			ID = @Id
	END
END
GO