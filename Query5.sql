select cast(cast(getdate() as float) as int) as R1, 
cast(getdate() as float) as R2
, cast(55000 as datetime) as R3
, CURRENT_TIMESTAMP as R4
, getdate() as R5
, CURRENT_TIMESTAMP - cast(40000 as datetime) as R6
, datediff(day, cast(40000 as datetime), CURRENT_TIMESTAMP) as R7
, datediff(month, cast(40000 as datetime), CURRENT_TIMESTAMP) as R8
, datediff(year, cast(40000 as datetime), CURRENT_TIMESTAMP) as R9
, datediff(week, cast(40000 as datetime), CURRENT_TIMESTAMP) as R10
, datediff(quarter, cast(40000 as datetime), CURRENT_TIMESTAMP) as R11
, datediff(hour, cast(40000 as datetime), CURRENT_TIMESTAMP) as R12
, dateadd(day, 10, current_timestamp) as R13
, dateadd(day, -10, current_timestamp) as R14
, year(current_timestamp) as R15
, datepart(quarter, current_timestamp) as R16
, datename(month, current_timestamp) as R17
, getutcdate() as R18
, cast(CURRENT_TIMESTAMP - cast(40000 as datetime) as int)
, dateadd(minute,15, current_timestamp);
