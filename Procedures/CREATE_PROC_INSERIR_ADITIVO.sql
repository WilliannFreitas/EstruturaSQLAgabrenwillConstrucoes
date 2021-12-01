USE [AGABRENWILL]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERIR_ADITIVO]
(
	@DT_ASSINATURA_ADTV DATETIME,
	@DT_INICIO_ADTV DATETIME,
	@DT_FIM_PREVISTA_ADTV DATETIME,
	@VL_TOTAL_ADTV DECIMAL (10,2),
	@ID_CONTRATO INT
)

AS
BEGIN

INSERT INTO [ADITIVO] (DT_ASSINATURA_ADTV, DT_INICIO_ADTV, DT_FIM_PREVISTA_ADTV, VL_TOTAL_ADTV, ID_CONTRATO)
 VALUES (@DT_ASSINATURA_ADTV, @DT_INICIO_ADTV, @DT_FIM_PREVISTA_ADTV, @VL_TOTAL_ADTV, @ID_CONTRATO)

SELECT * FROM [ADITIVO]

END

GO

