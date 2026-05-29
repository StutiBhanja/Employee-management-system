-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: employeemanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_ID` int NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `contact_add` varchar(100) DEFAULT NULL,
  `emp_email` varchar(100) DEFAULT NULL,
  `emp_pass` varchar(50) DEFAULT NULL,
  `Job_ID` int DEFAULT NULL,
  PRIMARY KEY (`emp_ID`),
  UNIQUE KEY `emp_email` (`emp_email`),
  KEY `fk_employee_job` (`Job_ID`),
  CONSTRAINT `fk_employee_job` FOREIGN KEY (`Job_ID`) REFERENCES `jobdepartment` (`Job_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Doe','M',30,'123 Elm St, NY','john.doe@example.com','password123',1),(2,'Jane','Smith','F',28,'456 Maple Ave, CA','jane.smith@example.com','password123',2),(3,'Alice','Brown','F',35,'789 Oak St, TX','alice.brown@example.com','password123',3),(4,'Bob','Johnson','M',40,'101 Pine St, FL','bob.johnson@example.com','password123',4),(5,'Charlie','Williams','M',33,'202 Birch Rd, IL','charlie.williams@example.com','password123',5),(6,'Dave','Miller','M',29,'303 Cedar Blvd, NY','dave.miller@example.com','password123',6),(7,'Eve','Davis','F',25,'404 Maple Dr, TX','eve.davis@example.com','password123',7),(8,'Frank','Wilson','M',38,'505 Pine Ave, FL','frank.wilson@example.com','password123',8),(9,'Grace','Moore','F',45,'606 Oak Blvd, CA','grace.moore@example.com','password123',9),(10,'Harry','Taylor','M',50,'707 Elm Rd, NY','harry.taylor@example.com','password123',10),(11,'Irene','Anderson','F',32,'808 Maple St, FL','irene.anderson@example.com','password123',11),(12,'Jack','Thomas','M',34,'909 Pine Rd, TX','jack.thomas@example.com','password123',12),(13,'Karen','Jackson','F',30,'1010 Oak Dr, NY','karen.jackson@example.com','password123',13),(14,'Louis','White','M',27,'1111 Maple Blvd, FL','louis.white@example.com','password123',14),(15,'Maria','Harris','F',41,'1212 Cedar Ave, CA','maria.harris@example.com','password123',15),(16,'Nathan','Martin','M',26,'1313 Birch Rd, TX','nathan.martin@example.com','password123',16),(17,'Olivia','Lee','F',50,'1414 Oak Blvd, FL','olivia.lee@example.com','password123',17),(18,'Paul','Clark','M',37,'1515 Pine St, NY','paul.clark@example.com','password123',18),(19,'Quinn','Lewis','F',31,'1616 Cedar Blvd, CA','quinn.lewis@example.com','password123',19),(20,'Rachel','Walker','F',28,'1717 Birch Ave, TX','rachel.walker@example.com','password123',20),(21,'Steve','Hall','M',46,'1818 Maple Rd, FL','steve.hall@example.com','password123',21),(22,'Tina','Allen','F',38,'1919 Oak St, NY','tina.allen@example.com','password123',22),(23,'Ulysses','Young','M',41,'2020 Pine Blvd, TX','ulysses.young@example.com','password123',23),(24,'Vanessa','King','F',34,'2121 Cedar Rd, CA','vanessa.king@example.com','password123',24),(25,'William','Scott','M',55,'2222 Birch Blvd, FL','william.scott@example.com','password123',25),(26,'Xavier','Adams','M',28,'2323 Maple Ave, TX','xavier.adams@example.com','password123',26),(27,'Yvonne','Nelson','F',42,'2424 Oak Rd, CA','yvonne.nelson@example.com','password123',27),(28,'Zack','Carter','M',36,'2525 Pine Blvd, NY','zack.carter@example.com','password123',28),(29,'Annabelle','Mitchell','F',29,'2626 Cedar St, TX','annabelle.mitchell@example.com','password123',29),(30,'Bruce','Roberts','M',50,'2727 Birch Blvd, CA','bruce.roberts@example.com','password123',30),(31,'Cindy','Perez','F',35,'2828 Maple Blvd, FL','cindy.perez@example.com','password123',31),(32,'Daniel','Lee','M',42,'2929 Oak Blvd, TX','daniel.lee@example.com','password123',32),(33,'Emma','Garcia','F',38,'3030 Pine Rd, CA','emma.garcia@example.com','password123',33),(34,'Frank','Davis','M',43,'3131 Cedar Ave, NY','frank.davis@example.com','password123',34),(35,'Grake','Moor','F',31,'3232 Birch Rd, TX','grake.moor@example.com','password123',35),(36,'Hank','Wilson','M',47,'3333 Maple Dr, CA','hank.wilson@example.com','password123',36),(37,'Ingrid','Adams','F',26,'3434 Oak St, NY','ingrid.adams@example.com','password123',37),(38,'John','Baker','M',32,'3535 Pine Rd, TX','john.baker@example.com','password123',38),(39,'Kelly','Cooper','F',40,'3636 Cedar Blvd, CA','kelly.cooper@example.com','password123',39),(40,'Leo','Rodriguez','M',28,'3737 Birch Ave, TX','leo.rodriguez@example.com','password123',40),(41,'Maria','Green','F',29,'3838 Oak Rd, NY','maria.green@example.com','password123',41),(42,'Nora','Harris','F',35,'3939 Pine Blvd, CA','nora.harris@example.com','password123',42),(43,'Oliver','Mitchell','M',39,'4040 Cedar St, TX','oliver.mitchell@example.com','password123',43),(44,'Pat','Collins','M',30,'4141 Maple Rd, FL','pat.collins@example.com','password123',44),(45,'Quinn','Walker','F',25,'4242 Oak Blvd, TX','quinn.walker@example.com','password123',45),(46,'Ryan','Nelson','M',32,'4343 Pine Rd, CA','ryan.nelson@example.com','password123',46),(47,'Sally','Clark','F',33,'4444 Cedar Ave, NY','sally.clark@example.com','password123',47),(48,'Tom','Perez','M',36,'4545 Birch Blvd, TX','tom.perez@example.com','password123',48),(49,'Ursula','Young','F',27,'4646 Oak St, NY','ursula.young@example.com','password123',49),(50,'Victor','Ward','M',41,'4747 Maple Ave, TX','victor.ward@example.com','password123',50),(51,'Wendy','Morgan','F',36,'4848 Pine Rd, CA','wendy.morgan@example.com','password123',51),(52,'Xavier','Lewis','M',28,'4949 Cedar Blvd, NY','xavier.lewis@example.com','password123',52),(53,'Yasmine','Robinson','F',34,'5050 Birch Rd, TX','yasmine.robinson@example.com','password123',53),(54,'Zachary','Wilson','M',38,'5151 Oak Blvd, CA','zachary.wilson@example.com','password123',54),(55,'Adam','Harris','M',31,'5252 Maple Rd, TX','adam.harris@example.com','password123',55),(56,'Brooke','Clark','F',40,'5353 Pine Blvd, FL','brooke.clark@example.com','password123',56),(57,'Connor','Scott','M',27,'5454 Cedar Rd, NY','connor.scott@example.com','password123',57),(58,'Daisy','Allen','F',35,'5555 Birch Ave, TX','daisy.allen@example.com','password123',58),(59,'Eli','Mitchell','M',33,'5656 Oak Rd, CA','eli.mitchell@example.com','password123',59),(60,'Fiona','Jackson','F',30,'5757 Pine Blvd, TX','fiona.jackson@example.com','password123',60);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobdepartment`
