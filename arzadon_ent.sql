/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.34 : Database - arzadon_ent
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `adjustment_details` */

DROP TABLE IF EXISTS `adjustment_details`;

CREATE TABLE `adjustment_details` (
  `adjustmentid` bigint(20) NOT NULL AUTO_INCREMENT,
  `adj_purpose` varchar(500) DEFAULT NULL,
  `adj_time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `warehouseid` bigint(20) DEFAULT NULL,
  `userID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`adjustmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `adjustment_details` */

insert  into `adjustment_details`(`adjustmentid`,`adj_purpose`,`adj_time_stamp`,`warehouseid`,`userID`) values (1,'Adjustment for Actual Count','2017-04-20 15:00:00',2,1),(3,'test','2017-04-20 16:42:27',1,1),(4,'manual iinventory','2017-05-03 14:37:07',1,1),(5,'test','2017-05-14 22:09:46',1,1);

/*Table structure for table `adjustment_items` */

DROP TABLE IF EXISTS `adjustment_items`;

CREATE TABLE `adjustment_items` (
  `adjustmentitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `adjustmentid` bigint(20) DEFAULT NULL,
  `itemno` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `action` varchar(500) DEFAULT NULL,
  `update_status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adjustmentitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `adjustment_items` */

insert  into `adjustment_items`(`adjustmentitemsid`,`adjustmentid`,`itemno`,`unit`,`qty`,`action`,`update_status`,`time_stamp`) values (10,1,482,'PC',2,'ADD',1,'2017-04-20 16:09:20'),(11,1,482,'PC',2,'ADD',1,'2017-04-20 16:09:21'),(12,1,482,'PC',3,'ADD',1,'2017-04-20 16:18:13'),(13,1,482,'PC',6,'ADD',1,'2017-04-20 16:19:36'),(14,1,482,'PC',10,'ADD',1,'2017-04-20 16:19:49'),(15,1,482,'PC',-5,'MINUS',1,'2017-04-20 16:20:05'),(16,3,2,'PC',1,'ADD',1,'2017-04-20 16:42:36'),(17,3,2,'PC',1,'ADD',0,'2017-04-20 16:58:04'),(18,3,2,'PC',1,'ADD',0,'2017-04-20 17:04:02'),(19,3,3,'PC',1,'ADD',0,'2017-04-20 17:04:07'),(20,1,482,'PC',-2,'MINUS',1,'2017-05-03 14:30:20'),(21,1,482,'PC',1,'ADD',1,'2017-05-03 14:33:56'),(22,4,2,'PC',1,'ADD',0,'2017-05-03 14:37:31');

/*Table structure for table `assets` */

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `assetid` bigint(20) NOT NULL AUTO_INCREMENT,
  `asset_article` varchar(500) DEFAULT NULL,
  `asset_particulars` text,
  `asset_classification` varchar(500) DEFAULT NULL,
  `asset_unit` varchar(500) DEFAULT 'PC',
  PRIMARY KEY (`assetid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `assets` */

insert  into `assets`(`assetid`,`asset_article`,`asset_particulars`,`asset_classification`,`asset_unit`) values (2,'Printer','Epson L565 Scan/Print/Fax/Copy','IT Equipment and Softwares','UNIT'),(3,'Others','4GB DDR3  Ram Zappelin (Desktop)','Books','PC'),(4,'Appliance','test','Books','UNIT'),(5,'Others','Acrylic Name Holder 11x3 3/4 (One Sided)','Office Devices','UNIT'),(6,'Tables','Round Plastic Table (Monotop)','Furniture and Fixtures',NULL),(7,'Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','IT Equipment and Softwares','PC');

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `auditid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `sample` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `audit` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cfullname` varchar(300) NOT NULL DEFAULT 'NONE',
  `caddress` text,
  `ccontactno` varchar(300) DEFAULT NULL,
  `ccompany` varchar(500) NOT NULL,
  `customer_time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`cfullname`,`caddress`,`ccontactno`,`ccompany`,`customer_time_stamp`) values (1,'Elvin Casem','address','09468147457','Evenly Ten Web Solutions','2017-11-05 16:12:42');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `empNo` varchar(10) NOT NULL DEFAULT 'NONE',
  `lname` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `mname` varchar(80) NOT NULL,
  `ename` varbinary(100) DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

/*Table structure for table `equipments` */

DROP TABLE IF EXISTS `equipments`;

CREATE TABLE `equipments` (
  `equipNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `assetid` bigint(20) DEFAULT NULL,
  `propertyNo` varchar(100) DEFAULT 'NONE',
  `article` varchar(100) DEFAULT NULL,
  `particulars` text NOT NULL,
  `dateacquired` date NOT NULL DEFAULT '0000-00-00',
  `totalcost` double(10,2) NOT NULL DEFAULT '0.00',
  `issuedto` varchar(500) DEFAULT NULL,
  `enduser` varchar(500) DEFAULT NULL,
  `classification` varchar(200) DEFAULT NULL,
  `accountcode` varchar(100) DEFAULT NULL,
  `service` varchar(100) DEFAULT 'SERVICEABLE',
  `whereabout` text,
  `remarks` text,
  `inventorytag` varchar(100) DEFAULT NULL,
  `supplierID` int(11) DEFAULT '0',
  `barcode` varchar(500) DEFAULT NULL,
  `deliveryid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`equipNo`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `equipments` */

insert  into `equipments`(`equipNo`,`assetid`,`propertyNo`,`article`,`particulars`,`dateacquired`,`totalcost`,`issuedto`,`enduser`,`classification`,`accountcode`,`service`,`whereabout`,`remarks`,`inventorytag`,`supplierID`,`barcode`,`deliveryid`) values (1,1,'100101','Printer','Epson L120 Printer','2017-03-09',4800.00,'12','12','Semi-Expendable','','SERVICABLE',NULL,NULL,'2017-12',3,'321649644704',2),(3,1,'121212','Printer','Epson L120 Printer','2017-03-09',4810.00,'21','mark anthony','Semi-Expendable','121','SERVICABLE','ADMIN 1212','Currently in use 121212','12',5,'121212',1),(5,2,'NONE','Printer','Epson L565 Scan/Print/Fax/Copy','2017-02-22',15000.00,'28','Marvin Mendoza','IT Equipment and Softwares','','SERVICEABLE','','MAC: 44:02:44:4F:03:E7','',5,'',3),(6,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'1',4),(7,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2',4),(8,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'3',4),(9,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'4',4),(10,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'5',4),(11,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'0006',4),(12,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'0007',4),(13,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090001',4),(14,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090002',4),(15,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090003',4),(16,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090004',4),(17,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090005',4),(18,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090006',4),(19,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090007',4),(20,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090008',4),(21,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090009',4),(22,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090010',4),(23,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090011',4),(24,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-090012',4),(25,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-09-0013',4),(26,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-09-0014',4),(27,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-09-0015',4),(28,5,'NONE','Others','Acrylic Name Holder 11x3 3/4 (One Sided)','2017-02-22',0.00,NULL,NULL,'Office Devices',NULL,NULL,NULL,NULL,NULL,22,'2017-09-0016',4),(30,3,'1112222','Others','DDR3 4GB  Ram Zappelin  long d','2017-02-22',0.00,NULL,NULL,'Books','','SERVICEABLE',NULL,NULL,'',5,'2017-09-0001',3),(31,3,'NONE','Others','DDR3 4GB  Ram Zappelin ','2017-02-22',0.00,'28','ELVIN CASEM','Books','','SERVICEABLE',NULL,NULL,'',5,'2017-09-0002',3),(32,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,NULL,NULL,NULL,NULL,22,'2017-04-0001',4),(33,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,NULL,NULL,NULL,NULL,22,'2017-04-0002',4),(34,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,NULL,NULL,NULL,NULL,22,'2017-04-0003',4),(35,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,NULL,NULL,NULL,NULL,22,'2017-04-0004',4),(36,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,NULL,NULL,NULL,NULL,22,'2017-04-0005',4),(37,4,'NONE','Appliance','test','2017-02-22',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,22,NULL,4),(38,4,'NONE','Appliance','test','2017-02-22',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,22,NULL,4),(39,4,'NONE','Appliance','test','2017-02-22',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,22,NULL,4),(40,4,'NONE','Appliance','test','2017-02-22',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,22,NULL,4),(41,4,'NONE','Appliance','test','2017-02-22',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,22,NULL,4),(42,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,'SERVICEABLE','3rd Floor',NULL,NULL,22,'2017-05-0010',4),(43,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,'SERVICEABLE','3rd Floor',NULL,NULL,22,'2017-05-0011',4),(44,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,'SERVICEABLE','3rd Floor',NULL,NULL,22,'2017-05-0012',4),(45,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,'SERVICEABLE','3rd Floor',NULL,NULL,22,'2017-05-0013',4),(46,6,'NONE','Tables','Round Plastic Table (Monotop)','2017-02-22',0.00,NULL,NULL,'Furniture and Fixtures',NULL,'SERVICEABLE','3rd Floor',NULL,NULL,22,'2017-05-0014',4),(47,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,'13','','IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(48,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,'21','','IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(49,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(50,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(51,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(52,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(53,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(54,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(55,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(56,7,'NONE','Desktop','Intel Core i7 Desktop Computer  with mouse and keyboard,avr','2017-05-03',30000.00,NULL,NULL,'IT Equipment and Softwares',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,5),(57,3,'NONE','Others','4GB DDR3  Ram Zappelin (Desktop)','2017-03-09',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,1),(58,3,'NONE','Others','4GB DDR3  Ram Zappelin (Desktop)','2017-03-09',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,1),(59,3,'NONE','Others','4GB DDR3  Ram Zappelin (Desktop)','2017-03-09',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,1),(60,3,'NONE','Others','4GB DDR3  Ram Zappelin (Desktop)','2017-03-09',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,1),(61,3,'NONE','Others','4GB DDR3  Ram Zappelin (Desktop)','2017-03-09',0.00,NULL,NULL,'Books',NULL,'SERVICEABLE',NULL,NULL,NULL,5,NULL,1);

/*Table structure for table `equipments_details` */

DROP TABLE IF EXISTS `equipments_details`;

CREATE TABLE `equipments_details` (
  `equipdetailsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `equipNo` bigint(20) NOT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  `processor` varchar(200) NOT NULL DEFAULT 'NONE',
  `ram` varchar(100) NOT NULL DEFAULT 'NONE',
  `hd` varchar(100) NOT NULL DEFAULT 'NONE',
  `operatingsystem` varchar(100) NOT NULL DEFAULT 'NONE',
  `brand` varchar(200) NOT NULL DEFAULT 'NONE',
  `color` varchar(100) NOT NULL DEFAULT 'NONE',
  `others` text NOT NULL,
  `equipsn` varchar(500) DEFAULT NULL,
  `processorsn` varchar(500) DEFAULT NULL,
  `monitorsn` varchar(500) DEFAULT NULL,
  `keyboardsn` varchar(500) DEFAULT NULL,
  `mousesn` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`equipdetailsid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `equipments_details` */

insert  into `equipments_details`(`equipdetailsid`,`equipNo`,`assetid`,`processor`,`ram`,`hd`,`operatingsystem`,`brand`,`color`,`others`,`equipsn`,`processorsn`,`monitorsn`,`keyboardsn`,`mousesn`) values (1,1,1,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(3,3,1,'proc 1212','4GB1212','1TB1212','Windows71212','NONE','NONE','','234561212','213131212','66431212','kb6351212','ms73671212'),(5,5,2,'NONE','NONE','NONE','NONE','NONE','NONE','','VJLY038030','','','',''),(6,6,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(7,7,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(8,8,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(9,9,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(10,10,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(11,11,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(12,12,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(13,13,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(14,14,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(15,15,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(16,16,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(17,17,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(18,18,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(19,19,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(20,20,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(21,21,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(22,22,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(23,23,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(24,24,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(25,25,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(26,26,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(27,27,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(28,28,5,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(30,30,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(31,31,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(32,32,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(33,33,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(34,34,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(35,35,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(36,36,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(37,37,4,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(38,38,4,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(39,39,4,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(40,40,4,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(41,41,4,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(42,42,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(43,43,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(44,44,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(45,45,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(46,46,6,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(47,47,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(48,48,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(49,49,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(50,50,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(51,51,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(52,52,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(53,53,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(54,54,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(55,55,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(56,56,7,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(57,57,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(58,58,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(59,59,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(60,60,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL),(61,61,3,'NONE','NONE','NONE','NONE','NONE','NONE','',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `equipments_ics` */

DROP TABLE IF EXISTS `equipments_ics`;

CREATE TABLE `equipments_ics` (
  `icsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `icsno` varchar(500) DEFAULT NULL,
  `icsdate` date DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`icsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ics` */

insert  into `equipments_ics`(`icsid`,`icsno`,`icsdate`,`eid`) values (2,'2017-04-05','2017-04-05',43);

/*Table structure for table `equipments_ics_items` */

DROP TABLE IF EXISTS `equipments_ics_items`;

CREATE TABLE `equipments_ics_items` (
  `icsitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `icsid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`icsitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ics_items` */

insert  into `equipments_ics_items`(`icsitemsid`,`icsid`,`equipno`,`assetid`) values (1,1,3,'1'),(2,2,3,'');

/*Table structure for table `equipments_log` */

DROP TABLE IF EXISTS `equipments_log`;

CREATE TABLE `equipments_log` (
  `equiplogid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tab` varchar(100) DEFAULT NULL,
  `logdescription` text,
  PRIMARY KEY (`equiplogid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_log` */

insert  into `equipments_log`(`equiplogid`,`tab`,`logdescription`) values (1,'users','Issued to: 14, End User: 14'),(2,'users','Issued to: 12, End User: 12'),(3,'users','Issued to: 21, End User: 21'),(4,'remarks','Whereabout: ADMIN, Remarks: Currently in use'),(5,'Pheriperal','proc,4GB,1TB,Windows7,23456,21313,6643,kb635,ms7367'),(6,'remarks','Whereabout: , Remarks: MAC: 44:02:44:4F:03:E7'),(7,'Pheriperal','NONE,NONE,NONE,NONE,VJLY038030,,,,'),(8,'users','Issued to: 28, End User: Marvin Mendoza'),(9,'users','Issued to: 21, End User: mark anthony'),(10,'remarks','Whereabout: ADMIN, Remarks: Currently in use 121212'),(11,'remarks','Whereabout: ADMIN 1212, Remarks: Currently in use 121212'),(12,'Pheriperal','proc 1212,4GB1212,1TB1212,Windows71212,234561212,213131212,66431212,kb6351212,ms73671212'),(13,'Pheriperal','proc 1212,4GB1212,1TB1212,Windows71212,234561212,213131212,66431212,kb6351212,ms73671212'),(14,'users','Issued to: 28, End User: ELVIN CASEM'),(15,'users','Issued to: 13, End User: '),(16,'users','Issued to: 21, End User: ');

/*Table structure for table `equipments_par` */

DROP TABLE IF EXISTS `equipments_par`;

CREATE TABLE `equipments_par` (
  `parid` bigint(20) NOT NULL AUTO_INCREMENT,
  `parno` varchar(500) DEFAULT NULL,
  `pardate` date DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`parid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_par` */

insert  into `equipments_par`(`parid`,`parno`,`pardate`,`eid`) values (2,'2017-001','2017-04-01',13);

/*Table structure for table `equipments_par_items` */

DROP TABLE IF EXISTS `equipments_par_items`;

CREATE TABLE `equipments_par_items` (
  `paritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `parid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`paritemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_par_items` */

insert  into `equipments_par_items`(`paritemsid`,`parid`,`equipno`,`assetid`) values (1,2,8,'5');

/*Table structure for table `equipments_ptr` */

DROP TABLE IF EXISTS `equipments_ptr`;

CREATE TABLE `equipments_ptr` (
  `ptrid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptrno` varchar(500) DEFAULT NULL,
  `ptrdate` date DEFAULT NULL,
  `fromoffice` varchar(500) DEFAULT NULL,
  `tooffice` varchar(500) DEFAULT NULL,
  `transfertype` varchar(500) DEFAULT NULL,
  `transferreason` text,
  PRIMARY KEY (`ptrid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ptr` */

insert  into `equipments_ptr`(`ptrid`,`ptrno`,`ptrdate`,`fromoffice`,`tooffice`,`transfertype`,`transferreason`) values (3,'22222','2017-04-10','ADMIN','CCS','CCS','Procurement');

/*Table structure for table `equipments_ptr_items` */

DROP TABLE IF EXISTS `equipments_ptr_items`;

CREATE TABLE `equipments_ptr_items` (
  `ptritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptrid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ptritemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ptr_items` */

insert  into `equipments_ptr_items`(`ptritemsid`,`ptrid`,`equipno`,`assetid`) values (27,3,3,0);

/*Table structure for table `equipments_receiving` */

DROP TABLE IF EXISTS `equipments_receiving`;

CREATE TABLE `equipments_receiving` (
  `deliveryid` bigint(11) NOT NULL AUTO_INCREMENT,
  `supplierid` bigint(20) DEFAULT NULL,
  `status` varchar(500) DEFAULT 'PENDING',
  `receivedate` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `aprid` bigint(20) DEFAULT NULL,
  `pono` varchar(500) DEFAULT NULL,
  `poid` bigint(20) DEFAULT NULL,
  `invoiceno` varchar(500) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `equipments_receiving` */

insert  into `equipments_receiving`(`deliveryid`,`supplierid`,`status`,`receivedate`,`drno`,`aprno`,`aprid`,`pono`,`poid`,`invoiceno`,`time_stamp`) values (1,5,'PENDING','2017-03-09','1111',NULL,0,NULL,0,'','2017-03-09 14:48:36'),(2,3,'PENDING','2017-03-09','222',NULL,0,NULL,0,'','2017-03-09 15:03:18'),(3,5,'PENDING','2017-02-22','1944',NULL,0,NULL,0,'','2017-03-16 12:09:04'),(4,22,'PENDING','2017-02-22','Inventory-20170222',NULL,0,NULL,0,'','2017-03-24 09:11:04'),(5,5,'PENDING','2017-05-03','54654q',NULL,0,NULL,1,'','2017-05-03 14:51:29'),(6,5,'PENDING','2017-05-03','jhgyt576',NULL,0,NULL,1,'','2017-05-03 15:00:49');

/*Table structure for table `equipments_receiving_items` */

DROP TABLE IF EXISTS `equipments_receiving_items`;

CREATE TABLE `equipments_receiving_items` (
  `deliveryitemsid` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryid` varchar(500) DEFAULT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT '0.00',
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`deliveryitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `equipments_receiving_items` */

insert  into `equipments_receiving_items`(`deliveryitemsid`,`deliveryid`,`assetid`,`unit`,`qty`,`unitprice`,`status`,`time_stamp`) values (2,'1',1,'PC',2,4800.00,1,'2017-03-09 15:27:56'),(3,'2',1,'UNIT',2,4800.00,1,'2017-03-09 15:27:45'),(4,'3',2,'UNIT',1,15000.00,1,'2017-03-16 12:12:56'),(5,'3',3,'PC',2,0.00,1,'2017-03-24 11:37:14'),(7,'4',5,'PC',2,0.00,1,'2017-03-24 10:36:52'),(8,'4',5,'PC',3,0.00,1,'2017-03-24 10:38:56'),(9,'4',5,'PC',2,0.00,1,'2017-03-24 10:40:31'),(10,'4',5,'PC',12,0.00,1,'2017-03-24 10:42:01'),(11,'4',5,'PC',5,0.00,1,'2017-03-24 10:42:49'),(12,'4',6,'PC',5,0.00,1,'2017-03-29 11:31:28'),(13,'4',4,'PC',5,0.00,1,'2017-03-31 07:52:41'),(14,'4',6,'PC',5,0.00,1,'2017-03-31 07:59:11'),(15,'5',7,'UNIT',10,30000.00,1,'2017-05-03 14:52:49'),(16,'1',3,'PC',5,0.00,1,'2017-05-03 14:59:08');

/*Table structure for table `equipments_rre` */

DROP TABLE IF EXISTS `equipments_rre`;

CREATE TABLE `equipments_rre` (
  `rreid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rreno` varchar(500) DEFAULT NULL,
  `rredate` date DEFAULT NULL,
  `rre_enduser` varchar(500) DEFAULT NULL,
  `rre_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rreid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_rre` */

insert  into `equipments_rre`(`rreid`,`rreno`,`rredate`,`rre_enduser`,`rre_timestamp`) values (1,'2017-0417','2017-04-18','ELVIN CASEM1','2017-04-17 10:19:57'),(3,'2017-001-01','2017-04-17','Elvin Casem','2017-04-17 10:41:15');

/*Table structure for table `equipments_rre_items` */

DROP TABLE IF EXISTS `equipments_rre_items`;

CREATE TABLE `equipments_rre_items` (
  `rreitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rreid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  `paricsno` varchar(500) DEFAULT NULL,
  `enduseroffice` varchar(500) DEFAULT NULL,
  `rre_remarks` text,
  PRIMARY KEY (`rreitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `equipments_rre_items` */

insert  into `equipments_rre_items`(`rreitemsid`,`rreid`,`equipno`,`assetid`,`paricsno`,`enduseroffice`,`rre_remarks`) values (3,1,5,2,'rawer','ELVIN CASEM1','era'),(4,3,5,2,'3848','lynnette','me'),(5,3,6,5,'','lynnette','');

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL AUTO_INCREMENT,
  `itemNo` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datereceived` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inventory` */

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `itemNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(500) DEFAULT NULL,
  `description` text,
  `category` varchar(500) DEFAULT NULL,
  `unit` varchar(20) NOT NULL DEFAULT 'PC',
  `unitCost` double(10,2) NOT NULL DEFAULT '0.00',
  `purchase_unit` varchar(500) DEFAULT 'PC',
  `purchase_qty_equivalent` int(11) DEFAULT '1',
  `price` double(10,2) DEFAULT '0.00',
  `inventory_qty` int(11) DEFAULT '0',
  `supplierID` int(11) DEFAULT '0',
  `brand` varchar(200) DEFAULT 'NONE',
  `warehouseid` bigint(20) DEFAULT NULL,
  `application` varchar(500) DEFAULT NULL,
  `part_number` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `items` */

insert  into `items`(`itemNo`,`itemname`,`description`,`category`,`unit`,`unitCost`,`purchase_unit`,`purchase_qty_equivalent`,`price`,`inventory_qty`,`supplierID`,`brand`,`warehouseid`,`application`,`part_number`) values (2,'Bearing','','Office Supply','PC',0.00,'PC',1,0.00,0,0,'',1,'','');

/*Table structure for table `items_buom` */

DROP TABLE IF EXISTS `items_buom`;

CREATE TABLE `items_buom` (
  `item_buom_id` int(11) NOT NULL AUTO_INCREMENT,
  `itemNo` int(11) DEFAULT NULL,
  `base_qty` int(11) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `equiv_qty` int(11) DEFAULT NULL,
  `equiv_unit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item_buom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `items_buom` */

insert  into `items_buom`(`item_buom_id`,`itemNo`,`base_qty`,`base_unit`,`equiv_qty`,`equiv_unit`) values (1,39,10,'PC',1,'PACK'),(3,39,100,'PC',1,'BOX'),(4,70,12,'PC',1,'BOX'),(5,71,12,'PC',1,'BOX'),(6,72,12,'PC',1,'BOX'),(10,10,12,'PC',1,'BOX'),(11,5,100,'PC',1,'BOX'),(12,83,50,'PC',1,'REAM'),(13,94,100,'PC',1,'REAM'),(14,106,10,'PC',1,'BOX'),(15,9,12,'PC',1,'BOX'),(16,0,0,'',0,'BOX'),(17,2,12,'PC',1,'BOX');

/*Table structure for table `items_buom_list` */

DROP TABLE IF EXISTS `items_buom_list`;

CREATE TABLE `items_buom_list` (
  `uomid` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) DEFAULT NULL,
  `unit_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uomid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `items_buom_list` */

insert  into `items_buom_list`(`uomid`,`unit_name`,`unit_description`) values (1,'PC','Piece'),(2,'REAM','Ream'),(3,'BOX','Box'),(4,'BOTTLE','Bottle'),(5,'PACK','Pack'),(6,'ROLL','Roll'),(7,'UNIT','Unit'),(8,'BAR','Bar'),(9,'BOOK','Book'),(10,'BUNDLE','Bundle'),(11,'CAN','Can'),(12,'CART','Cart'),(13,'CONT','Cont'),(14,'JAR','Jar'),(15,'PAD','Pad'),(16,'PAIR','Pair'),(17,'POUCH','Pouch'),(18,'SET','Set'),(19,'TUBE','Tube');

/*Table structure for table `items_category` */

DROP TABLE IF EXISTS `items_category`;

CREATE TABLE `items_category` (
  `itemscategoryid` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`itemscategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `items_category` */

insert  into `items_category`(`itemscategoryid`,`category_value`) values (1,'Office Supply'),(2,'Office Supply (DBM)'),(3,'COMMON ELECTRICAL SUPPLIES (DBM)'),(4,'COMMON OFFICE SUPPLIES (DBM)'),(5,'COMMON JANITORIAL SUPPLIES (DBM)'),(6,'COMMON OFFICE EQUIPMENT (DBM)'),(7,'COMMON COMPUTER SUPPLIES (DBM)'),(8,'HANDBOOK ON PROCUREMENT (DBM)'),(9,'CONSUMABLES (DBM)'),(10,'COMMON ELECTRICAL SUPPLIES'),(11,'COMMON OFFICE SUPPLIES'),(12,'COMMON JANITORIAL SUPPLIES'),(13,'COMMON OFFICE EQUIPMENT'),(14,'COMMON COMPUTER SUPPLIES'),(15,'CONSUMABLES');

/*Table structure for table `items_price_history` */

DROP TABLE IF EXISTS `items_price_history`;

CREATE TABLE `items_price_history` (
  `itemspriceid` bigint(20) NOT NULL AUTO_INCREMENT,
  `items_itemno` bigint(20) DEFAULT NULL,
  `items_price` double(10,2) DEFAULT NULL,
  `price_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`itemspriceid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `items_price_history` */

insert  into `items_price_history`(`itemspriceid`,`items_itemno`,`items_price`,`price_timestamp`) values (1,2,101.00,NULL);

/*Table structure for table `items_unitcost_history` */

DROP TABLE IF EXISTS `items_unitcost_history`;

CREATE TABLE `items_unitcost_history` (
  `itemscostid` bigint(20) NOT NULL AUTO_INCREMENT,
  `items_itemno` bigint(20) DEFAULT NULL,
  `items_unitcost` double(10,2) DEFAULT NULL,
  `cost_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`itemscostid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `items_unitcost_history` */

insert  into `items_unitcost_history`(`itemscostid`,`items_itemno`,`items_unitcost`,`cost_timestamp`) values (1,2,8.00,NULL);

/*Table structure for table `labor_services` */

DROP TABLE IF EXISTS `labor_services`;

CREATE TABLE `labor_services` (
  `laborid` bigint(20) NOT NULL AUTO_INCREMENT,
  `laborname` varchar(500) DEFAULT NULL,
  `laborcost` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`laborid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `labor_services` */

insert  into `labor_services`(`laborid`,`laborname`,`laborcost`) values (1,'Replace Compressor Filter',150.00),(2,'Leak Vacuum and Freon',300.00),(3,'Freon Charging',300.00);

/*Table structure for table `purchase_apr` */

DROP TABLE IF EXISTS `purchase_apr`;

CREATE TABLE `purchase_apr` (
  `aprid` bigint(20) NOT NULL AUTO_INCREMENT,
  `aprdate` date DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `apritimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedby` bigint(20) DEFAULT NULL,
  `modeofprocurement` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`aprid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_apr` */

insert  into `purchase_apr`(`aprid`,`aprdate`,`aprno`,`apritimestamp`,`addedby`,`modeofprocurement`) values (1,'2017-03-12','2017-001','2017-03-12 20:20:26',1,NULL);

/*Table structure for table `purchase_apr_items` */

DROP TABLE IF EXISTS `purchase_apr_items`;

CREATE TABLE `purchase_apr_items` (
  `apritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `aprid` bigint(20) DEFAULT NULL,
  `itemid` bigint(20) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(300) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `availability` varchar(300) DEFAULT 'NO',
  PRIMARY KEY (`apritemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_apr_items` */

insert  into `purchase_apr_items`(`apritemsid`,`aprid`,`itemid`,`description`,`qty`,`unit`,`unitprice`,`availability`) values (1,1,172,'CLIP, backfold, 19mm, 12 pieces per box',1,'BOX',7000.28,'NO'),(2,1,196,'FOLDER, Tagboard, A4, 100 pieces per pack',1,'PACK',179.28,'YES'),(3,1,159,'FLUORESCENT LAMP, tubular, 28 watts',1,'TUBE',114.40,'NO'),(5,1,2,'Tissue',1,'PC',8.00,'NO');

/*Table structure for table `purchase_po` */

DROP TABLE IF EXISTS `purchase_po`;

CREATE TABLE `purchase_po` (
  `poid` bigint(20) NOT NULL AUTO_INCREMENT,
  `podate` date DEFAULT NULL,
  `pono` varchar(500) DEFAULT NULL,
  `prid` varchar(500) DEFAULT NULL,
  `prno` varchar(500) NOT NULL,
  `supplierid` varchar(500) DEFAULT NULL,
  `modeofprocurement` varchar(500) DEFAULT NULL,
  `placeofdelivery` varchar(500) DEFAULT NULL,
  `dateofdelivery` date DEFAULT NULL,
  `deliveryterm` varchar(500) DEFAULT NULL,
  `paymentterm` varchar(500) DEFAULT NULL,
  `addedby` bigint(20) DEFAULT NULL,
  `potimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amountinwords` text,
  PRIMARY KEY (`poid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_po` */

insert  into `purchase_po`(`poid`,`podate`,`pono`,`prid`,`prno`,`supplierid`,`modeofprocurement`,`placeofdelivery`,`dateofdelivery`,`deliveryterm`,`paymentterm`,`addedby`,`potimestamp`,`amountinwords`) values (1,'2017-04-06','1111','24','TMP2017-007','5','SHOPPING','','2017-04-06','','',1,'2017-04-06 14:08:18',NULL);

/*Table structure for table `purchase_po_items` */

DROP TABLE IF EXISTS `purchase_po_items`;

CREATE TABLE `purchase_po_items` (
  `poitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `poid` bigint(20) DEFAULT NULL,
  `itemid` bigint(20) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(300) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `availability` varchar(300) DEFAULT 'YES',
  PRIMARY KEY (`poitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_po_items` */

insert  into `purchase_po_items`(`poitemsid`,`poid`,`itemid`,`description`,`qty`,`unit`,`unitprice`,`availability`) values (1,1,108,'Epson with Fax bottomless',1,'UNIT',1500.00,'YES'),(2,1,109,'Desktop RAM DDR3 4GB',2,'PC',1398.00,'YES'),(3,1,110,'SATA Desktop HD 4TB',1,'PC',500.00,'YES'),(4,1,111,'TP-Link ROUTER TLWR940N',1,'UNIT',0.00,'YES');

/*Table structure for table `purchase_pr` */

DROP TABLE IF EXISTS `purchase_pr`;

CREATE TABLE `purchase_pr` (
  `prid` bigint(20) NOT NULL AUTO_INCREMENT,
  `prdate` date DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `aprdate` date DEFAULT NULL,
  `prno` varchar(500) NOT NULL,
  `department` varchar(500) DEFAULT NULL,
  `section` varchar(500) DEFAULT NULL,
  `purpose` text,
  `addedby` bigint(20) DEFAULT NULL,
  `prtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `awardedsupplier` bigint(20) DEFAULT '0',
  `modeofprocurement` varchar(500) DEFAULT NULL,
  `awardreason` text,
  `requestedby` varchar(500) DEFAULT NULL,
  `prstatus` varchar(500) DEFAULT 'PENDING',
  PRIMARY KEY (`prid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_pr` */

insert  into `purchase_pr`(`prid`,`prdate`,`aprno`,`aprdate`,`prno`,`department`,`section`,`purpose`,`addedby`,`prtimestamp`,`awardedsupplier`,`modeofprocurement`,`awardreason`,`requestedby`,`prstatus`) values (22,'2017-03-08','',NULL,'2017-111','Technical','','For Office Use',1,'2017-03-08 17:20:07',0,'SHOPPING',NULL,NULL,'PENDING'),(23,'2017-03-08','','0000-00-00','2017-222','','','',1,'2017-03-08 17:32:29',0,'SHOPPING',NULL,'12','CANCELLED'),(24,'2017-03-16','',NULL,'TMP2017-007','HEMIS','','Office Use',8,'2017-03-16 11:33:32',5,'SHOPPING','',NULL,'PENDING'),(25,'2017-04-06','','2017-04-15','2017-','Department','Section','',1,'2017-04-06 11:50:10',0,'','','44','APPROVED'),(26,'2017-05-02','',NULL,'2017-123','','','',6,'2017-05-02 20:32:03',0,'',NULL,'44','PENDING'),(27,'2017-05-02','',NULL,'2017-231231','','','',6,'2017-05-02 20:33:12',0,'',NULL,'44','PENDING'),(28,'2017-05-02','',NULL,'2017-2231','','','',6,'2017-05-02 20:37:56',0,'',NULL,'44','PENDING'),(29,'2017-05-02','','0000-00-00','2017-12','College of Computer Science','','',6,'2017-05-02 21:21:42',0,'',NULL,'44','APPROVED');

/*Table structure for table `purchase_pr_aoc` */

DROP TABLE IF EXISTS `purchase_pr_aoc`;

CREATE TABLE `purchase_pr_aoc` (
  `aocid` bigint(20) NOT NULL AUTO_INCREMENT,
  `prid` bigint(20) DEFAULT NULL,
  `pritemsid` bigint(20) DEFAULT NULL,
  `supplierid` bigint(20) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`aocid`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_pr_aoc` */

insert  into `purchase_pr_aoc`(`aocid`,`prid`,`pritemsid`,`supplierid`,`unitprice`) values (114,23,107,16,30.00),(115,24,108,5,1500.00),(116,24,109,5,1398.00),(117,24,110,5,500.00),(118,24,111,5,0.00),(121,25,112,3,0.00),(122,22,106,2,50.00),(123,22,113,2,30.00),(124,22,106,4,10.00),(125,22,113,4,30.00),(126,22,106,5,0.00),(127,22,113,5,0.00);

/*Table structure for table `purchase_pr_items` */

DROP TABLE IF EXISTS `purchase_pr_items`;

CREATE TABLE `purchase_pr_items` (
  `pritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `prid` bigint(20) DEFAULT NULL,
  `itemid` bigint(20) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(300) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `availability` varchar(300) DEFAULT 'NO',
  PRIMARY KEY (`pritemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_pr_items` */

insert  into `purchase_pr_items`(`pritemsid`,`prid`,`itemid`,`description`,`qty`,`unit`,`unitprice`,`availability`) values (106,22,11,'Staple Remover',5,'PC',50.00,'NO'),(107,23,39,'Specialty Paper',5,'PC',0.00,'NO'),(108,24,0,'Epson with Fax bottomless',1,'UNIT',0.00,'NO'),(109,24,0,'Desktop RAM DDR3 4GB',2,'PC',0.00,'NO'),(110,24,0,'SATA Desktop HD 4TB',1,'PC',0.00,'NO'),(111,24,0,'TP-Link ROUTER TLWR940N',1,'UNIT',0.00,'NO'),(112,25,11,'Staple Remover',1,'PC',0.00,'NO'),(113,22,0,'Water Pitcher',1,'PC',40.00,'NO'),(115,29,0,'Intel Core i7 Desktop PC',2,'UNIT',0.00,'NO'),(116,22,0,'Bottomless printer',1,'PC',0.00,'NO');

/*Table structure for table `purchase_receiving` */

DROP TABLE IF EXISTS `purchase_receiving`;

CREATE TABLE `purchase_receiving` (
  `deliveryid` bigint(11) NOT NULL AUTO_INCREMENT,
  `supplierid` bigint(20) DEFAULT NULL,
  `status` varchar(500) DEFAULT 'PENDING',
  `receivedate` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `aprid` bigint(20) DEFAULT NULL,
  `pono` varchar(500) DEFAULT NULL,
  `poid` bigint(20) DEFAULT NULL,
  `invoiceno` varchar(500) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `warehouseid` bigint(20) DEFAULT NULL,
  `purpose` text,
  `prid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_receiving` */

insert  into `purchase_receiving`(`deliveryid`,`supplierid`,`status`,`receivedate`,`drno`,`aprno`,`aprid`,`pono`,`poid`,`invoiceno`,`time_stamp`,`warehouseid`,`purpose`,`prid`) values (2,2,'PENDING','2017-03-12','123',NULL,0,NULL,0,'','2017-03-12 17:38:12',1,NULL,NULL),(3,21,'PENDING','2017-03-12','111',NULL,1,NULL,0,'','2017-03-12 20:22:10',1,'For Office Use',NULL),(5,1,'PENDING','2017-05-01','777',NULL,0,NULL,0,'','2017-05-01 14:00:14',1,'',23),(6,1,'PENDING','2017-08-08','123456',NULL,0,NULL,0,'','2017-08-08 21:11:09',4,NULL,0);

/*Table structure for table `purchase_receiving_items` */

DROP TABLE IF EXISTS `purchase_receiving_items`;

CREATE TABLE `purchase_receiving_items` (
  `deliveryitemsid` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryid` varchar(500) DEFAULT NULL,
  `drno` varchar(500) DEFAULT NULL,
  `itemNo` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitcost` double(10,2) DEFAULT '0.00',
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datereceived` date DEFAULT NULL,
  `warehouseid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`deliveryitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_receiving_items` */

insert  into `purchase_receiving_items`(`deliveryitemsid`,`deliveryid`,`drno`,`itemNo`,`unit`,`qty`,`unitcost`,`status`,`time_stamp`,`datereceived`,`warehouseid`) values (1,'2','123',51,'PC',10,9.00,1,'2017-03-12 17:40:05',NULL,1),(2,'2','123',45,'PC',10,11.00,1,'2017-03-12 17:40:05',NULL,1),(3,'3','111',172,'BOX',1,20.00,1,'2017-03-12 21:14:20',NULL,1),(4,'3','111',196,'PACK',1,30.00,1,'2017-03-12 21:14:20',NULL,1),(6,'2','123',33,'REAM',1,0.00,1,'2017-04-20 16:23:42',NULL,1),(7,'2','123',33,'REAM',1,0.00,1,'2017-04-20 16:24:07',NULL,1),(8,'2','123',33,'REAM',1,0.00,1,'2017-04-20 16:24:07',NULL,1),(9,'3','111',172,'',1,179.28,1,'2017-08-06 07:25:43',NULL,1),(10,'3','111',12,'BOX',1,0.00,1,'2017-08-06 07:25:43',NULL,1),(12,'3','111',39,'BOX',1,0.00,1,'2017-08-06 07:25:43',NULL,1);

/*Table structure for table `requisition_details` */

DROP TABLE IF EXISTS `requisition_details`;

CREATE TABLE `requisition_details` (
  `reqid` bigint(20) NOT NULL AUTO_INCREMENT,
  `requisition_no` varchar(100) DEFAULT NULL,
  `requisition_date` date DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `logtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requisition_status` varchar(100) NOT NULL DEFAULT 'NONE',
  `purpose` text,
  `warehouseid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `requisition_details` */

insert  into `requisition_details`(`reqid`,`requisition_no`,`requisition_date`,`eid`,`userID`,`logtime`,`requisition_status`,`purpose`,`warehouseid`) values (1,'RIS2017-00002','2017-03-09',15,1,'2017-03-12 22:07:37','NONE','right',1),(2,'RIS2017-00003','2017-03-09',31,1,'2017-03-12 22:07:38','NONE','purpose',1),(3,'RIS2017-00004','2017-03-12',0,1,'2017-03-12 22:32:15','NONE','test2',2),(4,'RIS2017-00005','2017-04-11',15,1,'2017-04-11 10:50:17','NONE','',1),(5,'RIS2017-00006','2017-01-01',0,1,'2017-05-03 04:46:53','NONE','test',1),(6,'RIS2017-00007','2017-02-17',17,1,'2017-05-03 04:47:03','NONE','test',1),(7,'RIS2017-00008','2017-05-04',0,1,'2017-05-03 05:22:37','NONE','',1),(8,'RIS2017-00009','2017-03-01',0,1,'2017-05-03 05:22:53','NONE','',1),(9,'RIS2017-00010','2017-03-15',0,1,'2017-05-03 05:22:59','NONE','',1),(10,'RIS2017-00011','2017-01-08',0,1,'2017-05-03 05:23:15','NONE','',1),(11,'RIS2017-00012','2017-01-11',0,1,'2017-05-03 05:23:21','NONE','',1);

/*Table structure for table `requisition_items` */

DROP TABLE IF EXISTS `requisition_items`;

CREATE TABLE `requisition_items` (
  `reqitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reqid` bigint(20) DEFAULT NULL,
  `requisition_no` varchar(100) DEFAULT NULL,
  `itemno` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `update_status` int(11) DEFAULT '0',
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reqitemsid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `requisition_items` */

insert  into `requisition_items`(`reqitemsid`,`reqid`,`requisition_no`,`itemno`,`unit`,`qty`,`update_status`,`time_stamp`) values (1,1,'RIS2017-00002',51,'PC',5,1,'2017-03-12 17:50:51'),(2,1,'RIS2017-00002',45,'PC',5,1,'2017-03-12 17:51:03'),(4,1,'RIS2017-00002',172,'BOX',1,1,'2017-03-12 21:14:43'),(5,3,'RIS2017-00004',482,'PC',1,1,'2017-03-12 22:32:23'),(6,1,'RIS2017-00002',172,'BOX',2,1,'2017-04-19 09:09:32'),(7,1,'RIS2017-00002',172,'BOX',100,1,'2017-04-19 09:13:44'),(8,1,'RIS2017-00002',172,'BOX',1000,1,'2017-04-19 09:13:52'),(9,3,'RIS2017-00004',482,'PC',3,1,'2017-04-20 16:14:01'),(10,3,'RIS2017-00004',482,'PC',1,1,'2017-04-20 16:15:43'),(11,3,'RIS2017-00004',482,'PC',1,1,'2017-04-20 16:17:42'),(12,3,'RIS2017-00004',482,'PC',1,1,'2017-04-20 16:17:43');

/*Table structure for table `services_customer` */

DROP TABLE IF EXISTS `services_customer`;

CREATE TABLE `services_customer` (
  `customerid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cemail` varchar(300) NOT NULL DEFAULT 'NONE',
  `clname` varchar(300) DEFAULT NULL,
  `cfname` varchar(300) NOT NULL,
  `cmname` varchar(300) DEFAULT NULL,
  `caddress` text,
  `cmobileno` varchar(300) DEFAULT NULL,
  `cotherno` varchar(100) DEFAULT NULL,
  `customer_time_stamp` varchar(500) DEFAULT NULL,
  `ccompany` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `services_customer` */

insert  into `services_customer`(`customerid`,`cemail`,`clname`,`cfname`,`cmname`,`caddress`,`cmobileno`,`cotherno`,`customer_time_stamp`,`ccompany`) values (1,'elvin.casem@gmail.com','Casem','Elvin','E','','09468147457','',NULL,'Evenly Ten Web Solutions');

/*Table structure for table `services_estimate` */

DROP TABLE IF EXISTS `services_estimate`;

CREATE TABLE `services_estimate` (
  `estimateid` bigint(20) NOT NULL AUTO_INCREMENT,
  `estimate_date` date DEFAULT NULL,
  `customerid` bigint(20) DEFAULT NULL,
  `platenumber` varchar(500) DEFAULT NULL,
  `vehicletype` varchar(500) DEFAULT NULL,
  `addedby` varchar(500) DEFAULT NULL,
  `estimate_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`estimateid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `services_estimate` */

insert  into `services_estimate`(`estimateid`,`estimate_date`,`customerid`,`platenumber`,`vehicletype`,`addedby`,`estimate_timestamp`) values (3,'2017-07-26',1,'p','v','1','2017-07-26 11:11:22'),(4,'2017-07-26',NULL,NULL,NULL,'1','2017-07-26 11:11:45'),(5,'2017-07-26',NULL,NULL,NULL,'1','2017-07-26 11:12:02'),(6,'2017-08-15',NULL,NULL,NULL,'1','2017-08-15 09:13:41'),(7,'2017-09-04',NULL,NULL,NULL,'1','2017-09-04 19:57:23'),(8,'2017-11-23',1,'','','1','2017-11-23 20:49:44'),(9,'2017-11-23',NULL,NULL,NULL,'1','2017-11-23 20:55:41');

/*Table structure for table `services_estimate_ls_items` */

DROP TABLE IF EXISTS `services_estimate_ls_items`;

CREATE TABLE `services_estimate_ls_items` (
  `laborserviceid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ls_estimateid` bigint(20) DEFAULT NULL,
  `ls_jobdescription` text,
  `ls_amount` double(10,2) DEFAULT NULL,
  `ls_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`laborserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `services_estimate_ls_items` */

insert  into `services_estimate_ls_items`(`laborserviceid`,`ls_estimateid`,`ls_jobdescription`,`ls_amount`,`ls_timestamp`) values (2,3,'Leak Vacuum and Freon',250.00,'2017-11-05 17:29:45'),(3,3,'Leak Vacuum and Freon',900.00,'2017-11-05 17:25:19'),(4,3,'Freon Charging',300.00,'2017-11-05 17:27:54'),(6,3,'Replace Compressor Filter',150.00,'2017-11-06 06:17:45');

/*Table structure for table `services_estimate_parts_items` */

DROP TABLE IF EXISTS `services_estimate_parts_items`;

CREATE TABLE `services_estimate_parts_items` (
  `partsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `parts_estimateid` bigint(20) DEFAULT NULL,
  `parts_qty` int(11) DEFAULT NULL,
  `parts_unit` varchar(500) DEFAULT NULL,
  `parts_particular` varchar(500) DEFAULT NULL,
  `parts_amount` double(10,2) DEFAULT NULL,
  `parts_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`partsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `services_estimate_parts_items` */

/*Table structure for table `settings_article` */

DROP TABLE IF EXISTS `settings_article`;

CREATE TABLE `settings_article` (
  `articlename` varchar(300) NOT NULL,
  PRIMARY KEY (`articlename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `settings_article` */

insert  into `settings_article`(`articlename`) values ('Appliance'),('Cabinet'),('Chairs'),('Desktop'),('Laptop'),('Others'),('Printer'),('Tables');

/*Table structure for table `settings_classification` */

DROP TABLE IF EXISTS `settings_classification`;

CREATE TABLE `settings_classification` (
  `classification` varbinary(300) NOT NULL,
  PRIMARY KEY (`classification`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `settings_classification` */

insert  into `settings_classification`(`classification`) values ('Books'),('Communication Equipment'),('Expendable'),('Firefighting Equipment'),('Furniture and Fixtures'),('IT Equipment and Softwares'),('Medical and Dental Laboratory'),('Motor Vehicle'),('Office Building'),('Office Devices'),('Office Equipment'),('Other Machineries and Equipment'),('Others'),('Semi-expendable');

/*Table structure for table `settings_report` */

DROP TABLE IF EXISTS `settings_report`;

CREATE TABLE `settings_report` (
  `footerid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reportmodule` varchar(500) DEFAULT NULL,
  `divposition` varchar(500) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`footerid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `settings_report` */

insert  into `settings_report`(`footerid`,`reportmodule`,`divposition`,`content`) values (1,'PAR','ISSUEDBY','<p><strong><u>ELVIN E. CASEM</u></strong><br />\nSignature over Printed Name of Supply and/or Property Custodian<br />\n<br />\n<u>Supply Officer Designate</u><br />\nPosition/Office<br />\n&nbsp;</p>\n'),(2,'APR','AGENCYNAME','<strong>DON MARIANO MARCOS MEMORIAL STATE UNIVERSITY - SOUTH LA UNION CAMPUS<br>Consolacion, Agoo La Union<strong>'),(3,'APR','AGENCYACCOUNTCODE','F4723'),(4,'APR','PROCUREMENT','<span style=\"margin-left:10px;\">THE PROCUREMENT SERVICE<br></span>\r\n<span style=\"margin-left:35px;\">Dep\'t of Budget & Mgmt., Regional Office No. 1<br></span>\r\n<span style=\"margin-left:35px;\">City of San Fernando, La Union, 2500</span></span>'),(5,'APR','COLUMN1','_________________________<br>\nFIRSTNAME LASTNAME<br>\nChief, Administrative Officer'),(6,'APR','COLUMN2','_________________________<br>\nFIRSTNAME LASTNAME<br>\nAccountant II'),(7,'APR','COLUMN3','_________________________________<br>\nFLORIBETH PANAY CUISON<br>\nCHANCELLOR'),(8,'PR','APPROVEDBY','FLORIBETH P. CUISON<br>\nChancellor'),(9,'PR','SUBHEADER','Don Mariano Marcos Memorial State University - South La Union Campus'),(10,'PR','CANVASSHEADER',' <p style=\"text-align:center;\">\n		Don Mariano Marcos Memorial State University - South La Union Campus<br>\n\n		Consolacion, Agoo, La Union</p>'),(11,'PR','CANVASSSIGNATURE','<strong>FIRSTNAME LASTNAME</strong><br>\n	Supply Officer'),(12,'PR','CANVASSSIGNATORIES','<table style=\"text-align:center;margin-left:100px;\">\n			<tr>\n				<td>FIRSTNAME LASTNAME</td>\n				<td width=\"150\"></td>\n				<td>FIRSTNAME LASTNAME</td>\n			</tr>\n			<tr>\n				<td>Administrative Officer</td>\n				<td></td>\n				<td>Supply Officer</td>\n			</tr>\n			<tr>\n				<td><br><br></td>\n				\n			</tr>\n			<tr>\n				<td>FIRSTNAME LASTNAME</td>\n				<td width=\"150\"></td>\n				<td>FIRSTNAME LASTNAME</td>\n			</tr>\n			<tr>\n				<td>Administrative Officer</td>\n				<td></td>\n				<td>Administrative Officer</td>\n			</tr>\n		</table>'),(13,'PR','HEADOFOFFICE','FLORIBETH P. CUISON\n	<br>\nChancellor\n	<br>'),(14,'PO','SUBHEADER','Don Mariano Marcos Memorial State University - South La Union Campus'),(15,'PO','POSIGNATURE','_________________________<br>\nFIRSTNAME LASTNAME<br>\nAdministrative Officer'),(16,'PO','COLUMN1','_________________________<br>\n				FIRSTNAME LASTNAME<br>\n				Administrative Officer'),(17,'PO','COLUMN2','_________________________<br>\nFIRSTNAME LASTNAME<br>\nAccountant'),(18,'RECEIVING','COLUMN1','<u>FIRSTNAME LASTNAME</u><br>\n	Inspection Officer/Inspection Committee'),(19,'RECEIVING','COLUMN2','<u>FIRSTNAME LASTNAME</u><br>\n	Supply and/or Property Custodian'),(20,'PTR','COLUMN1','<b>FLORIBETH P. CUISON</b><br>\nChancellor'),(21,'PTR','COLUMN2','<b>FIRSTNAME LASTNAME</b><br>\nAdministrative Office V'),(22,'RRE','COLUMN1','<b>RTABIFRANCA / MCDZAFIRO</b>'),(23,'RRE','HEADER','<b>Don Mariano Marcos Memorial State University -\n South La Union Campus</b><br>\nRECEIPT OF RETURNED EQUIPMENT');

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplierID` bigint(20) NOT NULL AUTO_INCREMENT,
  `supName` varchar(300) NOT NULL,
  `address` varchar(300) DEFAULT 'NONE',
  `contactNo` text,
  `TIN` varchar(20) DEFAULT 'NONE',
  `products` varchar(300) DEFAULT NULL,
  `email` varchar(500) DEFAULT 'NONE',
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `suppliers` */

insert  into `suppliers`(`supplierID`,`supName`,`address`,`contactNo`,`TIN`,`products`,`email`) values (1,'Manila Supplier','','','','',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `usertype` varchar(10) NOT NULL DEFAULT 'staff',
  `status` varchar(1) NOT NULL,
  `linkeid` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`uid`,`username`,`password`,`name`,`usertype`,`status`,`linkeid`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin','admin','1',0),(5,'lynnette','5f4dcc3b5aa765d61d8327deb882cf99','Lynnette','admin','1',0),(6,'elvin','e77b6b04e50421f5d6e122e2b1df7d39','Elvin Casem','staff','1',44);

/*Table structure for table `users_group` */

DROP TABLE IF EXISTS `users_group`;

CREATE TABLE `users_group` (
  `groupid` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_group` */

/*Table structure for table `warehouse` */

DROP TABLE IF EXISTS `warehouse`;

CREATE TABLE `warehouse` (
  `warehouseid` bigint(20) NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `warehouse` */

insert  into `warehouse`(`warehouseid`,`warehouse_name`) values (1,'Arzadon Warehouse');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
