SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[Private_NewTestClassList] (
		[ClassName]     [nvarchar](450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_NewTestClassList]
	ADD
	CONSTRAINT [PK__Private___F8BF561A3B08C587]
	PRIMARY KEY
	CLUSTERED
	([ClassName])
	ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_NewTestClassList] SET (LOCK_ESCALATION = TABLE)
GO