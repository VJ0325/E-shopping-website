

select * from AdminMst;

Insert into AdminMst (Username,Password) values(@Username,@Password)
select Username,Password from AdminMst where Username=@Username AND Password=@Password

create table CateMst
(
CID int identity(1,1)primary key,
CName nvarchar(50)

)
insert into CateMst(CName)values('@CName')
select * from CateMst


-----Item tabel

create table ItemMst
(
IID int identity(1,1)primary key,
IName nvarchar(250),
Detail nvarchar(500),
Price float,
Image nvarchar(250),
Quantity int,
AvailableQnt int,
StockQnt int,
CName nvarchar(250),
EntryDate datetime,
Image1 nvarchar(250),
Image2 nvarchar(250),
Size int
)

select*from ItemMst
Select distinct IID,IName from ItemMst

