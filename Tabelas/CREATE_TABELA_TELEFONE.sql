USE [AGABRENWILL]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TELEFONE](
	[ID_TELEFONE] [int] IDENTITY(1,1) NOT NULL,
	[DDD] [int] NOT NULL,
	[TELEFONE] [int] NOT NULL,
	[ID_CLIENTE] [int] NULL,
	[ATIVO] [bit] NULL
) ON [PRIMARY]

GO


