-- Auteurs : Benoît et Kevin (SI-CMI2a)
-- Projet : Base de données E-Commerce Drone pour MA-08 (2ème trimestre 2ème année)
-- Description : Base de données d'un e-commerce de drones avec MCD, MLD et script d'insertion de données
-- Version : 1.0


USE master
go
IF DB_ID('drone') IS NOT NULL
BEGIN
    drop database drone
END

CREATE DATABASE drone
	-- ON  PRIMARY 
	-- ( NAME = 'drone_log', FILENAME = 'C:\Users\benoit.pierrehumbert\Documents\GitHub\MA-08_Drone\DRNRCE\Script\log\drone.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	-- LOG ON 
	-- ( NAME = 'drone_log', FILENAME = 'C:\Users\benoit.pierrehumbert\Documents\GitHub\MA-08_Drone\DRNRCE\Script\log\drone_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
USE drone 
go	
create table customers (
	id int identity(1,1) PRIMARY KEY,
	lastname varchar(100) NOT NULL,
	firstname varchar(60) NOT NULL,
	register_date DATE NOT NULL,
	zip INT NOT NULL,
	address VARCHAR(100) NOT NULL,
	email_address VARCHAR(100) NOT NULL,
	country VARCHAR(80) NOT NULL
)

create table orders (
	id int identity(1,1) PRIMARY KEY,
	date DATE NOT NULL,
	status varchar(45) NOT NULL,
	customerid int FOREIGN KEY REFERENCES customers(id),
	serial_number INT NOT NULL
)

create table providers (
	id int identity(1,1) PRIMARY KEY,
	name varchar(100) NOT NULL,
	nationality varchar(80) NOT NULL,
	address varchar(150) NOT NULL,
	head_office varchar(100) NOT NULL
)

create table employees (
	id int identity(1,1) PRIMARY KEY,
	lastname varchar(100) NOT NULL,
	firstname varchar(60) NOT NULL,
	address varchar(150) NOT NULL,
	phonenumber INT,
	zip INT NOT NULL,
	post VARCHAR(80) NOT NULL,
	email_address VARCHAR(100)
)

create table companies (
	id int identity(1,1) PRIMARY KEY,
	name varchar(100) NOT NULL,
	nationality varchar(80) NOT NULL,
	address varchar(150) NOT NULL,
	head_office varchar(80) NOT NULL
)

create table drones (
	id int identity(1,1) PRIMARY KEY,
	mark varchar(100) NOT NULL,
	model varchar(45) NOT NULL,
	description varchar(200),
	price FLOAT NOT NULL,
	stock INT NOT NULL,
	nb_propellers INT NOT NULL
)

create table contain(
	id int identity(1,1) PRIMARY KEY,
	orders_id int FOREIGN KEY REFERENCES orders(id),
	drones_id int FOREIGN KEY REFERENCES drones(id)
)

create table provide(
	id int identity(1,1) PRIMARY KEY,
	providers_id int FOREIGN KEY REFERENCES providers(id),
	drones_id int FOREIGN KEY REFERENCES drones(id)
)

create table sell(
	id int identity(1,1) PRIMARY KEY,
	companies_id int FOREIGN KEY REFERENCES companies(id),
	drones_id int FOREIGN KEY REFERENCES drones(id)
)

create table employ(
	id int identity(1,1) PRIMARY KEY,
	companies_id int FOREIGN KEY REFERENCES companies(id),
	employees_id int FOREIGN KEY REFERENCES employees(id)
)




