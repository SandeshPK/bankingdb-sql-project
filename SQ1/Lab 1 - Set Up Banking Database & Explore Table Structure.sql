create database BankingDB;

use BankingDB;

create table Customers (
	CustomerID int primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Phone varchar(15),
    AccountCreationDate date
);

select * from customers;
