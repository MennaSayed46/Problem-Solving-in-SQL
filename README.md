> 💡 This repo contains solutions written in **T-SQL** (Transact-SQL).
# SQL Queries Practice – MyCompany & ITI Databases

This repository includes SQL exercises based on two sample databases: **MyCompany** and **ITI**. The queries cover various SQL operations including SELECT, JOIN, DML, DDL, Aggregations, and Real-World Scenarios.

---

## 📘 Part 01 – MyCompany Database

1. Display all the employees Data.  
2. Display the employee First name, last name, Salary and Department number.  
3. Display all the projects names, locations and the department which is responsible for it.  
4. Display each employee full name and his annual commission in an `ANNUAL COMM` column (10% of annual salary).  
5. Display the employees Id, name who earns more than 1000 LE monthly.  
6. Display the employees Id, name who earns more than 10000 LE annually.  
7. Display the names and salaries of the female employees.  
8. Display each department id, name which is managed by a manager with id equals 968574.  
9. Display the ids, names and locations of the projects which are controlled with department 10.  

---

## 📗 Part 02 – ITI Database

1. Get all instructors names without repetition.  
2. Display instructor Name and Department Name (show all instructors even if they are not attached to any department).  
3. Display student full name and the name of the course he is taking (only courses with a grade).  
4. Select student first name and the data of his supervisor.  
5. Display student with the following format:  


### 🎁 Bonus
- `SELECT @@VERSION`  
- `SELECT @@SERVERNAME`  
**→ Explain what is the meaning of @@AnyExpression.**

---

## 📙 Part 03 – MyCompany Database

1. Display the Department id, name and id and the name of its manager.  
2. Display the name of the departments and the name of the projects under its control.  
3. Display the full data about all the dependents associated with the name of the employee they depend on.  
4. Display the Id, name, and location of the projects in Cairo or Alex city.  
5. Display the projects (full data) with a name starting with "a".  
6. Display all employees in department 30 whose salary is from 1000 to 2000 LE monthly.  
7. Retrieve the names of all employees in department 10 who work >= 10 hours/week on the "AL Rabwah" project.  
8. Find the names of the employees who were directly supervised by Kamel Mohamed.  
9. Display All Data of the managers.  
10. Retrieve names of all employees and the names of the projects they are working on, sorted by project name.  
11. For each project located in Cairo City, find the project number, the controlling department name, the department manager’s last name, address, and birthdate.  
12. Display all employees' data and the data of their dependents even if they have no dependents.

---

## 📕 Part 04 – MyCompany DB

### 🔍 DQL
1. Retrieve a list of employees and the projects they are working on ordered by department, then alphabetically by last name, first name.  
2. Update all salaries of employees working on project 'Al Rabwah' by 30%.

### ✍️ DML
1. Insert a new department "DEPT IT", with id = 100, manager SSN = 112233, start date = '1-11-2006'.  
2. Department Manager Update:
   - a. Update Mrs. Oha Mohamed (SSN=968574) to manage department 100.  
   - b. Update your record (SSN=102672) to be department 20 manager.  
   - c. Employee number 102660 will be supervised by you (SSN=102672).  
3.3.	Unfortunately, the company ended the contract with Mr. Kamel Mohamed (SSN=223344) so try to delete him from your database in case you
      know that you will be temporarily in his position.
      Hint: (Check if Mr. Kamel has dependents, works as a department manager, supervises any employees or works in any projects and handles these cases).

---

## 📓 Part 05 – ITI DB

1. Retrieve the number of students who have a value in their age.  
2. Display student data with this format:  (Student Id , Student Full Name,Department Name)
3. Select instructor name and his salary, but if there is no salary display value ‘0000’ . “use one of Null Function” 
4. Display max and min salary for instructors.  
5. Select the average salary for instructors.
