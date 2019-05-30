use PHARMACY
begin transaction
insert into country values(6,'Austria');
insert into town values(10,'Viena',6);
insert into Pharmacy values(7,'DS','lukasha 5 street',10,4);
insert into worker values (10,1,'natalia','antonyk',67894,'1978-03-14',7);
insert into	client values(10,'rostik vasyliuk','lukasha 5 street', 10);
insert into [check] values(12,CURRENT_TIMESTAMP,10,7,10),(13,CURRENT_TIMESTAMP,10,7,10);
commit transaction


begin try
begin transaction
insert into sell values(3,7);
insert into sell values(6,7);
insert into sell values(8,5);
insert into sell values(11,9);
commit transaction
end try
begin catch
rollback transaction
end catch

begin try
begin transaction
insert into ill values (10,'katar');
select * from Producer inner join town on  Producer.id_town=town.town_name
exec dbo.search2 'flu';
commit transaction
end try
begin catch
rollback transaction
end catch
