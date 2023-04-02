create database TODOlist



create table category
(id int identity(1,1) not null primary key, 
name_of_category nvarchar(50))


create table listoftasks
(id int identity(1,1) not null primary key, 
name_of_list nvarchar(50),
category_id int not null foreign key (category_id) references dbo.category(id) on delete cascade on update no action)


create table tasks
(id int identity(1,1) not null primary key,
name_of_task nvarchar(50),
list_of_tasks_id int not null foreign key (list_of_tasks_id) references dbo.listoftasks(id) on delete cascade on update no action,
deadline_date date,
completion_percent int  constraint completion_percent_format check(completion_percent <=100 AND completion_percent >=0))


insert into category Values
('Monday'),('SE studying')

insert into listoftasks Values
('Clean home',1),('to pet animals',1),('Clean setup',1),
('C#',2),('PHP',2),('SQL',2),('MongoDB',2),('JavaScript',2),('Html+css+bootstrap',2)

insert into tasks values
('Learn language synax',4,'2022-01-01',100),
('Learn ASP.NET framework',4,'2023-05-31',30),
('Learn how to use actions and delegates',4,'2022-09-20',100),
('Learn language synax',5,'2023-04-06',60),
('Develop skills',6,'2022-06-03',50),
('Learn language synax',7,'2023-09-21',0),
('no frontend pls',8,'2022-01-01',100),
('Learn how to use those',9,'2021-05-31',100),
('clean sink',1,'2023-04-01',100),
('mop the froor',1,'2023-04-01',100),
('pet dog',2,'2023-04-02',100)



