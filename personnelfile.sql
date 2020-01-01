-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: personnelfile
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffID` char(5) NOT NULL,
  `staffName` varchar(20) NOT NULL,
  `staffSex` char(1) DEFAULT NULL,
  `staffAge` tinyint(4) DEFAULT NULL,
  `staffEducation` varchar(15) DEFAULT NULL,
  `staffPosition` varchar(10) DEFAULT NULL,
  `staffTitle` varchar(10) DEFAULT NULL,
  `staffAddress` varchar(30) DEFAULT NULL,
  `staffTel` varchar(11) DEFAULT NULL,
  `staffSalaryLevel` varchar(10) DEFAULT NULL,
  `staffDepartment` varchar(6) DEFAULT NULL,
  `working` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('12531','于晨','女',22,'常州大学本科','前端工程师','工程师','常州大学武进校区','15151989125','2-4W','研发部',0),('12537','John','男',28,'哈佛本科','经理','一级律师','太湖2号别墅','13586156123','8-20W','管理部',1),('12580','林锦雄','男',22,'常州大学本科','Java工程师','高级工程师','常州大学武进校区','13270937053','2-4W','研发部',1),('12593','Alice','女',21,'常州大学硕士','部长','高级会计师','常州大学','13196769165','2-4W','人事部',1),('12863','Mery','女',30,'加州理工博士','董事长','高级工程师','太湖3号别墅','12345678910','50-80W','董事',1),('13277','杨卓卓','男',24,'上海交大硕士','总经理','一级建筑师','上海明珠塔','13772655839','30-60W','管理部',0);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-01 21:51:57
