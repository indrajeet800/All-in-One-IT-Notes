# Here is the some example of sql Tables How to Insert into table and how to build a table

create database org;

show databases;

use org;

create table customer(
id integer primary key ,
cname varchar(245),
address varchar(245),
gender char(2),
city varchar(245),
pincode integer
);

select *from customer;
 
 INSERT INTO WORKER
 (WORKER_ID, FIRST_NAME , LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT) valueS
 (001,'GYAN' ,'KUMAR', 1001,'4-02-02 09.00.00', 'INTERSHIP'),
 (002,'ANMOL', 'CHAPRI',1001,'05-09-04 04.00.00', 'DARU TEKHA'),
 (003,'TANMAY', 'BANIYA', 8001,'04-08-03 09.00.00', 'ADMIN'),
  (004,'AJEET' ,'NANADAN', 9001,'07-04-01 08.00.00', 'HR'),
   (005,'RAHUL','JAAT', 8001,'04-08-03 09.00.00', 'ACCOUNT'),
    (006,'SANU' ,'GHOST', 8001,'05-06-03 08.00.00', 'SECTION');
    

    SELECT * FROM WORKERS;
    
    CREATE TABLE BONUS(
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE datetime,
    foreign key (WORKER_REF_ID)
    references WORKER (WORKER_ID)
    ON DELETE CASCADE
    );
    
    
    INSERT INTO BONUS 
    (WORKER_REF_ID, BONUS_AMOUNT,BONUS_DATE) values
    (001,5000,'18-02-10'),
    (002,8940,'04-03-09'),
    (003,3870,'03-04-10'),
    (001,5800,'09-05-11'),
    (002,3500,'17-07-03');
    
    
    CREATE TABLE TITLE(
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    foreign key(WORKER_REF_ID)
    references WORKER(WORKER_ID)
    ON DELETE cascade
    );
    
    insert INTO title
    (WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM) VALUES
    (001,'hod', '2016-02-20 00:00:00'),
    (001,'hod', '2016-02-20 00:00:00'),
    (001,'hod', '2016-02-20 00:00:00'),
    (001,'hod', '2016-02-20 00:00:00'),
    (001,'hod', '2016-02-20 00:00:00'),
    (001,'hod', '2016-02-20 00:00:00');
    
    show databases;
    
    
    select * from worker;
    select salary from worker;
    
    
    
    -- foregin key --
    create database temp;
    
    use temp;
    
    create table customer (
    id integer primary key ,
    cname varchar(225),
    address varchar (255),
    gender char (2),
    city varchar(255),
    pincode integer
    );
    
    -- here use dml --
    insert into customer(id,cname, Address,gender, city,pincode)
    values (1251,'ram kumar', 'dilbag nagar ', 'm','jalandhar', '14402');
    
-- add method--
insert into customer values (2,'raja kumar', 'tarapur', 'r', 'trp','12000');
    
-- upadte --
update customer set address='tarapur', gender='f' , city='jannat ' where id=1;
    
-- update multiple rows--
    set sql_safe_updates=0;
    update  customer set pincode = 8555;
    
	-- delete--
