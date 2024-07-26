create table market_info(id int,name varchar(50) not null,location varchar(50) not null,year_founded int,
max_stalls int,phone_number bigint unique,email varchar(50) unique,num_vendors int,status varchar(50),
created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50),
constraint id_chk CHECK (id >= 1),constraint year_chk CHECK (year_founded > 1996));

select * from market_info;
desc market_info;


insert into market_info values(1, 'Farmers Market', 'Delhi', 1997, 150, 911234567890, 'farmers@delhi.com', 50, 'Active', '2024-01-15 09:00:00', 'Ravi Kumar', NOW(), 'Amit Sharma');
insert into market_info values(2, 'Organic Market', 'Mumbai', 1998, 200, 912345678901, 'organic@mumbai.com', 75, 'Active', '2024-02-20 10:15:00', 'Sneha Desai', NOW(), 'Priya Reddy');
insert into market_info values(3, 'Night Market', 'Bangalore', 1999, 300, 913456789012, 'night@bangalore.com', 100, 'Inactive', '2024-03-10 11:30:00', 'Arun Singh', NOW(), 'Rajesh Kumar');
insert into market_info values(4, 'Weekend Market', 'Hyderabad', 2000, 120, 914567890123, 'weekend@hyderabad.com', 60, 'Active', '2024-04-05 12:45:00', 'Ravi Kumar', NOW(), 'Sneha Desai');
insert into market_info values(5, 'Craft Market', 'Chennai', 2001, 180, 915678901234, 'craft@chennai.com', 80, 'Inactive', '2024-05-18 14:00:00', 'Maya Singh', NOW(), 'Priya Reddy');
insert into market_info values(6, 'Vintage Market', 'Kolkata', 2002, 220, 916789012345, 'vintage@kolkata.com', 90, 'Active', '2024-06-01 09:00:00', 'Vijay Kumar', NOW(), 'Amit Sharma');
insert into market_info values(7, 'Holiday Market', 'Pune', 2003, 180, 917890123456, 'holiday@pune.com', 85, 'Inactive', '2024-06-15 10:15:00', 'Anirban Roy', NOW(), 'Sneha Patil');
insert into market_info values(8, 'Food Market', 'Ahmedabad', 2004, 250, 918901234567, 'food@ahmedabad.com', 95, 'Active', '2024-07-01 11:30:00', 'Rakesh Mehta', NOW(), 'Amit Sharma');
insert into market_info values(9, 'Flea Market', 'Jaipur', 2005, 300, 919012345678, 'flea@jaipur.com', 120, 'Active', '2024-07-20 12:45:00', 'Dinesh Patel', NOW(), 'Ravi Kumar');
insert into market_info values(10, 'Handmade Market', 'Chandigarh', 2006, 210, 920123456789, 'handmade@chandigarh.com', 65, 'Inactive', '2024-08-05 14:00:00', 'Neha Sharma', NOW(), 'Arun Singh');
insert into market_info values(11, 'Green Market', 'Surat', 2007, 320, 921234567890, 'green@surat.com', 130, 'Active', '2024-08-15 09:00:00', 'Aakash Gupta', NOW(), 'Sneha Desai');
insert into market_info values(12, 'Night Bazaar', 'Lucknow', 2008, 190, 922345678901, 'nightbazaar@lucknow.com', 75, 'Inactive', '2024-09-01 10:15:00', 'Sandeep Kumar', NOW(), 'Priya Reddy');
insert into market_info values(13, 'Craftsmen Market', 'Kanpur', 2009, 280, 923456789012, 'craftsmen@kanpur.com', 115, 'Active', '2024-09-10 11:30:00', 'Rohit Singh', NOW(), 'Amit Sharma');
insert into market_info values(14, 'Antique Market', 'Indore', 2010, 310, 924567890123, 'antique@indore.com', 125, 'Active', '2024-10-01 12:45:00', 'Lakshmi Menon', NOW(), 'Sneha Desai');
insert into market_info values(15, 'Farm Fresh Market', 'Vadodara', 2011, 220, 925678901234, 'farmfresh@vadodara.com', 90, 'Inactive', '2024-10-15 14:00:00', 'Anjali Das', NOW(), 'Rohit Nair');
insert into market_info values(16, 'Summer Market', 'Nagpur', 2012, 250, 926789012345, 'summer@nagpur.com', 105, 'Active', '2024-11-01 09:00:00', 'Rajesh Patel', NOW(), 'Amit Sharma');
insert into market_info values(17, 'Local Market', 'Aurangabad', 2013, 190, 927890123456, 'local@aurangabad.com', 85, 'Inactive', '2024-11-15 10:15:00', 'Anirban Roy', NOW(), 'Sneha Desai');
insert into market_info values(18, 'Artisan Market', 'Amritsar', 2014, 320, 928901234567, 'artisan@amritsar.com', 130, 'Active', '2024-12-01 11:30:00', 'Rakesh Mehta', NOW(), 'Amit Sharma');
insert into market_info values(19, 'Harvest Market', 'Nashik', 2015, 270, 929012345678, 'harvest@nashik.com', 115, 'Active', '2024-12-10 12:45:00', 'Dinesh Patel', NOW(), 'Ravi Kumar');
insert into market_info values(20, 'Street Market', 'Raipur', 2016, 300, 930123456789, 'street@raipur.com', 120, 'Inactive', '2024-12-20 14:00:00', 'Neha Sharma', NOW(), 'Arun Singh');
  
alter table market_info modify column name varchar(50) not null;
alter table market_info add constraint location_uni unique(location);
alter table market_info add constraint phone_number_chk check(length(phone_number)>=10);
alter table market_info add constraint status_chk check(status in('Active','Inactive'));