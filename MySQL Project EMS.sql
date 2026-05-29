-- SECTION 1: CREATE DATABASE & TABLES
CREATE DATABASE EmployeeManagementSystem;
USE EmployeeManagementSystem;

-- Table 1: JobDepartment
-- Stores each job role, which department it belongs to, and salary range
CREATE TABLE JobDepartment (
    Job_ID       INT PRIMARY KEY,
    jobdept      VARCHAR(50),
    name         VARCHAR(100),
    description  TEXT,
    salaryrange  VARCHAR(50)
);

-- Table 2: SalaryBonus
-- Stores monthly salary, annual salary, and bonus for each job role
CREATE TABLE SalaryBonus (
    salary_ID  INT PRIMARY KEY,
    Job_ID     INT,
    amount     DECIMAL(10,2),   -- Monthly salary
    annual     DECIMAL(10,2),   -- Yearly salary
    bonus      DECIMAL(10,2),   -- Bonus amount
    CONSTRAINT fk_salary_job FOREIGN KEY (Job_ID)
        REFERENCES JobDepartment(Job_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table 3: Employee
-- Stores personal and login details of every employee
CREATE TABLE Employee (
    emp_ID       INT PRIMARY KEY,
    firstname    VARCHAR(50),
    lastname     VARCHAR(50),
    gender       VARCHAR(10),
    age          INT,
    contact_add  VARCHAR(100),
    emp_email    VARCHAR(100) UNIQUE,   -- No two employees share the same email
    emp_pass     VARCHAR(50),
    Job_ID       INT,
    CONSTRAINT fk_employee_job FOREIGN KEY (Job_ID)
        REFERENCES JobDepartment(Job_ID)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table 4: Qualification
-- Tracks qualifications/certifications for each employee
CREATE TABLE Qualification (
    QualID        INT PRIMARY KEY,
    Emp_ID        INT,
    Position      VARCHAR(50),
    Requirements  VARCHAR(255),
    Date_In       DATE,
    CONSTRAINT fk_qualification_emp FOREIGN KEY (Emp_ID)
        REFERENCES Employee(emp_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);


 
-- Table 5: Leaves
-- Tracks every leave taken by employees
CREATE TABLE Leaves (
    leave_ID  INT PRIMARY KEY,
    emp_ID    INT,
    date      DATE,
    reason    TEXT,
    CONSTRAINT fk_leave_emp FOREIGN KEY (emp_ID)
        REFERENCES Employee(emp_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table 6: Payroll
-- Central table linking employee, job, salary, and leave for payment calculation
CREATE TABLE Payroll (
    payroll_ID   INT PRIMARY KEY,
    emp_ID       INT,
    job_ID       INT,
    salary_ID    INT,
    leave_ID     INT,
    date         DATE,
    report       TEXT,
    total_amount DECIMAL(10,2),
    CONSTRAINT fk_payroll_emp    FOREIGN KEY (emp_ID)    REFERENCES Employee(emp_ID)         ON DELETE CASCADE   ON UPDATE CASCADE,
    CONSTRAINT fk_payroll_job    FOREIGN KEY (job_ID)    REFERENCES JobDepartment(Job_ID)     ON DELETE CASCADE   ON UPDATE CASCADE,
    CONSTRAINT fk_payroll_salary FOREIGN KEY (salary_ID) REFERENCES SalaryBonus(salary_ID)   ON DELETE CASCADE   ON UPDATE CASCADE,
    CONSTRAINT fk_payroll_leave  FOREIGN KEY (leave_ID)  REFERENCES Leaves(leave_ID)          ON DELETE SET NULL  ON UPDATE CASCADE
);


-- ============================================================
-- SECTION 3: ANALYSIS QUESTIONS
-- ============================================================

-- ─────────────────────────────────────────────
-- PART A: EMPLOYEE INSIGHTS
-- ─────────────────────────────────────────────

-- Q1. How many unique employees are in the system?
SELECT COUNT(DISTINCT emp_ID) AS total_employees
FROM Employee;

-- Q2. Which departments have the highest number of employees?
SELECT
    jd.jobdept                  AS department,
    COUNT(e.emp_ID)             AS employee_count
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID = jd.Job_ID
GROUP BY jd.jobdept
ORDER BY employee_count DESC;

-- Q3. What is the average salary per department?
SELECT
    jd.jobdept                        AS department,
    ROUND(AVG(sb.amount), 2)          AS avg_monthly_salary
FROM Employee e
JOIN JobDepartment jd  ON e.Job_ID     = jd.Job_ID
JOIN SalaryBonus   sb  ON jd.Job_ID    = sb.Job_ID
GROUP BY jd.jobdept
ORDER BY avg_monthly_salary DESC;

-- Q4. Who are the top 5 highest-paid employees?
SELECT
    e.emp_ID,
    CONCAT(e.firstname, ' ', e.lastname)  AS full_name,
    jd.name                               AS job_title,
    jd.jobdept                            AS department,
    sb.amount                             AS monthly_salary
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID  = jd.Job_ID
JOIN SalaryBonus   sb ON jd.Job_ID = sb.Job_ID
ORDER BY sb.amount DESC
LIMIT 5;

-- Q5. What is the total salary expenditure across the company?
SELECT
    SUM(sb.amount)   AS total_monthly_expenditure,
    SUM(sb.annual)   AS total_annual_expenditure
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID  = jd.Job_ID
JOIN SalaryBonus   sb ON jd.Job_ID = sb.Job_ID;


-- ─────────────────────────────────────────────
-- PART B: JOB ROLE AND DEPARTMENT ANALYSIS
-- ─────────────────────────────────────────────

-- Q6. How many different job roles exist in each department?
SELECT
    jd.jobdept                        AS department,
    COUNT(DISTINCT jd.Job_ID)         AS number_of_roles
FROM JobDepartment jd
GROUP BY jd.jobdept
ORDER BY number_of_roles DESC;

-- Q7. What is the salary range per department?
SELECT
    jobdept      AS department,
    salaryrange  AS salary_range
FROM JobDepartment
ORDER BY jobdept;

-- Q8. Which job roles offer the highest salary?
SELECT
    jd.name        AS job_title,
    jd.jobdept     AS department,
    sb.amount      AS monthly_salary,
    sb.annual      AS annual_salary,
    sb.bonus       AS bonus
FROM JobDepartment jd
JOIN SalaryBonus sb ON jd.Job_ID = sb.Job_ID
ORDER BY sb.amount DESC
LIMIT 10;

-- Q9. Which departments have the highest total salary allocation?
SELECT
    jd.jobdept                       AS department,
    SUM(sb.amount)                   AS total_monthly_salary,
    SUM(sb.annual)                   AS total_annual_salary,
    SUM(sb.bonus)                    AS total_bonuses
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID  = jd.Job_ID
JOIN SalaryBonus   sb ON jd.Job_ID = sb.Job_ID
GROUP BY jd.jobdept
ORDER BY total_monthly_salary DESC;


-- ─────────────────────────────────────────────
-- PART C: QUALIFICATION AND SKILLS ANALYSIS
-- ─────────────────────────────────────────────

-- Q10. How many employees have at least one qualification listed?
SELECT COUNT(DISTINCT Emp_ID) AS employees_with_qualifications
FROM Qualification;

-- Q11. Which positions require the most qualifications?
SELECT
    Position,
    COUNT(*)  AS qualification_count
FROM Qualification
GROUP BY Position
ORDER BY qualification_count DESC
LIMIT 10;

-- Q12. Which employees have the highest number of qualifications?
SELECT
    CONCAT(e.firstname, ' ', e.lastname)  AS full_name,
    jd.name                               AS job_title,
    COUNT(q.QualID)                       AS total_qualifications
FROM Qualification q
JOIN Employee      e  ON q.Emp_ID  = e.emp_ID
JOIN JobDepartment jd ON e.Job_ID  = jd.Job_ID
GROUP BY e.emp_ID, full_name, job_title
ORDER BY total_qualifications DESC
LIMIT 10;


-- ─────────────────────────────────────────────
-- PART D: LEAVE AND ABSENCE PATTERNS
-- ─────────────────────────────────────────────

-- Q13. Which year had the most employees taking leaves?
SELECT
    YEAR(date)                     AS leave_year,
    COUNT(DISTINCT emp_ID)         AS employees_on_leave,
    COUNT(*)                       AS total_leaves_taken
FROM Leaves
GROUP BY leave_year
ORDER BY total_leaves_taken DESC;

-- Q14. What is the average number of leave days per department?
SELECT
    jd.jobdept                              AS department,
    ROUND(AVG(leave_count), 2)              AS avg_leaves_per_employee
FROM (
    SELECT emp_ID, COUNT(*) AS leave_count
    FROM Leaves
    GROUP BY emp_ID
) AS emp_leave_counts
JOIN Employee      e  ON emp_leave_counts.emp_ID = e.emp_ID
JOIN JobDepartment jd ON e.Job_ID = jd.Job_ID
GROUP BY jd.jobdept
ORDER BY avg_leaves_per_employee DESC;

-- Q15. Which employees have taken the most leaves?
SELECT
    CONCAT(e.firstname, ' ', e.lastname)  AS full_name,
    jd.jobdept                            AS department,
    COUNT(l.leave_ID)                     AS total_leaves
FROM Leaves l
JOIN Employee      e  ON l.emp_ID = e.emp_ID
JOIN JobDepartment jd ON e.Job_ID = jd.Job_ID
GROUP BY e.emp_ID, full_name, department
ORDER BY total_leaves DESC
LIMIT 10;

-- Q16. What is the total number of leave days taken company-wide?
SELECT COUNT(*) AS total_leave_days_company_wide
FROM Leaves;

-- Q17. How do leave days correlate with payroll amounts?
SELECT
    CONCAT(e.firstname, ' ', e.lastname)  AS full_name,
    COUNT(l.leave_ID)                     AS leaves_taken,
    p.total_amount                        AS payroll_amount
FROM Payroll p
JOIN Employee e ON p.emp_ID    = e.emp_ID
LEFT JOIN Leaves l ON l.emp_ID = e.emp_ID
GROUP BY e.emp_ID, full_name, p.total_amount
ORDER BY leaves_taken DESC;


-- ─────────────────────────────────────────────
-- PART E: PAYROLL AND COMPENSATION ANALYSIS
-- ─────────────────────────────────────────────

-- Q18. What is the total monthly payroll processed?
SELECT
    DATE_FORMAT(date, '%Y-%m')  AS payroll_month,
    SUM(total_amount)           AS total_payroll,
    COUNT(payroll_ID)           AS employees_paid
FROM Payroll
GROUP BY payroll_month
ORDER BY payroll_month;

-- Q19. What is the average bonus given per department?
SELECT
    jd.jobdept               AS department,
    ROUND(AVG(sb.bonus), 2)  AS avg_bonus
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID  = jd.Job_ID
JOIN SalaryBonus   sb ON jd.Job_ID = sb.Job_ID
GROUP BY jd.jobdept
ORDER BY avg_bonus DESC;

-- Q20. Which department receives the highest total bonuses?
SELECT
    jd.jobdept        AS department,
    SUM(sb.bonus)     AS total_bonuses
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID  = jd.Job_ID
JOIN SalaryBonus   sb ON jd.Job_ID = sb.Job_ID
GROUP BY jd.jobdept
ORDER BY total_bonuses DESC;

-- Q21. What is the average total_amount after considering leave deductions?
SELECT
    CASE
        WHEN p.leave_ID IS NOT NULL THEN 'Has Leave Record'
        ELSE 'No Leave Record'
    END                           AS leave_status,
    COUNT(*)                      AS employee_count,
    ROUND(AVG(p.total_amount), 2) AS avg_payroll_amount
FROM Payroll p
GROUP BY leave_status;



