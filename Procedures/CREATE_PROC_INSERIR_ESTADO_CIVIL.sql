USE [AGABRENWILL]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[INSERIR_ESTADO_CIVIL]
(
	@DE_ESTADO_CIVIL VARCHAR(255)
)

AS
BEGIN

INSERT INTO [ESTADO_CIVIL] (DE_ESTADO_CIVIL)
 VALUES (@DE_ESTADO_CIVIL)

SELECT * FROM [ESTADO_CIVIL]

END

GO


