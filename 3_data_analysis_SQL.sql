select * from Products
	
select * from salespersons 

select * from sales

--Total sales per product
	
select p.productid, p.productname, 
sum(s.quantitysold * p.price) as total_sales from sales s
join products p on s.productid = p.productid
group by p.productid, p.productname
order by total_sales desc

--Total sales by region
	
select a.region, sum(s.quantitysold * p.price) as total_sales
from sales s
join products p on s.productid = p.productid
join salespersons a on s.salespersonid = a.salespersonid
group by a.region
order by total_sales desc

--Average sales per salesperson

select m.salespersonname, m.salespersonid,  
avg(s.quantitysold * p.price) as average_sales
from sales s
join products p on s.productid = p.productid
join salespersons m on s.salespersonid = m.salespersonid
group by m.salespersonid, m.salespersonname
order by average_sales desc

