create database rto;
create table llr_info(llr_id int primary key,applicant_name varchar(50),applicant_address varchar(50),
applicant_phone bigint,applicant_email varchar(50),applicant_dob date,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20));

select*from llr_info;

create table llr_test_info(llr_id int,test_id int primary key,test_date date,test_result varchar(20),
remarks varchar(100),examiner_name varchar(50),test_center varchar(50),created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key (llr_id) references llr_info(llr_id) on delete cascade on update cascade);

select*from llr_test_info;
desc llr_test_info;

create table driving_licence_info(dl_id int primary key,test_id int,llr_id int,issue_date date,
expiry_date date,dl_type varchar(20),vehicle_class varchar(20),dl_status varchar(20),
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key (test_id) references llr_test_info(test_id)on delete cascade on update cascade,
foreign key (llr_id) references llr_info(llr_id) on delete cascade on update cascade);

select * from driving_licence_info;

create table driving_licence_test_info(dl_test_id int primary key,dl_id int,test_date date,test_result varchar(20),
remarks varchar(100),examiner_name varchar(50),test_center varchar(50),created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key (dl_id) references driving_licence_info(dl_id) on delete cascade on update cascade);

select * from driving_licence_test_info;

insert into llr_info values(1, 'Amit', '123 Main St', 9876543210, 'amit.sharma@example.com', '1990-01-01', '2024-07-29 10:00:00', 'sharma', now(), 'sharma');
insert into llr_info values(2, 'Sneha', '456 Oak St', 9876543211, 'sneha.patel@example.com', '1992-02-02', '2024-07-29 10:10:00', 'Patel', now(), 'Patel');
insert into llr_info values(3, 'Rajesh', '789 Pine St', 9876543212, 'rajesh.kumar@example.com', '1988-03-03', '2024-07-29 10:20:00', 'Kumar', now(), 'Kumar');
insert into llr_info values(4, 'Priya', '321 Elm St', 9876543213, 'priya.singh@example.com', '1991-04-04', '2024-07-29 10:30:00', 'Singh', now(), 'Singh');
insert into llr_info values(5, 'Vikram', '654 Spruce St', 9876543214, 'vikram.desai@example.com', '1989-05-05', '2024-07-29 10:40:00', 'Desai', now(), 'Desai');
insert into llr_info values(6, 'Anjali', '987 Maple St', 9876543215, 'anjali.mehta@example.com', '1993-06-06', '2024-07-29 10:50:00', 'Mehta', now(), 'Mehta');
insert into llr_info values(7, 'Suresh', '123 Birch St', 9876543216, 'suresh.nair@example.com', '1994-07-07', '2024-07-29 11:00:00', 'Nair', now(), 'Nair');
insert into llr_info values(8, 'Lakshmi', '456 Cedar St', 9876543217, 'lakshmi.rao@example.com', '1995-08-08', '2024-07-29 11:10:00', 'Naik', now(), 'Naik');
insert into llr_info values(9, 'Ravi', '789 Ash St', 9876543218, 'ravi.verma@example.com', '1996-09-09', '2024-07-29 11:20:00', 'Verma', now(), 'Verma');
insert into llr_info values(10, 'Meera', '321 Walnut St', 9876543219, 'meera.gupta@example.com', '1997-10-10', '2024-07-29 11:30:00', 'Gupta', now(), 'Gupta');
insert into llr_info values(11, 'Arjun', '654 Chestnut St', 9876543220, 'arjun.khanna@example.com', '1998-11-11', '2024-07-29 11:40:00', 'Khanna', now(), 'Khanna');
insert into llr_info values(12, 'Neha', '987 Elm St', 9876543221, 'neha.joshi@example.com', '1999-12-12', '2024-07-29 11:50:00', 'Joshi', now(), 'Joshi');
insert into llr_info values(13, 'Manoj', '123 Willow St', 9876543222, 'manoj.iyer@example.com', '2000-01-13', '2024-07-29 12:00:00', 'Iyer', now(), 'Iyer');
insert into llr_info values(14, 'Deepa', '456 Pine St', 9876543223, 'deepa.shah@example.com', '2001-02-14', '2024-07-29 12:10:00', 'Shah',now(), 'Shah');
insert into llr_info values(15, 'Vijay', '789 Elm St', 9876543224, 'vijay.aggarwal@example.com', '2002-03-15', '2024-07-29 12:20:00', 'Aggarwal', now(), 'Aggarwal');
insert into llr_info values(16, 'Pooja', '321 Maple St', 9876543225, 'pooja.bajaj@example.com', '2003-04-16', '2024-07-29 12:30:00', 'Bajaj', now(), 'Bajaj');
insert into llr_info values(17, 'Karan', '654 Spruce St', 9876543226, 'karan.das@example.com', '2004-05-17', '2024-07-29 12:40:00', 'Das', now(), 'Das');
insert into llr_info values(18, 'Shalini', '987 Oak St', 9876543227, 'shalini.reddy@example.com', '2005-06-18', '2024-07-29 12:50:00', 'Reddy', now(), 'Reddy');
insert into llr_info values(19, 'Nikhil', '123 Pine St', 9876543228, 'nikhil.sengupta@example.com', '2006-07-19', '2024-07-29 13:00:00', 'Sengupta', now(), 'Sengupta');
insert into llr_info values(20, 'Rina', '456 Elm St', 9876543229, 'rina.bhatt@example.com', '2007-08-20', '2024-07-29 13:10:00', 'Bhatt', now(), 'Bhatt');


