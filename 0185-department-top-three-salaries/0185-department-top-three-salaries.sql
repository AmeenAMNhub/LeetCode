-- select d.name AS Department,
-- e.name AS Employee,
-- e.salary AS Salary from (select name,salary,departmentId,DENSE_RANK()OVER(PARTITION BY departmentId ORDER BY salary DESC ) AS salary_rank from Employee) e join Department d on e.departmentId=d.id where salary_rank <=3;  


-- select d.name as department,
-- e.name as employee,
-- e.salary as salary
-- from (select name,salary,departmentId,dense_rank()over(partition by departmentId  order by salary desc)as salary_rank from Employee) e join Department d on e.departmentId=d.id where salary_rank  <=3;


select d.name AS department,
e.name AS employee ,
e.salary as salary from 
(select name,salary,departmentId,dense_rank()over(partition by departmentId order by salary desc
 )as salary_rank from Employee) e join Department d on e.departmentId=d.id where salary_rank <=3;
















