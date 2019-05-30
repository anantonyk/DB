use PHARMACY;


create function min_price(@id int) 
returns int 
	as
begin
declare @min_pr int;
select  @min_pr=min(price) from medicine where id_producer = @id;
return @min_pr;
end;

select * from medicine where price = dbo.min_price(5);

create procedure search @lastname nvarchar(20)
as 
begin
select * from worker where last_name=@lastname
end;

exec search 'demydko';

create procedure search2 @type nvarchar(20)
as begin
select medicine, price from medicine inner join [medicine-ill] on medicine.id_medicine=[medicine-ill].id_med 
inner join ill on ill.id_ill=[medicine-ill].id_ill where  @type=ill.illness
end;

exec search2 'migraine'
