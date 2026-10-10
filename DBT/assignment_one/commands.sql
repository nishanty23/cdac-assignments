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
