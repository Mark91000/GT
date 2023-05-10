create database lecture1;

create database lecture;
create database lesson;
create database lesson2;


use lecture;

create table products(
id integer primary key auto_increment,
name varchar(128),
price integer,
discount decimal(2,1)
);

insert into products (name, price, discount) values
('Bike', 50000, 0.1),
('Rolls', 35000, 0.4),
('Bals', 45000, null);

select * from products;
 
 /*select * from products where discount is null; 


