SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[titleauthor] (
		[au_id]          [dbo].[id] NOT NULL,
		[title_id]       [dbo].[tid] NOT NULL,
		[au_ord]         [tinyint] NULL,
		[royaltyper]     [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[titleauthor]
	ADD
	CONSTRAINT [UPKCL_taind]
	PRIMARY KEY
	CLUSTERED
	([au_id], [title_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[titleauthor]
	WITH CHECK
	ADD CONSTRAINT [FK__titleauth__au_id__1DE57479]
	FOREIGN KEY ([au_id]) REFERENCES [dbo].[authors] ([au_id])
ALTER TABLE [dbo].[titleauthor]
	CHECK CONSTRAINT [FK__titleauth__au_id__1DE57479]

GO
ALTER TABLE [dbo].[titleauthor]
	WITH CHECK
	ADD CONSTRAINT [FK__titleauth__title__1ED998B2]
	FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
ALTER TABLE [dbo].[titleauthor]
	CHECK CONSTRAINT [FK__titleauth__title__1ED998B2]

GO
CREATE NONCLUSTERED INDEX [auidind]
	ON [dbo].[titleauthor] ([au_id])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [titleidind]
	ON [dbo].[titleauthor] ([title_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[titleauthor] SET (LOCK_ESCALATION = TABLE)
GO
