CREATE TABLE employees(
	emp_no INT NOT NULL,
	PRIMARY KEY(emp_no),
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id) 
);

SELECT * FROM titles;

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

CREATE TABLE dept_employee(
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_employee;

CREATE TABLE dept_manager(
	dept_no VARCHAR, 
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager