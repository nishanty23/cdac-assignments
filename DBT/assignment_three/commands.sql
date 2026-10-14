/*
1. Write a query to calculate the total salary of all employees
2. Write a query to find the average salary of employees in each department using GROUP BY
3. Write a query to count the total number of employees in each department
*/
select Sum(salary) from employee;
+-------------+
| Sum(salary) |
+-------------+
|    13180000 |
+-------------+

select avg(salary) from employee
    -> join department
    -> on employee.emp_id = department.emp_id
    -> group by department.dept_name;
+--------------+
| avg(salary)  |
+--------------+
| 2420000.0000 |
| 1100000.0000 |
| 1800000.0000 |
| 1800000.0000 |
| 1650000.0000 |
+--------------+

select dept_name, count(*) as total_employees
    -> from department
    -> group by dept_name;
+-----------------+-----------------+
| dept_name       | total_employees |
+-----------------+-----------------+
| Technical       |               1 |
| Sales           |               1 |
| Accounts        |               1 |
| Founders Office |               1 |
| Manufacturing   |               1 |
+-----------------+-----------------+
