-- limit function
select * from sample100 limit 4 ;
-- aggregate functions
select min(leave_1) as minimum from sample100 ;
select max(leave_1) as maximum from sample100 ;
select sum(leave_1) as total from sample100 ;
select count(leave_1) as count_1 from sample100 ;
select avg(leave_1) as average from sample100 ;
-- like function
select * from sample100 where Employee_Markme like '%k' ;
select * from sample100 where Employee_Markme like 'm%' ;
-- wildcards
select * from sample100 where Employee_Markme like '%ar%' ;
select * from sample100 where Employee_Markme like 'ac%' ;
select * from sample100 where Description_1 like '_ba_us' ;
-- in and not in
select * from sample100 where Employee_Markme in ('michael gaffney' , 'peter westwood') ;
select * from sample100 where Employee_Markme not in ('michael gaffney' , 'peter westwood') ;
-- between and not between
select * from sample100 where Serial_Number between 9781742863658 and 9781742860404 ;
select * from sample100 where Serial_Number not between 9781742863658 and 9781742860404 ;
-- aliases
select Company_Name from sample100 as comp ;
-- insert into
insert into emp_pr_1 (emp_fname)
select Employee_Markme from sample100 ;







