CREATE TABLE IF NOT EXISTS DEPARTMENT (
    EPLOYEE_ID TEXT PRIMARY KEY,
    NAME TEXT,
    DEPARTMENT_ID TEXT,
    MANAGER_ID TEXT,
    SALARY REAL
);

INSERT INTO DEPARTMENT (EPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY) VALUES
    ('100', 'STEVEN KING' ,'90','100',240000),
    ('101', 'NEENA KOCCHOR' ,'90','100',170000),
    ('102', 'LEX DEHAAN' ,'90','102',9000),
    ('103', 'BRUCE LEE' ,'60','103',4800),
    ('104', 'DIANA WILLS' ,'60','103',25000),
    ('105', 'VALL PATOR' ,'50','100',4200),
    ('1973', 'LUV HAMI' ,'60','102',5000),
    ('106', 'DAVID AUSTIN' ,'90','100',6000);

SELECT department_id AS "Department Code",COUNT(*) AS "No of Employees" FROM DEPARTMENT GROUP BY department_id;

SELECT department_id ,SUM(salary) FROM DEPARTMENT GROUP BY department_id;

SELECT department_id AS "Department Code", SUM(salary) AS "Total Salary" FROM DEPARTMENT WHERE MANAGER_ID = '103' GROUP BY department_id;

SELECT department_id , COUNT(*) AS "No. of Employees" FROM DEPARTMENT GROUP BY department_id HAVING COUNT(*) > 2;