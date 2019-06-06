use PHARMACY


create trigger 
checktriger 
on [check]
after insert
as 
begin
update [check]
set [date]= CURRENT_TIMESTAMP where id_check in (select distinct id_check from Inserted);
end;



insert into [check] values
(15,'2019-07-04',3,6,10)