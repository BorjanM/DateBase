alter table dbo.Products
add constraint
DF_Product_Price
default 1 for [Price]


alter table dbo.Products
with check
add constraint
check_productprice
check (Price > 2 * Cost) 


alter table dbo.Products 
with check
add constraint unique_productname
unique ([Name])
