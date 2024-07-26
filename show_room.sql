create database showroom;
create table show_room(id int,name varchar(30) not null,location varchar(30) not null,capacity int,phone_number bigint,
email varchar(40) unique,manager_name varchar(30) unique,type varchar(30),website varchar(30),created_at timestamp,
created_by varchar(30),modified_at timestamp,modified_by varchar(30),constraint capacity_chk check(capacity>0),
constraint phone_number_chk check(length(phone_number)>=10));

select*from show_room;

Desc show_room;


insert into show_room values(1, 'Maruti Suzuki', 'Delhi', 100, 911234567890, 'delhi@marutisuzuki.com', 'Rajesh Kumar', 'Car Dealership', 'www.marutisuzuki.com/delhi', '2024-01-15 10:30:00', 'Rajesh Patel', NOW(), 'Amit Sharma');
insert into show_room values(2, 'Reliance Digital', 'Mumbai', 200, 912345678901, 'mumbai@reliancedigital.in', 'Sneha Patil', 'Electronics', 'www.reliancedigital.in/mumbai', '2024-02-20 09:45:00', 'Sneha Desai', NOW(), 'Priya Reddy');
insert into show_room values(3, 'Croma', 'Bangalore', 150, 913456789012, 'bangalore@croma.com', 'Amit Sharma', 'Electronics', 'www.croma.com/bangalore', '2024-03-10 11:15:00', 'Arun Singh', NOW(), 'Rajesh Kumar');
insert into show_room values(4, 'Lifestyle Store', 'Hyderabad', 180, 914567890123, 'hyderabad@lifestylestores.com', 'Priya Reddy', 'Retail', 'www.lifestyle.com/hyderabad', '2024-04-05 14:20:00', 'Ravi Kumar', NOW(), 'Sneha Desai');
insert into show_room values(5, 'Big Bazaar', 'Chennai', 250, 915678901234, 'chennai@bigbazaar.com', 'Arun Singh', 'Retail', 'www.bigbazaar.com/chennai', '2024-05-18 13:00:00', 'Maya Singh', NOW(), 'Priya Reddy');
insert into show_room values(6, 'Tata Motors Showroom', 'Pune', 120, 911234567891, 'pune@tatamotors.com', 'Vijay Deshmukh', 'Car Dealership', 'www.tatamotors.com/pune', '2024-06-25 16:40:00', 'Vijay Kumar', NOW(), 'Amit Sharma');
insert into show_room values(7, 'Honda Showroom', 'Kolkata', 130, 912345678912, 'kolkata@hondacarindia.com', 'Anirban Das', 'Car Dealership', 'www.hondacarindia.com/kolkata', '2024-07-01 08:50:00', 'Anirban Roy', NOW(), 'Sneha Patil');
insert into show_room values(8, 'Samsung Smart Plaza', 'Ahmedabad', 110, 913456789123, 'ahmedabad@samsung.com', 'Rakesh Patel', 'Electronics', 'www.samsung.com/ahmedabad', '2024-08-09 15:30:00', 'Rakesh Mehta', NOW(), 'Amit Sharma');
insert into show_room values(9, 'LG Best Shop', 'Surat', 140, 914567890234, 'surat@lge.com', 'Dinesh Mehta', 'Electronics', 'www.lg.com/in/surat', '2024-09-12 10:10:00', 'Dinesh Patel', NOW(), 'Ravi Kumar');
insert into show_room values(10, 'HP World', 'Jaipur', 90, 915678901345, 'jaipur@hpworld.com', 'Neha Gupta', 'Electronics', 'www.hpworldstores.com/jaipur', '2024-10-15 17:25:00', 'Neha Sharma', NOW(), 'Arun Singh');
insert into show_room values(11, 'Adidas Store', 'Lucknow', 160, 916789012456, 'lucknow@adidas.com', 'Aakash Verma', 'Retail', 'www.adidas.com/lucknow', '2024-11-20 11:45:00', 'Aakash Gupta', NOW(), 'Sneha Desai');
insert into show_room values(12, 'Puma Store', 'Kanpur', 130, 917890123567, 'kanpur@puma.com', 'Sandeep Singh', 'Retail', 'www.puma.com/kanpur', '2024-12-01 09:30:00', 'Sandeep Kumar', NOW(), 'Priya Reddy');
insert into show_room values(13, 'Decathlon', 'Nagpur', 170, 918901234678, 'nagpur@decathlon.com', 'Rohit Nair', 'Sports Goods', 'www.decathlon.in/nagpur', '2024-12-10 14:50:00', 'Rohit Singh', NOW(), 'Amit Sharma');
insert into show_room values(14, 'Sony Center', 'Coimbatore', 80, 919012345789, 'coimbatore@sony.com', 'Lakshmi Narayanan', 'Electronics', 'www.sony.co.in/coimbatore', '2024-12-20 10:15:00', 'Lakshmi Menon', NOW(), 'Sneha Desai');
insert into show_room values(15, 'Levi\'s Store', 'Kochi', 110, 910123456890, 'kochi@levis.com', 'Anjali Menon', 'Retail', 'www.levistrauss.com/kochi', '2024-12-25 16:00:00', 'Anjali Das', NOW(), 'Rohit Nair');
insert into show_room values(16, 'Zara Store', 'Bhubaneswar', 140, 911234567901, 'bhubaneswar@zara.com', 'Sourav Sen', 'Retail', 'www.zara.com/in/bhubaneswar', '2025-01-15 10:30:00', 'Sourav Gupta', NOW(), 'Neha Sharma');
insert into show_room values(17, 'Fabindia', 'Patna', 100, 912345678012, 'patna@fabindia.com', 'Kunal Mishra', 'Retail', 'www.fabindia.com/patna', '2025-02-20 09:45:00', 'Kunal Patel', NOW(), 'Sneha Desai');
insert into show_room values(18, 'Woodland Store', 'Indore', 120, 913456789023, 'indore@woodlandworldwide.com', 'Piyush Jain', 'Retail', 'www.woodland.com/indore', '2025-03-10 11:15:00', 'Piyush Mehta', NOW(), 'Rajesh Kumar');
insert into show_room values(19, 'Raymond Shop', 'Bhopal', 110, 914567890134, 'bhopal@raymond.in', 'Shashank Tiwari', 'Retail', 'www.raymond.in/bhopal', '2025-04-05 14:20:00', 'Shashank Singh', NOW(), 'Ravi Kumar');
insert into show_room values(20, 'Spencer\'s Retail', 'Visakhapatnam', 150, 915678901245, 'vizag@spencers.in', 'Naveen Kumar', 'Retail', 'www.spencersretail.com/vizag', '2025-05-18 13:00:00', 'Naveen Patel', NOW(), 'Maya Singh');
 
alter table show_room modify column manager_name varchar(30) not null;
alter table show_room add constraint phone_number_uni unique(phone_number);
alter table show_room add constraint id_chk check(id>=1);
alter table show_room add constraint website_chk check(capacity <300);
truncate show_room;