--

DROP TABLE IF EXISTS `jobdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobdepartment` (
  `Job_ID` int NOT NULL,
  `jobdept` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `salaryrange` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Job_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobdepartment`
--

LOCK TABLES `jobdepartment` WRITE;
/*!40000 ALTER TABLE `jobdepartment` DISABLE KEYS */;
INSERT INTO `jobdepartment` VALUES (1,'Operations','Operations Engineer','Responsible for engineer duties in the operations department.','$70889 - $91502'),(2,'Finance','Finance Consultant','Responsible for consultant duties in the finance department.','$45757 - $102274'),(3,'IT','IT Coordinator','Responsible for coordinator duties in the IT department.','$32637 - $118326'),(4,'Marketing','Marketing Engineer','Responsible for engineer duties in the marketing department.','$48936 - $145464'),(5,'Finance','Finance Specialist','Responsible for specialist duties in the finance department.','$67562 - $99403'),(6,'Engineering','Engineering Executive','Responsible for executive duties in the engineering department.','$66000 - $125000'),(7,'Sales','Sales Manager','Responsible for managing the sales department.','$75000 - $130000'),(8,'IT','IT Analyst','Responsible for analyzing IT systems in the IT department.','$48000 - $92000'),(9,'HR','HR Manager','Responsible for managing the human resources department.','$68000 - $105000'),(10,'Operations','Operations Specialist','Responsible for specialist duties in the operations department.','$54000 - $90000'),(11,'Marketing','Marketing Coordinator','Responsible for coordinating marketing campaigns.','$55000 - $95000'),(12,'Legal','Legal Advisor','Responsible for advising on legal matters in the organization.','$95000 - $150000'),(13,'Finance','Financial Analyst','Responsible for analyzing financial data and trends.','$58000 - $120000'),(14,'IT','IT Support Specialist','Responsible for providing support for IT systems.','$40000 - $75000'),(15,'Engineering','Engineering Technician','Responsible for technical support in the engineering department.','$52000 - $85000'),(16,'Marketing','Marketing Executive','Responsible for executive duties in the marketing department.','$60000 - $110000'),(17,'Sales','Sales Executive','Responsible for executing sales strategies and goals.','$45000 - $95000'),(18,'HR','HR Executive','Responsible for executing HR policies and procedures.','$50000 - $95000'),(19,'Operations','Operations Manager','Responsible for managing operations and process improvements.','$85000 - $135000'),(20,'Legal','Legal Manager','Responsible for managing legal matters and team.','$115000 - $180000'),(21,'Finance','Finance Manager','Responsible for overseeing the financial department.','$95000 - $140000'),(22,'IT','IT Manager','Responsible for managing IT projects and teams.','$90000 - $145000'),(23,'Engineering','Senior Engineer','Responsible for senior engineering duties.','$80000 - $130000'),(24,'Sales','Senior Sales Manager','Responsible for managing the senior sales team.','$85000 - $145000'),(25,'HR','Senior HR Specialist','Responsible for overseeing HR functions and policies.','$70000 - $120000'),(26,'Operations','Senior Operations Manager','Responsible for managing senior operations processes.','$95000 - $150000'),(27,'Marketing','Senior Marketing Manager','Responsible for senior marketing campaigns and strategies.','$90000 - $150000'),(28,'IT','Senior IT Consultant','Responsible for consulting on senior IT projects.','$100000 - $160000'),(29,'Legal','Senior Legal Consultant','Responsible for providing senior legal consultation.','$120000 - $180000'),(30,'Finance','Senior Finance Analyst','Responsible for senior financial analysis and reporting.','$105000 - $160000'),(31,'Engineering','Senior Engineering Manager','Responsible for managing senior engineering teams.','$110000 - $170000'),(32,'Sales','Senior Sales Executive','Responsible for senior sales strategies and client management.','$95000 - $160000'),(33,'HR','HR Director','Responsible for overseeing all HR operations.','$120000 - $180000'),(34,'Operations','Operations Director','Responsible for managing all operational processes.','$125000 - $200000'),(35,'Marketing','Marketing Director','Responsible for overseeing marketing strategies and teams.','$130000 - $210000'),(36,'IT','IT Director','Responsible for overseeing IT department and projects.','$140000 - $220000'),(37,'Finance','Finance Director','Responsible for directing all financial activities.','$140000 - $250000'),(38,'Engineering','Engineering Director','Responsible for directing engineering projects and teams.','$150000 - $250000'),(39,'Sales','Sales Director','Responsible for directing all sales operations.','$150000 - $230000'),(40,'HR','HR Specialist','Responsible for supporting HR processes and employee relations.','$60000 - $110000'),(41,'Operations','Operations Executive','Responsible for executive duties in operations.','$55000 - $95000'),(42,'Marketing','Marketing Specialist','Responsible for handling marketing campaigns.','$48000 - $85000'),(43,'Finance','Finance Clerk','Responsible for clerical work in the finance department.','$35000 - $60000'),(44,'IT','IT Technician','Responsible for providing IT support and maintenance.','$37000 - $65000'),(45,'Engineering','Engineering Assistant','Responsible for assisting engineers with technical work.','$38000 - $70000'),(46,'Sales','Sales Clerk','Responsible for clerical duties in the sales department.','$32000 - $60000'),(47,'Marketing','Marketing Assistant','Responsible for assisting in marketing campaigns.','$35000 - $65000'),(48,'HR','HR Assistant','Responsible for assisting in HR operations and paperwork.','$33000 - $60000'),(49,'Operations','Operations Clerk','Responsible for clerical duties in operations.','$31000 - $55000'),(50,'Legal','Legal Assistant','Responsible for assisting in legal matters and paperwork.','$38000 - $75000'),(51,'Finance','Finance Assistant','Responsible for assisting with financial documentation.','$32000 - $60000'),(52,'IT','IT Support Technician','Responsible for supporting IT systems and infrastructure.','$35000 - $75000'),(53,'Engineering','Engineering Coordinator','Responsible for coordinating engineering tasks and projects.','$46000 - $85000'),(54,'Sales','Sales Assistant','Responsible for assisting with sales processes and paperwork.','$30000 - $50000'),(55,'Marketing','Marketing Coordinator','Responsible for coordinating marketing events.','$44000 - $80000'),(56,'HR','HR Coordinator','Responsible for coordinating HR initiatives and procedures.','$47000 - $85000'),(57,'Operations','Operations Assistant','Responsible for assisting with operations management.','$43000 - $70000'),(58,'Legal','Legal Coordinator','Responsible for coordinating legal team activities.','$48000 - $85000'),(59,'Finance','Finance Coordinator','Responsible for coordinating finance team activities.','$47000 - $80000'),(60,'IT','IT Manager','Responsible for managing IT infrastructure and team.','$120000 - $180000');
/*!40000 ALTER TABLE `jobdepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves` (
  `leave_ID` int NOT NULL,
  `emp_ID` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`leave_ID`),
  KEY `fk_leave_emp` (`emp_ID`),
  CONSTRAINT `fk_leave_emp` FOREIGN KEY (`emp_ID`) REFERENCES `employee` (`emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,1,'2024-01-15','Medical Leave'),(2,2,'2024-10-02','Personal Work'),(3,3,'2024-05-03','Sick Leave'),(4,4,'2024-01-25','Family Emergency'),(5,5,'2024-10-03','Travel'),(6,6,'2024-02-15','Medical Checkup'),(7,7,'2024-01-04','Festival'),(8,8,'2024-10-04','Vacation'),(9,9,'2024-02-20','Illness'),(10,10,'2024-05-01','Personal Work'),(11,11,'2024-03-20','Medical Emergency'),(12,12,'2024-01-30','Marriage'),(13,13,'2024-03-25','Maternity Leave'),(14,14,'2024-05-02','Dental Appointment'),(15,15,'2024-03-15','Fever'),(16,16,'2024-05-04','Work from Home'),(17,17,'2024-01-18','School Admission'),(18,18,'2024-12-03','Travel'),(19,19,'2024-08-02','Festival'),(20,20,'2024-01-22','Routine Checkup'),(21,21,'2024-04-18','Interview'),(22,22,'2024-02-25','Family Function'),(23,23,'2024-10-01','Fever'),(24,24,'2024-03-30','Sick Leave'),(25,25,'2024-01-02','Jury Duty'),(26,26,'2024-12-04','Business Trip'),(27,27,'2024-01-14','Medical Leave'),(28,28,'2024-03-18','Personal'),(29,29,'2024-11-02','Travel'),(30,30,'2024-03-04','Funeral'),(31,31,'2024-01-27','Health Check'),(32,32,'2024-02-03','School Exam'),(33,33,'2024-02-16','Medical Emergency'),(34,34,'2024-09-04','Paternity Leave'),(35,35,'2024-01-20','House Shift'),(36,36,'2024-08-03','Court Appearance'),(37,37,'2024-03-02','Vehicle Issue'),(38,38,'2024-01-13','Sick Leave'),(39,39,'2024-02-04','Child Care'),(40,40,'2024-06-03','Medical Test'),(41,41,'2024-02-13','Headache'),(42,42,'2024-07-01','Cold and Flu'),(43,43,'2024-03-28','Family Illness'),(44,44,'2024-02-14','Mental Health Day'),(45,45,'2024-01-24','Religious Observance'),(46,46,'2024-03-16','Bereavement Leave'),(47,47,'2024-06-02','Urgent Travel'),(48,48,'2024-06-04','School Function'),(49,49,'2024-01-16','Eye Surgery'),(50,50,'2024-02-21','Child\'s Exam'),(51,51,'2024-03-14','Wellness Retreat'),(52,52,'2024-01-23','College Reunion'),(53,53,'2024-04-14','Minor Injury'),(54,54,'2024-01-03','Stomach Pain'),(55,55,'2024-02-28','Volunteer Work'),(56,56,'2024-12-01','Water Problem at Home'),(57,57,'2024-04-03','Blood Donation'),(58,58,'2024-02-18','Fever'),(59,59,'2024-01-28','Community Event'),(60,60,'2024-04-04','Health Checkup');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll` (
  `payroll_ID` int NOT NULL,
  `emp_ID` int DEFAULT NULL,
  `job_ID` int DEFAULT NULL,
  `salary_ID` int DEFAULT NULL,
  `leave_ID` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `report` text,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`payroll_ID`),
  KEY `fk_payroll_emp` (`emp_ID`),
  KEY `fk_payroll_job` (`job_ID`),
  KEY `fk_payroll_salary` (`salary_ID`),
  KEY `fk_payroll_leave` (`leave_ID`),
  CONSTRAINT `fk_payroll_emp` FOREIGN KEY (`emp_ID`) REFERENCES `employee` (`emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_payroll_job` FOREIGN KEY (`job_ID`) REFERENCES `jobdepartment` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_payroll_leave` FOREIGN KEY (`leave_ID`) REFERENCES `leaves` (`leave_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_payroll_salary` FOREIGN KEY (`salary_ID`) REFERENCES `salarybonus` (`salary_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
INSERT INTO `payroll` VALUES (1,1,1,1,1,'2024-04-30','April Payroll',40500.00),(2,2,2,2,2,'2024-04-30','April Payroll',45500.00),(3,3,3,3,3,'2024-04-30','April Payroll',39500.00),(4,4,4,4,4,'2024-04-30','April Payroll',43500.00),(5,5,5,5,5,'2024-04-30','April Payroll',38500.00),(6,6,6,6,6,'2024-04-30','April Payroll',42500.00),(7,7,7,7,7,'2024-04-30','April Payroll',44500.00),(8,8,8,8,8,'2024-04-30','April Payroll',45500.00),(9,9,9,9,9,'2024-04-30','April Payroll',40500.00),(10,10,10,10,10,'2024-04-30','April Payroll',38500.00),(11,11,11,11,11,'2024-04-30','April Payroll',49500.00),(12,12,12,12,12,'2024-04-30','April Payroll',51500.00),(13,13,13,13,13,'2024-04-30','April Payroll',50500.00),(14,14,14,14,14,'2024-04-30','April Payroll',48500.00),(15,15,15,15,15,'2024-04-30','April Payroll',47500.00),(16,16,16,16,16,'2024-04-30','April Payroll',50500.00),(17,17,17,17,17,'2024-04-30','April Payroll',49500.00),(18,18,18,18,18,'2024-04-30','April Payroll',51500.00),(19,19,19,19,19,'2024-04-30','April Payroll',49500.00),(20,20,20,20,20,'2024-04-30','April Payroll',48500.00),(21,21,21,21,21,'2024-04-30','April Payroll',46500.00),(22,22,22,22,22,'2024-04-30','April Payroll',47500.00),(23,23,23,23,23,'2024-04-30','April Payroll',45500.00),(24,24,24,24,24,'2024-04-30','April Payroll',47500.00),(25,25,25,25,25,'2024-04-30','April Payroll',45500.00),(26,26,26,26,26,'2024-04-30','April Payroll',46500.00),(27,27,27,27,27,'2024-04-30','April Payroll',44500.00),(28,28,28,28,28,'2024-04-30','April Payroll',49500.00),(29,29,29,29,29,'2024-04-30','April Payroll',45500.00),(30,30,30,30,30,'2024-04-30','April Payroll',50500.00),(31,31,31,31,31,'2024-04-30','April Payroll',41500.00),(32,32,32,32,32,'2024-04-30','April Payroll',48500.00),(33,33,33,33,33,'2024-04-30','April Payroll',49500.00),(34,34,34,34,34,'2024-04-30','April Payroll',46500.00),(35,35,35,35,35,'2024-04-30','April Payroll',45500.00),(36,36,36,36,36,'2024-04-30','April Payroll',43500.00),(37,37,37,37,37,'2024-04-30','April Payroll',44500.00),(38,38,38,38,38,'2024-04-30','April Payroll',47500.00),(39,39,39,39,39,'2024-04-30','April Payroll',45500.00),(40,40,40,40,40,'2024-04-30','April Payroll',46500.00),(41,41,41,41,41,'2024-04-30','April Payroll',48500.00),(42,42,42,42,42,'2024-04-30','April Payroll',43500.00),(43,43,43,43,43,'2024-04-30','April Payroll',49500.00),(44,44,44,44,44,'2024-04-30','April Payroll',45500.00),(45,45,45,45,45,'2024-04-30','April Payroll',47500.00),(46,46,46,46,46,'2024-04-30','April Payroll',48500.00),(47,47,47,47,47,'2024-04-30','April Payroll',46500.00),(48,48,48,48,48,'2024-04-30','April Payroll',43500.00),(49,49,49,49,49,'2024-04-30','April Payroll',48500.00),(50,50,50,50,50,'2024-04-30','April Payroll',47500.00),(51,51,51,51,51,'2024-04-30','April Payroll',50500.00),(52,52,52,52,52,'2024-04-30','April Payroll',46500.00),(53,53,53,53,53,'2024-04-30','April Payroll',49500.00),(54,54,54,54,54,'2024-04-30','April Payroll',46500.00),(55,55,55,55,55,'2024-04-30','April Payroll',43500.00),(56,56,56,56,56,'2024-04-30','April Payroll',42500.00),(57,57,57,57,57,'2024-04-30','April Payroll',48500.00),(58,58,58,58,58,'2024-04-30','April Payroll',45500.00),(59,59,59,59,59,'2024-04-30','April Payroll',44500.00),(60,60,60,60,60,'2024-04-30','April Payroll',47500.00);
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualification` (
  `QualID` int NOT NULL,
  `Emp_ID` int DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Requirements` varchar(255) DEFAULT NULL,
  `Date_In` date DEFAULT NULL,
  PRIMARY KEY (`QualID`),
  KEY `fk_qualification_emp` (`Emp_ID`),
  CONSTRAINT `fk_qualification_emp` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (1,1,'HR Assistant','BBA Communication Skills','2019-12-06'),(2,2,'HR Manager','MBA 5 Yrs Exp','2018-03-20'),(3,3,'IT Support','B.Tech (IT) Troubleshooting','2020-01-15'),(4,4,'Software Engineer','B.Tech (CS) Java/Python','2021-04-01'),(5,5,'Data Analyst','B.Sc Stats Excel SQL','2020-08-11'),(6,6,'Sr. Data Analyst','M.Sc Stats Power BI','2017-11-20'),(7,7,'Marketing Executive','BBA Google Ads','2021-05-10'),(8,8,'Marketing Manager','MBA Marketing 5 Yrs Exp','2018-07-14'),(9,9,'Finance Analyst','B.Com Excel SAP','2020-02-19'),(10,10,'Sr. Finance Officer','M.Com Chartered Accountant','2016-12-01'),(11,11,'Legal Advisor','LLB Corporate Law','2015-10-09'),(12,12,'Office Admin','B.A MS Office','2019-05-03'),(13,13,'HR Executive','MBA HR Recruitment Skills','2018-08-22'),(14,14,'Network Admin','B.Tech CCNA Certification','2020-09-09'),(15,15,'Frontend Developer','B.Tech ReactJS','2021-01-01'),(16,16,'Backend Developer','B.Tech NodeJS','2021-02-14'),(17,17,'UI/UX Designer','B.Des Figma/Adobe XD','2019-10-30'),(18,18,'QA Tester','B.Sc IT Selenium','2020-04-04'),(19,19,'Product Manager','MBA Agile Scrum','2017-05-25'),(20,20,'Content Writer','B.A English SEO','2022-11-01'),(21,21,'HR Intern','BBA (Pursuing) Communication','2023-02-01'),(22,22,'DevOps Engineer','B.Tech Jenkins AWS','2020-12-20'),(23,23,'Database Admin','B.Tech SQL Server','2019-06-14'),(24,24,'SAP Consultant','MBA SAP FICO','2018-07-30'),(25,25,'Operations Manager','MBA Ops Lean Six Sigma','2016-11-05'),(26,26,'CSR Executive','B.Com Customer Support','2020-03-17'),(27,27,'CSR Manager','BBA CRM Software','2017-04-01'),(28,28,'Digital Marketer','BCA SEO Google Analytics','2021-08-08'),(29,29,'Security Officer','Ex-Army Security Protocols','2015-05-12'),(30,30,'Procurement Head','MBA Supply Chain','2016-02-25'),(31,31,'Technical Writer','B.Tech Documentation Tools','2021-06-01'),(32,32,'Sales Executive','BBA Cold Calling','2020-07-07'),(33,33,'Sales Manager','MBA Sales CRM','2018-10-16'),(34,34,'Training Officer','B.Ed Training Delivery','2019-01-10'),(35,35,'Training Manager','M.Ed L&D Programs','2017-03-12'),(36,36,'Auditor','CA Internal Auditing','2015-09-23'),(37,37,'IT Manager','M.Tech Infra Management','2016-06-18'),(38,38,'App Developer','B.Tech Android/iOS Dev','2020-05-10'),(39,39,'Risk Analyst','MBA Finance Risk Mgmt Cert.','2019-11-20'),(40,40,'Graphic Designer','BFA Adobe Suite','2022-04-01'),(41,41,'Executive Assistant','B.Com Office Mgmt','2021-02-15'),(42,42,'Systems Analyst','B.Sc CS Business Analysis','2018-06-09'),(43,43,'Chief Technology Officer','PhD CS Strategy Leadership','2014-01-01'),(44,44,'Chief HR Officer','PhD HRM HR Policy Expert','2013-09-22'),(45,45,'Chief Financial Officer','CA MBA Finance','2012-08-30'),(46,46,'Legal Head','LLM Compliance','2011-05-20'),(47,47,'Head of Operations','MBA Ops 10 Yrs Exp','2010-03-19'),(48,48,'Full Stack Developer','B.Tech MERN Stack','2021-06-18'),(49,49,'Machine Learning Eng','M.Tech AI Python ML','2022-01-08'),(50,50,'Cloud Architect','M.Tech AWS/Azure','2020-09-30'),(51,51,'CSR Trainer','B.Ed Public Speaking','2018-02-27'),(52,52,'Recruiter','MBA HR ATS Tools','2021-03-22'),(53,53,'Business Analyst','MBA Tableau SQL','2020-11-01'),(54,54,'Lead Engineer','B.Tech 10 Yrs Exp','2016-10-05'),(55,55,'Cybersecurity Expert','B.Tech Ethical Hacking','2021-12-13'),(56,56,'HR Specialist','MBA Employee Relations','2019-05-06'),(57,57,'Junior Analyst','BBA Excel','2022-07-15'),(58,58,'IT Intern','B.Tech (Pursuing) Basics','2023-01-05'),(59,59,'Policy Analyst','MA Public Policy Law','2018-08-08'),(60,60,'Data Engineer','B.Tech Big Data Tools','2020-03-25');
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarybonus`
--

DROP TABLE IF EXISTS `salarybonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarybonus` (
  `salary_ID` int NOT NULL,
  `Job_ID` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `annual` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`salary_ID`),
  KEY `fk_salary_job` (`Job_ID`),
  CONSTRAINT `fk_salary_job` FOREIGN KEY (`Job_ID`) REFERENCES `jobdepartment` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarybonus`
--

LOCK TABLES `salarybonus` WRITE;
/*!40000 ALTER TABLE `salarybonus` DISABLE KEYS */;
INSERT INTO `salarybonus` VALUES (1,1,45000.00,540000.00,5000.00),(2,2,55000.00,660000.00,7000.00),(3,3,40000.00,480000.00,4000.00),(4,4,48000.00,576000.00,6000.00),(5,5,47000.00,564000.00,4500.00),(6,6,65000.00,780000.00,10000.00),(7,7,80000.00,960000.00,12000.00),(8,8,42000.00,504000.00,3500.00),(9,9,55000.00,660000.00,7000.00),(10,10,48000.00,576000.00,5500.00),(11,11,52000.00,624000.00,6000.00),(12,12,90000.00,1080000.00,15000.00),(13,13,60000.00,720000.00,8000.00),(14,14,38000.00,456000.00,3000.00),(15,15,55000.00,660000.00,6000.00),(16,16,53000.00,636000.00,5500.00),(17,17,47000.00,564000.00,4500.00),(18,18,60000.00,720000.00,7500.00),(19,19,95000.00,1140000.00,15000.00),(20,20,115000.00,1380000.00,20000.00),(21,21,95000.00,1140000.00,15000.00),(22,22,105000.00,1260000.00,18000.00),(23,23,85000.00,1020000.00,12000.00),(24,24,95000.00,1140000.00,13000.00),(25,25,72000.00,864000.00,8500.00),(26,26,105000.00,1260000.00,15000.00),(27,27,98000.00,1176000.00,13000.00),(28,28,120000.00,1440000.00,20000.00),(29,29,130000.00,1560000.00,22000.00),(30,30,105000.00,1260000.00,15000.00),(31,31,115000.00,1380000.00,18000.00),(32,32,95000.00,1140000.00,14000.00),(33,33,120000.00,1440000.00,20000.00),(34,34,135000.00,1620000.00,25000.00),(35,35,150000.00,1800000.00,30000.00),(36,36,150000.00,1800000.00,28000.00),(37,37,170000.00,2040000.00,35000.00),(38,38,160000.00,1920000.00,33000.00),(39,39,140000.00,1680000.00,28000.00),(40,40,50000.00,600000.00,6000.00),(41,41,48000.00,576000.00,5000.00),(42,42,45000.00,540000.00,4500.00),(43,43,32000.00,384000.00,3000.00),(44,44,38000.00,456000.00,4000.00),(45,45,42000.00,504000.00,3500.00),(46,46,33000.00,396000.00,3000.00),(47,47,35000.00,420000.00,3500.00),(48,48,34000.00,408000.00,3200.00),(49,49,31000.00,372000.00,3000.00),(50,50,40000.00,480000.00,4500.00),(51,51,42000.00,504000.00,4000.00),(52,52,35000.00,420000.00,3500.00),(53,53,46000.00,552000.00,5500.00),(54,54,38000.00,456000.00,4000.00),(55,55,44000.00,528000.00,4500.00),(56,56,47000.00,564000.00,5000.00),(57,57,43000.00,516000.00,4000.00),(58,58,48000.00,576000.00,5000.00),(59,59,45000.00,540000.00,4500.00),(60,60,70000.00,840000.00,10000.00);
/*!40000 ALTER TABLE `salarybonus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-29 10:59:57