insert into llr_test_info values(1, 101, '2024-01-10', 'Pass', 'Excellent performance', 'Ravi', 'Center A', '2024-07-29 14:00:00', 'Kumar',now(), 'Kumar');
insert into llr_test_info values(2, 102, '2024-01-11', 'Fail', 'Needs improvement', 'Amit', 'Center B', '2024-07-29 14:10:00', 'Sharma', now(), 'Sharma');
insert into llr_test_info values(3, 103, '2024-01-12', 'Pass', 'Satisfactory', 'Deepak', 'Center C', '2024-07-29 14:20:00', 'Mehta', now(), 'Mehta');
insert into llr_test_info values(4, 104, '2024-01-13', 'Pass', 'Good', 'Neha', 'Center A', '2024-07-29 14:30:00', 'Patel', now(), 'Patel');
insert into llr_test_info values(5, 105, '2024-01-14', 'Fail', 'Requires additional practice', 'Ravi', 'Center B', '2024-07-29 14:40:00', 'Kumar', now(), 'Kumar');
insert into llr_test_info values(6, 106, '2024-01-15', 'Pass', 'Good', 'Amit', 'Center C', '2024-07-29 14:50:00', 'Sharma', now(), 'Sharma');
insert into llr_test_info values(7, 107, '2024-01-16', 'Pass', 'Excellent', 'Deepak', 'Center A', '2024-07-29 15:00:00', 'Mehta', now(), 'Mehta');
insert into llr_test_info values(8, 108, '2024-01-17', 'Fail', 'Needs more practice', 'Neha', 'Center B', '2024-07-29 15:10:00', 'Patel', now(), 'Patel');
insert into llr_test_info values(9, 109, '2024-01-18', 'Pass', 'Satisfactory', 'Ravi', 'Center C', '2024-07-29 15:20:00', 'Kumar', '2024-07-29 15:25:00', 'Kumar');
insert into llr_test_info values(10, 110, '2024-01-19', 'Pass', 'Good', 'Amit', 'Center A', '2024-07-29 15:30:00', 'Sharma', now(), 'Sharma');
insert into llr_test_info values(11, 111, '2024-01-20', 'Fail', 'Improvement needed', 'Deepak', 'Center B', '2024-07-29 15:40:00', 'Mehta', now(), 'Mehta');
insert into llr_test_info values(12, 112, '2024-01-21', 'Pass', 'Good', 'Neha', 'Center C', '2024-07-29 15:50:00', 'Patel', now(), 'Patel');
insert into llr_test_info values(13, 113, '2024-01-22', 'Pass', 'Excellent', 'Ravi', 'Center A', '2024-07-29 16:00:00', 'Kumar', now(), 'Kumar');
insert into llr_test_info values(14, 114, '2024-01-23', 'Fail', 'Needs more preparation', 'Amit', 'Center B', '2024-07-29 16:10:00', 'Sharma', now(), 'Sharma');
insert into llr_test_info values(15, 115, '2024-01-24', 'Pass', 'Satisfactory', 'Deepak', 'Center C', '2024-07-29 16:20:00', 'Mehta', now(), 'Mehta');
insert into llr_test_info values(16, 116, '2024-01-25', 'Pass', 'Good', 'Neha', 'Center A', '2024-07-29 16:30:00', 'Patil', now(), 'Patil');
insert into llr_test_info values(17, 117, '2024-01-26', 'Fail', 'Needs practice', 'Ravi', 'Center B', '2024-07-29 16:40:00', 'Patel', now(), 'Patel');
insert into llr_test_info values(18, 118, '2024-01-27', 'Pass', 'Excellent', 'Amit', 'Center C', '2024-07-29 16:50:00', 'Sharma', now(), 'Sharma');
insert into llr_test_info values(19, 119, '2024-01-28', 'Pass', 'Good', 'Deepak', 'Center A', '2024-07-29 17:00:00', 'Mehta', now(), 'Mehta');
insert into llr_test_info values(20, 120, '2024-01-29', 'Fail', 'Improvement needed', 'Neha', 'Center B', '2024-07-29 17:10:00', 'Patel', now(), 'Patel');

