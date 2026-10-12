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
8. Insert 3 records into the Authors table
9. Insert 5 books into the Books table
10. Insert 3 members into the Members table
11. Insert 4 borrow records into the Borrow_Records table
12. Write an SQL query to select all books where published_year is after 2001
13. Write a SQL query to create a foreign key & primary key relationship between two tables
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

insert into authors
    -> values (1, 'Ruskin Bond', 'India'),
    -> (2, 'Ed Sheeran', 'UK'),
    -> (3, 'William Shakespeare', 'England');
select * from authors;
+-----------+---------------------+---------+
| author_id | name                | country |
+-----------+---------------------+---------+
|         1 | Ruskin Bond         | India   |
|         2 | Ed Sheeran          | UK      |
|         3 | William Shakespeare | England |
+-----------+---------------------+---------+

update authors
    -> set author_id=case
    -> when author_id=1 then 101
    -> when author_id=2 then 102
    -> when author_id=3 then 103
    -> when author_id=4 then 104
    -> when author_id=5 then 105
    -> end
    -> where author_id in (1, 2, 3, 4, 5);
select * from authors;
+-----------+---------------------+---------+
| author_id | name                | country |
+-----------+---------------------+---------+
|       101 | Ruskin Bond         | India   |
|       102 | Ed Sheeran          | UK      |
|       103 | William Shakespeare | England |
|       104 | SRK                 | India   |
|       105 | Elon Musk           | USA     |
+-----------+---------------------+---------+
insert into books
    -> values (1, 'My Experiments with Truth', 101, 1950, 1000000, 'Autobiography'),
    -> (2, 'Long Walk to Freedom', 102, 1990, 1000000, 'Autobiography'),
    -> (3, 'Stories of Life', 103, 2004, 1000, 'Comedy'),
    -> (4, 'Panchtantra', 104, 2010, 500, 'Comedy'),
    -> (5, 'Life of a Yogi', 105, 1955, 500, 'Spiritual')
    -> ;
select * from books;
+---------+---------------------------+-----------+----------------+------------------+---------------+
| book_id | title                     | author_id | published_year | available_copies | genre         |
+---------+---------------------------+-----------+----------------+------------------+---------------+
|       1 | My Experiments with Truth |       101 |           1950 |          1000000 | Autobiography |
|       2 | Long Walk to Freedom      |       102 |           1990 |          1000000 | Autobiography |
|       3 | Stories of Life           |       103 |           2004 |             1000 | Comedy        |
|       4 | Panchtantra               |       104 |           2010 |              500 | Comedy        |
|       5 | Life of a Yogi            |       105 |           1955 |              500 | Spiritual     |
+---------+---------------------------+-----------+----------------+------------------+---------------+

insert into members
    -> value (1, 'Aakash Chopra', 'aakash@gmail.com', '9196891477'),
    -> (2, 'Jatin Sapru', 'jatin@gmail.com', '7266994156'),
    -> (3, 'Abhishek Sharma', 'abhishek@gmail.com', '7155443154')
    -> ;
select * from members;
+-----------+-----------------+--------------------+------------+
| member_id | name            | email              | phone      |
+-----------+-----------------+--------------------+------------+
|         1 | Aakash Chopra   | aakash@gmail.com   | 9196891477 |
|         2 | Jatin Sapru     | jatin@gmail.com    | 7266994156 |
|         3 | Abhishek Sharma | abhishek@gmail.com | 7155443154 |
+-----------+-----------------+--------------------+------------+

insert into borrow_records
    -> values
    -> (1, 'MS Dhoni', 'msd@gmail.com', '7483541779'),
    -> (2, 'Yuvraj Singh', 'yuvi@gmail.com', '7383541889'),
    -> (3, 'Sachin Tendulkar', 'sachin@gmail.com', '7283541339'),
    -> (4, 'Sehwag', 'sehwag@gmail.com', '7383541429')
    -> ;
select * from borrow_records;
+-----------+------------------+------------------+------------+
| member_id | name             | email            | phone      |
+-----------+------------------+------------------+------------+
|         1 | MS Dhoni         | msd@gmail.com    | 7483541779 |
|         2 | Yuvraj Singh     | yuvi@gmail.com   | 7383541889 |
|         3 | Sachin Tendulkar | sachin@gmail.com | 7283541339 |
|         4 | Sehwag           | sehwag@gmail.com | 7383541429 |
+-----------+------------------+------------------+------------+

select * from books
    -> where published_year > 2001
    -> ;
+---------+-----------------+-----------+----------------+------------------+--------+
| book_id | title           | author_id | published_year | available_copies | genre  |
+---------+-----------------+-----------+----------------+------------------+--------+
|       3 | Stories of Life |       103 |           2004 |             1000 | Comedy |
|       4 | Panchtantra     |       104 |           2010 |              500 | Comedy |
+---------+-----------------+-----------+----------------+------------------+--------+

create table voters (
    -> name int,
    -> voter_id int,
    -> foreign key(voter_id) references books(book_id)
    -> );
desc voters;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| name     | int  | YES  |     | NULL    |       |
| voter_id | int  | YES  | MUL | NULL    |       |
+----------+------+------+-----+---------+-------+
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
