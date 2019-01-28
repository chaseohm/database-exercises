USE codeup_test_db;
drop table if exists albums;
create table albums (
 id INT auto_increment,
 artist varchar (50),
 name varchar (100),
 release_date INT,
 sales float,
 genre varchar(100),
 primary key(id)
);

