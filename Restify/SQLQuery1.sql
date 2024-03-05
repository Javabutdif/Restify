CREATE DATABASE RESTIFY;


use RESTIFY


CREATE TABLE Landlord(
land_id int primary key identity,
land_first_name nvarchar(50) not null,
land_last_name nvarchar(50) not null,
land_email nvarchar(50) not null,
land_contact nvarchar(50) not null,
land_password nvarchar(20) not null

);

CREATE TABLE Apartment(
ap_id int primary key,

);