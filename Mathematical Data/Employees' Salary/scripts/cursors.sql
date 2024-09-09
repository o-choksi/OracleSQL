DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, first_name, salary FROM employees;
    v_emp_id employees.emp_id%TYPE;
    v_first_name employees.first_name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_id, v_first_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ' | Name: ' || v_first_name || ' | Salary: ' || v_salary);
    END LOOP;
    CLOSE emp_cursor;
END;
/
