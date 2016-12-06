
/* ****PEuInfoWeb**************
* OBJETIVO: Procedure, quando o usuario desloga do sistema, altera o status dele para deslogado = 0
* DATA CRIAÇÃO: 09/11/2016 
* AUTOR: Euler Vital Prado da Silva
* E-MAIL: eulervitalps@gmail.com
*/

IF EXISTS(select * from sys.procedures where name = 'USP_UPD_USER_LOGIN')
BEGIN
	DROP PROC USP_UPD_USER_LOGIN
END
GO

CREATE PROC USP_UPD_USER_LOGIN
	 @IdLogin INT = NULL
	,@Status BIT = NULL
	,@Email VARCHAR(100) = NULL
AS
BEGIN
	
	SET @IdLogin = (select IdLogin from TB_USER_LOGIN where Email = @Email)

	IF @IdLogin IS NOT NULL AND @Status = 1
	BEGIN
		UPDATE TB_USER_LOGIN SET
			Status = 0
		WHERE IdLogin = @IdLogin
	END

END