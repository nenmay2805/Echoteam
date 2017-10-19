SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobs] (
		[job_id]       [smallint] IDENTITY(1, 1) NOT NULL,
		[job_desc]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[min_lvl]      [tinyint] NOT NULL,
		[max_lvl]      [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [PK__jobs__6E32B6A54F690348]
	PRIMARY KEY
	CLUSTERED
	([job_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [CK__jobs__max_lvl__2D27B809]
	CHECK
	([max_lvl]<=(250))
GO
ALTER TABLE [dbo].[jobs]
CHECK CONSTRAINT [CK__jobs__max_lvl__2D27B809]
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [CK__jobs__min_lvl__2C3393D0]
	CHECK
	([min_lvl]>=(10))
GO
ALTER TABLE [dbo].[jobs]
CHECK CONSTRAINT [CK__jobs__min_lvl__2C3393D0]
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [DF__jobs__job_desc__2B3F6F97]
	DEFAULT ('New Position - title not formalized yet') FOR [job_desc]
GO
ALTER TABLE [dbo].[jobs] SET (LOCK_ESCALATION = TABLE)
GO
