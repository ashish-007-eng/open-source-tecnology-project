-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: apartment
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t1` (
  `location` varchar(50) DEFAULT NULL,
  `r_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES ('Jalandhar','1BHK'),('Jalandhar','2BHK'),('Jalandhar','3BHK'),('Amritsar','1BHK'),('Amritsar','2BHK'),('Amritsar','3BHK'),('Ludhiana','1BHK'),('Ludhiana','2BHK'),('Ludhiana','3BHK'),('Chandigarh','1BHK'),('Chandigarh','2BHK'),('Chandigarh','3BHK');
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t2` (
  `location` varchar(50) DEFAULT NULL,
  `r_type` varchar(40) DEFAULT NULL,
  `postimage` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` VALUES ('','','','','',NULL),('jalandhar','1BHK','1bhk.jpg','Jalandhar ,Deepnagar','Sunny Thakur Contact:9874563217','12000 per month'),('jalandhar','1BHK','1bhk1.png','Jalandhar ,phagwada','Rajesh Katwal Contact:8988084916','15000 per month'),('jalandhar','1BHK','1bhk2.jpg','jalandhar ,Ramamandi','Rajeev Singh Contact:7708654561','14000 per month'),('jalandhar','2BHK','2bhk1.jpg','Jalandhar ,Deepnagar','Gurpreet Singh Contact:9814562381','25000 per month'),('jalandhar','2BHK','2bhk2.jpeg','Jalandhar ,Phagwada','Manpreet Kaur Contact:7894563211','30000 per month'),('jalandhar','2BHK','2bhk3.jpg','jalandhar ,Ramamandi','Raman Singh Contact:9814569844','32000 per month'),('jalandhar','3BHK','3bhk1.jpg','Jalandhar ,Deepnagar','Sushil Mehta Contact:9638541278','45000 per month'),('jalandhar','3BHK','3bhk2.jpg','Jalandhar ,Phagwada','Sahil Sharma Contact:7812345699','58000 per month'),('jalandhar','3BHK','3bhk3.png','Jalandhar ,Ramamandi','Ashish Mishra Contact:7456123891','62000 per month'),('Amritsar','1BHK','1bhk3.png','Amritsar, Ranjit Avenu','Sahil Sharma Contact:7812345699','18000 per month'),('Amritsar','1BHK','1bhk4.jpg','Amritsar, Putli Ghar','Arjun Kalia Contact:7564123894','20000 per month'),('Amritsar','1BHK','1bhk5.jpg','Amritsar, Hall Gate','Manpreet Kaur Contact:7894563456','16000 per month'),('Amritsar','2BHK','2bhk5.jpg','Amritsar, Ranjit Avenu','Anmol Singh Contact:9876325414','30000 per month'),('Amritsar','2BHK','2bhk6.jpg','Amritsar, Golden Gate','Shivam Rathore Contact:8945671231','33000'),('Amritsar','2BHK','2bhk7.jpg','Amritsar, Hall Gate','Harbilash Sharma Contact:9638521477','30000 per month'),('Amritsar','3BHK','3bhk5.jpg','Amritsar, Ranjit Avenu','Sahil Sharma Contact:7812345699','54000 per month'),('Amritsar','3BHK','3bhk6.jpg','Amritsar, Putli Ghar','Rajesh Katwal Contact:8988084916','56000 per month'),('Amritsar','3BHK','3bhk7.JPG','Amritsar, Golden Gate','Deepak Singh Contact:9635287141','52000 per month'),('Ludhiana','1BHK','1bhk6.jpg','Ludhiana, Local Market','Rajeev Singh Contact:7708654561','15000 per month'),('Ludhiana','1BHK','1bhk7.jpg','Ludhiana, Rajpat Nagar','Tanveer Kaur Contact:9845617231','17000 per month'),('Ludhiana','1BHK','1bhk8.jpg','Ludhiana, Roopnagar','Shivam Rathore Contact:8945671231','18000 per month'),('Ludhiana','2BHK','2bhk8.jpeg','Ludhiana, Local Market','Gurpreet Singh Contact:9814562381','32000 per month'),('Ludhiana','2BHK','2bhk9.jpg','Ludhiana, Rajpat Nagar','Deepak Singh Contact:9635287141','27000 per month'),('Ludhiana','2BHK','2bhk10.jpg','Ludhiana, Roopnagar','Anmol Singh Contact:9876325414','30000 per month'),('Ludhiana','3BHK','3bhk8.jpg','Ludhiana, Local Market','Ashok Singh Contact:9635632221','55000 per month'),('Ludhiana','3BHK','3bhk8.jpg','Ludhiana, Rajpat Nagar','Raman Singh Contact:9814569844','54000 per month'),('Ludhiana','3BHK','3bhk9.jpg','Ludhiana, Roopnagar','Jatin Singh Contact:9635287111','60000 per  month'),('Chandigarh','1BHK','1bhk9.jpg','Chandigarh, Sector 22','Raghav Saini Contact:7884561233','15000 per month'),('Chandigarh','1BHK','1bhk12.jpg','Chandigarh, Sector 42','Sushil Mehta Contact:9638541278','18000 per month'),('Chandigarh','1BHK','1bhk13.jpg','Chandigarh, Mohali Phase-5','Harsh Kapoor Contact:9632584562 ','20000 per month'),('Chandigarh','2BHK','2bhk10.jpg','Chandigarh, Sector 22','Gurpreet Singh Contact:9814562344','28000 per month'),('Chandigarh','2BHK','2bhk11.jpg','Chandigarh, Sector 42','Sanjeev Kumar Contact:7844556211','25000 per month'),('Chandigarh','2BHK','2bhk12.png','Chandigarh, Mohali Phase-5','Anmol Singh Contact:9876325414','27000 per month'),('Chandigarh','3BHK','3bhk11.jpg','Chandigarh, Sector 22','Sunny Thakur Contact:9874563217','55000 per month'),('Chandigarh','3BHK','3bhk12.jpg','Chandigarh, Sector 42','Raghav Saini Contact:7884561233','58000 per month'),('Chandigarh','3BHK','3bhk13.jpg','Chandigarh, Mohali Phase-5','Ajay Singh Contact:9637415628','60000 per  month');
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-10  9:02:30
