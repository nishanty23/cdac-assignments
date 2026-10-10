/*
1. Define a schema for a Library Management System with the following entities:
   - Books
   - Authors
   - Members
   - Borrow_Records
2. Write the SQL command to create a table Authors with the following fields:
   - author_id (Primary Key, INT)
   - name (VARCHAR(100))
   - country (VARCHAR(50))
3. Write the SQL command to create a table Books with the following fields:
   - book_id (Primary Key, INT)
   - title (VARCHAR(150))
   - author_id (Foreign Key referencing Authors)
   - published_year (YEAR)
   - available_copies (INT)
4. Write the SQL command to create a table Members with:
   - member_id (Primary Key, INT)
   - name (VARCHAR(100))
   - email (VARCHAR(100), unique)
   - phone (VARCHAR(15))
5. Write the SQL command to create a table Borrow_Records with:
   - record_id (Primary Key, INT)
   - member_id (Foreign Key referencing Members)
   - book_id (Foreign Key referencing Books)
   - borrow_date (DATE)
   - return_date (DATE)
6. Modify the Books table to add a column genre of type VARCHAR(50)
7. Write the SQL command to drop the Borrow_Records table
*/

create database lms;
create table authors (
    -> author_id int primary key,
    -> name varchar(100),
    -> country varchar(50)
    -> );
desc authors;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| author_id | int          | NO   | PRI | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
| country   | varchar(50)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

create table books (
    -> book_id int primary key,
    -> title varchar(150),
    -> author_id int,
    -> published_year year,
    -> available_copies int,
    -> foreign key (author_id) references authors(author_id)
    -> );
desc books;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| book_id          | int          | NO   | PRI | NULL    |       |
| title            | varchar(150) | YES  |     | NULL    |       |
| author_id        | int          | YES  | MUL | NULL    |       |
| published_year   | year         | YES  |     | NULL    |       |
| available_copies | int          | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+

create table members (
    -> member_id int primary key,
    -> name varchar(100),
    -> email varchar(100) unique,
    -> phone varchar(15)
    -> );
desc members;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| member_id | int          | NO   | PRI | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
| email     | varchar(100) | YES  | UNI | NULL    |       |
| phone     | varchar(15)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

create table borrow_records (
    -> record_id int primary key,
    -> member_id int,
    -> foreign key (member_id) references members(member_id),
    -> book_id int,
    -> foreign key (book_id) references books(book_id),
    -> borrow_date date,
    -> return_date date
    -> );
desc borrow_records;
+-------------+------+------+-----+---------+-------+
| Field       | Type | Null | Key | Default | Extra |
+-------------+------+------+-----+---------+-------+
| record_id   | int  | NO   | PRI | NULL    |       |
| member_id   | int  | YES  | MUL | NULL    |       |
| book_id     | int  | YES  | MUL | NULL    |       |
| borrow_date | date | YES  |     | NULL    |       |
| return_date | date | YES  |     | NULL    |       |
+-------------+------+------+-----+---------+-------+

alter table books
    -> add column genre varchar(50);
desc books;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| book_id          | int          | NO   | PRI | NULL    |       |
| title            | varchar(150) | YES  |     | NULL    |       |
| author_id        | int          | YES  | MUL | NULL    |       |
| published_year   | year         | YES  |     | NULL    |       |
| available_copies | int          | YES  |     | NULL    |       |
| genre            | varchar(50)  | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+


drop table borrow_records;
show tables;
+---------------+
| Tables_in_lms |
+---------------+
| authors       |
| books         |
| members       |
+---------------+
