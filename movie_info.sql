create table movie_info(id int,name varchar(20),hero varchar(20),heroine varchar(20),budget bigint);
alter table movie_info add column box_office bigint,add column language varchar(10),add column director varchar(20),add columnreleasedYear int,add column is_hit boolean;

alter table movie_info rename column id to movie_id,rename column name to movie_name,rename column hero to movie_hero,rename column heroine to movie_heroine,rename column director to movie_director;
select * from movie_info;
insert into movie_info values(1,'KGF', 'Yash', 'Srinidhi', 80000000, 250000000, 'Kannada', 'Prashanth Neel', 2018, 1);
insert into movie_info values(2, 'Dangal', 'Aamir Khan', 'Sakshi Tanwar', 70000000, 2000000000, 'Hindi', 'Nitesh Tiwari', 2016, 1);
insert into movie_info values(3, 'Baahubali', 'Prabhas', 'Anushka', 180000000, 650000000, 'Telugu', 'S.S. Rajamouli', 2015, 1);
insert into movie_info values(4, '3 Idiots', 'Aamir Khan', 'Kareena Kapoor', 55000000, 460000000, 'Hindi', 'Rajkumar Hirani', 2009, 1);
insert into movie_info values(5, 'Drishyam', 'Ajay Devgn', 'Shriya Saran', 38000000, 110000000, 'Hindi', 'Nishikant Kamat', 2015, 1);
insert into movie_info values(6, 'Lucia', 'Sathish Ninasam', 'Sruthi Hariharan', 10000000, 50000000, 'Kannada', 'Pawan Kumar', 2013, 1);
insert into movie_info values(7, 'Inception', 'Leonardo DiCaprio', 'Marion Cotillard', 160000000, 830000000, 'English', 'Christopher Nolan', 2010, 1);
insert into movie_info values(8, 'Titanic', 'Leonardo DiCaprio', 'Kate Winslet', 200000000, 2200000000, 'English', 'James Cameron', 1997, 1);
insert into movie_info values(9, 'Parasite', 'Song Kang-ho', 'Cho Yeo-jeong', 11000000, 266000000, 'Korean', 'Bong Joon-ho', 2019, 1);
insert into movie_info values(10, 'Sholay', 'Amitabh Bachchan', 'Hema Malini', 3000000, 350000000, 'Hindi', 'Ramesh Sippy', 1975, 1);


UPDATE movie_info SET movie_hero ='Rocking star' WHERE movie_id = 1;
UPDATE movie_info SET movie_heroine='Radhika' WHERE movie_id = 1;
UPDATE movie_info SET movie_heroine = 'Anushka Shetty' WHERE movie_id = 3;
UPDATE movie_info SET budget = 600000000 WHERE movie_id = 4;
UPDATE movie_info SET is_hit = 0 WHERE movie_id = 5;
UPDATE movie_info SET movie_hero='Satish'  WHERE movie_id = 6 and movie_heroine='Sruthi Hariharan';
UPDATE movie_info SET is_hit = 0 WHERE movie_id = 7;
UPDATE movie_info SET is_hit = 0 WHERE movie_name= 'Parasite';
UPDATE movie_info SET movie_heroine='Kareena' WHERE movie_hero='Aamir Khan';
UPDATE movie_info SET is_hit = 0 WHERE budget = 11000000;


delete from movie_info where movie_id=3;
delete from movie_info where movie_hero='Aamir Khan';
delete from movie_info where language='Hindi' and movie_id=5;


select *from movie_info where movie_id=4;
select movie_hero from movie_info where movie_heroine='Radhika' and movie_id=1;
select budget from movie_info where movie_hero='Rocking star' or movie_id=5;
select movie_hero,movie_director from movie_info where movie_id in(1,5,8,9);
select movie_heroine,movie_director from movie_info where movie_id not in(1,5,8,9);
