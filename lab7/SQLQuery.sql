use PHARMACY

select * from client where  not exists
(SELECT * FROM [check] WHERE client.id_client =[check].id_client);

select  (client.[name]), [check].date, [check].id_pharmacy from client left join [check] on client.id_client=[check].id_client 

select client.[name], town.town_name from client inner join town 
on town.id_town=client.id_town where town.town_name='Lion';

select client.[name], town.town_name, [check].id_check 
from (client inner join town on town.id_town=client.id_town) 
inner join [check] on [check].id_client=client.id_client 
where town.town_name='Lion';

select client.[name], country.country_name  
from client inner join town 
on client.id_town=town.id_town 
inner join country on town.id_country=country.id_country

select Pharmacy.pharmacy, worker.first_name, worker.last_name 
from worker inner join Pharmacy 
on worker.id_pharmacy=Pharmacy.id_pharmacy 
where worker.id_position=1

select medicine.medicine, medicine.price, medicine_group.medgroup 
from medicine inner join medicine_group 
on medicine.id_group=medicine_group.id_group 
where medicine.price<100