-- SQL Projrct on Library Management system 
# Create database called " Library"

create database library;
use library;

# Create table " Customer"

create table  Customer
(
Customer_id varchar(12)  primary key,
Customer_name varchar(40),
Customer_address varchar(50),
Reg_date date
);
desc customer;

#create  table "Books"
-- ISBN stands for international standered book number 

create table Books
(
ISBN varchar(20) primary key,
Book_title varchar(50),
category varchar(25),
Rental_Price Decimal(10,2),
Status enum('YES','NO'),
Author varchar(30),
Publisher varchar(30)
);
desc Books;
alter table Books 
modify column ISBN varchar(30);
alter table Books 
modify column Book_title varchar(70);

#Create table "Issuestatus"
create table Issuestatus
(
Issue_id varchar(20) primary key ,
Issued_customer varchar(30),
Issue_book_name varchar(50),
Issue_date date,
isbn_book varchar(35),
foreign key (Issued_customer) references library.customer(customer_id)
on delete cascade
on update cascade,
foreign key(isbn_book) references library.Books(ISBN)
on update cascade
on delete cascade
);
alter table Issuestatus 
modify isbn_book varchar(30);
alter table Issuestatus 
modify Issue_book_name varchar(70);

desc Issuestatus;


# create table "Returnstatus"
create table Returnstatus 
(
Return_id varchar(10) primary key,
Return_customer varchar(30),
Return_book_name varchar(50),
Return_date date,
isbn_book2 varchar(20),
foreign key(isbn_book2)references library.books(ISBN)
on update cascade
on delete cascade
);

desc Returnstatus;

# create table "Employee"
 create table Employee
 (
 Emp_id varchar(10) primary key,
 Emp_name varchar(30),
 Position varchar(30),
 salary decimal (10,2)
 );
  desc Employee;
 
#  create table "Branch"
create table branch
(
Branch_id varchar(10) primary key,
Manager_id varchar(10),
Branch_Address varchar(30),
contact_no varchar(12)
);
alter table Branch 
modify contact_no varchar(18);

desc branch;

#END