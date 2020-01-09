use master
go

IF db_id('drone') IS NOT NULL
BEGIN
    drop database drone
END

CREATE DATABASE drone
	ON  PRIMARY 
	( NAME = 'drone_log', FILENAME = 'C:\Users\benoit.pierrehumbert\Documents\GitHub\MA-08_Drone\DRNRCE\Script\log\drone.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'drone_log', FILENAME = 'C:\Users\benoit.pierrehumbert\Documents\GitHub\MA-08_Drone\DRNRCE\Script\log\drone_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE drone
go

create table customers (
	id int identity(1,1) PRIMARY KEY,
	lastname varchar(100) NOT NULL,
	firstname varchar(60) NOT NULL,
	register_date DATE NOT NULL,
)

create table orders (
	id int identity(1,1) PRIMARY KEY,
	date DATE NOT NULL,
	status varchar(45) NOT NULL,
	customerid int FOREIGN KEY REFERENCES customers(id) PRIMARY KEY
)

create table products (
	id int identity(1,1) PRIMARY KEY,
	mark varchar(100) NOT NULL,
	model varchar(45) NOT NULL,
	description varchar(200),
	price FLOAT NOT NULL,
	stock INT NOT NULL
)

create table categories (
	id int identity(1,1) PRIMARY KEY,
	type varchar(45) NOT NULL
)

create table suppliers (
	id int identity(1,1) PRIMARY KEY,
	name varchar(100) NOT NULL,
	nationality varchar(80) NOT NULL,
	address varchar(150) NOT NULL,
	head_office varchar(100) NOT NULL
)

create table companies (
	id int identity(1,1) PRIMARY KEY,
	name varchar(100) NOT NULL,
	nationality varchar(80) NOT NULL,
	address varchar(150) NOT NULL,
	head_office varchar(80) NOT NULL
)

create table employees (
	id int identity(1,1) PRIMARY KEY,
	lastname varchar(100) NOT NULL,
	firstname varchar(60) NOT NULL,
	address varchar(150) NOT NULL,
	phonenumber INT
)

create table contain (
	id int identity(1,1) PRIMARY KEY,
	orders_id int FOREIGN KEY REFERENCES orders(id) PRIMARY KEY
	products_id int FOREIGN KEY REFERENCES products(id) PRIMARY KEY
)

create table define(
	id int identity(1,1) PRIMARY KEY,
	categories_id int FOREIGN KEY REFERENCES categories(id) PRIMARY KEY
	products_id int FOREIGN KEY REFERENCES products(id) PRIMARY KEY
)

create table provide(
	id int identity(1,1) PRIMARY KEY,
	suppliers_id int FOREIGN KEY REFERENCES suppliers(id) PRIMARY KEY
	products_id int FOREIGN KEY REFERENCES products(id) PRIMARY KEY
)

create table sell(
	id int identity(1,1) PRIMARY KEY,
	companies_id int FOREIGN KEY REFERENCES companies(id) PRIMARY KEY
	products_id int FOREIGN KEY REFERENCES products(id) PRIMARY KEY
)

create table employ(
	id int identity(1,1) PRIMARY KEY,
	companies_id int FOREIGN KEY REFERENCES companies(id) PRIMARY KEY
	employees_id int FOREIGN KEY REFERENCES employees(id) PRIMARY KEY
)

ALTER TABLE teachers 
ADD DEFAULT '100' for pourcentage_work;


