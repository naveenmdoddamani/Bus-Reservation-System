drop table passenger cascade constraints;
drop table maintainance_dept cascade constraints;
drop table route cascade constraints;
drop table ticket cascade constraints;
drop table bus cascade constraints;
drop table employeelist cascade constraints;
drop table route_loc cascade constraints;
drop table travelby cascade constraints;
drop table have cascade constraints;

select * from passenger;
select * from maintainance_dept;
select * from route;
select * from ticket;
select * from bus;
select * from employeelist;
select * from route_loc;
select * from travelby;
select * from have;

create table passenger
(
pid int primary key,
name varchar2(20),
age int,
gender char
);

create table maintainance_dept
(
mno int primary key,
jobs int,
loggedbus int,
resolvedbus int
);

create table route
(
routeno int primary key,
source varchar2(20),
destination varchar2(20)
);

create table ticket
(
pnrno int primary key,
reservationtype varchar2(20),
bankinfo varchar2(20),
payment varchar2(10),
p_pid int references passenger(pid),
md_no int references maintainance_dept(mno)
);

create table bus
(
idno int primary key,
capacity int,
model varchar2(10),
arrivaltime int,
mdno int references maintainance_dept(mno),
r_no int references route(routeno)
);

create table employeelist
(
eid int primary key,
type varchar2(10),
ename varchar2(10)
);

create table route_loc
(
rno int references route(routeno),
loc varchar(20)
);

create table travelby
(
p_id int references passenger(pid),
id_no int references bus(idno),
primary key(p_id,id_no)
);

create table have
(
e_id int references employeelist(eid),
ino int references bus(idno),
primary key(e_id,ino)
);

insert into passenger values(1,'Ramu',26,'m');
insert into passenger values(2,'Kavita',37,'f');
insert into passenger values(3,'Dhanu',23,'m');
insert into passenger values(4,'Gopi',46,'m');
insert into passenger values(5,'Sandya',33,'f');
insert into passenger values(6,'Raksha',19,'f');
insert into passenger values(7,'Jaddu',26,'m');
insert into passenger values(8,'Ramu',29,'m');
insert into passenger values(9,'Rakul',22,'f');
insert into passenger values(10,'Swagat',18,'m');
insert into passenger values(11,'Sandya',17,'f');
insert into passenger values(12,'Gopi',23,'m');
insert into passenger values(13,'Rahul',55,'m');
insert into passenger values(14,'Meena',60,'f');
insert into passenger values(15,'Somu',61,'m');

insert into maintainance_dept values(1,13,12,5);
insert into maintainance_dept values(2,12,5,6);
insert into maintainance_dept values(3,10,4,3);
insert into maintainance_dept values(4,15,3,2);
insert into maintainance_dept values(5,20,8,6);
insert into maintainance_dept values(6,4,2,2);
insert into maintainance_dept values(7,8,3,5);
insert into maintainance_dept values(8,11,6,1);
insert into maintainance_dept values(9,8,3,2);
insert into maintainance_dept values(10,9,5,5);

insert into route values(1,'Hubballi','Bangalore');
insert into route values(2,'Bangalore','Belagavi');
insert into route values(3,'Mandya','Hubballi');
insert into route values(4,'Bagalkote','Hasana');
insert into route values(5,'Hasana','Vijayapura');
insert into route values(6,'Hospete','Bangalore');
insert into route values(7,'Bangalore','Bagalkote');
insert into route values(8,'Tumkur','Bangalore');
insert into route values(9,'Dharwad','Hubballi');
insert into route values(10,'Dandeli','Dharwad');

insert into ticket values(1001,'Online','SBI','Credit',3,10);
insert into ticket values(1002,'Mobile','Canara','Debit',2,7);
insert into ticket values(1003,'Counter','','Offline',1,8);
insert into ticket values(1004,'Online','HDFC','Online',9,4);
insert into ticket values(1005,'Online','HDFC','Credit',8,3);
insert into ticket values(1006,'Mobile','SBI','Credit',7,1);
insert into ticket values(1007,'Counter','','Offline',5,2);
insert into ticket values(1008,'Counter','','Offline',4,5);
insert into ticket values(1009,'Mobile','Canara','Debit',6,9);
insert into ticket values(1010,'Online','SBI','Debit',15,6);
insert into ticket values(1011,'Mobile','Canara','Debit',13,10);
insert into ticket values(1012,'Online','Vijaya','Online',11,2);
insert into ticket values(1013,'Counter','','Offline',12,1);
insert into ticket values(1014,'Counter','','Offline',14,7);
insert into ticket values(1015,'Counter','','Offline',10,8);

