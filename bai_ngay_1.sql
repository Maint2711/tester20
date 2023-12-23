create database baitapngay_1;
use baitapngay_1;

create table Department (
DepartmentID int primary key auto_increment,
DepartmentName varchar(50)
);

create table Position (
PositionID int primary key auto_increment,
PositionName varchar(50)
);

create table Accounts (
AccountID int primary key auto_increment,
Email varchar(50),
Username varchar(50),
FullName varchar(50),
DepartmentID int,
foreign key  (DepartmentID) 
references Department(DepartmentID),
PositionID int,
foreign key (PositionID)
references baitapngay_1.Position(PositionID),
CreateDate date
);

create table GroupTb (
GroupID int primary key auto_increment,
GroupName varchar(50),
CreatorID varchar(50),
CreateDate date
);

alter table GroupTb modify column CreatorID int;
alter table GroupTb add foreign key (CreatorID) references Accounts(AccountId);

create table GroupAccount (
GroupID int,
foreign key (GroupID)
references GroupTb(GroupID),
AccountID int,
foreign key (AccountID)
references Accounts(AccountID),
JoinDate date
);

create table TypeQuestion (
TypeID int primary key auto_increment,
TypeName varchar(50)
);

create table CategoryQuestion (
 CategoryID int primary key auto_increment,
 CategoryName varchar(50)
);

create table Question (
QuestionID int primary key auto_increment,
Content varchar(500),
CategoryID int,
foreign key (CategoryID) 
references CategoryQuestion(CategoryID),
TypeID int,
foreign key (TypeID)
references TypeQuestion(TypeID),
CreatorID int,
foreign key (CreatorID)
references Accounts(AccountID),
CreateDate date
);

create table Answer (
AnswerID int primary key auto_increment,
Content text(500),
QuestionID int,
foreign key (QuestionID)
references Question(QuestionID),
isCorrect boolean
);

create table Exam (
ExamID int primary key auto_increment,
Code varchar(10),
Title varchar(100),
CategoryID int,
foreign key (CategoryID) 
references CategoryQuestion(CategoryID),
Duration int,
CreatorID int,
foreign key (CreatorID)
references Accounts(AccountID),
CreateDate date
);

create table ExamQuestion (
ExamID int,
foreign key (ExamID)
references Exam(ExamID),
QuestionID int,
foreign key (QuestionID)
references Question(QuestionID)
);

