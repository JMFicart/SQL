Select cast(CURRENT_TIMESTAMP as float) 
	, cast(cast(CURRENT_TIMESTAMP as float) as int)
	, cast(40000 as datetime)
	,  CURRENT_TIMESTAMP , Getdate()
	, CURRENT_TIMESTAMP - cast(40000 as datetime)
	, DATEDIFF(DAY, cast(40000 as datetime) , CURRENT_TIMESTAMP)
	, DATEDIFF(MONTH, cast(40000 as datetime) , CURRENT_TIMESTAMP)
	, DATEDIFF(YEAR, cast(40000 as datetime) , CURRENT_TIMESTAMP)
	, DATEDIFF(WEEK, cast(40000 as datetime) , CURRENT_TIMESTAMP)
	, DATEDIFF(QUARTER, cast(40000 as datetime) , CURRENT_TIMESTAMP)
	, DATEDIFF(HOUR, cast(40000 as datetime) , CURRENT_TIMESTAMP)
	, DATEADD(DAY, -10, CURRENT_TIMESTAMP)
	,YEAR(CURRENT_TIMESTAMP)
	, DATEPART(HOUR,CURRENT_TIMESTAMP) 
	, DATENAME(MONTH,CURRENT_TIMESTAMP)
	, GETUTCDATE()
	, CAST(CURRENT_TIMESTAMP - cast(40000 as datetime) AS INT)