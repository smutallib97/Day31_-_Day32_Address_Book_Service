create database Address_Book_Service;
show databases;
use Address_Book_Service;
create table AddressBook (firstName varchar(20) not null, lastName varchar(20) not null, address varchar(100) not null,
city varchar(50) not null, state varchar(50) not null, zipcode int not null, phoneNumber double not null, email varchar(100) not null);
insert into AddressBook (firstName, lastName, address, city, state, zipcode, phoneNumber, email)values 
('Nitish','Priyadarshi','MG Road','Gurgaon','Haryana',345641,7815482369,'nitishp78@gmail.com'), 
('Ullas','Kumar k','Hebbal','Bangalore','Karnataka',564131,9861452578,'ukumar98@gmail.com'),
('Sayyed','Mutallib','KOregaon Bhima','Pune','Maharashtra', 442216, 9818451275,'smutallib@gmail.com'),
('Madhu','Sudhan S','Malavalli','Mandya','Karnataka',522315,7745123698,'ssmadhu77@gmail.com'),
('Vaibhav', 'Pathak', 'Chinchwad', 'Pune', 'Maharashtra', 412202, 9845123657, 'vpathak97@gmail.com');
select * from AddressBook;
update AddressBook set phoneNumber = 8105897193 WHERE firstName = 'Ullas';
update AddressBook set email = 'ullask97@gmail.com' WHERE firstName = 'Ullas';
delete from AddressBook where firstName = 'Vaibhav';
select * from AddressBook where city = 'Gurgaon';
select * from AddressBook where state = 'Karnataka';
select count(firstName) from AddressBook where city = 'Gurgaon';
select count(firstName) from AddressBook where city = 'Bangalore';
select count(firstName) from AddressBook where state = 'Karnataka';
insert into AddressBook (firstName, lastName, address, city, state, zipcode, phoneNumber, email)values 
('Shivam', 'Kumar', 'Whitefield', 'Mysuru', 'Karnataka', 584131, 7845123654,'shivk78@gmail.com');
select * from AddressBook;
select firstName, city from AddressBook order by firstName;
alter table AddressBook add bookName varchar(25) not null, add contactType varchar(25) not null;
update AddressBook set bookName = 'FriendsBook', contactType = 'Friends' where firstName = 'Nitish';
update AddressBook set bookName = 'FriendsBook', contactType = 'Friends' where firstName = 'Sayyed';
update AddressBook set bookName = 'FamilyBook', contactType = 'Family' where lastName = 'Kumar';
update AddressBook set bookName = 'FamilyBook', contactType = 'Family' where lastName = 'Kumar k';
update AddressBook set bookName = 'ProfessionBook', contactType = 'Profession' where firstName = 'Madhu';
select count(firstName) from AddressBook where contactType = 'Family'; 
select count(firstName) from AddressBook where contactType = 'Friends'; 
select count(firstName) from AddressBook where contactType = 'Profession';
insert into AddressBook (firstName, lastName, address, city, state, zipcode, phoneNumber, email, bookName, contactType) values
('Vaibhav', 'Pathak', 'Chinchwad', 'Pune', 'Maharashtra', 412202, 9845123657, 'vpathak97@gmail.com', 'FamilyBook', 'Family');
insert into AddressBook (firstName, lastName, address, city, state, zipcode, phoneNumber, email, bookName, contactType) values
('Vaibhav', 'Pathak', 'Chinchwad', 'Pune', 'Maharashtra', 412202, 9845123657, 'vpathak97@gmail.com', 'FriendsBook', 'Friends');
select * from AddressBook;
select * from AddressBook where city = 'Gurgaon';
select * from AddressBook where state = 'Karnataka';
select count(firstName) from AddressBook where city = 'Gurgaon';
select count(firstName) from AddressBook where city = 'Bangalore';
select count(firstName) from AddressBook where state = 'Karnataka';
select count(firstName) from AddressBook where contactType = 'Family'; 
select count(firstName) from AddressBook where contactType = 'Friends'; 
select count(firstName) from AddressBook where contactType = 'Profession';