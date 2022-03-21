use student;

-- create table book(

create table student(
`ID` int primary key auto_increment,
`FirstName` varchar(50) ,
`LastName` varchar(50),
`Email` varchar(50)
);

insert into `student`(FirstName,LastName,Email) values("Harshit","Choudhary",'Harshit@greatlearning.in');
insert into `student`(FirstName,LastName,Email) values("Ankit","Garg",'Ankit@greatlearning.in');
insert into `student`(FirstName,LastName,Email) values("Monica","Sharma",'Monica@greatlearning.in');
insert into `student`(FirstName,LastName,Email) values("Bhavya","Shetty",'Bhavya@greatlearning.in');

select * from customer;
