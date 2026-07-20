show databases;
use demo1;
show tables ;
select * from emp ;
select empid from emp where PayZone="Zone A";
select * from emp where PayZone="Zone B";
select * from emp where Division= 'General - Sga' and GenderCode='Male' and MaritalDesc='Married' and EmployeeType='Full-Time';
select * from emp1;
select * from emp1 where Department ='Marketing' and Country ='India'and Position='Analyst';
select Employee_ID,Employee_Name,Department,Salary,Age  from emp1  where Position='Analyst'  and  Age < 30; 
select *  from emp1  where  not Position='Analyst'  and  Age < 30; 
select *  from emp1  where Position like '%a%'  and  Age < 30;
select *  from emp1  where Position like '%a%'  and  Age < 30 order by Age desc , Position ;  
select *  from emp1  order by Salary desc limit 5;  
select *  from emp1  limit 5;
select *  from emp1  limit 2,5;
select *  from emp1  where Joining_Date between '2015-01-01' and '2024-12-31';
select *  from emp1  where Salary between 130000 and  150000;
select * from emp1 where Department in ("HR");
select concat(Age,' - ',Country) from emp1;
select concat_ws(' - ',Position,Department) from emp1 ;
select length(Salary) as salarycount from emp1;
select upper(Employee_Name) from emp1;
select left(Employee_Name,5) as firstfivename from emp1;
select right (Employee_Name,5)as last_five_name from emp1;
select mid(Employee_Name,2,6) as midname from emp1 ;
select  sum(salary) from emp1;
select max(salary)from emp1;
select min(salary) from emp1;
select truncate(salary,1)as amount from emp1;
select * from emp1;
select hour(Joining_Date) from emp1 ;
select Employee_Name, count(salary)as amount from emp1 group by (Employee_Name); 
#select Employee_Name,Age,
#case 
#when salary >=10000then "pay zone c"
#when salary >=15000 then "pay zone D"
#when salary >=140000 then"pay zone A"
#when salary >=12000 then "pay zone B"
#else "avg" 
#end as salarytype
#from emp1;
 select Department,count(Employee_ID) from emp1 group by Department;
 show tables;
select * from orders;
select * from product;
use demo1 ;
select * from product1;
SELECT p.ProductID, o.OrderID FROM product1 p JOIN orders o ON p.ProductID = o.ProductID;
select o.OrderID, p.ProductID from product1 p inner join orders o on p.ProductID=o.ProductID;
select p.ProductName,o.CostPrice from product1 p join orders o on p.ProductID=o.ProductID; 
select p.SupplierName,o.QuantityOrdered from product1 p  join orders o on p.ProductID=o.ProductID;
select * from product1 p cross join orders o on p.ProductID=o.ProductID;
#create view d as select * from product1 ;
select * from superstoredataset;
#alter table superstoredataset rename column ï»¿Row_ID to Row_ID;
SELECT * from superstoredataset order by Row_ID;
select  count(distinct Order_ID)  from superstoredataset ;
select  count(distinct Customer_ID) from superstoredataset;
select sum(Sales) from superstoredataset;
select avg(Sales) from superstoredataset;
select sum(Profit) from superstoredataset;
select avg(Profit) from superstoredataset;
select Category,sum(Sales) from superstoredataset group by Category;
#select Sub-Category,sum(Sales) from superstoredataset group by Sub-Category;
select Region,sum(Sales) from superstoredataset group by Region;
select State,sum(Sales) from superstoredataset group by State;
select Segment,sum(Sales) from superstoredataset group by Segment;
select  Product_Name, sum(sales)as ss from superstoredataset group by Product_Name order by ss desc limit 10;
select  Product_Name, sum(Profit)as sp from superstoredataset group by Product_Name order by sp desc limit 10;
select  Product_Name, sum(sales)as ss from superstoredataset group by Product_Name order by ss  limit 10;
select  Customer_Name, sum(sales)as ss from superstoredataset group by Customer_Name order by ss desc limit 10;
select  Customer_Name, sum(sales)as ss from superstoredataset group by Customer_Name;
select  Customer_Name, sum(Profit)as ss from superstoredataset group by Customer_Name;
select  Month_Name, sum(sales)as ss from superstoredataset group by Month_Name ;
select  Order_Year, sum(sales)as ss from superstoredataset group by Order_Year ;
select  Quarter, sum(sales)as ss from superstoredataset group by Quarter;
select  Ship_Mode, sum(sales)as ss from superstoredataset group by Ship_Mode ;
select  avg(Delivery_Days) from superstoredataset;
select  Ship_Mode, count(Delivery_Days)as cd from superstoredataset group by Ship_Mode ;
select  Category, sum(Profit)as sp from superstoredataset group by Category order by sp desc limit 1 ;
select  Category, sum(Profit)as sp from superstoredataset group by Category order by sp  limit 1 ;
select  State, sum(Profit)as sp from superstoredataset group by State order by sp desc limit 1 ;
commit;
