-- SQL-Challenge
-- Create tables and import files

create table Employees (
	emp_no INTEGER NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM Employees;

create table Salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries;

create table Titles(
	emp_no INTEGER NOT NULL,
	title VARCHAR(20) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Titles;

create table Titles_2(
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR NOT NULL
);

SELECT * FROM Titles_2;

create table Departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	Primary Key (dept_no)
);

SELECT * FROM Departments;

create table Dept_Emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Dept_Emp;

create table Dept_Manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Dept_Manager