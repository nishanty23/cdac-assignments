/*
1. Write a SQL query to create Employee & Department table with specific columns and constraints.(Note- Create Table, insert data as per your Choice)
*/
create table employee (
    -> emp_id int primary key,
    -> name varchar(20),
    -> age int not null,
    -> gender enum('M','F')
    -> );
desc employee;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| emp_id | int           | NO   | PRI | NULL    |       |
| name   | varchar(20)   | YES  |     | NULL    |       |
| age    | int           | NO   |     | NULL    |       |
| gender | enum('M','F') | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
create table department (
    -> dept_id int primary key,
    -> name varchar(20),
    -> emp_id int
    -> );
desc department;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| dept_id | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | YES  |     | NULL    |       |
| emp_id  | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