insert into bus values(11,54,'BS3',10,4,1);
insert into bus values(12,54,'BS4',8,3,3);
insert into bus values(13,54,'BS3',11,10,4);
insert into bus values(14,50,'BS3',12,9,5);
insert into bus values(15,54,'BS3',16,7,6);
insert into bus values(16,50,'BS4',17,8,9);
insert into bus values(17,54,'BS2',18,6,10);
insert into bus values(18,52,'BS2',7,5,2);
insert into bus values(19,54,'BS4',16,4,10);
insert into bus values(20,52,'BS3',15,2,7);
insert into bus values(21,54,'BS4',11,1,8);
insert into bus values(22,54,'BS4',10,9,9);
insert into bus values(23,52,'BS3',9,10,1);
insert into bus values(24,54,'BS4',17,9,5);
insert into bus values(25,50,'BS3',18,9,10);

insert into employeelist values(101,'Conductor','Bheem');
insert into employeelist values(102,'Driver','Raj');
insert into employeelist values(103,'Conductor','Appu');
insert into employeelist values(104,'Driver','Kiccha');
insert into employeelist values(105,'Driver','Sudeep');
insert into employeelist values(106,'Conductor','Appu');
insert into employeelist values(107,'Driver','Ajju');
insert into employeelist values(108,'Conductor','Praveen');
insert into employeelist values(109,'Conductor','Kamala');
insert into employeelist values(110,'Driver','Basu');
insert into employeelist values(111,'Conductor','Pavitra');
insert into employeelist values(112,'Driver','Prem');

insert into route_loc values(1,'Haveri');
insert into route_loc values(1,'Tumkur');
insert into route_loc values(2,'Hubballi');
insert into route_loc values(2,'Chitradurga');
insert into route_loc values(3,'Ranebennur');
insert into route_loc values(3,'Maddur');
insert into route_loc values(4,'Harihara');
insert into route_loc values(4,'Davangere');
insert into route_loc values(5,'Hospete');
insert into route_loc values(5,'Ilkal');
insert into route_loc values(6,'Hiriyur');
insert into route_loc values(6,'Sira');
insert into route_loc values(7,'Dobbaspet');
insert into route_loc values(8,'Kushtagi');
insert into route_loc values(8,'Aimangala');
insert into route_loc values(9,'Vidyagiri');
insert into route_loc values(9,'Kims');
insert into route_loc values(10,'Haliyal');
insert into route_loc values(10,'Saptapur');

insert into travelby values(1,15);
insert into travelby values(2,14);
insert into travelby values(3,15);
insert into travelby values(4,20);
insert into travelby values(5,25);
insert into travelby values(6,25);
insert into travelby values(7,19);
insert into travelby values(8,19);
insert into travelby values(9,19);
insert into travelby values(10,11);
insert into travelby values(11,14);
insert into travelby values(12,20);
insert into travelby values(13,11);
insert into travelby values(14,25);
insert into travelby values(15,25);

insert into have values(101,15);
insert into have values(102,15);
insert into have values(103,14);
insert into have values(104,14);
insert into have values(105,20);
insert into have values(106,20);
insert into have values(107,11);
insert into have values(108,11);
insert into have values(109,19);
insert into have values(110,19);
insert into have values(111,25);
insert into have values(112,25);

--(1.Retrive list of male passengers with pnr number)
SELECT name,pnrno
FROM passenger,ticket
WHERE gender='m' and p_pid=pid;

--(2.Retrive details of bus with model BS3 and maintained by department 9)
select idno,arrivaltime,capacity,model   
from bus,maintainance_dept
where mno=9 and model='BS3' and mdno=mno;

--(3.Retrive details of passenger along with reservation type where payment by did them is offline)
select pid,name,age,gender,reservationtype
from passenger,ticket
where payment like '%Off%' and p_pid=pid;

--(4.Retrive list of conductors working in KSRTC department)
select eid,ename
from employeelist,have
where type='Conductor';

--(5.Retrive name of passenger and details of ticket sold that maintained by department 1)
select name,pnrno,reservationtype,bankinfo,payment
from passenger,ticket
where p_pid=pid and md_no=1;

--(6.Retrive pid,name,age of passenger where tickets sold in range of 1001 to 1010)
SELECT pid,name,age
FROM passenger,ticket
WHERE pnrno BETWEEN 1001 AND 1010 and p_pid=pid;

--(7.Display count of buses which are BS3 model)
SELECT COUNT(idno)
FROM bus
WHERE model='BS3';

--(8.Display details of passenger where age is greater than 20 and name may end or start with 'Ra')
select *
from passenger
where age>20 and name like '%Ra%';

--(9.Display maximum age of a passenger in a current passenger list)
SELECT MAX(age)
FROM passenger;

