USE [AGABRENWILL]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ADITIVO](
	[ID_ADITIVO] [int] IDENTITY(1,1) NOT NULL,
	[DT_REGISTRO] [datetime] NOT NULL DEFAULT (getdate()),
	[DT_ASSINATURA_ADTV] [datetime] NOT NULL,
	[DT_INICIO_ADTV] [datetime] NOT NULL,
	[DT_FIM_PREVISTA_ADTV] [datetime] NOT NULL,
	[VL_TOTAL_ADTV] [decimal](10, 2) NOT NULL,
	[ID_CONTRATO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ADITIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ADITIVO]  WITH CHECK ADD  CONSTRAINT [FK_CONTRATO_ADITIVO] FOREIGN KEY([ID_CONTRATO])
REFERENCES [dbo].[CONTRATO] ([ID_CONTRATO])
GO

ALTER TABLE [dbo].[ADITIVO] CHECK CONSTRAINT [FK_CONTRATO_ADITIVO]
GO

