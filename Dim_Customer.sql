-- Cleansed Dim_customer table --
SELECT
	   c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as [First Name]
      --,[MiddleName]
      ,c.[LastName] as [Last Name]
	  ,c.[FirstName] + ' ' + [LastName] AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , Case c.[Gender] When 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.City AS [Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c 
	
	LEFT JOIN [dbo].[DimGeography] AS g 
	ON g.GeographyKey = c.GeographyKey -- Joined Customer city from Geography Table
	
  order by CustomerKey ASC --Order list by CustomerKey