--(10.Display ID number and capacity of a bus where model is BS3 and having capacity 50. Show result with respect to ascending order)
SELECT idno,capacity
FROM bus
where model='BS3' and capacity=50
ORDER BY arrivaltime;

--(11.Count of passengers travelling in bus ID number=25)
select count(*)
from passenger,travelby,bus
where p_id=pid and id_no=idno and id_no=25;

--(12.Display in berween locations present in route number 6)
select loc,source,destination
from route_loc,route
where rno=routeno and rno=6;

--(13.Display name of employees working in bus number 11)
select eid,ename,type
from employeelist,have,bus
where e_id=eid and ino=idno and ino=11;

--(14.Display maintanince dept number,id number and model of a bus which are controled by maintainance department with jobs at least 10)
select mno,idno,model
from maintainance_dept,bus
where mdno=mno and jobs>10;

--(15.Display name of passenger,pnr number who buys ticket by SBI account maintained by department number in descending order)
select name,pnrno,bankinfo,mno
from passenger,ticket,maintainance_dept
where p_pid=pid and md_no=mno and bankinfo='SBI'
order by md_no desc;

--(16.Display name,mode of payment,count where name may start or end with 'Ra')
SELECT name,payment,count(*)      
FROM passenger,ticket
WHERE name like '%Ra%' and p_pid=pid
group by name,payment;

--(17.Display id number of a bus,maintaninace dept no,count which arrives in a bus stand after 12 noon and goes in route no=10)
select idno,mdno,count(*)    
from bus,maintainance_dept,route
where mdno=mno and arrivaltime>12 and r_no=routeno and routeno=10
group by idno,mdno;

--(18.Retrive list of passengers with id and name going to travel in bus number 19)
SELECT p_id,name           
FROM travelby,passenger,bus
WHERE p_id=pid and id_no=idno and id_no=19;

--(19.Retrive employee id,bus id,name of employee consisting of 'ee')
select e_id,ino,ename
from have,employeelist,bus
where e_id=eid and ino=idno and ename like '%ee%';

--(20.Retrive name of passengers who sold ticket from maintainance dept having jobs 8)
SELECT name                      --5
FROM passenger
WHERE pid IN (SELECT p_pid
              FROM ticket
              WHERE md_no IN (SELECT jobs
                             FROM maintainance_dept
                             where jobs=8));

--(21.Retrive data of all passengers whose source is either Hubballi or destination is Bangalore)                             
select *
from passenger,travelby
where p_id=pid and id_no in ((select idno
                           from bus,route
                           where r_no=routeno and source='Hubballi')
                           union
                           (select idno
                           from bus,route
                           where r_no=routeno and destination='Bangalore')); 
                           
--(22.Retrive data of all buses whose destination is Hubballi)
select *
from bus
where r_no in (select routeno
               from route
               where  destination='Hubballi');
               
--(23.Retrive data of all passengers whose source is  Hospete and destination is Bangalore)
select *
from passenger,travelby
where p_id=pid and id_no in ((select idno
                           from bus,route
                           where r_no=routeno and source='Hospete')
                           intersect
                           (select idno
                           from bus,route
                           where r_no=routeno and destination='Bangalore')); 

--(24.Retrive data of all passengerss whose source is Bangalore but destination is not Bagalkote)
select *
from passenger,travelby
where p_id=pid and id_no in ((select idno
                           from bus,route
                           where r_no=routeno and source='Bangalore')
                           intersect
                           (select idno
                           from bus,route
                           where r_no=routeno and destination='Bagalkote')); 

--(25.Retrive data of all passengers whose destination is bangalore)
select *
from passenger,travelby
where p_id=pid and id_no in (select idno
                           from bus,route
                           where r_no=routeno and destination='Bangalore');
                           
--(26.Create a view to include pid,name. Retrive passenger information above age 30 by using view table)
create view passenger_view as  
select pid,name,age
from passenger
where age>30;
select *from passenger_view;

--(27.From view table retrive age in ascending order)
select name,age,pnrno
from passenger_view,ticket
where p_pid=pid
order by age;

--(28.Create a view using idno,model,mdno,rno from bus. Retrive created view to get bus with model=BS3 and going on route1)
create view bus_view as  
select idno,model,mdno,r_no
from bus;

select idno,model,mdno,r_no
from bus_view,route
where model='BS3' and r_no=routeno and r_no=1;

--(29.From created view retrive count of buses going in route number 10)
select count(*)
from bus_view
where r_no=10;

--(30.From created view retrive idno,model of buses where department number=9 and route number is 5)
select idno,model
from bus_view,maintainance_dept,route
where mdno=mno and r_no=routeno and mdno=9 and routeno=5;

commit;