﻿CREATE DATABASE RestifyDatabase;

CREATE TABLE Landlord(
landlord_id int primary key,
landlord_name varchar(100) not null,
landlord_email varchar(100) not null,
landlord_password varchar(50) not null

);

CREATE TABLE Apartment(
apartment_id int primary key,
apartment_description varchar(200) not null,
apartment_bedNumber int,
apartment_personNumber int,
FOREIGN KEY (apartment_id) references Landlord(landlord_id)

);

