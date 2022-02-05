select c.Name Category, p.Name Product, sum(o.Amount) TotalOrder
from Orders o
left join Categories c on c.Id = o.Id  
left join Products p on c.Id = p.CategoryId  
group by c.Name,p.Name 
order by TotalOrder desc


select c.Name Customer, ct.Name City, st.Name State, sum(o.Amount) TotalOrder
from Orders o
left join Customers c on c.Id = o.CustomerId
left join Cities ct on c.CityId = ct.Id
left join States st on st.Id = ct.StateId  
group by c.Name,ct.Name,st.Name
order by TotalOrder asc


select c.Name Customer, ct.Name City, cat.Name Category, p.Name Product, sum(o.Amount) TotalOrder
from Orders o
left join Customers c on c.Id = o.CustomerId
left join Cities ct on c.CityId = ct.Id	
left join Products p on p.Id = o.ProductId
left join Categories cat on cat.Id = p.CategoryId
group by c.Name, ct.Name, cat.Name,p.Name


select c.Name City, st.Name State, sum(o.Amount) TotalOrder
from Orders o
left join Cities c on o.Id = c.Id
left join States st on c.StateId = st.Id
group by c.Name,st.Name


		--Location summary
select st.name State, sum(o.Amount) TotalOrder
from Orders o
left join Customers c on c.Id = o.CustomerId
left join Cities ct on  ct.Id = c.CityId
left join States st on c.StateId = st.Id
group by st.name, ct.Id
order by TotalOrder desc

select top 10 c.Name Customer, ct.Name City, st.Name State, sum(o.Amount) TotalOrder
from Orders o
left join Customers c on c.Id = o.CustomerId
left join Cities ct on c.CityId = ct.Id
left join States st on st.Id = ct.StateId
group by c.Name, ct.Name,st.Name


select o.Ref OrderRef, o.date OrderDate, c.name Customer, ct.name City, p.name Product, o.Amount Amount
from Orders o
left join Customers c on c.Id = o.Id
left join Cities ct on ct.Id = c.CityId
left join Products p on p.Id = o.ProductId


select top 10 p.Name Product, sum(o.amount) TotalOrder
from Orders o
left join Products p on p.Id = o.ProductId
group by p.Name
