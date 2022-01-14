select OBJECT_NAME(object_id) as NameofConstraint
from sys.objects 
where OBJECT_NAME(object_id) = 'Country'
