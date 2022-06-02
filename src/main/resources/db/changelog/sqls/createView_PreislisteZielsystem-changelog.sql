CREATE VIEW 
	[dbo].[PreislisteZielsystem_v]
	AS 
	SELECT *, SkuTitle as ProduktName, rowkey+'_'+ProductTitle+'_'+SkuTitle+'_'+SkuDescription as SearchName
	FROM dbo.[PreislisteZielsystem]


