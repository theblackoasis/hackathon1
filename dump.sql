-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: pmkvy_test1
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_aadhardummy`
--

DROP TABLE IF EXISTS `api_aadhardummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_aadhardummy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_aadhar_no` varchar(12) NOT NULL,
  `ad_fullname` varchar(255) NOT NULL,
  `ad_mother_name` varchar(255) NOT NULL,
  `ad_year_of_birth` int(11) NOT NULL,
  `ad_gender` varchar(10) NOT NULL,
  `ad_address` longtext NOT NULL,
  `ad_email` varchar(255) NOT NULL,
  `ad_mobile_no` varchar(12) NOT NULL,
  `ad_district` varchar(35) NOT NULL,
  `ad_state` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ad_aadhar_no` (`ad_aadhar_no`),
  UNIQUE KEY `ad_email` (`ad_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_aadhardummy`
--

LOCK TABLES `api_aadhardummy` WRITE;
/*!40000 ALTER TABLE `api_aadhardummy` DISABLE KEYS */;
INSERT INTO `api_aadhardummy` VALUES (1,'783579207845','Mrinal Mohan','Veena Shrivastav',1995,'Male','S/O Rahul Shrivastava, H.No- NE-17, Hill View Colony, J.S.P.L., Kharsia Road, Rai Garh, Raigarh, Chhattisgarh, 496001','mrinalmohan95@gmail.com','','',''),(2,'123456789123','Vaibhav Pandey','',0,'male','main canteen, sector -112, landran','vaibhav@vaibhav','1234567890','landran','chandigarh');
/*!40000 ALTER TABLE `api_aadhardummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_appuser`
--

DROP TABLE IF EXISTS `api_appuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_appuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_last_login` date DEFAULT NULL,
  `user_date_joined` date NOT NULL,
  `user_name` varchar(70) NOT NULL,
  `user_registration_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_appuser`
--

LOCK TABLES `api_appuser` WRITE;
/*!40000 ALTER TABLE `api_appuser` DISABLE KEYS */;
INSERT INTO `api_appuser` VALUES (1,'testappuser@gmail.com','test','2017-03-29','2017-03-29','Test',1),(2,'au1','au1','2017-03-31','2017-03-31','au1 anem',1),(3,'mrinal','mrinal','2017-04-01','2017-04-01','Mrinal mohan',0),(4,'vaibhav','vaibhav','2017-04-01','2017-04-01','Mrinal mohan',0),(5,'devin@gmail.com','test','2017-03-20','2017-03-20','Devin',0),(6,'vaibhav@vaibhav','vaibhav123','2017-04-02','2017-04-02','Vaibhav Pandey',1);
/*!40000 ALTER TABLE `api_appuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_batchinfo`
--

DROP TABLE IF EXISTS `api_batchinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_batchinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_end_date` date DEFAULT NULL,
  `batch_assessment_date` date DEFAULT NULL,
  `course_id_id` int(11) NOT NULL,
  `training_center_id_id` int(11) NOT NULL,
  `batch_start_date` date NOT NULL,
  `batch_no_of_seats` int(11) NOT NULL,
  `batch_last_date_registration` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_batchinfo_course_id_id_79283f78_fk_api_courseinfo_id` (`course_id_id`),
  KEY `api_batchin_training_center_id_id_3b1fa23a_fk_training_center_id` (`training_center_id_id`),
  CONSTRAINT `api_batchin_training_center_id_id_3b1fa23a_fk_training_center_id` FOREIGN KEY (`training_center_id_id`) REFERENCES `training_center` (`id`),
  CONSTRAINT `api_batchinfo_course_id_id_79283f78_fk_api_courseinfo_id` FOREIGN KEY (`course_id_id`) REFERENCES `api_courseinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_batchinfo`
--

LOCK TABLES `api_batchinfo` WRITE;
/*!40000 ALTER TABLE `api_batchinfo` DISABLE KEYS */;
INSERT INTO `api_batchinfo` VALUES (3,'2017-04-02','2017-04-02',1,18,'2017-04-02',0,'2017-04-02'),(6,'2017-04-02','2017-04-02',3,19,'2017-04-02',0,'2017-04-02'),(8,'2017-04-28','2017-04-02',1,18,'2017-04-14',0,'2017-04-02'),(9,'2017-05-04','2017-04-02',1,21,'2017-04-20',0,'2017-04-02'),(10,'2017-04-24','2017-04-02',1,18,'2017-05-10',0,'2017-04-02');
/*!40000 ALTER TABLE `api_batchinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_certifiedtraineelist`
--

DROP TABLE IF EXISTS `api_certifiedtraineelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_certifiedtraineelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certified` tinyint(1) NOT NULL,
  `c_app_user_email` varchar(255) NOT NULL,
  `district` varchar(25) NOT NULL,
  `job_role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_certifiedtraineelist`
--

LOCK TABLES `api_certifiedtraineelist` WRITE;
/*!40000 ALTER TABLE `api_certifiedtraineelist` DISABLE KEYS */;
INSERT INTO `api_certifiedtraineelist` VALUES (1,1,'testappuser@gmail.com','durg','gardener'),(2,1,'appuser1@gmail.com','Raipur','Technician'),(3,1,'testfdsfdsfs','Raigarh','Farmer');
/*!40000 ALTER TABLE `api_certifiedtraineelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_coursefeedbackdetail`
--

DROP TABLE IF EXISTS `api_coursefeedbackdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_coursefeedbackdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfd_subject` varchar(255) NOT NULL,
  `cfd_detail` longtext NOT NULL,
  `cfd_feedback_date` date NOT NULL,
  `cfd_rating` int(11) NOT NULL,
  `cfd_course_id_id` int(11) NOT NULL,
  `cfd_training_center_id_id` int(11) NOT NULL,
  `cfd_user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_coursefeedbac_cfd_course_id_id_983b320e_fk_api_courseinfo_id` (`cfd_course_id_id`),
  KEY `api_cou_cfd_training_center_id_id_3887c188_fk_training_center_id` (`cfd_training_center_id_id`),
  KEY `api_coursefeedbackdeta_cfd_user_id_id_cb3d7591_fk_api_appuser_id` (`cfd_user_id_id`),
  CONSTRAINT `api_cou_cfd_training_center_id_id_3887c188_fk_training_center_id` FOREIGN KEY (`cfd_training_center_id_id`) REFERENCES `training_center` (`id`),
  CONSTRAINT `api_coursefeedbac_cfd_course_id_id_983b320e_fk_api_courseinfo_id` FOREIGN KEY (`cfd_course_id_id`) REFERENCES `api_courseinfo` (`id`),
  CONSTRAINT `api_coursefeedbackdeta_cfd_user_id_id_cb3d7591_fk_api_appuser_id` FOREIGN KEY (`cfd_user_id_id`) REFERENCES `api_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_coursefeedbackdetail`
--

LOCK TABLES `api_coursefeedbackdetail` WRITE;
/*!40000 ALTER TABLE `api_coursefeedbackdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_coursefeedbackdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_courseinfo`
--

DROP TABLE IF EXISTS `api_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_courseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(12) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_job_role_id` int(11) NOT NULL,
  `course_sector_id` int(11) NOT NULL,
  `course_level` int(11) NOT NULL,
  `course_minimum_qualification` varchar(255) NOT NULL,
  `course_no_of_days` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_id` (`course_id`),
  KEY `api_courseinfo_d4a40455` (`course_job_role_id`),
  KEY `api_courseinfo_c70e8d74` (`course_sector_id`),
  CONSTRAINT `api_cours_course_sector_id_141bd68f_fk_api_sectorskillcouncil_id` FOREIGN KEY (`course_sector_id`) REFERENCES `api_sectorskillcouncil` (`id`),
  CONSTRAINT `api_courseinfo_course_job_role_id_32df0af1_fk_api_jobrole_id` FOREIGN KEY (`course_job_role_id`) REFERENCES `api_jobrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_courseinfo`
--

LOCK TABLES `api_courseinfo` WRITE;
/*!40000 ALTER TABLE `api_courseinfo` DISABLE KEYS */;
INSERT INTO `api_courseinfo` VALUES (1,'c1','2 week gardenere training',1,1,2,'8th pass',30),(2,'c2','2 week IT course',2,2,5,'12th pass , B.E',40),(3,'c3','4 week long gardner course',1,1,2,'12th pass',15),(4,'c5','2 days farmer course',3,1,3,'10th pass',30);
/*!40000 ALTER TABLE `api_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_employeruser`
--

DROP TABLE IF EXISTS `api_employeruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_employeruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eu_email` varchar(255) NOT NULL,
  `eu_password` varchar(128) NOT NULL,
  `eu_name` varchar(70) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eu_email` (`eu_email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_employeruser`
--

LOCK TABLES `api_employeruser` WRITE;
/*!40000 ALTER TABLE `api_employeruser` DISABLE KEYS */;
INSERT INTO `api_employeruser` VALUES (1,'testeu','testeu','Intel Corporation'),(2,'test1','123','ibm'),(3,'appuser1@gmail.com','5623','Vaibhav Pandey'),(4,'rajatpost16@gmail.com','987','rajat sharma'),(5,'devibrmate@gmail.com','987','devin'),(6,'nidhiprabha20@gmail.com','123','Nidhi singh'),(7,'rohit@gmail.com','1234','rohit sir'),(8,'rajat@gmail.com','234','rajat'),(9,'nidhiprabha@gmail.com','123','nidhi singh'),(10,'rajat65@gmail.com','123','rajat'),(11,'nidhi@gmail.com','1234','nidhi'),(12,'qwe@mail.com','12345','jsshs'),(13,'nidhi12@gmail.com','12345','nidhi singh'),(14,'nidhi123@gmail.com','321','nidhi singh');
/*!40000 ALTER TABLE `api_employeruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_jobprofile`
--

DROP TABLE IF EXISTS `api_jobprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_jobprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jp_job_desc` varchar(255) NOT NULL,
  `jp_required_starting_date` date NOT NULL,
  `jp_required_ending_date` date NOT NULL,
  `jp_salary_low` int(11) NOT NULL,
  `jp_salary_high` int(11) NOT NULL,
  `jp_employer_id_id` int(11) NOT NULL,
  `jp_job_role_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_jobprofile_jp_employer_id_id_ac6f8765_fk_api_employeruser_id` (`jp_employer_id_id`),
  KEY `api_jobprofile_jp_job_role_name_id_a00d23c6_fk_api_jobrole_id` (`jp_job_role_name_id`),
  CONSTRAINT `api_jobprofile_jp_employer_id_id_ac6f8765_fk_api_employeruser_id` FOREIGN KEY (`jp_employer_id_id`) REFERENCES `api_employeruser` (`id`),
  CONSTRAINT `api_jobprofile_jp_job_role_name_id_a00d23c6_fk_api_jobrole_id` FOREIGN KEY (`jp_job_role_name_id`) REFERENCES `api_jobrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_jobprofile`
--

LOCK TABLES `api_jobprofile` WRITE;
/*!40000 ALTER TABLE `api_jobprofile` DISABLE KEYS */;
INSERT INTO `api_jobprofile` VALUES (1,'fdsfds','2017-04-01','2017-04-01',123,321,2,1);
/*!40000 ALTER TABLE `api_jobprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_jobrole`
--

DROP TABLE IF EXISTS `api_jobrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_jobrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_role_name` varchar(255) NOT NULL,
  `job_role_sector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_jobrole_e3b70fd9` (`job_role_sector_id`),
  CONSTRAINT `api_job_job_role_sector_id_7e3bcf76_fk_api_sectorskillcouncil_id` FOREIGN KEY (`job_role_sector_id`) REFERENCES `api_sectorskillcouncil` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_jobrole`
--

LOCK TABLES `api_jobrole` WRITE;
/*!40000 ALTER TABLE `api_jobrole` DISABLE KEYS */;
INSERT INTO `api_jobrole` VALUES (1,'Gardener',1),(2,'Tester',2),(3,'Farmer',1);
/*!40000 ALTER TABLE `api_jobrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_sectorskillcouncil`
--

DROP TABLE IF EXISTS `api_sectorskillcouncil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_sectorskillcouncil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector_skill_council_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_sectorskillcouncil`
--

LOCK TABLES `api_sectorskillcouncil` WRITE;
/*!40000 ALTER TABLE `api_sectorskillcouncil` DISABLE KEYS */;
INSERT INTO `api_sectorskillcouncil` VALUES (1,'Agriculture'),(2,'ITsec');
/*!40000 ALTER TABLE `api_sectorskillcouncil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_stateindia`
--

DROP TABLE IF EXISTS `api_stateindia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_stateindia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `si_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_stateindia`
--

LOCK TABLES `api_stateindia` WRITE;
/*!40000 ALTER TABLE `api_stateindia` DISABLE KEYS */;
INSERT INTO `api_stateindia` VALUES (1,'Chhattisgarh'),(2,'Haryana');
/*!40000 ALTER TABLE `api_stateindia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_statewisedistrict`
--

DROP TABLE IF EXISTS `api_statewisedistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_statewisedistrict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sd_district_name` varchar(255) NOT NULL,
  `sd_state_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_statewisedistri_sd_state_id_id_c8f999be_fk_api_stateindia_id` (`sd_state_id_id`),
  CONSTRAINT `api_statewisedistri_sd_state_id_id_c8f999be_fk_api_stateindia_id` FOREIGN KEY (`sd_state_id_id`) REFERENCES `api_stateindia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_statewisedistrict`
--

LOCK TABLES `api_statewisedistrict` WRITE;
/*!40000 ALTER TABLE `api_statewisedistrict` DISABLE KEYS */;
INSERT INTO `api_statewisedistrict` VALUES (1,'Durg',1),(2,'Raipur',1),(3,'Rajnandgaon',1);
/*!40000 ALTER TABLE `api_statewisedistrict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_studentcourseregistration`
--

DROP TABLE IF EXISTS `api_studentcourseregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_studentcourseregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scr_registration_date` date NOT NULL,
  `scr_is_completed` tinyint(1) NOT NULL,
  `scr_completion_date` date NOT NULL,
  `scr_course_id_id` int(11) NOT NULL,
  `scr_training_center_id_id` int(11) NOT NULL,
  `scr_user_id_id` int(11) NOT NULL,
  `scr_has_given_feedback` tinyint(1) NOT NULL,
  `scr_is_certified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_studentcourse_scr_course_id_id_9e7a3507_fk_api_courseinfo_id` (`scr_course_id_id`),
  KEY `api_stu_scr_training_center_id_id_12187973_fk_training_center_id` (`scr_training_center_id_id`),
  KEY `api_studentcourseregis_scr_user_id_id_89e94d3d_fk_api_appuser_id` (`scr_user_id_id`),
  CONSTRAINT `api_stu_scr_training_center_id_id_12187973_fk_training_center_id` FOREIGN KEY (`scr_training_center_id_id`) REFERENCES `training_center` (`id`),
  CONSTRAINT `api_studentcourse_scr_course_id_id_9e7a3507_fk_api_courseinfo_id` FOREIGN KEY (`scr_course_id_id`) REFERENCES `api_courseinfo` (`id`),
  CONSTRAINT `api_studentcourseregis_scr_user_id_id_89e94d3d_fk_api_appuser_id` FOREIGN KEY (`scr_user_id_id`) REFERENCES `api_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_studentcourseregistration`
--

LOCK TABLES `api_studentcourseregistration` WRITE;
/*!40000 ALTER TABLE `api_studentcourseregistration` DISABLE KEYS */;
INSERT INTO `api_studentcourseregistration` VALUES (6,'2017-04-02',0,'2017-04-02',1,18,3,0,0);
/*!40000 ALTER TABLE `api_studentcourseregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_testtable`
--

DROP TABLE IF EXISTS `api_testtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_testtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_no_a` int(11) NOT NULL,
  `name_a` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_testtable`
--

LOCK TABLES `api_testtable` WRITE;
/*!40000 ALTER TABLE `api_testtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_testtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_trainingcentercourse`
--

DROP TABLE IF EXISTS `api_trainingcentercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_trainingcentercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id_id` int(11) NOT NULL,
  `training_center_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_trainingcentercou_course_id_id_392a7e7d_fk_api_courseinfo_id` (`course_id_id`),
  KEY `api_trainin_training_center_id_id_62692c13_fk_training_center_id` (`training_center_id_id`),
  CONSTRAINT `api_trainin_training_center_id_id_62692c13_fk_training_center_id` FOREIGN KEY (`training_center_id_id`) REFERENCES `training_center` (`id`),
  CONSTRAINT `api_trainingcentercou_course_id_id_392a7e7d_fk_api_courseinfo_id` FOREIGN KEY (`course_id_id`) REFERENCES `api_courseinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_trainingcentercourse`
--

LOCK TABLES `api_trainingcentercourse` WRITE;
/*!40000 ALTER TABLE `api_trainingcentercourse` DISABLE KEYS */;
INSERT INTO `api_trainingcentercourse` VALUES (3,1,18),(4,3,19),(5,2,20),(6,4,18);
/*!40000 ALTER TABLE `api_trainingcentercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_trainingcenterjobrole`
--

DROP TABLE IF EXISTS `api_trainingcenterjobrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_trainingcenterjobrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_role_id_id` int(11) NOT NULL,
  `training_center_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_trainingcenterjobr_job_role_id_id_e237d00a_fk_api_jobrole_id` (`job_role_id_id`),
  KEY `api_trainin_training_center_id_id_ed4116e7_fk_training_center_id` (`training_center_id_id`),
  CONSTRAINT `api_trainin_training_center_id_id_ed4116e7_fk_training_center_id` FOREIGN KEY (`training_center_id_id`) REFERENCES `training_center` (`id`),
  CONSTRAINT `api_trainingcenterjobr_job_role_id_id_e237d00a_fk_api_jobrole_id` FOREIGN KEY (`job_role_id_id`) REFERENCES `api_jobrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_trainingcenterjobrole`
--

LOCK TABLES `api_trainingcenterjobrole` WRITE;
/*!40000 ALTER TABLE `api_trainingcenterjobrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_trainingcenterjobrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add test table',7,'add_testtable'),(20,'Can change test table',7,'change_testtable'),(21,'Can delete test table',7,'delete_testtable'),(22,'Can add custom test',8,'add_customtest'),(23,'Can change custom test',8,'change_customtest'),(24,'Can delete custom test',8,'delete_customtest'),(25,'Can add candidate registration',9,'add_candidateregistration'),(26,'Can change candidate registration',9,'change_candidateregistration'),(27,'Can delete candidate registration',9,'delete_candidateregistration'),(28,'Can add statewise district',10,'add_statewisedistrict'),(29,'Can change statewise district',10,'change_statewisedistrict'),(30,'Can delete statewise district',10,'delete_statewisedistrict'),(31,'Can add state india',11,'add_stateindia'),(32,'Can change state india',11,'change_stateindia'),(33,'Can delete state india',11,'delete_stateindia'),(34,'Can add app user',12,'add_appuser'),(35,'Can change app user',12,'change_appuser'),(36,'Can delete app user',12,'delete_appuser'),(37,'Can add student course registration',13,'add_studentcourseregistration'),(38,'Can change student course registration',13,'change_studentcourseregistration'),(39,'Can delete student course registration',13,'delete_studentcourseregistration'),(40,'Can add training center course',14,'add_trainingcentercourse'),(41,'Can change training center course',14,'change_trainingcentercourse'),(42,'Can delete training center course',14,'delete_trainingcentercourse'),(43,'Can add job role',15,'add_jobrole'),(44,'Can change job role',15,'change_jobrole'),(45,'Can delete job role',15,'delete_jobrole'),(46,'Can add training center',16,'add_trainingcenter'),(47,'Can change training center',16,'change_trainingcenter'),(48,'Can delete training center',16,'delete_trainingcenter'),(49,'Can add course info',17,'add_courseinfo'),(50,'Can change course info',17,'change_courseinfo'),(51,'Can delete course info',17,'delete_courseinfo'),(52,'Can add sector skill council',18,'add_sectorskillcouncil'),(53,'Can change sector skill council',18,'change_sectorskillcouncil'),(54,'Can delete sector skill council',18,'delete_sectorskillcouncil'),(55,'Can add course feedback detail',19,'add_coursefeedbackdetail'),(56,'Can change course feedback detail',19,'change_coursefeedbackdetail'),(57,'Can delete course feedback detail',19,'delete_coursefeedbackdetail'),(58,'Can add batch info',20,'add_batchinfo'),(59,'Can change batch info',20,'change_batchinfo'),(60,'Can delete batch info',20,'delete_batchinfo'),(61,'Can add employer user',21,'add_employeruser'),(62,'Can change employer user',21,'change_employeruser'),(63,'Can delete employer user',21,'delete_employeruser'),(64,'Can add job profile',22,'add_jobprofile'),(65,'Can change job profile',22,'change_jobprofile'),(66,'Can delete job profile',22,'delete_jobprofile'),(67,'Can add aadhar dummy',23,'add_aadhardummy'),(68,'Can change aadhar dummy',23,'change_aadhardummy'),(69,'Can delete aadhar dummy',23,'delete_aadhardummy'),(70,'Can add training center job role',24,'add_trainingcenterjobrole'),(71,'Can change training center job role',24,'change_trainingcenterjobrole'),(72,'Can delete training center job role',24,'delete_trainingcenterjobrole'),(79,'Can add certified trainee list',27,'add_certifiedtraineelist'),(80,'Can change certified trainee list',27,'change_certifiedtraineelist'),(81,'Can delete certified trainee list',27,'delete_certifiedtraineelist');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$C53hZMBAA1nH$HtyPED73STAXVRIqBR21u2fJy48DSOXmpl451srrHuc=','2017-04-01 14:24:21.878827',1,'vaibhav','','','vaibhavkumarpande@gmail.om',1,1,'2017-03-29 05:59:49.444787');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_registration`
--

DROP TABLE IF EXISTS `candidate_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(70) NOT NULL,
  `c_email_id` varchar(255) NOT NULL,
  `c_alternate_email_id` varchar(255) DEFAULT NULL,
  `c_contact_number` varchar(12) NOT NULL,
  `c_alternate_contact_number` varchar(12) DEFAULT NULL,
  `c_address` varchar(175) NOT NULL,
  `c_state_ut` varchar(70) NOT NULL,
  `c_district` varchar(70) NOT NULL,
  `c_pincode` int(11) NOT NULL,
  `c_alternate_address` varchar(175) NOT NULL,
  `c_alternate_state` varchar(70) NOT NULL,
  `c_alternate_district` varchar(70) NOT NULL,
  `c_alternate_pincode` int(11) NOT NULL,
  `c_date_of_birth` date NOT NULL,
  `c_f_name` varchar(70) NOT NULL,
  `c_gender` varchar(12) NOT NULL,
  `c_category` varchar(12) NOT NULL,
  `c_differently_abled` int(11) DEFAULT NULL,
  `c_is_bpl` int(11) NOT NULL,
  `c_annual_family_income` int(11) DEFAULT NULL,
  `c_educational_qualification` varchar(25) NOT NULL,
  `c_work_experience_months` int(11) DEFAULT NULL,
  `c_work_experience_desc` varchar(255) DEFAULT NULL,
  `c_current_location_state_ut` varchar(25) NOT NULL,
  `c_current_location_district` varchar(25) NOT NULL,
  `c_preferred_training_state_ut` varchar(35),
  `c_sector` varchar(255) DEFAULT NULL,
  `c_course` varchar(255) DEFAULT NULL,
  `c_is_ready_to_relocate` int(11) DEFAULT NULL,
  `c_max_fee` int(11) DEFAULT NULL,
  `c_is_agree` int(11) DEFAULT NULL,
  `c_app_user_email` varchar(255) NOT NULL,
  `c_is_certified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c_email_id` (`c_email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_registration`
--

LOCK TABLES `candidate_registration` WRITE;
/*!40000 ALTER TABLE `candidate_registration` DISABLE KEYS */;
INSERT INTO `candidate_registration` VALUES (1,'Test','testappuser@gmail.com','fds','6554','46546','dsadsa','ghg','hghf',5,'gdf','gdsf','fds',4,'2017-03-29','dsfsd','male','fdds',1,1,11,'dfsf',10,'fdsfssd','fdsfdsf','dfsfdsf','fdsfsfd','fdsfs','fdsfsf',1,1204,1,'testappuser@gmail.com',0),(2,'au1','hjjhv','','54534','','vbhjv','hjv','jhvhj',4,'hjbjhv','vjhv','jhvjh',35,'2017-03-31','hg','hjghj','hgjh',1,1,212,'fds',10,'1','scs','bnvnb','bnv','ghcvhg','hgchg',1,1,1,'au1',0),(3,'Mrinal Mohan','mrinalmohan95@gmail.com','','7879767876','','S/O Rahul Shrivastava, H.No- NE-17, Hill View Colony, J.S.P.L., Kharsia Road, Rai Garh, Raigarh, Chhattisgarh, 496001','Chhattisgarh','Durg',0,'','','',0,'2017-04-01','','Male','',NULL,0,NULL,'',NULL,'','','','','','',NULL,NULL,NULL,'mrinal',1),(5,'vaibhav','vaibhav@vaibhav','','1234567890','','sector 112','chandigarh','landran',5454,'','','',0,'2017-03-26','S K. Pandey','male','Gen',0,0,100000,'Bachelor of eng',0,'none','','','fdsfsfd','fdsfs','general',NULL,1204,NULL,'vaibhav@vaibhav',1);
/*!40000 ALTER TABLE `candidate_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_test`
--

DROP TABLE IF EXISTS `custom_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_no` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_test`
--

LOCK TABLES `custom_test` WRITE;
/*!40000 ALTER TABLE `custom_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-03-29 06:02:12.895107','1','k1',1,'[{\"added\": {}}]',16,1),(2,'2017-03-29 17:58:25.003941','1','Test',1,'[{\"added\": {}}]',12,1),(3,'2017-03-29 17:59:50.104691','1','Test',1,'[{\"added\": {}}]',9,1),(4,'2017-03-29 18:00:34.451443','1','Agriculture',1,'[{\"added\": {}}]',18,1),(5,'2017-03-29 18:00:41.127988','2','ITsec',1,'[{\"added\": {}}]',18,1),(6,'2017-03-29 18:00:53.118332','1','Gardener',1,'[{\"added\": {}}]',15,1),(7,'2017-03-29 18:01:02.510696','2','Tester',1,'[{\"added\": {}}]',15,1),(8,'2017-03-29 18:01:09.794488','3','Farmer',1,'[{\"added\": {}}]',15,1),(9,'2017-03-29 18:01:29.343878','1','c1 : 2 week gardenere training ',1,'[{\"added\": {}}]',17,1),(10,'2017-03-29 18:01:39.939396','2','c2 : 2 week IT course ',1,'[{\"added\": {}}]',17,1),(11,'2017-03-29 18:02:20.130987','1','k1 : c1 : 2 week gardenere training ',1,'[{\"added\": {}}]',14,1),(12,'2017-03-29 18:02:23.890778','2','k1 : c2 : 2 week IT course ',1,'[{\"added\": {}}]',14,1),(13,'2017-03-29 18:02:50.014852','1','Test : c1 : 2 week gardenere training  : 2017-03-29',1,'[{\"added\": {}}]',13,1),(14,'2017-03-30 19:58:14.963704','1','k1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',16,1),(15,'2017-03-31 09:21:00.169987','2','au1',1,'[{\"added\": {}}]',12,1),(16,'2017-03-31 09:21:21.363951','2','au1 : c1 : 2 week gardenere training  : 2017-03-31',1,'[{\"added\": {}}]',13,1),(17,'2017-03-31 09:22:17.633080','2','au1',1,'[{\"added\": {}}]',9,1),(18,'2017-03-31 09:33:55.320138','2','au1 anem',2,'[{\"changed\": {\"fields\": [\"user_name\"]}}]',12,1),(19,'2017-03-31 10:42:08.178498','1','c1 : 2 week gardenere training  : k1 : 1',1,'[{\"added\": {}}]',20,1),(20,'2017-03-31 17:31:51.760314','1','Chhattisgarh',1,'[{\"added\": {}}]',11,1),(21,'2017-03-31 17:31:58.927488','2','Haryana',1,'[{\"added\": {}}]',11,1),(22,'2017-03-31 17:32:12.046078','1','Durg',1,'[{\"added\": {}}]',10,1),(23,'2017-03-31 17:32:17.162704','2','Raipur',1,'[{\"added\": {}}]',10,1),(24,'2017-03-31 17:32:24.203448','3','Rajnandgaon',1,'[{\"added\": {}}]',10,1),(25,'2017-03-31 17:43:38.144073','1','k1',2,'[{\"changed\": {\"fields\": [\"training_center_state\", \"training_center_district\"]}}]',16,1),(26,'2017-04-01 03:24:42.579648','1','EmployerUser object',1,'[{\"added\": {}}]',21,1),(27,'2017-04-01 04:34:52.081242','3','c3 : 4 week long gardner course ',1,'[{\"added\": {}}]',17,1),(28,'2017-04-01 06:00:50.243256','1','Mrinal Mohan',1,'[{\"added\": {}}]',23,1),(29,'2017-04-01 06:04:19.649661','1','Mrinal Mohan',2,'[{\"changed\": {\"fields\": [\"ad_email\"]}}]',23,1),(30,'2017-04-01 06:37:25.391763','1','Mrinal Mohan',2,'[]',23,1),(31,'2017-04-01 08:05:04.749297','3','Mrinal mohan',1,'[{\"added\": {}}]',12,1),(32,'2017-04-01 09:52:04.926706','1','k1',2,'[{\"changed\": {\"fields\": [\"tc_area\", \"tc_no_of_equipments\", \"tc_no_of_faculties\", \"tc_grade\"]}}]',16,1),(33,'2017-04-01 10:51:57.667992','3','au1 anem : c3 : 4 week long gardner course  : 2017-04-01',1,'[{\"added\": {}}]',13,1),(34,'2017-04-01 11:11:08.924987','1','k1 : Gardener',1,'[{\"added\": {}}]',24,1),(35,'2017-04-01 11:11:12.005784','2','k1 : Tester',1,'[{\"added\": {}}]',24,1),(36,'2017-04-01 11:11:16.752854','3','k1 : Farmer',1,'[{\"added\": {}}]',24,1),(37,'2017-04-01 11:12:53.419279','2','k2',1,'[{\"added\": {}}]',16,1),(38,'2017-04-01 11:13:05.174179','4','k2 : Gardener',1,'[{\"added\": {}}]',24,1),(39,'2017-04-01 12:20:30.083761','1','GpsTrainingCenter object',1,'[{\"added\": {}}]',NULL,1),(40,'2017-04-01 12:20:41.297833','2','GpsTrainingCenter object',1,'[{\"added\": {}}]',NULL,1),(41,'2017-04-01 12:20:48.995855','3','GpsTrainingCenter object',1,'[{\"added\": {}}]',NULL,1),(42,'2017-04-01 12:25:22.876518','1','a1',1,'[{\"added\": {}}]',NULL,1),(43,'2017-04-01 12:25:28.854519','2','a2',1,'[{\"added\": {}}]',NULL,1),(44,'2017-04-01 12:25:36.330162','3','a3',1,'[{\"added\": {}}]',NULL,1),(45,'2017-04-01 12:36:31.474085','4','a4',1,'[{\"added\": {}}]',NULL,1),(46,'2017-04-01 13:00:52.506162','2','k2',2,'[{\"changed\": {\"fields\": [\"tc_lat\", \"tc_lon\"]}}]',16,1),(47,'2017-04-01 13:01:01.874341','1','k1',2,'[{\"changed\": {\"fields\": [\"tc_lat\", \"tc_lon\"]}}]',16,1),(48,'2017-04-01 13:01:21.693436','3','k3',1,'[{\"added\": {}}]',16,1),(49,'2017-04-01 13:01:42.850042','4','k4',1,'[{\"added\": {}}]',16,1),(50,'2017-04-01 14:25:03.816159','4','c5 : 2 days farmer course ',1,'[{\"added\": {}}]',17,1),(51,'2017-04-02 01:32:25.380280','10','62420',3,'',16,1),(52,'2017-04-02 01:32:25.538167','9','62420',3,'',16,1),(53,'2017-04-02 01:32:25.593249','8','62420',3,'',16,1),(54,'2017-04-02 01:32:25.814974','7','62420',3,'',16,1),(55,'2017-04-02 01:32:25.870746','6','62420',3,'',16,1),(56,'2017-04-02 01:32:25.926134','5','62420',3,'',16,1),(57,'2017-04-02 01:43:24.424602','4','k4',3,'',16,1),(58,'2017-04-02 01:43:24.535591','3','k3',3,'',16,1),(59,'2017-04-02 01:43:24.613122','2','k2',3,'',16,1),(60,'2017-04-02 01:44:18.538320','11','k2',1,'[{\"added\": {}}]',16,1),(61,'2017-04-02 01:45:19.880860','12','k3',1,'[{\"added\": {}}]',16,1),(62,'2017-04-02 01:46:35.470512','11','k2',2,'[{\"changed\": {\"fields\": [\"tc_lat\", \"tc_lon\"]}}]',16,1),(63,'2017-04-02 01:46:49.961828','12','k3',2,'[{\"changed\": {\"fields\": [\"tc_lat\", \"tc_lon\"]}}]',16,1),(64,'2017-04-02 01:48:08.968596','13','k4',1,'[{\"added\": {}}]',16,1),(65,'2017-04-02 01:48:47.106331','13','k4',2,'[{\"changed\": {\"fields\": [\"tc_lon\"]}}]',16,1),(66,'2017-04-02 01:57:07.992523','13','k4',3,'',16,1),(67,'2017-04-02 01:57:08.108116','12','k3',3,'',16,1),(68,'2017-04-02 01:57:08.152197','11','k2',3,'',16,1),(69,'2017-04-02 01:57:08.352174','1','k1',3,'',16,1),(70,'2017-04-02 02:41:30.822961','18','k1',1,'[{\"added\": {}}]',16,1),(71,'2017-04-02 02:42:33.114174','19','k2',1,'[{\"added\": {}}]',16,1),(72,'2017-04-02 02:43:23.572532','20','k3',1,'[{\"added\": {}}]',16,1),(73,'2017-04-02 02:44:39.014227','3','k1 : c1 : 2 week gardenere training ',1,'[{\"added\": {}}]',14,1),(74,'2017-04-02 02:44:47.545557','4','k2 : c3 : 4 week long gardner course ',1,'[{\"added\": {}}]',14,1),(75,'2017-04-02 02:44:53.231188','5','k3 : c2 : 2 week IT course ',1,'[{\"added\": {}}]',14,1),(76,'2017-04-02 02:45:51.642852','6','k1 : c5 : 2 days farmer course ',1,'[{\"added\": {}}]',14,1),(77,'2017-04-02 02:48:31.444576','4','c5 : 2 days farmer course ',2,'[{\"changed\": {\"fields\": [\"course_level\", \"course_no_of_days\", \"course_minimum_qualification\"]}}]',17,1),(78,'2017-04-02 02:48:58.829552','3','c3 : 4 week long gardner course ',2,'[{\"changed\": {\"fields\": [\"course_level\", \"course_no_of_days\", \"course_minimum_qualification\"]}}]',17,1),(79,'2017-04-02 02:49:23.171304','2','c2 : 2 week IT course ',2,'[{\"changed\": {\"fields\": [\"course_level\", \"course_no_of_days\", \"course_minimum_qualification\"]}}]',17,1),(80,'2017-04-02 02:50:27.713184','1','c1 : 2 week gardenere training ',2,'[{\"changed\": {\"fields\": [\"course_level\", \"course_no_of_days\", \"course_minimum_qualification\"]}}]',17,1),(81,'2017-04-02 02:56:08.878020','4','Test : c1 : 2 week gardenere training  : 2017-04-02',1,'[{\"added\": {}}]',13,1),(82,'2017-04-02 02:56:21.003193','5','Test : c2 : 2 week IT course  : 2017-04-02',1,'[{\"added\": {}}]',13,1),(83,'2017-04-02 05:34:50.388217','3','c1 : 2 week gardenere training  : k1 : 3',1,'[{\"added\": {}}]',20,1),(84,'2017-04-02 05:34:57.491759','4','c2 : 2 week IT course  : 36386 : 4',1,'[{\"added\": {}}]',20,1),(85,'2017-04-02 05:35:06.309323','5','c5 : 2 days farmer course  : 62420 : 5',1,'[{\"added\": {}}]',20,1),(86,'2017-04-02 05:35:16.330042','6','c3 : 4 week long gardner course  : k2 : 6',1,'[{\"added\": {}}]',20,1),(87,'2017-04-02 05:36:20.972082','6','Mrinal mohan : c1 : 2 week gardenere training  : 2017-04-02',1,'[{\"added\": {}}]',13,1),(88,'2017-04-02 07:30:54.949946','21','k8',1,'[{\"added\": {}}]',16,1),(89,'2017-04-02 07:34:54.601482','7','c1 : 2 week gardenere training  : 62420 : 7',1,'[{\"added\": {}}]',20,1),(90,'2017-04-02 07:35:10.763986','8','c1 : 2 week gardenere training  : k1 : 8',1,'[{\"added\": {}}]',20,1),(91,'2017-04-02 07:35:26.340585','9','c1 : 2 week gardenere training  : k8 : 9',1,'[{\"added\": {}}]',20,1),(92,'2017-04-02 07:36:13.465855','10','c1 : 2 week gardenere training  : k1 : 10',1,'[{\"added\": {}}]',20,1),(93,'2017-04-02 08:04:55.186652','17','36386',3,'',16,1),(94,'2017-04-02 08:04:55.326786','14','62420',3,'',16,1),(95,'2017-04-02 10:10:50.036333','1','testappuser@gmail.com',1,'[{\"added\": {}}]',27,1),(96,'2017-04-02 10:11:28.580497','2','appuser1@gmail.com',1,'[{\"added\": {}}]',27,1),(97,'2017-04-02 10:12:25.364394','3','testfdsfdsfs',1,'[{\"added\": {}}]',27,1),(98,'2017-04-02 10:30:55.642180','5','vaibhav',2,'[{\"changed\": {\"fields\": [\"c_email_id\", \"c_contact_number\", \"c_address\", \"c_state_ut\", \"c_district\", \"c_pincode\", \"c_f_name\", \"c_category\", \"c_differently_abled\", \"c_annual_family_income\", \"c_educational_qualification\", \"c_work_experience_months\", \"c_work_experience_desc\", \"c_app_user_email\"]}}]',9,1),(99,'2017-04-02 10:31:20.024950','6','Vaibhav Pandey',1,'[{\"added\": {}}]',12,1),(100,'2017-04-02 10:33:12.053571','2','Vaibhav Pandey',1,'[{\"added\": {}}]',23,1),(101,'2017-04-02 10:38:25.115058','5','vaibhav',2,'[{\"changed\": {\"fields\": [\"c_is_certified\"]}}]',9,1),(102,'2017-04-02 10:39:05.681696','3','Mrinal Mohan',2,'[{\"changed\": {\"fields\": [\"c_contact_number\", \"c_state_ut\", \"c_district\", \"c_is_certified\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(23,'api','aadhardummy'),(12,'api','appuser'),(20,'api','batchinfo'),(9,'api','candidateregistration'),(27,'api','certifiedtraineelist'),(19,'api','coursefeedbackdetail'),(17,'api','courseinfo'),(8,'api','customtest'),(21,'api','employeruser'),(22,'api','jobprofile'),(15,'api','jobrole'),(18,'api','sectorskillcouncil'),(11,'api','stateindia'),(10,'api','statewisedistrict'),(13,'api','studentcourseregistration'),(7,'api','testtable'),(16,'api','trainingcenter'),(14,'api','trainingcentercourse'),(24,'api','trainingcenterjobrole'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-29 05:55:17.418001'),(2,'auth','0001_initial','2017-03-29 05:55:28.393050'),(3,'admin','0001_initial','2017-03-29 05:55:30.799035'),(4,'admin','0002_logentry_remove_auto_add','2017-03-29 05:55:30.992882'),(5,'api','0001_initial','2017-03-29 05:55:31.800430'),(6,'api','0002_delete_tabletest','2017-03-29 05:55:32.064505'),(7,'api','0003_delete_testtable','2017-03-29 05:55:32.330096'),(8,'api','0004_testtable','2017-03-29 05:55:32.688187'),(9,'api','0005_customtest','2017-03-29 05:55:33.065382'),(10,'api','0006_candidateregistration_trainingcenter','2017-03-29 05:55:33.931272'),(11,'api','0007_auto_20170319_1917','2017-03-29 05:55:38.314185'),(12,'api','0008_delete_login_details','2017-03-29 05:55:38.589962'),(13,'api','0009_login_details','2017-03-29 05:55:39.059872'),(14,'api','0010_auto_20170320_0920','2017-03-29 05:55:41.300099'),(15,'api','0011_auto_20170320_1258','2017-03-29 05:55:42.090333'),(16,'api','0012_auto_20170321_0933','2017-03-29 05:55:47.839896'),(17,'api','0013_courseinfo_course_sector','2017-03-29 05:55:50.380401'),(18,'api','0014_trainingcentercourse','2017-03-29 05:55:53.122095'),(19,'api','0015_batchinfo','2017-03-29 05:55:55.798686'),(20,'api','0016_auto_20170321_1710','2017-03-29 05:55:57.589546'),(21,'api','0017_coursefeedbackdetail_stateindia_statewisedistrict_studentcourseregistration','2017-03-29 05:56:08.036885'),(22,'contenttypes','0002_remove_content_type_name','2017-03-29 05:56:09.482284'),(23,'auth','0002_alter_permission_name_max_length','2017-03-29 05:56:09.693408'),(24,'auth','0003_alter_user_email_max_length','2017-03-29 05:56:09.915335'),(25,'auth','0004_alter_user_username_opts','2017-03-29 05:56:10.038815'),(26,'auth','0005_alter_user_last_login_null','2017-03-29 05:56:10.915773'),(27,'auth','0006_require_contenttypes_0002','2017-03-29 05:56:10.960101'),(28,'auth','0007_alter_validators_add_error_messages','2017-03-29 05:56:11.025643'),(29,'auth','0008_alter_user_username_max_length','2017-03-29 05:56:12.696386'),(30,'sessions','0001_initial','2017-03-29 05:56:13.453199'),(31,'api','0018_auto_20170329_1757','2017-03-29 17:57:22.359659'),(32,'api','0019_trainingcenter_password','2017-03-30 19:08:14.863705'),(33,'api','0020_auto_20170331_1034','2017-03-31 10:34:21.143544'),(34,'api','0021_auto_20170331_1037','2017-03-31 10:37:26.000334'),(35,'api','0022_employeruser','2017-04-01 03:23:10.679818'),(36,'api','0023_auto_20170401_0339','2017-04-01 03:39:21.362141'),(37,'api','0024_jobprofile','2017-04-01 04:36:24.465103'),(38,'api','0025_aadhardummy','2017-04-01 05:51:55.434970'),(39,'api','0026_auto_20170401_0553','2017-04-01 05:53:13.693694'),(40,'api','0027_aadhardummy_ad_email','2017-04-01 06:03:46.638075'),(41,'api','0028_aadhardummy_ad_mobile_no','2017-04-01 06:47:01.659359'),(42,'api','0029_auto_20170401_0805','2017-04-01 08:06:07.804887'),(43,'api','0030_auto_20170401_0808','2017-04-01 08:08:38.630489'),(44,'api','0031_auto_20170401_0809','2017-04-01 08:09:08.987977'),(45,'api','0032_auto_20170401_0810','2017-04-01 08:10:26.476015'),(46,'api','0033_auto_20170401_0811','2017-04-01 08:11:28.604193'),(47,'api','0034_auto_20170401_0811','2017-04-01 08:12:01.040181'),(48,'api','0035_auto_20170401_0948','2017-04-01 09:48:43.352754'),(49,'api','0036_trainingcenterjobrole','2017-04-01 11:07:08.161203'),(50,'api','0037_gpstrainingcenter','2017-04-01 12:06:56.748481'),(51,'api','0038_delete_gpstrainingcenter','2017-04-01 12:24:06.390262'),(52,'api','0039_gpstrainingcenter','2017-04-01 12:24:41.392778'),(53,'api','0040_auto_20170401_1258','2017-04-01 12:59:04.521866'),(54,'api','0041_auto_20170402_0133','2017-04-02 01:33:18.522740'),(55,'api','0042_auto_20170402_0155','2017-04-02 01:57:31.760693'),(56,'api','0043_auto_20170402_0238','2017-04-02 02:39:07.842725'),(57,'api','0044_auto_20170402_0247','2017-04-02 02:47:51.853705'),(58,'api','0045_certifiedtraineelist','2017-04-02 08:46:35.655691'),(59,'api','0046_batchinfo_batch_no_of_seats','2017-04-02 08:57:15.398753'),(60,'api','0047_batchinfo_batch_last_date_registration','2017-04-02 08:57:48.214519'),(61,'api','0048_candidateregistration_c_is_certified','2017-04-02 10:37:43.256338');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4bm9hu7tuzgcgc5b1xh1see85xg3hlvp','ZGQ0ODA5NmM0NjY0ZjNkYjdjMjg4M2Q0YjMwY2E4ZTRlNzY3OTk2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzYjk5ODAxYTdiODc0ZjdkZTNiNjU4YjZiYzc1MzA0Yzc3NjVkMzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-15 14:24:22.012180'),('e1unjtfymhyglghj5rt1q4koa2f2ad9w','ZGQ0ODA5NmM0NjY0ZjNkYjdjMjg4M2Q0YjMwY2E4ZTRlNzY3OTk2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzYjk5ODAxYTdiODc0ZjdkZTNiNjU4YjZiYzc1MzA0Yzc3NjVkMzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-14 17:31:40.296156'),('gwfq91tu18kvuxmvxh6v55wqen6jske2','N2EyYWRmNmIwOGQ0ZjVlOGZmZWU5ZjYwM2E2NzYyMDc5NTFkNmZhZDp7ImNlbnRlcl9pZCI6ImsxIn0=','2017-04-15 14:10:53.088045'),('hm4bzfmjfm3tj7h9jyawmnz2gnwmfcpl','MDk1NjFhYzEyMzI4MWRlYzFhNjlmOWFmMDM4MjVhNjk1MjBlNzIyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzYjk5ODAxYTdiODc0ZjdkZTNiNjU4YjZiYzc1MzA0Yzc3NjVkMzkiLCJjZW50ZXJfaWQiOiJrMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-04-12 19:04:39.882156'),('iyue2hoay8pxn29dadm590hw3lhp2zog','N2EyYWRmNmIwOGQ0ZjVlOGZmZWU5ZjYwM2E2NzYyMDc5NTFkNmZhZDp7ImNlbnRlcl9pZCI6ImsxIn0=','2017-04-12 17:11:33.376717'),('m7zrkviv6axhdrkzwbgikgt0j6v2erhz','OGVkNmQ0MGIyMjQ5NzUxZTlkMjI3NjE5YmVjNGY3YmQ3N2ViNmNhNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzYjk5ODAxYTdiODc0ZjdkZTNiNjU4YjZiYzc1MzA0Yzc3NjVkMzkiLCJjZW50ZXJfaWQiOiJrMSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2017-04-15 18:40:55.904611'),('to8k8gjbzbq56u5t9hu2810a5x8upxdd','N2EyYWRmNmIwOGQ0ZjVlOGZmZWU5ZjYwM2E2NzYyMDc5NTFkNmZhZDp7ImNlbnRlcl9pZCI6ImsxIn0=','2017-04-15 20:40:55.642199'),('ui2ekmpywm7e162isijqvjs42fsk256g','N2EyYWRmNmIwOGQ0ZjVlOGZmZWU5ZjYwM2E2NzYyMDc5NTFkNmZhZDp7ImNlbnRlcl9pZCI6ImsxIn0=','2017-04-12 17:02:39.535687'),('vrceri9iejdswtzfz0mgl9tgee5etsgx','MDk1NjFhYzEyMzI4MWRlYzFhNjlmOWFmMDM4MjVhNjk1MjBlNzIyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzYjk5ODAxYTdiODc0ZjdkZTNiNjU4YjZiYzc1MzA0Yzc3NjVkMzkiLCJjZW50ZXJfaWQiOiJrMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-04-12 06:02:37.291508'),('xoaiq97wtlsryyorr59q9mjxoxjptfsq','ZGQ0ODA5NmM0NjY0ZjNkYjdjMjg4M2Q0YjMwY2E4ZTRlNzY3OTk2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzYjk5ODAxYTdiODc0ZjdkZTNiNjU4YjZiYzc1MzA0Yzc3NjVkMzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-16 05:32:24.919946');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_center`
--

DROP TABLE IF EXISTS `training_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` varchar(25) NOT NULL,
  `training_center_state` varchar(25) NOT NULL,
  `training_center_district` varchar(25) DEFAULT NULL,
  `parliamentary_constituency` varchar(25) DEFAULT NULL,
  `training_partner` varchar(200) DEFAULT NULL,
  `training_center_name` varchar(255) DEFAULT NULL,
  `sector_skill_council` varchar(255) DEFAULT NULL,
  `job_role_name` varchar(255) DEFAULT NULL,
  `qp_code` varchar(50) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `no_of_hours` int(11) DEFAULT NULL,
  `target_allocated` int(11) DEFAULT NULL,
  `center_poc_name` varchar(150) DEFAULT NULL,
  `center_poc_email` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `tc_area` varchar(10),
  `tc_grade` varchar(2),
  `tc_no_of_equipments` int(11) NOT NULL,
  `tc_no_of_faculties` int(11) NOT NULL,
  `tc_lat` double DEFAULT NULL,
  `tc_lon` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `training_center_center_id_055a61f3_uniq` (`center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_center`
--

LOCK TABLES `training_center` WRITE;
/*!40000 ALTER TABLE `training_center` DISABLE KEYS */;
INSERT INTO `training_center` VALUES (18,'k1','chhattisgarh','Durg','bhilai','IBM','IBM center','agriculture','Gardener','65',4,56,65,'vjhvjvjhvhj','abcc@dabc.com','nvjhvhjvjhj','1234','2000','A',0,0,29,21),(19,'k2','chhattisgarh','Durg','Bhilai','gjv','TCS center','agriculture','Gardener','65',56,56,65,'sonu agrawal','abcc@dabc.com','sad','1234','2001','A',0,0,11,7),(20,'k3','chhattisgarh','Durg','Bhilai','IBM','jgcg','information technology','data science','65',56,56,123,'sonu agrawal','sonu@sonu.com','nvjhvhjvjhj','hjv','2000','A',0,0,30,23),(21,'k8','wdaw','wdawd','wadawd','dwadaw','dwadaw','dwdawd','wadawd','wdadaw',6,230,67,'dawawdaaw','daww','mnibhjgn','k8','jkhgk','A',8,9,30.5,76.5);
/*!40000 ALTER TABLE `training_center` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-02 16:20:00
