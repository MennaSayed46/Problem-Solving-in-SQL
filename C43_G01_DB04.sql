

----------------------------------------------part01----------------------------------------------
use MyCompany
--p1
select *
from Employee

--p2
select Fname as 'First Name' , Lname as 'Last Name' ,Salary as 'salary' ,Dno as 'Department Number'
from Employee

--p3
select Pname as 'Project Name' , Plocation as 'Project Location' ,Dnum as 'Department Number'
from Project

--p4
select CONCAT(Fname,' ',Lname) as 'Full Name' , Salary*12*0.1 as 'Annual Commission'
from Employee

--P5
select SSN as 'id' ,CONCAT (Fname ,' ' ,Lname) as 'Full Name'
from Employee
where Salary >1000


--p6
select SSN as 'id',CONCAT(Fname , ' ' , Lname) as 'Full Name'
from Employee
where (salary*12*1.1)>10000


--p7
select CONCAT(Fname ,' ' ,Lname) as 'Full Name' ,salary as 'Monthly Salary'
from Employee
where Sex='f'


--p8
select Dnum as 'DeptId' ,Dname as 'DeptName' 
from Departments
where MGRSSN=968574


--p9
select Pnumber as 'Project Id' ,Pname as 'Project Name',Plocation as 'Project Location'
from Project
where Dnum=10



----------------------------------------------part02----------------------------------------------

use ITI

--p01
select distinct Ins_Name
from Instructor

--p02
select Ins_Name,Dept_Name
from Instructor left outer join Department
on Instructor.Dept_Id=Department.Dept_Id

--p03
select CONCAT(St_Fname,' ' ,St_Lname) as 'Full Name'  ,Crs_Name
from Student inner join Stud_Course
on Student.St_Id=Stud_Course.St_Id
inner join Course
on Course.Crs_Id=Stud_Course.Crs_Id
where grade is not null

--p04
select St_Fname ,Instructor.*
from Student inner join Instructor
on Student.St_super=Instructor.Ins_Id

--p05
select St_Id as 'Student Id' , CONCAT(St_Fname,' ' ,St_Lname) as 'Student Full Name' ,Dept_Name as 'Department Name'
from Student inner join Department
on Student.Dept_Id=Department.Dept_Id

--Bounus
select @@version --it displays the version of Microsoft SQL Server you installed
select @@SERVERNAME --it displays the name of server (name of your device)

--@@ it expresses the global function (Built In Functions)  



----------------------------------------------part03----------------------------------------------
use MyCompany
--p01
select Dnum as 'deptID' ,Dname as 'deptName' ,SSN ,CONCAT(Fname ,' ' ,Lname) as 'Full Name'
from Departments D inner join Employee E
on d.MGRSSN=E.SSN

--p02
select d.Dname as 'deptName' , p.Pname as 'projectName'
from Departments D inner join Project P
on d.Dnum =p.Dnum

--p03
select D.* ,CONCAT(E.Fname ,' ' ,E.Lname) as 'Full name'
from Dependent D inner join Employee E
on D.ESSN=E.SSN

--p04
select Pnumber,Pname,Plocation
from Project
where Plocation in ('cairo' , 'alex') 

--p05
select *
from Project
where Pname like 'a%'

--p06
select CONCAT(Fname,' ' ,Lname) as 'full name' ,Salary
from Employee
where Dno=30 and Salary between 1000 and 2000

--p07
select distinct concat(E.Fname ,' ' ,E.Lname) as 'Full Name'
from Employee E inner join Works_for W
on E.SSN=W.ESSn
where E.Dno=10

--p08
select CONCAT(Fname,' ' ,Lname) as 'full name'
from Employee
where Superssn=223344

--p09
select distinct E.*
from Employee E inner join Employee M
on M.Superssn=E.SSN

--p10
select CONCAT(Fname,' ' ,Lname) as 'full name' ,Pname
from Employee inner join Project
on Employee.Dno =Project.Dnum
order by Pname

--p11
select Pnumber ,Dname
from Project inner join Departments
on Project.Dnum=Departments.Dnum
where City in('cairo')

--p12
select *
from Employee left outer join Dependent
on Employee.SSN=Dependent.ESSN



----------------------------------------------part04----------------------------------------------
use MyCompany
----------------------DQL----------------------
--p01
select Fname,Lname ,Pname ,Dname
from Employee inner join Works_for
on Employee.SSN=Works_for.ESSn
inner join Project
on Project.Pnumber=Works_for.Pno
inner join Departments
on Departments.Dnum=Employee.Dno
order by Dname ,Lname , Fname

--p02
update Employee
set Salary*=1.3
from Employee E inner join Works_for W
on W.ESSn=E.SSN
inner join Project P
on p.Pnumber=W.Pno
where Pname ='Al Rabwah'

----------------------DML----------------------

--P01
insert into Departments
values('DEPT IT' ,100,112233,'1-11-2006')

--p02
insert into Employee
values('Menna' ,'Sayed' ,102672,'06-04-2005' ,'269 El-Haram st. Giza','F',35000,null,20)


--p02.a
update Departments
set MGRSSN=968574
where Dnum=100

--p02.b
update Departments
set MGRSSN=102672
where Dnum=20

--p02.c
update Employee
set Superssn=102672
where SSN=102660

--p03

delete from Dependent
where ESSN=223344

update Works_for
set ESSn=102672
where ESSn=223344

update Departments
set MGRSSN=102672
where MGRSSN=223344

update Employee
set Superssn=102672
where Superssn=223344

delete from Employee
where SSN=223344

----------------------------------------------part05----------------------------------------------
use ITI
--p01
select COUNT(St_Age) as 'Count of students'
from Student
where St_Age is not null

--p02
select ISNULL(St_Id,'No Id') as 'Student Id' , ISNULL(CONCAT(St_Fname,' ' ,St_Lname) ,'No Name') as 'Student Full Name' ,ISNULL(Dept_Name,'No Department Name') as 'Department Name'
from Student inner join Department
on Student.Dept_Id=Department.Dept_Id

--p03
select Ins_Name ,coalesce(Salary,'0000')
from Instructor

--p04
select MAX(Salary) as 'Max Salary' , MIN(Salary) as 'Min Salary'
from Instructor

--p05
select AVG(Salary) as 'Average Salary'
from Instructor