insert into driving_licence_info values(1, 101, 1, '2024-03-01', '2034-03-01', 'Permanent', 'LMV', 'Active', '2024-07-29 10:00:00', 'Rahul', now(), 'Rahul');
insert into driving_licence_info values(2, 102, 2, '2024-03-02', '2034-03-02', 'Temporary', 'MCWG', 'Active', '2024-07-29 10:10:00', 'Anita', now(), 'Anita');
insert into driving_licence_info values(3, 103, 3, '2024-03-03', '2034-03-03', 'Permanent', 'HMV', 'Active', '2024-07-29 10:20:00', 'Suresh', now(), 'Suresh');
insert into driving_licence_info values(4, 104, 4, '2024-03-04', '2034-03-04', 'Permanent', 'LMV', 'Inactive', '2024-07-29 10:30:00', 'Pooja', now(), 'Pooja');
insert into driving_licence_info values(5, 105, 5, '2024-03-05', '2034-03-05', 'Temporary', 'MCWG', 'Active', '2024-07-29 10:40:00', 'Vikram', now(), 'Vikram');
insert into driving_licence_info values(6, 106, 6, '2024-03-06', '2034-03-06', 'Permanent', 'HMV', 'Active', '2024-07-29 10:50:00', 'Meena', now(), 'Meena');
insert into driving_licence_info values(7, 107, 7, '2024-03-07', '2034-03-07', 'Permanent', 'LMV', 'Inactive', '2024-07-29 11:00:00', 'Amit', now(), 'Amit');
insert into driving_licence_info values(8, 108, 8, '2024-03-08', '2034-03-08', 'Temporary', 'MCWG', 'Active', '2024-07-29 11:10:00', 'Priya', now(), 'Priya');
insert into driving_licence_info values(9, 109, 9, '2024-03-09', '2034-03-09', 'Permanent', 'HMV', 'Active', '2024-07-29 11:20:00', 'Raj', now(), 'Raj');
insert into driving_licence_info values(10, 110, 10, '2024-03-10', '2034-03-10', 'Permanent', 'LMV', 'Inactive', '2024-07-29 11:30:00', 'Kavita',now(), 'Kavita');
insert into driving_licence_info values(11, 111, 11, '2024-03-11', '2034-03-11', 'Temporary', 'MCWG', 'Active', '2024-07-29 11:40:00', 'Sunil', now(), 'Sunil');
insert into driving_licence_info values(12, 112, 12, '2024-03-12', '2034-03-12', 'Permanent', 'HMV', 'Active', '2024-07-29 11:50:00', 'Neha', now(), 'Neha');
insert into driving_licence_info values(13, 113, 13, '2024-03-13', '2034-03-13', 'Permanent', 'LMV', 'Inactive', '2024-07-29 12:00:00', 'Rohit', now(), 'Rohit');
insert into driving_licence_info values(14, 114, 14, '2024-03-14', '2034-03-14', 'Temporary', 'MCWG', 'Active', '2024-07-29 12:10:00', 'Anjali', now(), 'Anjali');
insert into driving_licence_info values(15, 115, 15, '2024-03-15', '2034-03-15', 'Permanent', 'HMV', 'Active', '2024-07-29 12:20:00', 'Sanjay', now(), 'Sanjay');
insert into driving_licence_info values(16, 116, 16, '2024-03-16', '2034-03-16', 'Permanent', 'LMV', 'Inactive', '2024-07-29 12:30:00', 'Divya', now(), 'Divya');
insert into driving_licence_info values(17, 117, 17, '2024-03-17', '2034-03-17', 'Temporary', 'MCWG', 'Active', '2024-07-29 12:40:00', 'Rakesh', now(), 'Rakesh');
insert into driving_licence_info values(18, 118, 18, '2024-03-18', '2034-03-18', 'Permanent', 'HMV', 'Active', '2024-07-29 12:50:00', 'Preeti', now(), 'Preeti');
insert into driving_licence_info values(19, 119, 19, '2024-03-19', '2034-03-19', 'Permanent', 'LMV', 'Inactive', '2024-07-29 13:00:00', 'Naveen', now(), 'Naveen');
insert into driving_licence_info values(20, 120, 20, '2024-03-20', '2034-03-20', 'Temporary', 'MCWG', 'Active', '2024-07-29 13:10:00', 'Kiran', now(), 'Kiran');

