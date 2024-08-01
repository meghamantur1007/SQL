create database author;

create table author_info(author_id int primary key,first_name varchar(20)unique,last_name varchar(20)
unique,birth_date date not null,nationality varchar(30) not null);

insert into author_info values(1,'Arundhathi','Roy','1961-07-22','Indian');
insert into author_info values(2,'Salman','Rushidie','1970-08-22','British');
insert into author_info values(3,'Jhumpa','Lahiri','1975-08-17','American');
insert into author_info values(4,'R.K','Narayan','1906-02-12','Indian');
insert into author_info values(5,'Anita','Desai','1937-03-05','Indian');
insert into author_info values(6,'Amitav','Ghosh','1980-08-15','Indian');
insert into author_info values(7,'Chetan','Bhagat','1978-06-13','Indian');
insert into author_info values(8,'Ruskin','Seth','1930-06-09','Indian');
insert into author_info values(9,'Vikram','Bond','1934-05-19','Indian');
insert into author_info values(10,'Kiran','Varma','1971-09-03','Indian');

select * from author_info;

select* from author_info where author_id between 1 and 6;
select author_id,first_name from author_info where last_name like 'R%';
select * from author_info order by first_name;
select * from author_info order by first_name desc;
select  upper(nationality) from author_info;
select lower(first_name) from author_info;
select concat(first_name,last_name) from author_info;
select length(nationality) from author_info;
create index last_name_index on author_info(last_name);
show index from author_info;




create table books(book_id int primary key,title varchar(30) unique,genre varchar(20) not null,
publication_year int not null,author_id int unique,foreign key(author_id)references author_info(author_id)
on delete cascade on update cascade);

select * from books;

insert into books values(1,'The God Of Small things','Fiction',1997,1);
insert into books values(2,'Midnight','Fiction',1981,2);
insert into books values(3,'The Namesake','Fiction',2003,3);
insert into books values(4,'Malgudi days','Short Stories',1943,4);
insert into books values(5,'Clear Night Of Day','Fiction',1980,5);
insert into books values(6,'The Glass Palace','Historical Fication',2000,6);
insert into books values(7,'Five Point Someone','Fiction',2004,7);
insert into books values(8,'A Suitable Boy','Fiction',1993,8);
insert into books values(9,'The Room On the Roof','Fiction',1956,9);
insert into books values(10,'The inheritance of Loss','Fiction',2006,10);

select * from books where publication_year between 1980 and 2005;
select title from books where title like 'T%s';
select genre,publication_year from books order by author_id desc;
select  upper(genre) from books;
select lower(title) from books;
select concat(title,genre) from books;
select length(title) from books;
create index publication_year_index on books(publication_year);
show index from books;