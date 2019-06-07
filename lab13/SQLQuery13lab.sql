
use PHARMACY

select [check].id_check, [check].[date], worker.first_name, worker.last_name
from [check], worker where [check].id_worker= worker.id_worker;

EXEC sp_helpindex 'check'

set statistics time on
update statistics [check]


