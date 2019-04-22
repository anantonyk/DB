use PHARMACY

create view  table3
	as select id_worker, last_name from worker;

select * from worker 
where birth>'1970-01-01' and birth<'1977-12-31';

select [check].id_check, [check].[date], worker.first_name, worker.last_name
from [check], worker where [check].id_worker= worker.id_worker;

select [check].id_check, [check].[date], worker.first_name, worker.last_name
from [check], worker where [check].id_worker= worker.id_worker and [check].[date]<worker.birth;

