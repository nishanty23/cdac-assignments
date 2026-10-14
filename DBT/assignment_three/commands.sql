/*
1. Write a query to calculate the total salary of all employees
2. Write a query to find the average salary of employees in each department using GROUP BY
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
