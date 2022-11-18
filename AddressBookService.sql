create database Address_Book_Service;
show databases;
use Address_Book_Service;
create table AddressBook (firstName varchar(20) not null, lastName varchar(20) not null, address varchar(100) not null,
city varchar(50) not null, state varchar(50) not null, zipcode int not null, phoneNumber double not null, email varchar(100) not null);