insert into driving_licence_test_info values(1, 1, '2024-04-01', 'Pass', 'Excellent driving skills', 'Ravi Kumar', 'Driving Center A', '2024-07-29 10:00:00', 'Arun Singh', now(), 'Arun Singh');
insert into driving_licence_test_info values(2, 2, '2024-04-02', 'Fail', 'Needs more practice', 'Amit Sharma', 'Driving Center B', '2024-07-29 10:10:00', 'Riya Patel', now(), 'Riya Patel');
insert into driving_licence_test_info values(3, 3, '2024-04-03', 'Pass', 'Satisfactory', 'Deepak Mehta', 'Driving Center C', '2024-07-29 10:20:00', 'Nikhil Rao', now(), 'Nikhil Rao');
insert into driving_licence_test_info values(4, 4, '2024-04-04', 'Pass', 'Good', 'Neha Patel', 'Driving Center A', '2024-07-29 10:30:00', 'Aisha Khan', now(), 'Aisha Khan');
insert into driving_licence_test_info values(5, 5, '2024-04-05', 'Fail', 'Requires additional training', 'Ravi Kumar', 'Driving Center B', '2024-07-29 10:40:00', 'Rajesh Gupta', now(), 'Rajesh Gupta');
insert into driving_licence_test_info values(6, 6, '2024-04-06', 'Pass', 'Good', 'Amit Sharma', 'Driving Center C', '2024-07-29 10:50:00', 'Priya Reddy', now(), 'Priya Reddy');
insert into driving_licence_test_info values(7, 7, '2024-04-07', 'Pass', 'Excellent', 'Deepak Mehta', 'Driving Center A', '2024-07-29 11:00:00', 'Suresh Kumar', now(), 'Suresh Kumar');
insert into driving_licence_test_info values(8, 8, '2024-04-08', 'Fail', 'Needs improvement', 'Neha Patel', 'Driving Center B', '2024-07-29 11:10:00', 'Anita Verma', now(), 'Anita Verma');
insert into driving_licence_test_info values(9, 9, '2024-04-09', 'Pass', 'Satisfactory', 'Ravi Kumar', 'Driving Center C', '2024-07-29 11:20:00', 'Vikram Singh', now(), 'Vikram Singh');
insert into driving_licence_test_info values(10, 10, '2024-04-10', 'Pass', 'Good', 'Amit Sharma', 'Driving Center A', '2024-07-29 11:30:00', 'Sonia Sharma', now(), 'Sonia Sharma');
insert into driving_licence_test_info values(11, 11, '2024-04-11', 'Fail', 'Improvement needed', 'Deepak Mehta', 'Driving Center B', '2024-07-29 11:40:00', 'Rajeev Nair', now(), 'Rajeev Nair');
insert into driving_licence_test_info values(12, 12, '2024-04-12', 'Pass', 'Good', 'Neha Patel', 'Driving Center C', '2024-07-29 11:50:00', 'Sanjay Patel', now(), 'Sanjay Patel');
insert into driving_licence_test_info values(13, 13, '2024-04-13', 'Pass', 'Excellent', 'Ravi Kumar', 'Driving Center A', '2024-07-29 12:00:00', 'Pooja Arora', now(), 'Pooja Arora');
insert into driving_licence_test_info values(14, 14, '2024-04-14', 'Fail', 'Needs more preparation', 'Amit Sharma', 'Driving Center B', '2024-07-29 12:10:00', 'Manoj Desai', now(), 'Manoj Desai');
insert into driving_licence_test_info values(15, 15, '2024-04-15', 'Pass', 'Satisfactory', 'Deepak Mehta', 'Driving Center C', '2024-07-29 12:20:00', 'Kiran Kumar', now(), 'Kiran Kumar');
insert into driving_licence_test_info values(16, 16, '2024-04-16', 'Pass', 'Good', 'Neha Patel', 'Driving Center A', '2024-07-29 12:30:00', 'Nita Rao', now(), 'Nita Rao');
insert into driving_licence_test_info values(17, 17, '2024-04-17', 'Fail', 'Needs practice', 'Ravi Kumar', 'Driving Center B', '2024-07-29 12:40:00', 'Sanjana Mehta', now(), 'Sanjana Mehta');
insert into driving_licence_test_info values(18, 18, '2024-04-18', 'Pass', 'Excellent', 'Amit Sharma', 'Driving Center C', '2024-07-29 12:50:00', 'Deepak Yadav', now(), 'Deepak Yadav');
insert into driving_licence_test_info values(19, 19, '2024-04-19', 'Pass', 'Good', 'Deepak Mehta', 'Driving Center A', '2024-07-29 13:00:00', 'Neha Kapoor', now(), 'Neha Kapoor');
insert into driving_licence_test_info values(20, 20, '2024-04-20', 'Fail', 'Improvement needed', 'Neha Patel', 'Driving Center B', '2024-07-29 13:10:00', 'Ravi Kumar', now(), 'Ravi Kumar');

