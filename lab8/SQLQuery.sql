use pharmacy

select client.id_client, client.[name] 
from client order by [name] desc

select client.id_client, client.[name] 
from client order by [name] asc


select  medicine_group.medgroup, count(medicine.medicine) 
from medicine inner join medicine_group 
on medicine.id_group=medicine_group.id_group 
group by medicine_group.medgroup 