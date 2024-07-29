create database order_details;
create table order_info(id int,order_name varchar(20),cost bigint,order_id int primary key,created_at timestamp,created_by varchar(20),
modified_at timestamp,modified_by varchar(20));

select * from order_info;
desc order_info;


create table payment(id int,price bigint,payment_id int primary key, order_id int,
payment_status varchar(20),created_at timestamp,created_by varchar(20),modified_at timestamp,
modified_by varchar(20),foreign key(order_id) references order_info(order_id) on delete cascade on update cascade);

select * from payment;
desc payment;

create table restaurant(id int,restaurant_name varchar(20),restaurant_id int,location varchar(20),order_id int,ratings int,payment_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
primary key(restaurant_id),foreign key(order_id)references order_info(order_id)on delete cascade on update cascade,foreign key(payment_id)references payment(payment_id)on delete cascade on update cascade);

select*from restaurant;
desc restaurant;

create table delivery(id int,person_name varchar(20),mode_of_payment enum('online','offline'),restaurant_id int,order_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(restaurant_id)references restaurant(restaurant_id)on delete cascade on update cascade,foreign key(order_id)references order_info(order_id)
on delete cascade on update cascade);

insert into order_info values(1, 'Pepperoni Pizza', 300, 102, '2024-07-29 10:10:00', 'Bob', now(), 'Bob');
insert into order_info values(2, 'Spaghetti', 200, 103, '2024-07-29 10:20:00', 'Charlie', now(), 'Charlie');
insert into order_info values(3, 'Turkey Sandwich', 100, 104, '2024-07-29 10:30:00', 'David', now(), 'David');
insert into order_info values(4, 'Caesar Salad', 120, 105, '2024-07-29 10:40:00', 'Eve', now(), 'Eve');
insert into order_info values(5, 'French Fries', 80, 106, '2024-07-29 10:50:00', 'Frank', now(), 'Frank');


insert into payment values(1, 150, 201, 102, 'Completed', '2024-07-29 12:00:00', 'megha', now(), 'megha');
insert into payment values(2, 300, 202, 103, 'Completed', '2024-07-29 12:10:00', 'deepa', now(), 'deepa');
insert into payment values(3, 200, 203, 104, 'Pending', '2024-07-29 12:20:00', 'soumya', now(), 'soumya');
insert into payment values(4, 100, 204, 105, 'Failed', '2024-07-29 12:30:00', 'preeti', now(), 'preeti');
insert into payment values(5, 120, 205, 106, 'Completed', '2024-07-29 12:40:00', 'pratika', now(), 'pratika');

insert into restaurant values(1, 'Burger House', 301, 'Downtown', 102, 4, 201, '2024-07-29 14:00:00', 'sakshi', now(), 'sakshi');
insert into restaurant values(2, 'Pizza Place', 302, 'Uptown', 103, 5, 202, '2024-07-29 14:10:00', 'ranjitha', now(), 'ranjitha');
insert into restaurant values(3, 'Pasta Corner', 303, 'Midtown', 104, 3, 203, '2024-07-29 14:20:00', 'chetan', now(), 'chetan');
insert into restaurant values(4, 'Sandwich Shop', 304, 'Eastside', 105, 2, 204, '2024-07-29 14:30:00', 'megha', now(), 'megha');
insert into restaurant values(5, 'Salad Bar', 305, 'Westside', 106, 4, 205, '2024-07-29 14:40:00', 'harsha', now(), 'harsha');

insert into  delivery values(1, 'John', 'online', 301, 102, '2024-07-29 16:00:00', 'Alice', now(), 'Alice');
insert into  delivery values(2, 'Mike', 'offline', 302, 103, '2024-07-29 16:10:00', 'Bob', now(), 'Bob');
insert into  delivery values(3, 'Sara', 'online', 303, 104, '2024-07-29 16:20:00', 'Charlie',now(), 'Charlie');
insert into  delivery values(4, 'Emma', 'offline', 304, 105, '2024-07-29 16:30:00', 'David', now(), 'David');
insert into  delivery values(5, 'Nina', 'online', 305, 106, '2024-07-29 16:40:00', 'Eve', now(), 'Eve');
