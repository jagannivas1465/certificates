CREATE OR REPLACE PROCEDURE greet_user(name IN VARCHAR2) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, ' || name);
END;
/

DECLARE
    CURSOR emp_cursor IS
        SELECT employee_id, name FROM employees;
    emp_record emp_cursor%ROWTYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.employee_id || ', Name: ' || emp_record.name);
    END LOOP;
    CLOSE emp_cursor;
END;
