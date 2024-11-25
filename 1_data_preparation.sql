create table Products (
    ProductID int primary key,
    ProductName Varchar(50),
    Category varchar(50),
    Price float
)

copy Products(ProductID, ProductName, Category, Price)
from 'E:\products.csv'
Delimiter ','
CSV Header;

select * from Products
	
create table salespersons (
    SalespersonID int primary key,
    SalespersonName Varchar(50),
    Region Varchar(50)
)

copy salespersons(SalespersonID, SalespersonName, Region)
from 'E:\salespersons.csv'
Delimiter ','
CSV Header;

select * from salespersons 
	
create table Sales (
    SaleID int primary key,
    ProductID int,
    QuantitySold int,
    SaleDate date,
    SalespersonID int
 )

copy salespersons(SalespersonID, SalespersonName, Region)
from 'E:\sales.csv'
Delimiter ','
CSV Header;

select * from sales






