Drop database if exists TCS;
create database TCS;
use TCS;
drop table if exists `CompanyProfile`;
create table `CompanyProfile` (
  emp_no int(10) primary key not null auto_increment,
  co_name varchar(255),
  address varchar(255),
  email varchar(255),
  telephone varchar(255),
  revenue varchar(255)
  
 );

insert into `CompanyProfile`(
  emp_no,
  co_name,
  address,
  email,
  telephone,
  revenue
  )
values(
  "1",
  "NJIT",
  "Edison,NJ",
  "am925@njit.edu",
  "347-951-8523",
  "$75million"
  );
  
drop table if exists `position`;
create table `position` (
  job_title varchar(255),
  salary varchar(255),
  status varchar(255),
  duration varchar(255),
  location varchar(255)
);

insert into `position`(
  job_title,
  salary,
  status,
  duration,
  location)
values(
  "DBA",
  "$85,000",
  "Full-Time",
  "2yrs",
  "NY"
);

drop table if exists `candidate`;
create table `candidate` (
  fname varchar(255),
  lname varchar(255),
  position varchar(255),
  gender varchar(255),
  availability varchar(255)
  );
  
drop table if exists `Manager`;
create table `Manager` (
  fname varchar(255),
  lname varchar(255),
  position varchar(255),
  gender varchar(255)
  );  
 