use PHARMACY

select worker.last_name,worker.first_name , count([check].id_check) as [checks]
from worker inner join [check] on worker.id_worker=[check].id_worker 
 group by first_name, last_name order by checks desc

 select symptom.symptom , medicine.medicine
 from medicine inner join [medicine-ill] on medicine.id_medicine=[medicine-ill].id_med
 inner join ill on [medicine-ill].id_ill=ill.id_ill 
 inner join symptom on ill.id_ill=symptom.id_ill 

 select avg(price)as avgprice from medicine 

 select medicine, price from medicine where medicine.price=(select max(price) as mostexpensive from medicine)

 select first_name, last_name, birth, Pharmacy.pharmacy from worker 
 inner join Pharmacy on worker.id_pharmacy=Pharmacy.id_pharmacy 
 where worker.birth=(select min(birth) from worker) 

 select top 1 Pharmacy.pharmacy, count([id_check]) as [check] 
 from [check] inner join Pharmacy on Pharmacy.id_pharmacy=[check].id_pharmacy group by pharmacy order by [check] desc 

 select Pharmacy.pharmacy, count(medicine.medicine) as saled
 from Pharmacy inner join [check] on Pharmacy.id_pharmacy=[check].id_pharmacy 
 inner join sell on [check].id_check=sell.id_check 
 inner join medicine on sell.id_medicine=medicine.id_medicine where Month([check].[date])=4
 group by pharmacy with rollup order by saled desc