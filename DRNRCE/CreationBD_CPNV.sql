use master
go

IF db_id('CPNV') IS NOT NULL
BEGIN
    drop database CPNV
END

--adapter le chemin aux fichiers de données et de logs
CREATE DATABASE CPNV
	ON  PRIMARY 
	( NAME = 'CPNV', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'CPNV_log', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE CPNV
go

create table courses (
	id int identity(1,1) PRIMARY KEY,
	name varchar(50)
)

create table teachers (
	id int identity(1,1) PRIMARY KEY,
	lastname varchar(50),
	firstname varchar(50),
	pourcentage_work int
)

create table teachers_courses (
	id int identity(1,1) PRIMARY KEY,
	teacher_id int,
	course_id int
)
"master""master""master"