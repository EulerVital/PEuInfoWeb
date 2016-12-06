
/* ****PEuInfoWeb**************
* OBJETIVO: Tabela TB_USER_LOGIN, responsavel por fazer o controle de login de usuarios
* DATA CRIAÇÃO: 09/11/2016 
* AUTOR: Euler Vital Prado da Silva
* E-MAIL: eulervitalps@gmail.com
*/

IF NOT EXISTS(select * from sys.tables where name = 'TB_USER_LOGIN') 
BEGIN
	CREATE TABLE TB_USER_LOGIN
	(
		 IdLogin INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,IdUser INT NOT NULL FOREIGN KEY (IdUser) REFERENCES TB_USER_DADOS_PESSOAIS
		,Status BIT NOT NULL
		,Email VARCHAR(100) NOT NULL
		,Senha VARCHAR(50) NOT NULL
		,DataLogado DATETIME NOT NULL
	)
END
GO