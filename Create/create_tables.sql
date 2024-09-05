-- Create Department Table
CREATE TABLE Department (
    Dept_ID PLS_INTEGER PRIMARY KEY,
    Dept_Name VARCHAR2(50) NOT NULL
);

-- Create Employee Table
CREATE TABLE Employee (
    Emp_ID PLS_INTEGER PRIMARY KEY,
    Emp_Name VARCHAR2(100) NOT NULL,
    Emp_Birthdate DATE NOT NULL,
    Dept_ID PLS_INTEGER,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

-- Create Project Table
CREATE TABLE Project (
    Proj_ID PLS_INTEGER PRIMARY KEY,
    Proj_Name VARCHAR2(100) NOT NULL,
    Proj_Budget NUMBER(12, 2) NOT NULL
);

-- Create Assignment Table
CREATE TABLE Assignment (
    Assign_ID PLS_INTEGER PRIMARY KEY,
    Emp_ID PLS_INTEGER,
    Proj_ID PLS_INTEGER,
    Assignment_Date DATE NOT NULL,
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    FOREIGN KEY (Proj_ID) REFERENCES Project(Proj_ID)
);
