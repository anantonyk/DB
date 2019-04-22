use PHARMACY
insert into country values 
	(1 ,'Ukraine'),
	(2 , 'Germany'),
	(3 ,'Poland'),
	(4 , 'Sweden'),
	(5,'France');
insert into [owner] values 
	(1, 'John Q. Public' , '38067000100'),
	(2, 'Velikkakathu Sankaran', '380639654442'),
	(3, 'Krzysztof Kowalczyk', '38095473822'),
	(4,'Petro Abrahamovsky','3806570543'),
	(5,'Taras Panchak','3806658439'),
	(6,'Tomas Müller','3805544493');

insert into [medicine_group] values
	(1,'anesthetic'),
	(2,'antiallergic'),
	(3,'immunosuppressive'),
	(4,'hormones and antihormones'),
	(5,'cardiovascular'),
	(6,'antiseptics'),
	(7,'immunobiological preparations');
	
insert into [employee_position] values
	(1,'pharmacist', 5000.00),
	(2,'accountant', 5500.00),
	(3,'manager',6000.00);

insert into ill values
	(1,'cardiovascular failure'),
	(2,'endometriosis'),
	(3,'organ transplantation'),
	(4,'asthma'),
	(5,'alergy'),
	(6,'flu'),
	(7,'migraine'),
	(8,'measles'),
	(9,'angina');

bulk insert town
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_town.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert client
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_client.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert Pharmacy
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_Pharmacy.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert worker
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_worker.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert [check]
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_check.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert Producer
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_producer.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert medicine
from 'C:\Users\Anastasia Antonyk\Desktop\\files\file_medicine.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert sell
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_sell.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert symptom
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_symptom.txt'
with (fieldterminator = '\t', rowterminator = '\n');

bulk insert [medicine-ill]
from 'C:\Users\Anastasia Antonyk\Desktop\files\file_medicine_ill.txt'
with (fieldterminator = '\t', rowterminator = '\n');

update medicine
set  medicine='Chloroxylenol', id_producer=2
where id_medicine=6;


delete from town where id_town=5;