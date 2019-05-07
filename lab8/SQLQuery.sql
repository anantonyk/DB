use pharmacy

select client.id_client, client.[name] 
from client order by [name] desc

select client.id_client, client.[name] 
from client order by [name] asc


select  medicine_group.medgroup, count(medicine.medicine) 
from medicine inner join medicine_group 
on medicine.id_group=medicine_group.id_group 
group by medicine_group.medgroup 

select country.country_name, town.town_name, client.[name] from country inner join town on town.id_country=country.id_country 
inner join client on client.id_town=town.id_town group by country.country_name ,town.town_name, client.[name] order by country_name,town_name desc