use tester_20;
create table Customers (
	customer_name varchar(100),
    phone varchar(10),
    age int,
    adress varchar(500)
);
alter table Customers rename column adress to address;

create table Trainee (
	traineeID int primary key auto_increment,
    full_name varchar(100),
    birthDate date,
    Gender enum('male','female','unknown'),
    EtIq int,
    EtGmath int,
    EtEnglish int,
    TranningClass varchar(100),
    EvalationNot varchar(100),
    constraint CHECK_EtIq check( EtIq > 0 and EtIq < 20)
);

insert into Trainee(
	full_name, birthDate, Gender, EtIq, EtGmath, EtEnglish, TranningClass, EvalationNot
) 
values(
	'nguyen thi mai', '2006-03-15', 'female', 15, 15, 17, 'VTI', ''
);

select * from Trainee;
    