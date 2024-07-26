create table temple_info(id int,name varchar(100) not null,location varchar(100) not null,year_founded int,
phone_number bigint unique,email varchar(100) unique,religious_affiliation varchar(50),status varchar(50),
num_visitors int, created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50),
constraint id_chk check(id>=1),constraint year_chk check(year_founded>=1996));

select*from temple_info;
desc temple_info;

insert into temple_info values(1, 'Siddhivinayak Temple', 'Mumbai', 1999, 911234567890, 'info@siddhivinayaktemple.com', 'Hinduism', 'Active', 5000, '2024-01-15 09:00:00', 'Rajesh Patel', now(), 'Amit Sharma');
insert into temple_info values(2, 'Jagannath Temple', 'Puri', 2001, 912345678901, 'contact@jagannathtemple.com', 'Hinduism', 'Active', 8000, '2024-02-20 10:15:00', 'Amit Sharma', now(), 'Sneha Desai');
insert into temple_info values(3, 'Golden Temple', 'Amritsar', 2005, 913456789012, 'info@goldentemple.com', 'Sikhism', 'Active', 12000, '2024-03-10 11:30:00', 'Priya Reddy', now(), 'Arun Kumar');
insert into temple_info values(4, 'Kashi Vishwanath Temple', 'Varanasi', 2008, 914567890123, 'info@kashivishwanathtemple.com', 'Hinduism', 'Inactive', 15000, '2024-04-05 12:45:00', 'Sneha Desai', now(), 'Maya Singh');
insert into temple_info values(5, 'Shirdi Sai Baba Temple', 'Shirdi', 2020, 915678901234, 'info@shirdisaibaba.com', 'Hinduism', 'Active', 20000, '2024-05-18 14:00:00', 'Arun Kumar', now(), 'Nisha Reddy');
insert into temple_info values(6, 'Brihadeeswarar Temple', 'Thanjavur', 2001, 916789012345, 'info@brihadeeswarartemple.com', 'Hinduism', 'Active', 10000, '2024-06-01 09:00:00', 'Maya Singh', now(), 'Kiran Patel');
insert into temple_info values(7, 'Ramanathaswamy Temple', 'Rameswaram', 1998, 917890123456, 'info@ramanathaswamytemple.com', 'Hinduism', 'Inactive', 6000, '2024-06-15 10:15:00', 'Suresh Patel', now(), 'Gita Rani');
insert into temple_info values(8, 'Hampi Temple', 'Hampi', 2007, 918901234567, 'info@hampitemple.com', 'Hinduism', 'Active', 7500, '2024-07-01 11:30:00', 'Kavita Sharma', now(), 'Deepak Sharma');
insert into temple_info values(9, 'Somnath Temple', 'Prabhas Patan', 1999, 919012345678, 'info@somnathtemple.com', 'Hinduism', 'Active', 9000, '2024-07-20 12:45:00', 'Ravi Kumar', now(), 'Neha Sharma');
insert into temple_info values(10, 'Mahabodhi Temple', 'Bodh Gaya', 2000, 920123456789, 'info@mahabodhitemple.com', 'Buddhism', 'Inactive', 4000, '2024-08-05 14:00:00', 'Nisha Reddy', now(), 'Ravi Kumar');
insert into temple_info values(11, 'Kedarnath Temple', 'Kedarnath', 2015, 921234567890, 'info@kedarnathtemple.com', 'Hinduism', 'Active', 5500, '2024-08-15 09:00:00', 'Sita Devi', now(), 'Raj Kumar');
insert into temple_info values(12, 'Kanchipuram Temple', 'Kanchipuram', 2003, 922345678901, 'info@kanchipuramtemple.com', 'Hinduism', 'Inactive', 3000, '2024-09-01 10:15:00', 'Raj Kumar', now(), 'Anita Gupta');
insert into temple_info values(13, 'Chidambaram Temple', 'Chidambaram', 2010, 923456789012, 'info@chidambaramtemple.com', 'Hinduism', 'Active', 7000, '2024-09-10 11:30:00', 'Anita Gupta', now(), 'Sita Devi');
insert into temple_info values(14, 'Tirupati Temple', 'Tirupati', 1998, 924567890123, 'info@tirupatitemple.com', 'Hinduism', 'Active', 11000, '2024-10-01 12:45:00', 'Vikram Singh', now(), 'Maya Singh');
insert into temple_info values(15, 'Rishikesh Temple', 'Rishikesh', 2002, 925678901234, 'info@rishikesh.com', 'Hinduism', 'Inactive', 6500, '2024-10-15 14:00:00', 'Neha Sharma', now(), 'Gita Rani');
insert into temple_info values(16, 'Dwarkadhish Temple', 'Dwarka', 2004, 926789012345, 'info@dwarkadhishtemple.com', 'Hinduism', 'Active', 8000, '2024-11-01 09:00:00', 'Manoj Gupta', now(), 'Deepak Sharma');
insert into temple_info values(17, 'Shankara Temple', 'Kolkata', 2006, 927890123456, 'info@shankaratemple.com', 'Hinduism', 'Inactive', 3500, '2024-11-15 10:15:00', 'Kiran Patel', now(), 'Raj Kumar');
insert into temple_info values(18, 'Kashi Vishwanath Temple', 'Varanasi', 2007, 928901234567, 'info@kashithtemple.com', 'Hinduism', 'Active', 9000, '2024-12-01 11:30:00', 'Gita Rani', now(), 'Sita Devi');
insert into temple_info values(19, 'Kamakshi Temple', 'Kanchipuram', 2009, 929012345678, 'info@kamakshitemple.com', 'Hinduism', 'Active', 9500, '2024-12-10 12:45:00', 'Deepak Sharma', now(), 'Maya Singh');
insert into temple_info values(20, 'Naina Devi Temple', 'Nainital', 2012, 930123456789, 'info@nainadevi.com', 'Hinduism', 'Inactive', 5500, '2024-12-20 14:00:00', 'Ritu Gupta', now(), 'Anita Gupta');

alter table temple_info modify column name varchar(100) not null;
alter table temple_info add constraint id_uni unique(id);
alter table temple_info add constraint phone_number_chk check(length(phone_number)>=10);
alter table temple_info add constraint num_visitors_chk check(num_visitors >=2000);