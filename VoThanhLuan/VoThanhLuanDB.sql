create table UserAccount(
ID int IDENTITY(1,1) primary key,
UserName varchar(50) not null,
Password varchar(50) not null,
Status varchar(50) not null
)

create table Category(
CategoryID varchar(50) primary key,
Name nvarchar(50) not null,
Description nvarchar(50) null,
)

create table Product(
ID int IDENTITY(1,1) primary key,
Name nvarchar(50) not null,
UnitCost decimal(15,0) not null,
Quantity int not null,
Image varchar(50) null,
Description nvarchar(200) null,
Status varchar(50) null,
CategoryID varchar(50) not null,
constraint fk_Product_Type foreign key (CategoryID) references Category(CategoryID)
)

INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'luan', '827ccb0eea8a706c4c34a16891f84e7b', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'khoa', '827ccb0eea8a706c4c34a16891f84e7b', 'Blocked')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'xuyen', '827ccb0eea8a706c4c34a16891f84e7b', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'anh', '827ccb0eea8a706c4c34a16891f84e7b', 'Blocked')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'mai', '827ccb0eea8a706c4c34a16891f84e7b', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'thao', '827ccb0eea8a706c4c34a16891f84e7b', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'tuan', '827ccb0eea8a706c4c34a16891f84e7b', 'Blocked')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'hung', '827ccb0eea8a706c4c34a16891f84e7b', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'trang', '827ccb0eea8a706c4c34a16891f84e7b', 'Activate')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'van', '827ccb0eea8a706c4c34a16891f84e7b', 'Blocked')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'khanh', '827ccb0eea8a706c4c34a16891f84e7b', 'Activated')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'toan', '827ccb0eea8a706c4c34a16891f84e7b', 'Blocked')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'hung', '827ccb0eea8a706c4c34a16891f84e7b', 'Activated')
INSERT INTO UserAccount (UserName, Password, Status) VALUES ( 'quy', '827ccb0eea8a706c4c34a16891f84e7b', 'Blocked')

INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE001','Adidas','Addidas sport shoes')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE002','Nike','Nike sport shoes')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE003','Puma','Puma clothes')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE004','Louis Vuitton','Louis Vuitton clothes')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE005','Burberry','Burberry hats')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE006','Gucci','Gucci hats')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE007','Stussy','Stussy clothes')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE008','Balenciaga','Balenciaga shoes')
INSERT INTO Category (CategoryID,Name,Description) VALUES ('CATE009','NY','NY hats')

INSERT INTO Product (Name, UnitCost, Quantity,Image,Description,Status,CategoryID) VALUES 
	( N'Dép Adilette Comfort', 800000, 73,'/Image/sp1.jpg', N'Dép Adidas Adilette chất lượng cao','Available','CATE001'),
	( N'Giày Nike Air Force', 1550000, 17,'/Image/sp2.jpg', N'Giày thể thao Nike Air Force','Available','CATE002'),
	( N'Giày Adidas UltraBoost', 1600000, 82,'/Image/sp3.jpg', N'Giày thể thao Adidas Ultraboost','Available','CATE001'),
	( N'Giày Nike Air G-Dragon', 1440000, 107,'/Image/sp4.jpg', N'Giày thể thao Nike Air G-Dragon','Available','CATE002'),
	( N'Áo thun Puma Active', 300000, 92,'/Image/sp5.jpg', N'Áo thun mùa hè puma','Available','CATE003'),
	( N'Áo phông lưới LV Europe', 450000, 0,'/Image/sp6.jpg', N'Áo phông lưới mùa hè Louis Vuitton','Out of stock','CATE004'),
	( N'Áo thun nam Puma Iconic', 350000, 19,'/Image/sp7.jpg', N'Áo thun nam Puma 100% cotton','Available','CATE003'),
	( N'Áo LV phản quang bảy màu', 970000, 12,'/Image/sp8.jpg', N'Áo phản quang Louis Vuitton bảy màu','Available','CATE004'),
	( N'Mũ Burberry Heavy Cotton', 1450000, 0,'/Image/sp9.jpg', N'Mũ lưỡi trai Burberry Heavy Cotton','Out of stock','CATE007'),
	( N'Mũ lưỡi trai Gucci Beige', 940000, 7,'/Image/sp10.jpg', N'Mũ lưỡi trai Gucci độc đáo','Out of stock', 'CATE006'),
	( N'Mũ lưỡi trai Burberry', 570000, 5,'/Image/sp11.jpg', N'Mũ Lưỡi trai Burberry Fashion','Available','CATE005'),
	( N'Mũ bóng chày Addidas', 450000, 20,'/Image/sp12.jpg', N'Mũ bóng chày Adidas thể thao','Available','CATE001');
