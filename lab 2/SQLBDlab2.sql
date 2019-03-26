create database PHARMACY
go

USE PHARMACY
GO

CREATE TABLE [employee_position] (
	id_position integer NOT NULL UNIQUE,
	position NVARCHAR(255) NOT NULL UNIQUE,
	salary decimal NOT NULL,
   PRIMARY KEY ([id_position])
)
GO

CREATE TABLE [country] (
	id_country integer NOT NULL UNIQUE,
	country_name NVARCHAR(255) NOT NULL,
	PRIMARY KEY ([id_country])
)
GO

CREATE TABLE [town] (
	id_town integer NOT NULL UNIQUE,
	town_name NVARCHAR(255) NOT NULL,
	id_country integer NOT NULL,
	PRIMARY KEY ([id_town]),
	FOREIGN KEY ([id_country]) REFERENCES [country]([id_country])
)
GO


CREATE TABLE [owner] (
	id_owner integer NOT NULL UNIQUE,
	owner_name NVARCHAR(255) NOT NULL,
	phone_number text NOT NULL,
	PRIMARY KEY ([id_owner]) 
)
GO

CREATE TABLE [Pharmacy] (
	id_pharmacy integer NOT NULL,
	pharmacy NVARCHAR(255) NOT NULL,
	adress text NOT NULL,
	id_town integer NOT NULL,
	id_owner integer NOT NULL,
	PRIMARY KEY   ([id_pharmacy]),
	FOREIGN KEY ([id_town]) REFERENCES [town]([id_town]),
	FOREIGN KEY ([id_owner]) REFERENCES [owner]([id_owner])
)
GO

CREATE TABLE [worker] (
	id_worker integer NOT NULL UNIQUE,
	id_position integer NOT NULL UNIQUE,
	first_name NVARCHAR(20) NOT NULL,
	last_name NVARCHAR(20) NOT NULL,
	passport integer NOT NULL UNIQUE,
	birth date NOT NULL,
	id_pharmacy integer NOT NULL,
	PRIMARY KEY ([id_worker]),
	FOREIGN KEY ([id_position]) REFERENCES [employee_position]([id_position]),
	FOREIGN KEY ([id_pharmacy]) REFERENCES [Pharmacy]([id_pharmacy])
)
GO

CREATE TABLE [Producer] (
	id_producer integer NOT NULL UNIQUE,
	producer NVARCHAR(255) NOT NULL UNIQUE,
	id_town integer NOT NULL,
	phone text NOT NULL,
	PRIMARY KEY ([id_producer]),
	FOREIGN KEY ([id_town]) REFERENCES [town]([id_town])
)
GO

CREATE TABLE [client] (
	id_client integer NOT NULL UNIQUE,
	name NVARCHAR(255) NOT NULL,
	adress text NOT NULL,
	id_town integer NOT NULL,
	PRIMARY KEY ([id_client]),
	FOREIGN KEY ([id_town]) REFERENCES [town]([id_town])
)
GO

CREATE TABLE [check] (
	id_check integer NOT NULL UNIQUE,
	date datetime NOT NULL,
	suma decimal NOT NULL,
	id_worker integer NOT NULL,
	id_pharmacy integer NOT NULL,
	id_client integer NOT NULL,
	PRIMARY KEY ([id_check]),
	FOREIGN KEY ([id_worker]) REFERENCES [worker]([id_worker]),
	FOREIGN KEY ([id_pharmacy]) REFERENCES [Pharmacy]([id_pharmacy]),
	FOREIGN KEY ([id_client]) REFERENCES [client]([id_client])
)
GO

CREATE TABLE [medicine_group] (
	id_group integer NOT NULL,
	medgroup NVARCHAR(255) NOT NULL,
	PRIMARY KEY ([id_group])
)
GO

CREATE TABLE [ill] (
	id_ill integer NOT NULL UNIQUE,
	illness NVARCHAR(30) NOT NULL,
	PRIMARY KEY ([id_ill])
)
GO

CREATE TABLE [medicine] (
	id_medicine integer NOT NULL UNIQUE,
	medicine NVARCHAR(255) NOT NULL,
	id_producer integer NOT NULL,
	price decimal NOT NULL,
	id_group integer NOT NULL,
	recipe bit NOT NULL,
	id_ill integer NOT NULL,
	PRIMARY KEY ([id_medicine]),
	FOREIGN KEY ([id_producer]) REFERENCES [Producer]([id_producer]),
	FOREIGN KEY ([id_group]) REFERENCES [medicine_group]([id_group]),
	FOREIGN KEY ([id_ill]) REFERENCES [ill]([id_ill])
)
GO

CREATE TABLE [sell] (
	id_sell integer NOT NULL UNIQUE,
	id_check integer NOT NULL,
	id_medicine integer NOT NULL,
	amount integer NOT NULL,
	PRIMARY KEY([id_sell]),
	FOREIGN KEY ([id_check]) REFERENCES [check]([id_check]),
	FOREIGN KEY ([id_medicine]) REFERENCES [medicine]([id_medicine])
)
GO

CREATE TABLE [symptom] (
	id_symptom integer NOT NULL UNIQUE,
	symptom NVARCHAR(255) NOT NULL UNIQUE,
	id_ill integer NOT NULL,
  PRIMARY KEY ([id_symptom]),
  FOREIGN KEY ([id_ill]) REFERENCES [ill]([id_ill])

)
GO









