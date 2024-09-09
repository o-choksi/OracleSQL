CREATE OR REPLACE PROCEDURE calculate_bonus (p_emp_id IN NUMBER, p_bonus OUT NUMBER) IS
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = p_emp_id;

    IF v_salary > 50000 THEN
        p_bonus := v_salary * 0.10;
    ELSE
        p_bonus := v_salary * 0.05;
    END IF;
END;
/