insert into llr_info(llr_id,applicant_name,applicant_address,applicant_phone,applicant_email)
values(1,'Amit','123 Main St',9876543210,'amit.sharma@example.com')on duplicate key update llr_id=21, applicant_name='Steven',applicant_address='belagavi',applicant_phone=8456798459,applicant_email='stevennoronha9@gmail.com';
insert into llr_test_info(llr_id,test_id,test_result,remarks)values(2,103,'Pass','Good')on duplicate key update test_result='Fail',remarks='Needs improvement';
insert into driving_licence_info(dl_id,dl_type,dl_status)values(1,'Permanent','Active')on duplicate key update dl_type='Temporary',dl_status='Inactive';
insert into driving_licence_test_info(dl_test_id,examiner_name,test_center)values(1,'Ravi Kumar','Driving Center A')on duplicate key update dl_test_id=25,examiner_name='megha',test_center='Driving Center S';

replace into llr_info(llr_id,applicant_name,applicant_address,applicant_phone,applicant_email,applicant_dob,created_at,created_by,modified_at,modified_by)values(2,'Janu','Bagalkote',8976534362,'janu.patil@example.com','2020-07-12','2024-07-20 07:00:00','megha',now(),'megha');
replace into llr_test_info(llr_id,test_id,test_date,test_result)values(4,130,'2024-01-29','Excellent');
replace into driving_licence_info(dl_id,issue_date,dl_type)values(3,'2024-03-30','Temporary');
replace into driving_licence_test_info(dl_test_id,test_result,remarks)values(6,'Fail','Requires additional training');