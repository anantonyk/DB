use PHARMACY

alter table employee_position
	alter column position nvarchar(20) not null;

alter table country 
	alter column country_name nvarchar(20) not null;


alter table town 
	alter column town_name nvarchar(20) not null;

alter table medicine
	drop constraint FK__medicine__id_ill

create table [medicine-ill](
	id_med integer not null,
	id_ill integer not null,	
)

alter table [medicine-ill]
	add constraint FK_med foreign key (id_med) references medicine(id_medicine), 
	constraint FK_ill foreign key (id_ill) references ill(id_ill)

alter table Producer
	drop column phone;
	
alter table Producer
	add telephone_numder text not null;

alter table Producer 
	alter column producer nvarchar(30) not null;

alter table sell
	drop constraint [PK__sell],
	column id_sell;

	
alter table town
   drop constraint FK_town_country;

alter table town
   alter column id_country int;

alter table town
	add constraint FK_town_country
	foreign key (id_country) references country(id_country) on delete set null;

alter table medicine
   drop constraint [FK__medicine__group];

alter table medicine
   alter column id_group int;

alter table medicine
	add constraint FK__medicine__group
	foreign key (id_group) references medicine_group(id_group) on delete set null;

alter table worker
   drop constraint worker_position;

alter table worker
   alter column id_position int;

alter table worker
	add constraint FK_worker_position
	foreign key (id_position) references employee_position(id_position) on delete set null;

alter table symptom
   drop constraint FK__symptom__id_ill;

alter table symptom
   alter column id_ill int;

alter table symptom
	add constraint FK__symptom__id_ill
	foreign key (id_ill) references ill(id_ill) on delete set null;

alter table Pharmacy
   drop constraint FK__Pharmacy__id_owner;

alter table Pharmacy
   alter column id_owner int;

alter table Pharmacy
	add constraint FK__Pharmacy__id_owner
	foreign key (id_owner) references [owner](id_owner) on delete set null;

alter table [check]
   drop constraint FK__check__id_client;

alter table [check]
	add constraint FK__check__id_client
	foreign key (id_client) references client(id_client) on delete cascade;

alter table sell
   drop constraint FK__sell__id_check;

alter table sell
	add constraint FK__sell__id_check
	foreign key (id_check) references [check](id_check) on delete cascade;

alter table sell
   drop constraint FK__sell__id_medicine;

alter table sell
	add constraint FK__sell__id_medicine
	foreign key (id_medicine) references medicine(id_medicine) on delete cascade;

alter table sell
	drop column amount;

alter table [medicine-ill]
   drop constraint FK_ill;

alter table [medicine-ill]
	add constraint FK_ill
	foreign key (id_ill) references ill(id_ill) on delete cascade;

alter table [medicine-ill]
   drop constraint FK_med;

alter table [medicine-ill]
	add constraint FK_med
	foreign key (id_med) references medicine(id_medicine) on delete cascade;

alter table sell
    add constraint PK_sell primary key (id_check,id_medicine)

drop table [client-disc];
drop table discount;

