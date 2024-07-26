create database chat_center;

create table chat_center_info(id int,name varchar(50) not null,location varchar(50) not null,max_orders int,
phone_number bigint unique,email varchar(50) unique,status varchar(50),created_at TIMESTAMP ,
created_by VARCHAR(50),modified_at TIMESTAMP,modified_by VARCHAR(50),constraint id_chk check(id>=1),
constraint max_orders_chk check(max_orders>100));

select*from chat_center_info;
desc chat_center_info;

insert into chat_center_info values(1, 'Foodie Help Desk', 'Delhi', 150, 911234567890, 'foodie@newdelhi.com', 'Active', '2024-01-15 09:00:00', 'Ravi Kumar', NOW(), 'Amit Sharma');
insert into chat_center_info values(2, 'Gourmet Support Hub', 'Mumbai', 250, 912345678901, 'gourmet@mumbai.com', 'Active', '2024-02-20 10:15:00', 'Sneha Desai', NOW(), 'Priya Reddy');
insert into chat_center_info values(3, 'Delicious Chat Center', 'Bangalore', 300, 913456789012, 'delicious@bangalore.com', 'Inactive', '2024-03-10 11:30:00', 'Arun Singh', NOW(), 'Rajesh Kumar');
insert into chat_center_info values(4, 'Tasty Service Desk', 'Hyderabad', 120, 914567890123, 'tasty@hyderabad.com', 'Active', '2024-04-05 12:45:00', 'Ravi Kumar', NOW(), 'Sneha Desai');
insert into chat_center_info values(5, 'Culinary Help Desk', 'Chennai', 180, 915678901234, 'culinary@chennai.com', 'Inactive', '2024-05-18 14:00:00', 'Maya Singh', NOW(), 'Priya Reddy');
insert into chat_center_info values(6, 'Flavor Support Hub', 'Kolkata', 220, 916789012345, 'flavor@kolkata.com', 'Active', '2024-06-01 09:00:00', 'Vijay Kumar', NOW(), 'Amit Sharma');
insert into chat_center_info values(7, 'Savory Help Desk', 'Pune', 180, 917890123456, 'savory@pune.com', 'Inactive', '2024-06-15 10:15:00', 'Anirban Roy', NOW(), 'Sneha Patil');
insert into chat_center_info values(8, 'Epicurean Chat Center', 'Ahmedabad', 250, 918901234567, 'epicurean@ahmedabad.com', 'Active', '2024-07-01 11:30:00', 'Rakesh Mehta', NOW(), 'Amit Sharma');
insert into chat_center_info values(9, 'Gastronomy Support Desk', 'Jaipur', 300, 919012345678, 'gastronomy@jaipur.com', 'Active', '2024-07-20 12:45:00', 'Dinesh Patel', NOW(), 'Ravi Kumar');
insert into chat_center_info values(10, 'Cuisine Help Center', 'Chandigarh', 210, 920123456789, 'cuisine@chandigarh.com', 'Inactive', '2024-08-05 14:00:00', 'Neha Sharma', NOW(), 'Arun Singh');
insert into chat_center_info values(11, 'Nourishment Chat Desk', 'Surat', 320, 921234567890, 'nourishment@surat.com', 'Active', '2024-08-15 09:00:00', 'Aakash Gupta', NOW(), 'Sneha Desai');
insert into chat_center_info values(12, 'Taste Support Center', 'Lucknow', 190, 922345678901, 'taste@lucknow.com', 'Inactive', '2024-09-01 10:15:00', 'Sandeep Kumar', NOW(), 'Priya Reddy');
insert into chat_center_info values(13, 'Bistro Help Desk', 'Kanpur', 280, 923456789012, 'bistro@kanpur.com', 'Active', '2024-09-10 11:30:00', 'Rohit Singh', NOW(), 'Amit Sharma');
insert into chat_center_info values(14, 'Diner Chat Center', 'Indore', 310, 924567890123, 'diner@indore.com', 'Active', '2024-10-01 12:45:00', 'Lakshmi Menon', NOW(), 'Sneha Desai');
insert into chat_center_info values(15, 'Eateries Support Hub', 'Vadodara', 220, 925678901234, 'eateries@vadodara.com', 'Inactive', '2024-10-15 14:00:00', 'Anjali Das', NOW(), 'Rohit Nair');
insert into chat_center_info values(16, 'Bite Help Desk', 'Nagpur', 250, 926789012345, 'bite@nagpur.com', 'Active', '2024-11-01 09:00:00', 'Rajesh Patel', NOW(), 'Amit Sharma');
insert into chat_center_info values(17, 'Grub Support Center', 'Aurangabad', 190, 927890123456, 'grub@aurangabad.com', 'Inactive', '2024-11-15 10:15:00', 'Anirban Roy', NOW(), 'Sneha Desai');
insert into chat_center_info values(18, 'Plate Chat Center', 'Amritsar', 320, 928901234567, 'plate@amritsar.com', 'Active', '2024-12-01 11:30:00', 'Rakesh Mehta', NOW(), 'Amit Sharma');
insert into chat_center_info values(19, 'Feast Support Desk', 'Nashik', 270, 929012345678, 'feast@nashik.com', 'Active', '2024-12-10 12:45:00', 'Dinesh Patel', NOW(), 'Ravi Kumar');
insert into chat_center_info values(20, 'Dining Help Desk', 'Raipur', 300, 930123456789, 'dining@raipur.com', 'Inactive', '2024-12-20 14:00:00', 'Neha Sharma', NOW(), 'Arun Singh');


alter table chat_center_info modify column email varchar(50) not null;
alter table chat_center_info add constraint name_uni unique(name);
alter table chat_center_info add constraint check_status check(status in('Active','Inactive'));
alter table chat_center_info add constraint phone_chk check(length(phone_number)>=0);
