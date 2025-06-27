CREATE OR REPLACE TRIGGER log_salary_update
BEFORE UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_log(emp_id, old_salary, new_salary)
    VALUES(:OLD.id, :OLD.salary, :NEW.salary);
END;
/