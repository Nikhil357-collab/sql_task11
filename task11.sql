use world;
#Identify slow-running queries (large dataset)
SELECT * 
FROM vw_employee_department
WHERE emp_id = 101;
#Execute query WITHOUT index & note execution plan
EXPLAIN SELECT * FROM vw_employee_department WHERE emp_id = 103;

#Create index on frequently searched column
CREATE INDEX idx_emp_id 
ON  employees(emp_id);

#Re-run query AFTER index
SELECT * 
FROM vw_employee_department
WHERE emp_id = 102;

#Compare execution plan using EXPLAIN
EXPLAIN SELECT * FROM vw_employee_department WHERE emp_id = 103;

-- Query where index is not helpful
SELECT * FROM vw_employee_department;
