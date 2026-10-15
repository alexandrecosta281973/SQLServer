EXECUTE [msdb].[dbo].[IndexOptimize]
@Databases = 'planning',
@FragmentationLow = 'INDEX_REORGANIZE',
@FragmentationMedium = 'INDEX_REORGANIZE',
@FragmentationHigh = 'INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE',
@FragmentationLevel1 = 5,
@FragmentationLevel2 = 30
GO
EXECUTE sp_updatestats
GO