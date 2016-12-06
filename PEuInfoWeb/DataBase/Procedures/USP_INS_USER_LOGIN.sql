
/* ****PEuInfoWeb**************
* OBJETIVO: Procedure de Inserção de Login, para fazer o controle de login, onde o usuario tera o status alterado quando estiver logado
* DATA CRIAÇÃO: 09/11/2016 
* AUTOR: Euler Vital Prado da Silva
* E-MAIL: eulervitalps@gmail.com
*/

IF EXISTS(select * from sys.procedures where name = 'USP_INS_USER_LOGIN')
BEGIN
	DROP PROC USP_INS_USER_LOGIN
END
GO

CREATE PROC USP_INS_USER_LOGIN
	 @IdLogin INT = NULL 
	,@IdUser INT = NULL
	,@Status BIT = 1
	,@Email VARCHAR(100) = NULL
	,@Senha VARCHAR(50) = NULL
AS
BEGIN
	IF @IdLogin IS NULL
	BEGIN
		INSERT INTO
			TB_USER_LOGIN
		VALUES
		(
			 @IdUser
			,@Status
			,@Email
			,@Senha
			,GETDATE()
		)
	END
	ELSE
	BEGIN
		UPDATE TB_USER_LOGIN SET
			 Status = 1
			,DataLogado = GETDATE()
		WHERE IdLogin = @IdLogin
	END
END