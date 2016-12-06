
/* ****PEuInfoWeb**************
* OBJETIVO: Procedure, que retorna a lista de todos os logins, com opcoes de filtros
* DATA CRIAÇÃO: 09/11/2016 
* AUTOR: Euler Vital Prado da Silva
* E-MAIL: eulervitalps@gmail.com
*/

IF EXISTS(select * from sys.procedures where name = 'USP_SEL_USER_LOGIN')
BEGIN
	DROP PROC USP_SEL_USER_LOGIN
END
GO

CREATE PROC USP_SEL_USER_LOGIN
	 @Email VARCHAR(100) = NULL
	,@Status BIT = NULL
	,@AnoLogado INT = NULL
	,@MesLogado INT = NULL
	,@DiaLogado INT = NULL
AS
BEGIN
	
	IF @Email IS NULL AND @Status IS NULL AND @AnoLogado IS NULL AND @MesLogado IS NULL AND @DiaLogado IS NULL
	BEGIN
		SELECT
			 Email
			,Status
			,DataLogado
		FROM
			TB_USER_LOGIN
		ORDER BY
			DataLogado 
	END
	ELSE IF @Status IS NULL AND @AnoLogado IS NULL AND @MesLogado IS NULL AND @DiaLogado IS NULL
	BEGIN
		SELECT
			 Email
			,Status
			,DataLogado
		FROM
			TB_USER_LOGIN
		WHERE 
			Email LIKE @Email + '%'
		ORDER BY
			DataLogado
	END
	ELSE IF @Email IS NULL AND @AnoLogado IS NULL AND @MesLogado IS NULL AND @DiaLogado IS NULL
	BEGIN
		SELECT
			 Email
			,Status
			,DataLogado
		FROM
			TB_USER_LOGIN
		WHERE 
			Status = @Status
		ORDER BY
			DataLogado 	
	END 
	ELSE IF @Email IS NULL AND @Status IS NULL AND @MesLogado IS NULL AND @DiaLogado IS NULL
	BEGIN
		SELECT
			 Email
			,Status
			,DataLogado
		FROM
			TB_USER_LOGIN
		WHERE 
			YEAR(DataLogado) = @AnoLogado
		ORDER BY
			DataLogado 	
	END
	ELSE IF @Email IS NULL AND @Status IS NULL AND @DiaLogado IS NULL
	BEGIN
		SELECT
			 Email
			,Status
			,DataLogado
		FROM
			TB_USER_LOGIN
		WHERE 
			 YEAR(DataLogado) = @AnoLogado
		AND
			 MONTH(DataLogado) = @MesLogado
		ORDER BY
			DataLogado 	
	END 
	ELSE IF @Email IS NULL AND @Status IS NULL
	BEGIN
		SELECT
			 Email
			,Status
			,DataLogado
		FROM
			TB_USER_LOGIN
		WHERE 
			 YEAR(DataLogado) = @AnoLogado
		AND
			 MONTH(DataLogado) = @MesLogado
		AND
			 DAY(DataLogado) = @DiaLogado			 
		ORDER BY
			DataLogado 	
	END 
END 