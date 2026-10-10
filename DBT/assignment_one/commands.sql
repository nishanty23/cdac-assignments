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
