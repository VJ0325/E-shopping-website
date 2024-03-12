

drop table tblUserMaster

create table tblUserMaster
(
UID int identity(1,1) primary key,
Name nvarchar(50),
Surname nvarchar(50),
Address nvarchar(250),
City nvarchar(50),
Pincode nvarchar(10),
Mobile nvarchar(20),
Email nvarchar(50),
Password nvarchar(50),
Gender nvarchar(50),
EntryDate datetime


)



select*from tblUserMaster