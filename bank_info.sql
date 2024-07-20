create table bank_info(id int, bank_name VARCHAR(25), account_number BIGINT,branch_code INT,is_active BOOLEAN);
alter table bank_info add column  account_holder VARCHAR(25),ADD COLUMN account_type VARCHAR(25),ADD COLUMN balance BIGINT,ADD COLUMN contact_number BIGINT,ADD COLUMN address VARCHAR(25);

select * from bank_info;

alter table bank_info rename column id to bank_id,rename column account_type tO type_of_account,rename column balance TO account_balance,rename column contact_number TO phone_number,rename column  address TO residential_address;

insert into bank_info values(1, 'State Bank of India', 1234567890123456, 1001, 1, 'Megha', 'Savings', 150000, 9876543210, '123 Main St, Delhi');
insert into bank_info values(2, 'ICICI Bank', 2345678901234567, 1002, 1, 'Bhavya', 'Current', 250000, 8765432109, '456 Market Rd, Mumbai');
insert into bank_info values(3, 'HDFC Bank', 3456789012345678, 1003, 1, 'Deepa', 'Savings', 500000, 7654321098, '789 High St, Bangalore');
insert into bank_info values(4, 'Axis Bank', 4567890123456789, 1004, 1, 'Meena', 'Current', 750000, 6543210987, '101 Low St, Hyderabad');
insert into bank_info values(5, 'Punjab National Bank', 5678901234567890, 1005, 1, 'Preeti', 'Savings', 200000, 5432109876, '202 Upper St, Kolkata');
insert into bank_info values(6, 'Bank of Baroda', 6789012345678901, 1006, 1, 'soumya', 'Current', 300000, 4321098765, '303 Middle St, Chennai');
insert into bank_info values(7, 'Canara Bank', 7890123456789012, 1007, 1, 'Ranjita', 'Savings', 400000, 3210987654, '404 North St, Pune');
insert into bank_info values(8, 'Union Bank', 8901234567890123, 1008, 1, 'Pratika', 'Current', 600000, 2109876543, '505 South St, Ahmedabad');
insert into bank_info values(9, 'Central Bank', 9012345678901234, 1009, 1, 'Sandhya', 'Savings', 450000, 1098765432, '606 West St, Jaipur');
insert into bank_info values(10, 'IDBI Bank', 1123456789012345, 1010, 1, 'Savita', 'Current', 350000, 9876543211, '707 East St, Lucknow');



UPDATE bank_info SET bank_name = 'State Bank of India Ltd.' WHERE bank_id = 1;
UPDATE bank_info SET account_number = 2345678909876543 WHERE bank_id = 2;
UPDATE bank_info SET branch_code = 2003 WHERE bank_id = 3;
UPDATE bank_info SET is_active = 0 WHERE bank_id = 4;
UPDATE bank_info SET account_holder = 'Preeti' WHERE bank_id = 5;
UPDATE bank_info SET type_of_account = 'Fixed Deposit' WHERE bank_id = 6;
UPDATE bank_info SET account_balance = 500000 WHERE bank_id = 7;
UPDATE bank_info SET phone_number = 2209876543 WHERE bank_id = 8;
UPDATE bank_info SET residential_address = '607 West St, Jaipur' WHERE bank_id = 9;
UPDATE bank_info SET account_balance = 400000 WHERE bank_id = 10;

delete from bank_info where bank_id=10;
delete from bank_info where account_holder='Deepa';
delete from bank_info where account_balance=7500000;


select *from bank_info where bank_id=1;
select account_holder from bank_info where account_balance=200000 and bank_id=5;
select bank_name from bank_info where bank_id=4 or account_holder='soumya';
select account_number from bank_info where bank_id in(1,2,4,7,9);
select account_number from bank_info where bank_id not in(1,2,4,7,9);

