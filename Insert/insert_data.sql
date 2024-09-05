-- Insert into Department
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Department (Dept_ID, Dept_Name) 
        VALUES (i, 'Department ' || i);
    END LOOP;
END;
/

-- Insert into Employee
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Employee (Emp_ID, Emp_Name, Emp_Birthdate, Dept_ID) 
        VALUES (i, 'Employee ' || i, ADD_MONTHS(SYSDATE, -i * 12), MOD(i, 5) + 1);
    END LOOP;
END;
/

-- Insert into Project
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Project (Proj_ID, Proj_Name, Proj_Budget) 
        VALUES (i, 'Project ' || i, i * 10000);
    END LOOP;
END;
/

-- Insert into Assignment
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Assignment (Assign_ID, Emp_ID, Proj_ID, Assignment_Date) 
        VALUES (i, i, MOD(i, 50) + 1, SYSDATE - i * 10);
    END LOOP;
END;
/
