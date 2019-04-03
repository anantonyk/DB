use PHARMACY

create table discount(
		id_discount int not null,
		name_disc nvarchar(20) unique,
		percent_discount int not null
		constraint PK_discount primary key (id_discount)
)

create table [client-disc](
	id_dis int not null,
	id_client int not null,
	date_start date,
	date_end date,
	constraint PK_c_d primary key (id_dis,id_client),
	constraint FK_C foreign key ([id_client]) references [client]([id_client]),
	constraint FK_d foreign key ([id_dis]) references [discount]([id_discount]),

)
