--Data Analysis

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM employees
INNER JOIN salaries ON
Employees.emp_no = Salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.emp_no, 
	employees.first_name, 
	employees.last_name, 
	employees.hire_date 
from Employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Dept_Manager.dept_no,
	Departments.dept_name,
	Dept_Manager.emp_no,
	Employees.last_name,
	Employees.first_name
FROM Dept_Manager
INNER JOIN Departments ON
Dept_Manager.dept_no =Departments.dept_no
INNER JOIN Employees ON
Dept_Manager.emp_no = Employees.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
FROM Employees 
INNER JOIN Dept_Manager ON
Employees.emp_no = Dept_Manager.emp_no
INNER JOIN Departments ON
Dept_Manager.dept_no = Departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT Employees.first_name,
	Employees.last_name,
	Employees.gender
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
FROM Employees
JOIN Dept_Emp ON
Employees.emp_no = Dept_Emp.emp_no
INNER JOIN Departments ON
Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SElECT Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
FROM Employees
JOIN Dept_Emp ON
Employees.emp_no = Dept_Emp.emp_no
INNER JOIN Departments ON
Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales' or
	dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT Employees.last_name, COUNT(*) AS Frequency
	FROM Employees
	GROUP BY last_name
	ORDER BY count(last_name) desc;