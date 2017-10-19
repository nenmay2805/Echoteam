SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.byroyalty @percentage int
AS
select au_id from titleauthor
where titleauthor.royaltyper = @percentage
GO