delete from customer where id =1251;
    
    -- delete all rows in one time --
    delete from customer;
    
   -- replace --
    
    replace into customer(id,city)
    values (52,'jmp');
    
   -- replace if add like that behaviour insert--
    
    replace into customer(id,city)
    values(121,'rakesh');
    
    replace into customer set id=121, cname='patel', pincode='8755';
    
      select * from customer;
    
    
    --       uses of join all types         --
    
    create database temp;
    use temp;
    
    create table clinet(
    id integer primary key ,
    first_name varchar(245),
    last_name varchar(245),
    age varchar(2),
    emailid varchar(25),
    phoneno varchar(12),
    city varchar(50),
    empid varchar(10)
    );
     insert into clinet
     values(1,'mac', 'rogers', '12','mac@gamil.com', '595585','trp','1'),
            (2,'janu', 'kumar', '18','janu@gamil.com', '895245','bgp ','8'),
            (4,'janu', 'ck', '17','jan@gamil.com', '655598','ssg','9'),
            (3,'laila', 'admin', '19','laial@gamil.com', '678552','patna','4'),
             (5,'rahul', 'hd', '18','rahul@gamil.com', '655898','delhi','2');
    
    
    select * from  clinet;
    
    create table employee(
    id integer primary key,
    fname varchar(245),
    lname varchar(245),
    age varchar(2),
    emailid varchar(20),
    phoneno varchar (12),
    city varchar (12)
    );
    
    insert into employee
    values(1,'aman', 'proto', '32','aman@gamil.com', '820505','jaipur'),
            (2,'yaga', 'narayan', '25','yaga@gamil.com', '892545','palam '),
            (4,'rahul', 'bd', '22','rahul@gamil.com', '985658','kkr'),
            (3,'jatin', 'hemit', '31','jatin@gamil.com', '898558','raipur'),
             (5,'pk', 'pandey', '51','pk@gamil.com', '695859','kolkatta');
    
    select * from employee;
    
    
    create table project(
    id integer primary key,
    empid varchar(245),
    name  varchar(12),
    startdate varchar(245),
    clinetid varchar(12)
    );
    
    insert into project
    values   (1,'1','m', '2021-05-20', '1'),
             (2,'2','j', '2021-08-18','8'),
             (4,'3','j', '2021-09-13', '9'),
             (3,'4','l', '2021-07-23','4'),
             (5,'5','r', '2021-02-22', '2');
             
             select * from project;
             
             -- now we here use all types of join --
             -- inner join--
             -- enlist all the employees id's , name along with the project allocated to them.
             
             select e.id, e.fname, e.lname, p.id, p.name from employee as e
             INNER JOIN project as p on e.id = p.empID;
             
             select * from employee as e
             INNER JOIN project as p on e.id = p.empID;
             
             -- featc out all the employe id's and their contact detail who have been working 
             -- from jaipur with the clients name working in hyderabad.
             
             select e.id, e.emailid, e.phoneno, c.first_name, c.last_name from employee as e
             inner join clinet as c on e.id = empid where e.city = 'jaipur' and c.city = 'hyderabad';   
             
             -- left join --
             -- fetch out each project allocated to each other employee--
             select * from employee as e
             left join project as p on e.id=p.empid;
             
             -- right join --
             -- list out all the projects along with the wmployee's name and their respective allocated email id--
             select p.id, p.name, e.fname, e.lname, e.emailid from employee as e
             right join project as p
             on e.id = p.empid;
             
             -- cross join --
             -- list out all the combinatation possible for the employees name and projects that can exits .
             
               select e.fname, e.lname, p.id, p.name from employee as e 
               cross join project as p;
               
               --   set operations --
               
           create table dept1(
           empid varchar(245),
           name varchar(25),
           role varchar(20)
           );
           
    insert into dept1
    values(1,'a','engineer'),
		(2,'b','salesman'),
        (3,'c','manager'),
        (4,'d','salesman'),
        (5,'e','engineer');
        
	select * from dept1;

create table dept2(
empid varchar(10),
name varchar(25),
role varchar(10)
);

insert into dept2
values (3,'c','manager'),
		(6,'f','marketing'),
        (7,'g','salesman');
        
select * from dept2;
-- some question upon it --
-- list out all the employees in the company --

select * from dept1
union
select * from dept2;

    -- list out all the employees in all departements who as salesman--
    select * from dept1 where role ='salesman'
     union 
	select * from dept2 where role ='salesman';
    
    -- list all the employess who work in the both deparment--
    -- uses here intersect--

    select * from dept1 inner join dept2 using (empid);
    --  or --
    select dept1.* from  dept1 inner join dept2 using (empid);
    
    -- list out all the employees working in dept1 but not in dept2--
    
     select dept1.* from dept1 left  join dept2 using (empid)
     where dept2.empid is null;
    
-- sub queries--
-- where clause same table --
-- employess wit age >30--

select * from employee where age in (select age from employee where age >30);    
    
    -- where clause in different tables --
    -- emp details working in more than 1 project --
    
    select * from employee where id in (
    select empid from project group by empid having count(empid) >1
    );
    
    -- single value subquery --
    -- emp details having age >avg(age)--
    
    SELECT * FROM EMPLOYEE WHERE AGE > (SELECT AVG(AGE)FROM EMPLOYEE);
    
    -- from clause--
    -- select max age persom whose first name start has 'a'--
    
    select max(age) from (select *from employee where fname like '%a%') as temp;   
    
    -- corelated queries--
    -- find 3rd oldest employee--
    
    select *
    from employee e1
    where 3 =(
    select count(e2.age)
    from employee e2
    where e2.age >= e1.age
    );
    
    -- view --
    select * from employee;
    
    -- creating a view --
    
    create VIEW custom_view as select fname, age from employee; -- here we create many tyoes of view to add like last name first name etc --
    
    -- viewing from a view --
    
    select * from custom_view;
    
    -- alter view--
    
 alter view custom_view as select fname, lname, age from employee;
 
 --- delete the view --
 
 drop view if exists custom_view;
    
    
    
    
    create table order_details (
    order_id integer primary key,
    delivery_date date,
    cust_id int,
    foreign  key (cust_id) references customer (id)
    );
    
    
    
 
 
 
 
 
 


