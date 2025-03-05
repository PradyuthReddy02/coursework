# Write your MySQL query statement below
select d.name as Department, e.name as EMployee,e.Salary from employee e join department d on e.departmentId=d.id 
where (departmentId, Salary) in (select departmentId, max(salary) from employee 
group by departmentId);