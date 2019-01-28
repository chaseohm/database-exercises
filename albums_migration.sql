USE codeup_test_db;
drop table if exists albums;
create table albums (
 id INT auto_increment,
 artist varchar (50),
 name varchar (50),
 release_date date,
 sales float,
 genre varchar(100),
 primary key(id)
);

