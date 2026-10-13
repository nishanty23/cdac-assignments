/*
1. Write a SQL query to create Employee & Department table with specific columns and constraints.(Note- Create Table, insert data as per your Choice)
2. Write a SQL query to add any new column to an existing table
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

alter table department
    -> add column allocated_budget int;
desc department;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| dept_id          | int         | NO   | PRI | NULL    |       |
| name             | varchar(20) | YES  |     | NULL    |       |
| emp_id           | int         | YES  |     | NULL    |       |
| allocated_budget | int         | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
