-- SELECT
--     (
--         SELECT DISTINCT salary
--         FROM Employee
--         ORDER BY salary DESC
--         OFFSET 1 LIMIT 1
--     ) AS SecondHighestSalary;

-- select( select distinct salary from employee order by salary desc offset 1 limit 1 )as secondhighestsalary;


select (select distinct salary from employee order by salary desc offset 1 limit 1)as secondhighestsalary;











