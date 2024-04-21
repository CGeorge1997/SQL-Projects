use et2;

create table emp15(id int,fname varchar(20),lname varchar(20),salary int,Gender varchar(10));

insert into emp15 values(1,'Bhanu','Pratap',75,'M'),(2,'Priya','Anand',80,'F'),(3,'Savendra','Singh',85,'M'),(4,'Riya','Gupta',90,'F'),
(5,'Komal','Joshi',80,'F'),(6,'Supriya','Deshmukh',87,'F'),(7,'Abhi','sing',77,'M'),(8,'Bhavesh','Sharma',66,'M'),(9,'Tanu','Chauhan',85,'F'),
(10,'Om','Prakash',70,'M');

select * from emp15;

select salary from emp15;

select fname,salary from emp15;

select fname,salary from emp15 where salary>75;

select fname,lname,Gender from emp15 where Gender='F';

select * from emp15 where Gender='M' and salary>75;

select * from emp15 where id in (1,3,5,6,8);

Select * from emp15 where salary between 60 and 80;

Select * from emp15 where fname in ('Komal','Abhi');

select * from emp15 where fname!='Tanu';

insert into emp15(id,fname,lname,salary) values(11,'Danish','Prasad',85);

select * from emp15;

insert into emp15(fname,lname) values('Kamal','Sharma');

Select * from emp15 where fname like '%i%';

select * from emp15 where fname like '_a%';

select * from emp15 where lname like '%a__';

delete from emp15 where id in (3,5);

alter table emp15 add column location varchar(20);

select * from emp15;

update emp15 set salary=97 where id in (1,8);

update emp15 set location='Vashi' where Gender='F';

alter table emp15 drop column location;

select fname,lname from emp15 limit 3,2;

select * from emp15 limit 6,3;

select * from emp15 where Gender='F' limit 2;

select * from emp15 order by salary desc limit 1;

select * from emp15 order by salary desc limit 3;

select * from emp15 order by salary desc limit 2,1;

select * from emp15 where Gender='M' order by salary desc limit 1;

select fname,salary from emp15 where Gender='F' order by salary desc limit 1,1;

select * from emp15 where id in (2,3,4,6,7) order by salary desc limit 1;

select avg(salary) from emp15;

select salary,(salary*2) as d_sal from emp15;
