create table  metro_info(id int,name varchar(50) not null,location varchar(50) not null,year_established int,
max_capacity int,email varchar(50) unique,num_stations int,status varchar(50),created_at timestamp,
created_by varchar(50),modified_at timestamp,modified_by varchar(50),metro_code varchar(20) unique,
constraint id_chk check (id >= 1),constraint year_established_chk check (year_established >= 1990));

select* from metro_info;

desc metro_info;

insert into metro_info values(1, 'City Metro', 'Delhi', 1995, 1500, 'citymetro@delhi.com', 50, 'Active', '2024-01-15 09:00:00', 'Ravi Kumar', now(), 'Amit Sharma', 'CM-DEL-001');
insert into metro_info values(2, 'Urban Transit', 'Mumbai', 1996, 2000, 'urbantransit@mumbai.com', 75, 'Active', '2024-02-20 10:15:00', 'Sneha Desai', now(), 'Priya Reddy', 'UT-MUM-002');
insert into metro_info values(3, 'Metro Express', 'Bangalore', 1997, 2500, 'metroexpress@bangalore.com', 100, 'Inactive', '2024-03-10 11:30:00', 'Arun Singh', now(), 'Rajesh Kumar', 'ME-BAN-003');
insert into metro_info values(4, 'Rapid Metro', 'Hyderabad', 1998, 1800, 'rapidmetro@hyderabad.com', 60, 'Active', '2024-04-05 12:45:00', 'Ravi Kumar', now(), 'Sneha Desai', 'RM-HYD-004');
insert into metro_info values(5, 'Express Metro', 'Chennai', 1999, 2000, 'expressmetro@chennai.com', 80, 'Inactive', '2024-05-18 14:00:00', 'Maya Singh', now(), 'Priya Reddy', 'EM-CHN-005');
insert into metro_info values(6, 'Metro Line', 'Kolkata', 2000, 2200, 'metroline@kolkata.com', 90, 'Active', '2024-06-01 09:00:00', 'Vijay Kumar', now(), 'Amit Sharma', 'ML-KOL-006');
insert into metro_info values(7, 'Transit Metro', 'Pune', 2001, 1800, 'transitmetro@pune.com', 85, 'Inactive', '2024-06-15 10:15:00', 'Anirban Roy', now(), 'Sneha Patil', 'TM-PUN-007');
insert into metro_info values(8, 'Fast Metro', 'Ahmedabad', 2002, 2500, 'fastmetro@ahmedabad.com', 95, 'Active', '2024-07-01 11:30:00', 'Rakesh Mehta', now(), 'Amit Sharma', 'FM-AHM-008');
insert into metro_info values(9, 'Metro Link', 'Jaipur', 2003, 3000, 'metrolink@jaipur.com', 120, 'Active', '2024-07-20 12:45:00', 'Dinesh Patel', now(),'Ravi Kumar', 'ML-JAI-009');
insert into metro_info values(10, 'Smart Metro', 'Chandigarh', 2004, 2100, 'smartmetro@chandigarh.com', 65, 'Inactive', '2024-08-05 14:00:00', 'Neha Sharma', now(), 'Arun Singh', 'SM-CHD-010');
insert into metro_info values(11, 'Green Metro', 'Surat', 2005, 3200, 'greenmetro@surat.com', 130, 'Active', '2024-08-15 09:00:00', 'Aakash Gupta', now(), 'Sneha Desai', 'GM-SUR-011');
insert into metro_info values(12, 'Night Metro', 'Lucknow', 2006, 1900, 'nightmetro@lucknow.com', 75, 'Inactive', '2024-09-01 10:15:00', 'Sandeep Kumar', now(), 'Priya Reddy', 'NM-LUC-012');
insert into metro_info values(13, 'Craftsmen Metro', 'Kanpur', 2007, 2800, 'craftsmenmetro@kanpur.com', 115, 'Active', '2024-09-10 11:30:00', 'Rohit Singh', now(), 'Amit Sharma', 'CM-KAN-013');
insert into metro_info values(14, 'Antique Metro', 'Indore', 2008, 3100, 'antiquemetro@indore.com', 125, 'Active', '2024-10-01 12:45:00', 'Lakshmi Menon', now(), 'Sneha Desai', 'AM-IND-014');
insert into metro_info values(15, 'Farm Fresh Metro', 'Vadodara', 2009, 2200, 'farmfreshmetro@vadodara.com', 90, 'Inactive', '2024-10-15 14:00:00', 'Anjali Das', now(), 'Rohit Nair', 'FFM-VAD-015');
insert into metro_info values(16, 'Summer Metro', 'Nagpur', 2010, 2500, 'summermetro@nagpur.com', 105, 'Active', '2024-11-01 09:00:00', 'Rajesh Patel', now(), 'Amit Sharma', 'SM-NAG-016');
insert into metro_info values(17, 'Local Metro', 'Aurangabad', 2011, 1900, 'localmetro@aurangabad.com', 85, 'Inactive', '2024-11-15 10:15:00', 'Anirban Roy', now(), 'Sneha Desai', 'LM-AUR-017');
insert into metro_info values(18, 'Artisan Metro', 'Amritsar', 2012, 3200, 'artisanmetro@amritsar.com', 130, 'Active', '2024-12-01 11:30:00', 'Rakesh Mehta',now(), 'Amit Sharma', 'AM-AMR-018');
insert into metro_info values(19, 'Harvest Metro', 'Nashik', 2013, 2700, 'harvestmetro@nashik.com', 115, 'Active', '2024-12-10 12:45:00', 'Dinesh Patel', now(), 'Ravi Kumar', 'HM-NAS-019');
insert into metro_info values(20, 'Street Metro', 'Raipur', 2014, 3000, 'streetmetro@raipur.com', 120, 'Inactive', '2024-12-20 14:00:00', 'Neha Sharma', now(), 'Arun Singh', 'SM-RAI-020');

alter table metro_info modify column max_capacity int not null;
alter table metro_info add constraint id_uni unique(id);
alter table metro_info add constraint max_capacity_chk check(max_capacity>1000);
alter table metro_info add constraint num_stations_chk check(num_stations >40);