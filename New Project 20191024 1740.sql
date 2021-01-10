-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mm
--

CREATE DATABASE IF NOT EXISTS mm;
USE mm;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `adminname` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminid`,`adminname`,`password`) VALUES 
 (23299,'Anshul Sharma','2029914591');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityid` int(11) NOT NULL auto_increment,
  `cityname` varchar(255) default NULL,
  `statename` varchar(255) default NULL,
  PRIMARY KEY  (`cityid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`cityid`,`cityname`,`statename`) VALUES 
 (1,'Dholpur','Rajasthan'),
 (2,'Gwalior','Madhya Pradesh'),
 (3,'Morena','Madhya Pradesh');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `department` varchar(255) default NULL,
  `designation` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `emailid` varchar(255) default NULL,
  `employeename` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `mobileno` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `picture` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`employeeid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`employeeid`,`address`,`city`,`department`,`designation`,`dob`,`emailid`,`employeename`,`gender`,`mobileno`,`password`,`picture`,`state`,`status`) VALUES 
 (13,'fff','--City--','ECE','Senior Software Engineer','2019-10-08','bvhdb@vbvbf.cc','Anshul Sharma','Male','777','fberhfberbe',NULL,'--State--',''),
 (8,'1/113 housing board colony, infront of shiv mandir,  Dholpur (Raj.)','Dholpur','CSE','Senior Software Engineer','1999-02-20','heroanshulsharma@gmail.com','Anshul Sharma','Male','08741850841','123456',NULL,'Rajasthan','Yes'),
 (10,'','--City--','','','','','',NULL,'','',NULL,'--State--',''),
 (11,'','--City--','','','','','',NULL,'','',NULL,'--State--',''),
 (12,'fff','--City--','ECE','Senior Software Engineer','2019-10-08','bvhdb@vbvbf.cc','Anshul Sharma','Male','777','fberhfberbe',NULL,'--State--','');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `transactionid` int(11) NOT NULL auto_increment,
  `employeeid` int(11) default NULL,
  `issuedate` varchar(255) default NULL,
  `issueto` int(11) default NULL,
  `productid` int(11) default NULL,
  `qtyissue` int(11) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`transactionid`)
) ENGINE=MyISAM AUTO_INCREMENT=1008009805 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` (`transactionid`,`employeeid`,`issuedate`,`issueto`,`productid`,`qtyissue`,`remark`) VALUES 
 (1008009800,123,'2019-10-08',8,15,67,'Good One\r\n'),
 (1008009801,0,'2019-10-04',8,16,6,'ykjiry'),
 (1008009802,0,'2019-10-04',8,16,6,'ykjiry'),
 (1008009803,0,'',8,15,0,''),
 (1008009804,0,'2019-10-22',8,15,10,', ,.');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL auto_increment,
  `employeeid` int(11) default NULL,
  `picture` varchar(255) default NULL,
  `productbatchno` varchar(255) default NULL,
  `productname` varchar(255) default NULL,
  `productrate` varchar(255) default NULL,
  `productstock` varchar(255) default NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`productid`,`employeeid`,`picture`,`productbatchno`,`productname`,`productrate`,`productstock`) VALUES 
 (16,8,NULL,'3','College','free','50'),
 (15,8,NULL,'1','Maggi','free','40');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `transactionid` int(11) NOT NULL auto_increment,
  `employeeid` int(11) default NULL,
  `productid` int(11) default NULL,
  `purchasedate` varchar(255) default NULL,
  `purchasefrom` int(11) default NULL,
  `qtypurchase` int(11) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`transactionid`)
) ENGINE=MyISAM AUTO_INCREMENT=1800181002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`transactionid`,`employeeid`,`productid`,`purchasedate`,`purchasefrom`,`qtypurchase`,`remark`) VALUES 
 (1800181000,5,16,'2019-10-14',8,67,'tdffgdf'),
 (1800181001,5,16,'2019-10-14',8,67,'tdffgdf');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `stateid` int(11) NOT NULL auto_increment,
  `statename` varchar(255) default NULL,
  PRIMARY KEY  (`stateid`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`stateid`,`statename`) VALUES 
 (100,'Andhra Pradesh'),
 (101,'Arunachal Pradesh'),
 (102,'Assam'),
 (103,'Bihar'),
 (104,'Chattisgarh'),
 (105,'Goa'),
 (106,'Gujarat'),
 (107,'Haryana'),
 (108,'Himachal Pradesh'),
 (109,'Jammu &  Kashmir'),
 (110,'Jharkhand'),
 (111,'Karnataka'),
 (112,'Kerela'),
 (113,'Madhya Pradesh'),
 (114,'Maharashtra'),
 (115,'Manipur'),
 (116,'Meghalaya'),
 (117,'Mizoram'),
 (118,'Nagaland'),
 (119,'Odisha'),
 (120,'Punjab'),
 (121,'Rajasthan'),
 (122,'Sikkim'),
 (123,'Tamil Nadu'),
 (124,'Telangana'),
 (125,'Tripura'),
 (126,'Uttarakhand'),
 (127,'Uttar Pradesh'),
 (128,'West Bengal');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
