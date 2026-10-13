/*
1. Write a SQL query to create Employee & Department table with specific columns and constraints.(Note- Create Table, insert data as per your Choice)
2. Write a SQL query to add any new column to an existing table
3. Write a SQL query to insert multiple records (At least 5) into a table in a single operation
4. Write a SQL query to delete all records from a table
5. Write a SQL query to update salary records from a table where id = 105
6. Write a query to grant SELECT privilege on the Emp table to user readonly_user
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

insert into department
    -> values
    -> (1, 'Technical', 101, 1000000),
    -> (2, 'Sales', 101, 500000),
    -> (3, 'Accounts', 102, 400000),
    -> (4, 'Founders Office', 102, 400000),
    -> (5, 'Manufacturing', 103, 700000)
    -> ;
select * from department;
+---------+-----------------+--------+------------------+
| dept_id | name            | emp_id | allocated_budget |
+---------+-----------------+--------+------------------+
|       1 | Technical       |    101 |          1000000 |
|       2 | Sales           |    101 |           500000 |
|       3 | Accounts        |    102 |           400000 |
|       4 | Founders Office |    102 |           400000 |
|       5 | Manufacturing   |    103 |           700000 |
+---------+-----------------+--------+------------------+

delete from department;

update employee
    -> set salary = salary + 10000
    -> where emp_id = 105;
select * from employee;
+--------+---------+-----+--------+---------+
| emp_id | name    | age | gender | salary  |
+--------+---------+-----+--------+---------+
|    101 | Anshul  |  22 | M      | 2400000 |
|    102 | Sidhant |  20 | M      | 1800000 |
|    103 | Sita    |  40 | F      | 1500000 |
|    104 | Aakash  |  19 | M      | 2500000 |
|    105 | Kaushik |  23 | M      | 3110000 |
+--------+---------+-----+--------+---------+

create user 'readonly_user' @ 'localhost'
identified by 'password123';
grant select on employee to 'readonly_user' @ 'localhost';
