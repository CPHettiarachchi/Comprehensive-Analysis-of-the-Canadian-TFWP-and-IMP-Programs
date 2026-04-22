/*

 ___           _       _     _     ____       _             _ 
|_ _|_ __  ___(_) __ _| |__ | |_  |  _ \ __ _| |_ _ __ ___ | |
 | || '_ \/ __| |/ _` | '_ \| __| | |_) / _` | __| '__/ _ \| |
 | || | | \__ \ | (_| | | | | |_  |  __/ (_| | |_| | | (_) | |
|___|_| |_|___/_|\__, |_| |_|\__| |_|   \__,_|\__|_|  \___/|_|
                 |___/                                        

*/



SELECT TOP (1000) [Province/territory]
      ,[Occupation]
      ,[Jan]
      ,[Feb]
      ,[Mar]
      ,[Apr]
      ,[May]
      ,[Jun]
      ,[Jul]
      ,[Aug]
      ,[Sep]
      ,[Oct]
      ,[Nov]
      ,[Dec]
      ,[Year]
  FROM [TemporaryResidents].[dbo].[TempResidents];

  --Checking NULLs
SELECT *
FROM TemporaryResidents.dbo.TempResidents
WHERE 
    [Province/territory] IS NULL
    OR [Occupation] IS NULL
    OR [Jan] IS NULL
    OR [Feb] IS NULL
    OR [Mar] IS NULL
    OR [Apr] IS NULL
    OR [May] IS NULL
    OR [Jun] IS NULL
    OR [Jul] IS NULL
    OR [Aug] IS NULL
    OR [Sep] IS NULL
    OR [Oct] IS NULL
    OR [Nov] IS NULL
    OR [Dec] IS NULL
    OR [Year] IS NULL;

--Replacing Missing Values
UPDATE TemporaryResidents.dbo.TempResidents
SET 
    [Province/territory] = ISNULL([Province/territory], 'Unknown'),
    [Occupation] = ISNULL([Occupation], 'Unknown'),
    [Jan] = ISNULL([Jan], 0),
    [Feb] = ISNULL([Feb], 0),
    [Mar] = ISNULL([Mar], 0),
    [Apr] = ISNULL([Apr], 0),
    [May] = ISNULL([May], 0),
    [Jun] = ISNULL([Jun], 0),
    [Jul] = ISNULL([Jul], 0),
    [Aug] = ISNULL([Aug], 0),
    [Sep] = ISNULL([Sep], 0),
    [Oct] = ISNULL([Oct], 0),
    [Nov] = ISNULL([Nov], 0),
    [Dec] = ISNULL([Dec], 0),
    [Year] = ISNULL([Year], 2024);

--Replacing '--' with 0
UPDATE TemporaryResidents.dbo.TempResidents
SET 
    [Province/territory] = REPLACE([Province/territory], '--', '0'),
    [Occupation] = REPLACE([Occupation], '--', '0'),
    [Jan] = REPLACE([Jan], '--', '0'),
    [Feb] = REPLACE([Feb], '--', '0'),
    [Mar] = REPLACE([Mar], '--', '0'),
    [Apr] = REPLACE([Apr], '--', '0'),
    [May] = REPLACE([May], '--', '0'),
    [Jun] = REPLACE([Jun], '--', '0'),
    [Jul] = REPLACE([Jul], '--', '0'),
    [Aug] = REPLACE([Aug], '--', '0'),
    [Sep] = REPLACE([Sep], '--', '0'),
    [Oct] = REPLACE([Oct], '--', '0'),
    [Nov] = REPLACE([Nov], '--', '0'),
    [Dec] = REPLACE([Dec], '--', '0'),
    [Year] = REPLACE([Year], '--', '0');

SELECT *
FROM TemporaryResidents.dbo.TempResidents;
