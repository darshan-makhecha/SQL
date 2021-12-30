	--inner join 
	-- staff id		details experoence		data address
select staff.empId, details.Experience, data.Address from ((dbo.staff
	inner join dbo.details on dbo.staff.empId = dbo.details.Id)
	inner join dbo.data on dbo.staff.empId = dbo.data.Id);
 -- right join --details id		numeric nm
select details.Id,Numeriuc.nm from dbo.details left join dbo.Numeriuc on dbo.details.Id = dbo.Numeriuc.id;
	--left join
	---numeric nm		details salary
select Numeriuc.nm,details.Salary from dbo.Numeriuc right join dbo.details on dbo.Numeriuc.id = dbo.details.Id;

		--union
select empid from dbo.staff  union select address from dbo.data;  
select empid from dbo.staff  union all select address from dbo.data;
select name , city from dbo.student where city ='rajkot' union 
	select id,Address from dbo.data where Address='rajkot';

--select 'staff'	as type, empid,empName , salary from dbo.staff union select 'details' as type, id, salary from dbo.details;
select count(empId),subject from dbo.staff group by  subject;




