/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.6.17 : Database - arzadon_ent
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`eid`,`empNo`,`lname`,`fname`,`mname`,`ename`,`designation`) values (13,'','CASIPIT','MA. GERALDINE','F','','Supervising Education Program Specialist'),(14,'','BUENIO','NYMPHA','N','','Chief Administrative Officer'),(15,'','ADQUILEN','EVELYN','C','','Administrative Officer III'),(16,'','AGCAOILI','REYNALDO','D','','Education Supervisor II'),(17,'','AGLUGUB','RODOLFO','E','','Education Supervisor II'),(18,'','ANCHETA','ARNOLD','V','','Education Supervisor II'),(19,'','BOSE','DANILO','B','','Education Supervisor II'),(20,'','CABANBAN','CHRISTIANNE LYNNETTE','G','','Education Supervisor II'),(21,'','CANTOR','MARK ANTHONY','L','','Administrative Aide VI'),(22,'','CHAN','CATHERINE','C','','Education Supervisor II'),(23,'','DOLORES','ANGELICA','Q','','Education Supervisor II'),(24,'','DULUEÃ‘A','PERFECTO','A','','Administrative Aide VI'),(25,'','FERRER','ANGELA','F','','Education Program Specialist II'),(26,'','GALERA JR.','ROGELIO','T','','Education Supervisor II'),(27,'','INIGO','KRIZZANE','C','','Administrative Assistant III'),(28,'','MENDOZA','MARVIN','I','','Administrative Aide IV'),(29,'','MINA','MYRELLE FAITH','D','','Education Supervisor II'),(30,'','MOLINA','FLORANTE','F','','Administrative Aide III'),(31,'','MONTEMAYOR','DIANNE JOYCE','B','','Administrative Officer III'),(32,'','OLI','CORNELIO','T','','Administrative Aide III'),(33,'','QUEZON','MAYROSE','L','','Education Supervisor II'),(34,'','NARCEDA','ARGIELYN','','','Job Order'),(35,'','PASCUA','CHARLES VINCENT','','','Job Order'),(36,'','TACTACAN','CIELITO','','','Job Order'),(37,'','VALENCIA','NASTASHA','A','','Job Order'),(38,'','YAMSON','VIC','','','Guard'),(39,'','OLPINDO','AUDIE','','','Guard'),(40,'','ESCAÃ‘O','MELODY','G','','Job Order'),(41,'','ANCHETA','MELQUIDES','','','PTS III'),(42,'','JONARD\r\n','GAVO\r\n','','','OJT'),(43,'','FRANCIA\r\n','POLIDO\r\n','','','OJT'),(44,'','CASEM','ELVIN','E','','PTS III'),(45,'','','College of Information Technology','','',''),(46,'','','College of Engineering','','',''),(47,'','','College of Graduate Studies','','','');

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
  `purchase_qty_equivalent` int(11) DEFAULT '0',
  `price` double(10,2) DEFAULT '0.00',
  `inventory_qty` int(11) DEFAULT '0',
  `supplierID` int(11) DEFAULT '0',
  `brand` varchar(200) DEFAULT 'NONE',
  `warehouseid` bigint(20) DEFAULT NULL,
  `application` varchar(500) DEFAULT NULL,
  `part_number` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;

/*Data for the table `items` */

insert  into `items`(`itemNo`,`itemname`,`description`,`category`,`unit`,`unitCost`,`purchase_unit`,`purchase_qty_equivalent`,`price`,`inventory_qty`,`supplierID`,`brand`,`warehouseid`,`application`,`part_number`) values (2,NULL,'Tissue','Office Supply','PC',8.00,'',1,101.00,0,4,'ECO HYGIENE',1,NULL,NULL),(3,NULL,'Glue','Office Supply','PC',0.00,NULL,0,0.00,0,0,'STICK-EE',1,NULL,NULL),(4,NULL,'Double Clip 2 inch','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PRINCE',1,NULL,NULL),(5,NULL,'Jumbo clip','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PRINCE',1,NULL,NULL),(6,NULL,'Paper clip','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'PRINCE',1,NULL,NULL),(7,NULL,'Ruler 12 inch','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CRYSTAL',1,NULL,NULL),(8,NULL,'Ruler 17 inch','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PRINCE',1,NULL,NULL),(9,NULL,'Binder clips 1 inch','Office Supply','PC',0.00,NULL,0,0.00,0,0,'JOY',1,NULL,NULL),(10,NULL,'Binder clips 3/4 inch','Office Supply','PC',0.00,NULL,0,0.00,0,0,'JOY',1,NULL,NULL),(11,NULL,'Staple Remover','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'JIVLI',1,NULL,NULL),(12,NULL,'Tape dispenser','Office Supply','BOX',0.00,NULL,0,0.00,1,0,'PRINCE',1,NULL,NULL),(13,NULL,'Safety paper fastener','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'APPLE',1,NULL,NULL),(14,NULL,'Stamp pad','Office Supply','PC',0.00,NULL,0,0.00,0,0,'MPC CLASSIQUE/JOY',1,NULL,NULL),(15,NULL,'Stamp pad ink','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PADMATE',1,NULL,NULL),(16,NULL,'Typewriter Ribbon','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(17,NULL,'Tape packaging','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CROCO TAPE',1,NULL,NULL),(18,NULL,'Tape Masking','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CROCO TAPE',1,NULL,NULL),(19,NULL,'Scotch tape','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CROCO TAPE',1,NULL,NULL),(20,NULL,'Stencil Paper','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'PRINCE',1,NULL,NULL),(21,NULL,'Log book (300)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'MULTI-ZERO',1,NULL,NULL),(22,NULL,'Log book (500)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(23,NULL,'Puncher','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'PRINCE',1,NULL,NULL),(24,NULL,'Correction Tape','Office Supply','PC',0.00,NULL,0,0.00,0,0,'JOY',1,NULL,NULL),(25,NULL,'Fax film','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'KODAK GOLD',1,NULL,NULL),(26,NULL,'Cartolina (assorted)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(27,NULL,'Cartolina (White)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(28,NULL,'Adjustable Punch','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'KW-TRIO',1,NULL,NULL),(29,NULL,'Staple ','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ARROW',1,NULL,NULL),(30,NULL,'Sharpener','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ACURA5',1,NULL,NULL),(31,NULL,'Scissors','Office Supply','PC',0.00,NULL,0,0.00,0,0,'AMSPEE',1,NULL,NULL),(32,NULL,'Staple Wire 1/2 x 12mm','Office Supply','Box',0.00,NULL,0,0.00,0,0,'ARROW',1,NULL,NULL),(33,NULL,'Long Bond Paper (Double A)','Office Supply','REAM',0.00,NULL,0,0.00,3,0,'DOUBLE A/LAMCO PAPER',1,NULL,NULL),(34,NULL,'Photo Paper','Office Supply','REAM',0.00,NULL,0,0.00,0,0,'ACACIA/BERKELEY',1,NULL,NULL),(35,NULL,'Parchment Paper','Office Supply','REAM',0.00,NULL,0,0.00,0,0,'EMERSON/BESTBUY',1,NULL,NULL),(36,NULL,'Sticker Paper (3x4)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'POST IT',1,NULL,NULL),(37,NULL,'Sticker Paper (3x3)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'HBW OFFICE',1,NULL,NULL),(38,NULL,'Sticker Paper (8x11)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'STRATAKOLOUR/JOLLY',1,NULL,NULL),(39,NULL,'Specialty Paper','Office Supply','PC',0.00,'PC',1,0.00,0,0,'SQI/SUN',1,NULL,NULL),(40,NULL,'Notebooks','Office Supply','PC',0.00,NULL,0,0.00,0,0,'DYNAMIC',1,NULL,NULL),(41,NULL,'Columnar Books','Office Supply','PC',0.00,NULL,0,0.00,0,0,'VECO PRODUCT',1,NULL,NULL),(42,NULL,'Board Paper','Office Supply','PC',0.00,NULL,0,0.00,0,0,'VECO',1,NULL,NULL),(43,NULL,'Carbon Paper','Office Supply','PC',0.00,NULL,0,0.00,0,0,'COSH/CLUB',1,NULL,NULL),(44,NULL,'Long Folder (Orange)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(45,NULL,'Long Folder (Blue)','Office Supply','PC',0.00,NULL,0,0.00,5,0,'ADVANCE',1,NULL,NULL),(46,NULL,'Long Folder (Black)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(47,NULL,'Long Folder (Yellow)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(48,NULL,'Long Folder (Dark Blue)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(49,NULL,'Long Folder (Red)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(50,NULL,'Long Folder (Violet)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(51,NULL,'Short Folder (Dark Blue)','Office Supply','PC',0.00,NULL,0,0.00,5,0,'ADVANCE',1,NULL,NULL),(52,NULL,'Short Folder (Orange)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(53,NULL,'Short Folder (Red)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(54,NULL,'Short Folder (Pink)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(55,NULL,'Short Folder (Green)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(56,NULL,'Short Folder (Violet)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(57,NULL,'Plastic Folder','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EXPRESSIONS',1,NULL,NULL),(58,NULL,'Clear Folder','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(59,NULL,'Pencil','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'CHALLENGE',1,NULL,NULL),(60,NULL,'Highlighter ','Office Supply','PC',0.00,NULL,0,0.00,0,0,'MARVY UCHIDA',1,NULL,NULL),(61,NULL,'Permanent Marker (Red)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PILOT',1,NULL,NULL),(62,NULL,'Permanent Marker (Black)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PILOT',1,NULL,NULL),(63,NULL,'White Board Marker ','Office Supply','PC',0.00,NULL,0,0.00,0,0,'MONAMI',1,NULL,NULL),(64,NULL,'Crayons','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'AMSPEC',1,NULL,NULL),(65,NULL,'Coloring Pen','Office Supply','PC',0.00,NULL,0,0.00,0,0,'LION CITY',1,NULL,NULL),(66,NULL,'Ballpen (Blue)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PILOT',1,NULL,NULL),(67,NULL,'Ballpen (Green)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PILOT',1,NULL,NULL),(68,NULL,'Ballpen (Red)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PILOT',1,NULL,NULL),(69,NULL,'Ballpen (Nataraj)','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'NATARAJ',1,NULL,NULL),(70,NULL,'Sign Pen (Blue)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PILOT/UNI-BALL/PENTEL',1,NULL,NULL),(71,NULL,'Sign Pen (Black)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PENTEL/UNI0BALL',1,NULL,NULL),(72,NULL,'Sign Pen (Red)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PENTEL',1,NULL,NULL),(73,NULL,'Clear Book (Black)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'BINDEMAX',1,NULL,NULL),(74,NULL,'Clear Book (White)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'BINDEMAX',1,NULL,NULL),(75,NULL,'Clear Book (Green)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'BINDEMAX',1,NULL,NULL),(76,NULL,'Clear Book (Dark Green)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'BINDEMAX',1,NULL,NULL),(77,NULL,'Clear Book (Brown)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'BINDEMAX',1,NULL,NULL),(78,NULL,'View Binders','Office Supply','PC',0.00,NULL,0,0.00,0,0,'COMICS',1,NULL,NULL),(79,NULL,'Transparent Zip Bag','Office Supply','PC',0.00,NULL,0,0.00,0,0,'DELI',1,NULL,NULL),(80,NULL,'Long Envelope','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(81,NULL,'Short Envelope','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(82,NULL,'CD Case','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'FILMAXEL/IMATION',1,NULL,NULL),(83,NULL,'CD-R 700MB','Office Supply','PC',0.00,NULL,0,0.00,0,0,'SONY',1,NULL,NULL),(84,NULL,'Printer Ribbon','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'FUJITSU',1,NULL,NULL),(85,NULL,'AVR','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(86,NULL,'Toner Kit (TK 354)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'KYOCERA',1,NULL,NULL),(87,NULL,'Toner (PNG 08 Toner)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CANON',1,NULL,NULL),(88,NULL,'Ribbon Cartridge','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EPSON',1,NULL,NULL),(89,NULL,'Keyboard (4Tech)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'A4TECH',1,NULL,NULL),(90,NULL,'Trident','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(91,NULL,'APC (Battery Backup)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'APC',1,NULL,NULL),(92,NULL,'HP Deskjet 1000','Office Supply','PC',0.00,NULL,0,0.00,0,0,'HP',1,NULL,NULL),(93,NULL,'Mouse Pad','Office Supply','PC',0.00,NULL,0,0.00,0,0,'MICROSOFT',1,NULL,NULL),(94,NULL,'CD Sleeve','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CHENSIN',1,NULL,NULL),(95,NULL,'Canon 40','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PIXMA CANON',1,NULL,NULL),(96,NULL,'Canon 811','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PIXMA CANON',1,NULL,NULL),(97,NULL,'Canon 88','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PIXMA CANON',1,NULL,NULL),(98,NULL,'Canon 98','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PIXMA CANON',1,NULL,NULL),(99,NULL,'Media Pointer','Office Supply','PC',0.00,NULL,0,0.00,0,0,'GENIUS',1,NULL,NULL),(100,NULL,'Integrative Presenter','Office Supply','PC',0.00,NULL,0,0.00,0,0,'ACER',1,NULL,NULL),(101,NULL,'Envelope Pay Kraft','Office Supply','PC',0.00,NULL,0,0.00,0,0,'POINTER',1,NULL,NULL),(102,NULL,'Printer Ink (T6641 Black)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EPSON',1,NULL,NULL),(103,NULL,'Printer Ink (T6642 Cyan)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EPSON',1,NULL,NULL),(104,NULL,'Printer Ink (T6643 Magenta)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EPSON',1,NULL,NULL),(105,NULL,'Printer Ink (T6644 Yellow)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EPSON',1,NULL,NULL),(106,NULL,'Diskettes','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EMTEK/IMATION',1,NULL,NULL),(107,NULL,'Mailing Long Window Envelope','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'PAPERFOX',1,NULL,NULL),(108,NULL,'Kliche','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NON',1,NULL,NULL),(109,NULL,'Photo Frames (Blue)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CRAFTIDEAS',1,NULL,NULL),(110,NULL,'Photo Frames (Red)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CRAFTIDEAS',1,NULL,NULL),(111,NULL,'Name Badge','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(112,NULL,'Speaker (BXRB21)','Office Supply','BOX',0.00,NULL,0,0.00,0,0,'ALTEC',1,NULL,NULL),(113,NULL,'Photo Album','Office Supply','PC',0.00,NULL,0,0.00,0,0,'K EVERYDAY',1,NULL,NULL),(114,NULL,'Paper Weight','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(115,NULL,'Fire Extinguisher','Office Supply','PC',0.00,NULL,0,0.00,0,0,'SHUTTER - NEROMU ENTERPRISES COMPANY',1,NULL,NULL),(116,NULL,'Glue Gun','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(117,NULL,'Poly Ribbon','Office Supply','PC',0.00,NULL,0,0.00,0,0,'WENDY',1,NULL,NULL),(118,NULL,'Pail','Office Supply','PC',0.00,NULL,0,0.00,0,0,'HI-TOP',1,NULL,NULL),(119,NULL,'MegaPhone (XV-`11 S/R)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'MAX TECH',1,NULL,NULL),(120,NULL,'Coffee Maker','Office Supply','PC',0.00,NULL,0,0.00,0,0,'DOWELL',1,NULL,NULL),(121,NULL,'Duplicating Ink','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(122,NULL,'Liquid Wax','Office Supply','PC',0.00,NULL,0,0.00,0,0,'JOHNSON',1,NULL,NULL),(123,NULL,'Mr. Muscle','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(124,NULL,'Air Freshener','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(125,NULL,'Dust Mask','Office Supply','PC',0.00,NULL,0,0.00,0,0,'GREENE USA',1,NULL,NULL),(126,NULL,'Brush','Office Supply','PC',0.00,NULL,0,0.00,0,0,'HOUSEWELL',1,NULL,NULL),(127,NULL,'Crosscut Saw','Office Supply','PC',0.00,NULL,0,0.00,0,0,'STANLEY',1,NULL,NULL),(128,NULL,'Certification','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(129,NULL,'Printer (Epson)','Office Supply','PC',0.00,NULL,0,0.00,0,0,'EPSON/CANON',1,NULL,NULL),(130,NULL,'Handle Bag','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(131,NULL,'Toilet Brush','Office Supply','PC',0.00,NULL,0,0.00,0,0,'CSI',1,NULL,NULL),(132,NULL,'Wall Clock','Office Supply','PC',0.00,NULL,0,0.00,0,0,'QUARTZ',1,NULL,NULL),(133,NULL,'Trash Can','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(134,NULL,'Map Handle','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PENGUIN',1,NULL,NULL),(135,NULL,'Map Head','Office Supply','PC',0.00,NULL,0,0.00,0,0,'PENGUIN',1,NULL,NULL),(136,NULL,'Deeper','Office Supply','PC',0.00,NULL,0,0.00,0,0,'COSTSAVERS',1,NULL,NULL),(137,NULL,'A4 Bond Paper','Office Supply','REAM',0.00,NULL,0,0.00,0,0,'ADVANCE/CLEARCOPY',1,NULL,NULL),(138,NULL,'CORRECTION FLUID\r\n','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(139,NULL,'Mouse (Optical)\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'GENIUS',1,NULL,NULL),(140,NULL,'Flash Drive\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'KINGSTON',1,NULL,NULL),(141,NULL,'Rubber Band\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'POINTER',1,NULL,NULL),(142,NULL,'Maxell Alkaline Battery (AAA)\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'MAXELL',1,NULL,NULL),(143,NULL,'Maxell Alkaline Battery (AA)\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'MAXELL',1,NULL,NULL),(144,NULL,'HDD\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(145,NULL,'Yellow Paper\r\n','Office Supply\r\n','REAM',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(146,NULL,'Short Bond Paper\r\n','Office Supply\r\n','REAM',0.00,NULL,0,0.00,0,0,'ADVANCE',1,NULL,NULL),(147,NULL,'Gloves\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(148,NULL,'Cutter\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'POINTER',1,NULL,NULL),(149,NULL,'Calculator\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'CANON',1,NULL,NULL),(150,NULL,'File Rack\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(151,NULL,'Ring Border\r\n','Office Supply\r\n','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(152,NULL,'Colored Paper\r\n','Office Supply\r\n','REAM',0.00,NULL,0,0.00,0,0,'SQI/SUN',1,NULL,NULL),(153,NULL,'Storage Box','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(154,NULL,'Post It','Office Supply','PC',0.00,NULL,0,0.00,0,0,'POST IT',1,NULL,NULL),(155,NULL,'Push Pins','Office Supply','PC',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(156,NULL,'BATTERY, dry cell AA, 2 pieces per blister pack','COMMON ELECTRICAL SUPPLIES','PACK',17.42,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(157,NULL,'BATTERY, dry cell AAA, 2 pieces per blister pack','COMMON ELECTRICAL SUPPLIES','PACK',15.03,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(158,NULL,'BATTERY, dry cell D, 2 pieces per blister pack','COMMON ELECTRICAL SUPPLIES','PACK',77.56,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(159,NULL,'FLUORESCENT LAMP, tubular, 28 watts','COMMON ELECTRICAL SUPPLIES','TUBE',114.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(160,NULL,'LED Linear Tube, 18 watts individually wrapped in carton','COMMON ELECTRICAL SUPPLIES','TUBE',280.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(161,NULL,'Ligth Bulb, LED, 7 watts 1 pc in individual box','COMMON ELECTRICAL SUPPLIES','PIECE',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(162,NULL,'TAPE, electrical','COMMON ELECTRICAL SUPPLIES','ROLL',18.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(163,NULL,'ACETATE, gauge #3, 50m per roll','COMMON OFFICE SUPPLIES','ROLL',624.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(164,NULL,'AIR FRESHENER, 280mL/150g min','COMMON OFFICE SUPPLIES','CAN',83.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(165,NULL,'ALCOHOL, 70%, ethyl, 500ml','COMMON OFFICE SUPPLIES','BOTTLE',47.82,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(166,NULL,'CARBON FILM, A4 size, 100 sheets per box','COMMON OFFICE SUPPLIES','BOX',197.58,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(167,NULL,'CARBON FILM, PE, black, 216mm x 30mm, 100 sheets per box','COMMON OFFICE SUPPLIES','BOX',202.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(168,NULL,'CARTOLINA, assorted color, 20 pieces per pack','COMMON OFFICE SUPPLIES','PACK',64.48,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(169,NULL,'CHALK, white, enamel, 100 pieces per box','COMMON OFFICE SUPPLIES','BOX',25.86,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(170,NULL,'CLEARBOOK, A4 size','COMMON OFFICE SUPPLIES','PIECE',39.52,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(171,NULL,'CLEARBOOK, Legal size','COMMON OFFICE SUPPLIES','PIECE',43.68,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(172,NULL,'CLIP, backfold, 19mm, 12 pieces per box','COMMON OFFICE SUPPLIES','BOX',7.28,NULL,0,0.00,-1102,0,'NONE',1,NULL,NULL),(173,NULL,'CLIP, backfold, 25mm, 12 pieces per box','COMMON OFFICE SUPPLIES','BOX',10.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(174,NULL,'CLIP, backfold, 32mm, 12 pieces per box','COMMON OFFICE SUPPLIES','BOX',19.12,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(175,NULL,'CLIP, backfold, 50mm, 12 pieces per box','COMMON OFFICE SUPPLIES','BOX',36.38,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(176,NULL,'CORRECTION TAPE, 6 meters(min), 1 piece in individual plastic','COMMON OFFICE SUPPLIES','PIECE',31.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(177,NULL,'DATA FILE BOX, made with chipboard, with closed ends','COMMON OFFICE SUPPLIES','BOX',69.78,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(178,NULL,'DATA FOLDER, made with chipboard, taglia lock','COMMON OFFICE SUPPLIES','PIECE',68.64,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(179,NULL,'ENVELOPE, DOCUMENTARY, for A4 size document, 500 pieces per box','COMMON OFFICE SUPPLIES','BOX',381.54,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(180,NULL,'ENVELOPE, DOCUMENTARY, for Legal size document, 500 pieces per box','COMMON OFFICE SUPPLIES','BOX',507.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(181,NULL,'ENVELOPE, EXPANDING, KRAFTBOARD, for legal size documents, 100 pieces per box','COMMON OFFICE SUPPLIES','BOX',621.71,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(182,NULL,'ENVELOPE, EXPANDING, plastic','COMMON OFFICE SUPPLIES','PIECE',27.61,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(183,NULL,'ENVELOPE, MAILING, 500 pieces per box, 80 gsm','COMMON OFFICE SUPPLIES','BOX',499.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(184,NULL,'ENVELOPE, MAILING, with window, 500 pieces per box, 80 gsm','COMMON OFFICE SUPPLIES','BOX',561.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(185,NULL,'ERASER, felt, for blackboard/whiteboard','COMMON OFFICE SUPPLIES','PIECE',11.11,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(186,NULL,'ERASER, plastic or rubber','COMMON OFFICE SUPPLIES','PIECE',2.29,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(187,NULL,'FASTENER, for paper, metal, 50 sets per box','COMMON OFFICE SUPPLIES','BOX',57.09,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(188,NULL,'FILE ORGANIZER, expanding, legal, plastic, assorted colors','COMMON OFFICE SUPPLIES','PIECE',70.67,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(189,NULL,'FILE TAB DIVIDER, A4, five (5) colors per set','COMMON OFFICE SUPPLIES','SET',12.48,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(190,NULL,'FILE TAB DIVIDER, Legal Size, five(5) colors per set','COMMON OFFICE SUPPLIES','SET',16.64,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(191,NULL,'FOLDER, Fancy, A4, 50s/ bundle','COMMON OFFICE SUPPLIES','BUNDLE',234.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(192,NULL,'FOLDER, Fancy, Legal, 50 pieces per bundle','COMMON OFFICE SUPPLIES','BUNDLE',291.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(193,NULL,'FOLDER, L-type, A4, 50 pieces pack','COMMON OFFICE SUPPLIES','PACK',166.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(194,NULL,'FOLDER, L-type, Legal size, 50 pieces per pack','COMMON OFFICE SUPPLIES','PACK',203.84,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(195,NULL,'FOLDER, Pressboard, size 240mm x 370mm, 100s/box','COMMON OFFICE SUPPLIES','BOX',746.72,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(196,NULL,'FOLDER, Tagboard, A4, 100 pieces per pack','COMMON OFFICE SUPPLIES','PACK',179.28,NULL,0,0.00,1,0,'NONE',1,NULL,NULL),(197,NULL,'FOLDER, Tagboard, Legal size, 100 pieces per pack','COMMON OFFICE SUPPLIES','PACK',200.37,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(198,NULL,'GLUE, all purpose, 300 grams min.','COMMON OFFICE SUPPLIES','JAR',44.18,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(199,NULL,'INDEX TAB, self-adhesive, 5 set/box, assorted colors','COMMON OFFICE SUPPLIES','BOX',47.90,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(200,NULL,'LOOSELEAF COVER, 50sets per bundle','COMMON OFFICE SUPPLIES','BUNDLE',539.76,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(201,NULL,'MAGAZINE FILE BOX, LARGE','COMMON OFFICE SUPPLIES','PIECE',41.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(202,NULL,'MARKER, fluorescent, 3 colors per set','COMMON OFFICE SUPPLIES','SET',35.55,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(203,NULL,'MARKER, whiteboard, bullet type, black','COMMON OFFICE SUPPLIES','PIECE',10.28,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(204,NULL,'MARKER, whiteboard, bullet type, blue','COMMON OFFICE SUPPLIES','PIECE',10.28,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(205,NULL,'MARKER, whiteboard, bullet type, red','COMMON OFFICE SUPPLIES','PIECE',10.28,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(206,NULL,'MARKER, permanent, bullet type, black','COMMON OFFICE SUPPLIES','PIECE',9.65,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(207,NULL,'MARKER, permanent, bullet type, blue','COMMON OFFICE SUPPLIES','PIECE',9.65,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(208,NULL,'MARKER, permanent, bullet type, red','COMMON OFFICE SUPPLIES','PIECE',9.65,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(209,NULL,'NOTE BOOK, stenographer\'s, 40 leaves, spiral','COMMON OFFICE SUPPLIES','PIECE',10.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(210,NULL,'NOTE PAD, stick-on, (2\"x3\"), 100 sheets per pad','COMMON OFFICE SUPPLIES','PAD',31.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(211,NULL,'NOTE PAD, stick-on, (3\"x3\"), 100 sheets per pad','COMMON OFFICE SUPPLIES','PAD',40.54,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(212,NULL,'NOTE PAD, stick-on, (3\"x4\"), 100 sheets per pad','COMMON OFFICE SUPPLIES','PAD',54.06,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(213,NULL,'PAD PAPER, Ruled','COMMON OFFICE SUPPLIES','PAD',18.26,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(214,NULL,'PAPER CLIP, gem type, 48mm, 100 pieces per box','COMMON OFFICE SUPPLIES','BOX',12.85,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(215,NULL,'PAPER CLIP, gem type, 32mm, 100 pieces per box','COMMON OFFICE SUPPLIES','BOX',6.43,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(216,NULL,'PAPER, MULTICOPY, 80gsm, size: 210mm x 297mm','COMMON OFFICE SUPPLIES','REAM',112.32,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(217,NULL,'PAPER, MULTICOPY, 80gsm, size: 216mm x 330mm','COMMON OFFICE SUPPLIES','REAM',132.02,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(218,NULL,'PAPER, Multi-Purpose (COPY) A4, 70gsm','COMMON OFFICE SUPPLIES','REAM',95.26,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(219,NULL,'PAPER, Multi-Purpose (COPY), Legal size, 70gsm','COMMON OFFICE SUPPLIES','REAM',114.35,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(220,NULL,'PARCHMENT PAPER, A4 size, 80 gsm, 100 sheets per pack]','COMMON OFFICE SUPPLIES','REAM',88.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(221,NULL,'PAPER, Thermal, 216mm x 30m','COMMON OFFICE SUPPLIES','ROLL',31.15,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(222,NULL,'PENCIL, lead, w/eraser, 0ne(1) dozen per box','COMMON OFFICE SUPPLIES','BOX',19.62,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(223,NULL,'PHILIPPINE NATIONAL FLAG','COMMON OFFICE SUPPLIES','PIECE',278.72,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(224,NULL,'RECORD BOOK, 300 pages, size: 214mm x 278mm min','COMMON OFFICE SUPPLIES','BOOK',60.32,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(225,NULL,'RECORD BOOK, 500 pages, size: 214mm x 278mm min','COMMON OFFICE SUPPLIES','BOOK',86.85,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(226,NULL,'RING BINDER, Plastic 32mm, 10 pieces per bundle','COMMON OFFICE SUPPLIES','BUNDLE',256.87,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(227,NULL,'RUBBER BAND, 70mm min lay flat length (#18)','COMMON OFFICE SUPPLIES','BOX',93.31,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(228,NULL,'RULER, plastic, 450mm, 1 piece in individual plastic','COMMON OFFICE SUPPLIES','PIECE',15.48,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(229,NULL,'SIGN PEN, black','COMMON OFFICE SUPPLIES','PIECE',38.10,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(230,NULL,'SIGN PEN, blue','COMMON OFFICE SUPPLIES','PIECE',38.10,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(231,NULL,'SIGN PEN, red','COMMON OFFICE SUPPLIES','PIECE',38.10,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(232,NULL,'STAMP PAD INK, violet, 50mL','COMMON OFFICE SUPPLIES','BOTTLE',24.63,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(233,NULL,'STAMP PAD, felt pad, min 60mm x 100mm ','COMMON OFFICE SUPPLIES','PIECE',27.66,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(234,NULL,'STAPLE WIRE, Heavy duty, 23/13','COMMON OFFICE SUPPLIES','BOX',23.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(235,NULL,'STAPLE WIRE, Standard','COMMON OFFICE SUPPLIES','BOX',18.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(236,NULL,'TAPE, masking, 24mm, 50 meters length','COMMON OFFICE SUPPLIES','ROLL',55.12,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(237,NULL,'TAPE, masking, 48mm, 50 meters length','COMMON OFFICE SUPPLIES','ROLL',105.04,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(238,NULL,'TAPE, transparent, 24mm, 50 meters','COMMON OFFICE SUPPLIES','ROLL',10.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(239,NULL,'TAPE, transparent, 48mm, 50 meters','COMMON OFFICE SUPPLIES','ROLL',26.52,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(240,NULL,'TAPE, packaging, 48mm, 50 meters length','COMMON OFFICE SUPPLIES','ROLL',32.74,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(241,NULL,'TOILET TISSUE, 12 rolls per pack','COMMON OFFICE SUPPLIES','PACK',67.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(242,NULL,'TWINE, plastic, one kilo per roll','COMMON OFFICE SUPPLIES','ROLL',49.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(243,NULL,'WRAPPING PAPER, kraft, 50 sheets per pack','COMMON OFFICE SUPPLIES','PACK',128.84,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(244,NULL,'Software ','COMMON OFFICE SUPPLIES','PIECE',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(245,NULL,'Airline Travel','COMMON OFFICE SUPPLIES','PIECE',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(246,NULL,'CUTTER BLADE, heavy duty cutter, 10 pieces per tube','COMMON OFFICE DEVICES','TUBE',9.19,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(247,NULL,'CUTTER KNIFE, heavy duty ','COMMON OFFICE DEVICES','PIECE',19.76,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(248,NULL,'DATING AND STAMPING MACHINE','COMMON OFFICE DEVICES','PIECE',478.38,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(249,NULL,'PENCIL SHARPENER, 1 piece in indiviual plastic case','COMMON OFFICE DEVICES','PIECE',187.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(250,NULL,'PUNCHER, paper, heavy duty, with two hole guide, 1 piece in individual box','COMMON OFFICE DEVICES','PIECE',114.28,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(251,NULL,'SCISSORS, (6\")','COMMON OFFICE DEVICES','PAIR',13.73,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(252,NULL,'STAPLER, standard','COMMON OFFICE DEVICES','PIECE',82.16,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(253,NULL,'STAPLER, binder type, heavy duty for high volume stapling, 25-135sheets of 70gsm bond paper stapling capacity, min 100 staples, with adjustable paper guide','COMMON OFFICE DEVICES','PIECE',878.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(254,NULL,'STAPLE REMOVER, plier type','COMMON OFFICE DEVICES','PIECE',18.18,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(255,NULL,'TAPE DISPENSER,  table top','COMMON OFFICE DEVICES','PIECE',47.72,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(256,NULL,'WASTE BASKET, non-rigid plastic','COMMON OFFICE DEVICES','PIECE',23.90,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(257,NULL,'BROOM, soft (tambo)','COMMON JANITORIAL SUPPLIES','PIECE',88.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(258,NULL,'BROOM, stick (tingting)','COMMON JANITORIAL SUPPLIES','PIECE',23.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(259,NULL,'CLEANER, TOILET BOWL AND URINAL, 900-1000ml cap','COMMON JANITORIAL SUPPLIES','BOTTLE',41.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(260,NULL,'CLEANSER, scouring powder, 350grams/can','COMMON JANITORIAL SUPPLIES','CAN',21.27,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(261,NULL,'DETERGENT POWDER, all purpose, 1kilo/pouch','COMMON JANITORIAL SUPPLIES','POUCH',37.43,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(262,NULL,'DISINFECTANT SPRAY, 400-550 grams','COMMON JANITORIAL SUPPLIES','CAN',119.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(263,NULL,'DUST PAN, non-rigid plastic','COMMON JANITORIAL SUPPLIES','PIECE',24.96,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(264,NULL,'FLOOR WAX, Paste, red','COMMON JANITORIAL SUPPLIES','CAN',202.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(265,NULL,'FURNITURE CLEANER, aerosol, 300mL/can ','COMMON JANITORIAL SUPPLIES','CAN',84.76,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(266,NULL,'INSECTICIDE, aerosol type, 600mL/can','COMMON JANITORIAL SUPPLIES','CAN',124.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(267,NULL,'MOPBUCKET','COMMON JANITORIAL SUPPLIES','PIECE',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(268,NULL,'MOPHANDLE, screw type, aluminum handle','COMMON JANITORIAL SUPPLIES','PIECE',142.48,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(269,NULL,'MOPHEAD, made of rayon','COMMON JANITORIAL SUPPLIES','PIECE',98.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(270,NULL,'RAG, all cotton, 32 pieces per kilo per bundle','COMMON JANITORIAL SUPPLIES','BUNDLE',49.69,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(271,NULL,'SCOURING PAD, 5 pieces per pack','COMMON JANITORIAL SUPPLIES','PACK',102.96,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(272,NULL,'TRASHBAG, plastic, transparent, 10pcs/roll','COMMON JANITORIAL SUPPLIES','ROLL',139.88,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(273,NULL,'DISINFECTANT, bleaching solution','COMMON JANITORIAL SUPPLIES','CONT',101.82,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(274,NULL,'DETERGENT BAR, 140g as packed (-2.5%)','COMMON JANITORIAL SUPPLIES','BAR',7.28,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(275,NULL,'BINDING AND PUNCHING MACHINE, two(2) hand lever system, 34cm or 13\" (24 holes) punching, width adjustable to any format, binds 425 sheets, or up to 2\" thick, all metal construction','COMMON OFFICE EQUIPMENT','UNIT',10.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(276,NULL,'CALCULATOR, COMPACT, electronic, 12 digits cap, 1 unit in individual box','COMMON OFFICE EQUIPMENT','UNIT',135.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(277,NULL,'CALCULATOR, SCIENTIFIC, 1 unit per box','COMMON OFFICE EQUIPMENT','UNIT',258.84,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(278,NULL,'CHAIR, monobloc, without armrest, beige','COMMON OFFICE EQUIPMENT','PIECE',254.68,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(279,NULL,'CHAIR, monobloc, without armrest, white','COMMON OFFICE EQUIPMENT','PIECE',254.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(280,NULL,'DIGITAL VOICE RECORDER, 4GB (expandable), 1 unit in individual box','COMMON OFFICE EQUIPMENT','UNIT',6.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(281,NULL,'DOCUMENT CAMERA,  four(4) reference points demarcate viewing area, 16x(1600%) consecutive zoom, PC and Doc Cam video switcher, plug and play','COMMON OFFICE EQUIPMENT','UNIT',25.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(282,NULL,'ELECTRIC FAN, industrial','COMMON OFFICE EQUIPMENT','UNIT',956.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(283,NULL,'ELECTRIC FAN, orbit type','COMMON OFFICE EQUIPMENT','UNIT',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(284,NULL,'ELECTRIC FAN, stand type','COMMON OFFICE EQUIPMENT','UNIT',967.10,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(285,NULL,'ELECTRIC FAN, wall type','COMMON OFFICE EQUIPMENT','UNIT',790.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(286,NULL,'FACSIMILE MACHINE, uses thermal paper, 50m/roll, for documents 216mm x 600mm, 15 sec, transmission speed, running width 2018mm, document feeder holds 10 pages, with automatic paper cutter, redial, and','COMMON OFFICE EQUIPMENT','UNIT',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(287,NULL,'FIRE EXTINGUISHER, dry chemical, for ABC class of fire, stored pressure type,non-electrical conductor,non-toxic, non-corrosive, 4.5kg (10lbs.), brand new','COMMON OFFICE EQUIPMENT','UNIT',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(288,NULL,'FIRE EXTINGUISHER, pure HCFC 123, with fire rating of 1A, 1BC,  for ABC class of fire, stored pressure type, non-electrical conductor, non-corrosive, 4.5kg (10 lbs), brand new','COMMON OFFICE EQUIPMENT','UNIT',4.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(289,NULL,'MULTIMEDIA PROJECTOR, 4000 ansi Lumens, 3600 hours lamp life, supports SVGA to SXGA, (compressed) resolution','COMMON OFFICE EQUIPMENT','UNIT',26.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(290,NULL,'PAPER TRIMMER/CUTTING MACHINE, max paper size: B4, 30 sheets cutting cap., automatic clamping, stationery blade guard, A4-A6 format indications','COMMON OFFICE EQUIPMENT','UNIT',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(291,NULL,'PAPER SHREDDER, 0.06m/sec shred speed, cuts 6-8 sheets of 70gsm paper','COMMON OFFICE EQUIPMENT','UNIT',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(292,NULL,'PRINTER, IMPACT DOT MATRIX, 24 pins, 136 column, 480 cps print speed','COMMON OFFICE EQUIPMENT','UNIT',18.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(293,NULL,'PRINTER, IMPACT DOT MATRIX, 9 pins, 80 column, 337 cps print speed','COMMON OFFICE EQUIPMENT','UNIT',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(294,NULL,'PRINTER, INKJET, wireless capable, 55ppm speed, 512MB memory, duplex printing capable','COMMON OFFICE EQUIPMENT','UNIT',10.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(295,NULL,'PRINTER, LASER, monochrome, 24ppm speed, 1200 x 1200 dpi','COMMON OFFICE EQUIPMENT','UNIT',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(296,NULL,'TABLE, monobloc, square, 36\" X 36\", white, four(4) seater, for indoor and outdoor use','COMMON OFFICE EQUIPMENT','UNIT',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(297,NULL,'TABLE, monobloc, square, 36\" X 36\", beige, four(4) seater, for indoor and outdoor use','COMMON OFFICE EQUIPMENT','UNIT',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(298,NULL,'Desktop and Laptop','COMMON OFFICE EQUIPMENT','UNIT',0.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(299,NULL,'COMPUTER CONTINUOUS FORMS, 1 ply, 11\" x 9-1/2\", 2000 sheets/box','COMMON COMPUTER SUPPLIES','BOX',630.76,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(300,NULL,'COMPUTER CONTINUOUS FORMS, 1 ply, 11\" x 14-7/8\", 2000 sheets/box','COMMON COMPUTER SUPPLIES','BOX',950.30,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(301,NULL,'COMPUTER CONTINUOUS FORMS, 2 ply, 11\" x 9-1/2\", 1000 sets/box','COMMON COMPUTER SUPPLIES','BOX',716.04,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(302,NULL,'COMPUTER CONTINUOUS FORMS, 2 ply, 11\" x 14-7/8\", 1000 sets/box','COMMON COMPUTER SUPPLIES','BOX',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(303,NULL,'COMPUTER CONTINUOUS FORMS, 3 ply, 11 x 9-1/2\", 500 sets/box','COMMON COMPUTER SUPPLIES','BOX',596.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(304,NULL,'COMPUTER CONTINUOUS FORMS, 3 ply,  11\" x 14-7/8\", 500 sets/box','COMMON COMPUTER SUPPLIES','BOX',958.15,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(305,NULL,'DVD REWRITABLE, 4x speed, 4.7GB capacity','COMMON COMPUTER SUPPLIES','PIECE',21.79,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(306,NULL,'EXTERNAL HARD DRIVE, 1TB, 2.5\" HDD, USB 3.0, backward compatible with USB 2.0, 5400 rpm, with dual color LED light to indicate USB 3.0/USB 2.0 transmission, USB powered, System Requirements: USB 3.0: ','COMMON COMPUTER SUPPLIES','PIECE',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(307,NULL,'FLASH DRIVE, 16GB, USB 2.0,  plug and play','COMMON COMPUTER SUPPLIES','PIECE',194.48,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(308,NULL,'MOUSE, optical, USB connection type','COMMON COMPUTER SUPPLIES','UNIT',127.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(309,NULL,'HANDBOOK ON PHILIPPINE GOVERNMENT   PROCUREMENT-RA 9184(6th Edition),  6\" x 9\", 296 pages,','HANDBOOK ON PROCUREMENT','PIECE',61.83,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(310,NULL,'INK CART, BROTHER LC39BK, Black              ','CONSUMABLES','CART',681.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(311,NULL,'INK CART, BROTHER LC39C, Cyan                ','CONSUMABLES','CART',447.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(312,NULL,'INK CART, BROTHER LC39M, Magenta        ','CONSUMABLES','CART',447.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(313,NULL,'INK CART, BROTHER LC39Y, Yellow             ','CONSUMABLES','CART',447.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(314,NULL,'INK CART, BROTHER LC67B, Black                ','CONSUMABLES','CART',910.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(315,NULL,'INK CART, BROTHER LC67C, Cyan                ','CONSUMABLES','CART',546.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(316,NULL,'INK CART, BROTHER LC67M, Magenta     ','CONSUMABLES','CART',546.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(317,NULL,'INK CART, BROTHER LC67Y, Yellow            ','CONSUMABLES','CART',546.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(318,NULL,'INK CART, BROTHER LC67HYBK, Black       ','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(319,NULL,'INK CART, BROTHER LC67HYC, Cyan           ','CONSUMABLES','CART',868.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(320,NULL,'INK CART, BROTHER LC67HYM, Magenta','CONSUMABLES','CART',868.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(321,NULL,'INK CART, BROTHER LC67HYY, Yellow        ','CONSUMABLES','CART',868.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(322,NULL,'INK CART, CANON PG-810, Black              ','CONSUMABLES','CART',774.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(323,NULL,'INK CART, CANON PG-740, Black            ','CONSUMABLES','CART',754.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(324,NULL,'INK CART, CANON PGI-725, Black            ','CONSUMABLES','CART',574.08,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(325,NULL,'INK CART, CANON CLI-726, Black              ','CONSUMABLES','CART',534.56,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(326,NULL,'INK CART, CANON CL-811, Colored          ','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(327,NULL,'INK CART, CANON CL-741, Colored','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(328,NULL,'INK CART, CANON CLI-726, Cyan              ','CONSUMABLES','CART',535.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(329,NULL,'INK CART, CANON CLI-726, Magenta        ','CONSUMABLES','CART',535.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(330,NULL,'INK CART, CANON CLI-726, Yellow          ','CONSUMABLES','CART',535.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(331,NULL,'INK CART, EPSON C13T038190 (T0 38), Black','CONSUMABLES','CART',491.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(332,NULL,'INK CART, EPSON C13T039090 (T0 39), Colored','CONSUMABLES','CART',770.64,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(333,NULL,'INK CART, EPSON C13T105190(73N)/(91N),Black','CONSUMABLES','CART',426.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(334,NULL,'INK CART, EPSON C13T105290(73N)/(91N),Cyan','CONSUMABLES','CART',426.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(335,NULL,'INK CART, EPSON C13T105390(73N)/(91N),Magenta','CONSUMABLES','CART',426.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(336,NULL,'INK CART, EPSON C13T105490(73N)/(91N),Yellow','CONSUMABLES','CART',426.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(337,NULL,'INK CART, EPSON C13T6664100 (T6641), Black','CONSUMABLES','CART',254.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(338,NULL,'INK CART, EPSON C13T664200 (T6642), Cyan','CONSUMABLES','CART',254.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(339,NULL,'INK CART, EPSON C13T664300 (T6643), Magenta','CONSUMABLES','CART',254.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(340,NULL,'INK CART, EPSON C13T664400 (T6644), Yellow','CONSUMABLES','CART',254.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(341,NULL,'INK CART, HP 51645A, (HP45), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(342,NULL,'INK CART, HP C1823A, (HP23), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(343,NULL,'INK CART, HP C4844A, (HP10), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(344,NULL,'INK CART, HP C4906AA, (HP940XL), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(345,NULL,'INK CART, HP C4907AA, (HP940XL), Cyan','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(346,NULL,'INK CART, HP C4908AA, (HP940XL), Magenta','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(347,NULL,'INK CART, HP C4909AA, (HP940XL), Yellow','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(348,NULL,'INK CART, HP C4936A, (HP18), Black','CONSUMABLES','CART',982.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(349,NULL,'INK CART, HP C4937A, (HP18), Cyan','CONSUMABLES','CART',717.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(350,NULL,'INK CART, HP C4938A, (HP18), Magenta','CONSUMABLES','CART',717.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(351,NULL,'INK CART, HP C4939A, (HP18), Yellow','CONSUMABLES','CART',717.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(352,NULL,'INK CART, HP C6578DA, (HP78), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(353,NULL,'INK CART, HP C6615DA, (HP15), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(354,NULL,'INK CART, HP C6625AA, (HP17), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(355,NULL,'INK CART, HP C6656AA, (HP56), Black','CONSUMABLES','CART',921.44,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(356,NULL,'INK CART, HP C6657AA, (HP57), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(357,NULL,'INK CART, HP C8727AA, (HP27), Black','CONSUMABLES','CART',826.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(358,NULL,'INK CART, HP C8765WA, (HP94), Black','CONSUMABLES','CART',930.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(359,NULL,'INK CART, HP C8766WA, (HP95), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(360,NULL,'INK CART, HP C8767WA, (HP96), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(361,NULL,'INK CART, HP C9351AA, (HP21), Black','CONSUMABLES','CART',650.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(362,NULL,'INK CART, HP C9352AA, (HP22), Tri-color','CONSUMABLES','CART',751.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(363,NULL,'INK CART, HP C9361WA, (HP93), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(364,NULL,'INK CART, HP C9362WA, (HP92), Black','CONSUMABLES','CART',600.08,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(365,NULL,'INK CART, HP C9363WA, (HP97), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(366,NULL,'INK CART, HP C9364WA, (HP98), Black','CONSUMABLES','CART',826.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(367,NULL,'INK CART, HP CB314A, (HP900), Black','CONSUMABLES','CART',296.40,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(368,NULL,'INK CART, HP CB315A, (HP900), Tri-color','CONSUMABLES','CART',379.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(369,NULL,'INK CART, HP CB335WA, (HP74), Black','CONSUMABLES','CART',696.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(370,NULL,'INK CART, HP CB336WA, (HP74XL), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(371,NULL,'INK CART, HP CB337WA, (HP75), Tri-color','CONSUMABLES','CART',803.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(372,NULL,'INK CART, HP CB338WA, (HP75XL), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(373,NULL,'INK CART, HP CC640WA, (HP60),  Black','CONSUMABLES','CART',639.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(374,NULL,'INK CART, HP CC641WA, (HP60XL),  Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(375,NULL,'INK CART, HP CC643WA, (HP60), Tri-color','CONSUMABLES','CART',754.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(376,NULL,'INK CART, HP CC644WA, (HP60XL), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(377,NULL,'INK CART, HP CC653AA, (HP901), Black','CONSUMABLES','CART',639.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(378,NULL,'INK CART, HP CC656AA, (HP901), Tri-color','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(379,NULL,'INK CART, HP CC660AA, (HP702), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(380,NULL,'INK CART, HP CD887AA, (HP703), Black','CONSUMABLES','CART',358.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(381,NULL,'INK CART, HP CD888AA, (HP703), Tri-color','CONSUMABLES','CART',358.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(382,NULL,'INK CART, HP CD971AA, (HP 920), Black','CONSUMABLES','CART',792.48,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(383,NULL,'INK CART, HP CD972AA, (HP 920XL), Cyan','CONSUMABLES','CART',629.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(384,NULL,'INK CART, HP CD973AA, (HP 920XL), Magenta','CONSUMABLES','CART',629.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(385,NULL,'INK CART, HP CD974AA, (HP 920XL), Yellow','CONSUMABLES','CART',629.20,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(386,NULL,'INK CART, HP CD975AA, (HP 920XL), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(387,NULL,'INK CART, HP CH561WA, (HP61), Black','CONSUMABLES','CART',644.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(388,NULL,'INK CART, HP CH562WA, (HP61), Tricolor','CONSUMABLES','CART',826.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(389,NULL,'INK CART, HP CN045AA, (HP950XL), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(390,NULL,'INK CART, HP CN046AA, (HP951XL), Cyan','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(391,NULL,'INK CART, HP CN047AA, (HP951XL), Magenta','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(392,NULL,'INK CART, HP CN048AA, (HP951XL). Yellow','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(393,NULL,'INK CART, HP CN692AA, (HP704), Black','CONSUMABLES','CART',358.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(394,NULL,'INK CART, HP CN693AA, (HP704), Tri-color','CONSUMABLES','CART',358.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(395,NULL,'INK CART, HP CZ107AA, (HP678), Black','CONSUMABLES','CART',358.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(396,NULL,'INK CART, HP CZ108AA, (HP678), Tricolor','CONSUMABLES','CART',360.88,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(397,NULL,'INK CART, HP CZ121A (HP685A), Black','CONSUMABLES','CART',366.08,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(398,NULL,'INK CART, HP CZ122A (HP685A), Cyan','CONSUMABLES','CART',249.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(399,NULL,'INK CART, HP CZ123A (HP685A), Magenta','CONSUMABLES','CART',249.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(400,NULL,'INK CART, HP CZ124A (HP685A), Yellow','CONSUMABLES','CART',249.60,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(401,NULL,'INK CART, HP Q8893AA (C8728AA), (HP28), Colored','CONSUMABLES','CART',930.80,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(402,NULL,'INK CART, LEXMARK 10NO217 (#17), Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(403,NULL,'INK CART, LEXMARK 10NO227 (#27), Colored','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(404,NULL,'TONER CART,  BROTHER TN-2025, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(405,NULL,'TONER CART,  BROTHER TN-2130, Black','CONSUMABLES','CART',1.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(406,NULL,'TONER CART,  BROTHER TN-2150, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(407,NULL,'TONER CART,  BROTHER TN-3320, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(408,NULL,'TONER CART,  BROTHER TN-3350, Black, for HL5450DN (CU Printer)','CONSUMABLES','CART',4.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(409,NULL,'TONER CART, HP C4092A, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(410,NULL,'TONER CART, HP C4096A, Black','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(411,NULL,'TONER CART, HP C7115A, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(412,NULL,'TONER CART, HP CB435A, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(413,NULL,'TONER CART, HP CB436A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(414,NULL,'TONER CART, HP CB540A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(415,NULL,'TONER CART, HP CB541A, Cyan','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(416,NULL,'TONER CART, HP CB542A, Yellow','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(417,NULL,'TONER CART, HP CB543A, Magenta','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(418,NULL,'TONER CART, HP CC364A, Black','CONSUMABLES','CART',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(419,NULL,'TONER CART, HP CC530A, Black','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(420,NULL,'TONER CART, HP CC531A, Cyan','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(421,NULL,'TONER CART, HP CC532A, Yellow','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(422,NULL,'TONER CART, HP CC533A, Magenta','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(423,NULL,'TONER CART, HP CE255A, Black','CONSUMABLES','CART',6.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(424,NULL,'TONER CART, HP CE278A, Black ','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(425,NULL,'TONER CART, HP CE285A (HP85A), Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(426,NULL,'TONER CART, HP CE310A, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(427,NULL,'TONER CART, HP CE311A, Cyan','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(428,NULL,'TONER CART, HP CE312A, Yellow','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(429,NULL,'TONER CART, HP CE313A, Magenta','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(430,NULL,'TONER CART, HP CE320A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(431,NULL,'TONER CART, HP CE321A, Cyan','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(432,NULL,'TONER CART, HP CE322A, Yellow','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(433,NULL,'TONER CART, HP CE323A, Magenta','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(434,NULL,'TONER CART, HP CE390A, Black','CONSUMABLES','CART',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(435,NULL,'TONER CART, HP CE400A, Black','CONSUMABLES','CART',6.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(436,NULL,'TONER CART, HP CE401A, Cyan','CONSUMABLES','CART',9.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(437,NULL,'TONER CART, HP CE402A, Yellow','CONSUMABLES','CART',9.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(438,NULL,'TONER CART, HP CE403A, Magenta','CONSUMABLES','CART',9.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(439,NULL,'TONER CART, HP CE410A, (HP305), Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(440,NULL,'TONER CART, HP CE411A, (HP305), Cyan','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(441,NULL,'TONER CART, HP CE412A, (HP305), Yellow','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(442,NULL,'TONER CART, HP CE413A, (HP305), Magenta','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(443,NULL,'TONER CART, HP CE505A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(444,NULL,'TONER CART, HP CE505X, Black, high cap','CONSUMABLES','CART',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(445,NULL,'TONER CART, HP Q2612A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(446,NULL,'TONER CART, HP Q2613A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(447,NULL,'TONER CART, HP Q5942A, Black','CONSUMABLES','CART',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(448,NULL,'TONER CART, HP Q5949A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(449,NULL,'TONER CART, HP Q5950A, Black','CONSUMABLES','CART',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(450,NULL,'TONER CART, HP Q5951A, Cyan','CONSUMABLES','CART',10.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(451,NULL,'TONER CART, HP Q5952A, Yellow','CONSUMABLES','CART',10.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(452,NULL,'TONER CART, HP Q5953A, Magenta','CONSUMABLES','CART',10.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(453,NULL,'TONER CART, HP Q6000A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(454,NULL,'TONER CART, HP Q6001A, Cyan','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(455,NULL,'TONER CART, HP Q6002A, Yellow','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(456,NULL,'TONER CART, HP Q6003A, Magenta','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(457,NULL,'TONER CART, HP Q6470A, Black','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(458,NULL,'TONER CART, HP Q6471A, Cyan','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(459,NULL,'TONER CART, HP Q6472A, Yellow','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(460,NULL,'TONER CART, HP Q6473A, Magenta','CONSUMABLES','CART',5.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(461,NULL,'TONER CART, HP Q7553A, Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(462,NULL,'TONER CART, LEXMARK E360H11P, Black','CONSUMABLES','CART',8.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(463,NULL,'TONER CART, LEXMARK T650A11P, Black','CONSUMABLES','CART',9.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(464,NULL,'TONER CART, SAMSUNG ML-D2850B, Black','CONSUMABLES','CART',4.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(465,NULL,'TONER CART, SAMSUNG MLT-D101S, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(466,NULL,'TONER CART, SAMSUNG MLT-D103L, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(467,NULL,'TONER CART, SAMSUNG MLT-D103S, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(468,NULL,'TONER CART, SAMSUNG MLT-D104S, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(469,NULL,'TONER CART, SAMSUNG MLT-D105L, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(470,NULL,'TONER CART, SAMSUNG MLT-D108S, Black','CONSUMABLES','CART',2.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(471,NULL,'TONER CART, SAMSUNG MLT-D119S(ML-2010D3), Black','CONSUMABLES','CART',3.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(472,NULL,'TONER CART, SAMSUNG MLT-D203E, Black','CONSUMABLES','CART',7.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(473,NULL,'TONER CART, SAMSUNG MLT-D203L, Black','CONSUMABLES','CART',4.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(474,NULL,'TONER CART, SAMSUNG MLT-D203U, black','CONSUMABLES','CART',9.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(475,NULL,'TONER CART, SAMSUNG MLT-D205E, Black','CONSUMABLES','CART',8.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(476,NULL,'TONER CART, SAMSUNG MLT-D205L, Black','CONSUMABLES','CART',4.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(477,NULL,'TONER CART, SAMSUNG SCX-D6555A, Black','CONSUMABLES','CART',4.00,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(478,NULL,'RIBBON CART, EPSON C13S015516 (#8750), Black, for LX-300','CONSUMABLES','CART',76.75,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(479,NULL,'RIBBON CART, EPSON C13S015531 (S015086), Black','CONSUMABLES','CART',724.88,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(480,NULL,'RIBBON CART, EPSON C13S015584 (S015327), Black','CONSUMABLES','CART',334.88,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(481,NULL,'RIBBON CART, EPSON C13S015632, Black, for    LX-310','CONSUMABLES','CART',75.92,NULL,0,0.00,0,0,'NONE',1,NULL,NULL),(482,NULL,'Short coupon bond','Office Supply (DBM)','PC',0.00,NULL,0,0.00,4,21,'',2,NULL,NULL),(483,NULL,'test','Office Supply','PC',0.00,'PC',0,0.00,0,0,'',1,NULL,NULL),(484,'item name','item description','COMMON COMPUTER SUPPLIES','PC',100.00,'PC',0,120.00,0,2,'brand',1,'application','126781687');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_receiving` */

insert  into `purchase_receiving`(`deliveryid`,`supplierid`,`status`,`receivedate`,`drno`,`aprno`,`aprid`,`pono`,`poid`,`invoiceno`,`time_stamp`,`warehouseid`,`purpose`,`prid`) values (1,6,'PENDING','2017-03-09','test',NULL,0,NULL,0,'','2017-03-09 13:19:37',1,NULL,NULL),(2,2,'PENDING','2017-03-12','123',NULL,0,NULL,0,'','2017-03-12 17:38:12',1,NULL,NULL),(3,21,'PENDING','2017-03-12','111',NULL,1,NULL,0,'','2017-03-12 20:22:10',1,'For Office Use',NULL),(5,1,'PENDING','2017-05-01','777',NULL,0,NULL,0,'','2017-05-01 14:00:14',1,'',23);

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

insert  into `purchase_receiving_items`(`deliveryitemsid`,`deliveryid`,`drno`,`itemNo`,`unit`,`qty`,`unitcost`,`status`,`time_stamp`,`datereceived`,`warehouseid`) values (1,'2','123',51,'PC',10,9.00,1,'2017-03-12 17:40:05',NULL,1),(2,'2','123',45,'PC',10,11.00,1,'2017-03-12 17:40:05',NULL,1),(3,'3','111',172,'BOX',1,20.00,1,'2017-03-12 21:14:20',NULL,1),(4,'3','111',196,'PACK',1,30.00,1,'2017-03-12 21:14:20',NULL,1),(6,'2','123',33,'REAM',1,0.00,1,'2017-04-20 16:23:42',NULL,1),(7,'2','123',33,'REAM',1,0.00,1,'2017-04-20 16:24:07',NULL,1),(8,'2','123',33,'REAM',1,0.00,1,'2017-04-20 16:24:07',NULL,1),(9,'3','111',172,'',1,179.28,1,'2017-08-06 07:25:43',NULL,1),(10,'3','111',12,'BOX',1,0.00,1,'2017-08-06 07:25:43',NULL,1),(11,'1','test',1,'PC',1,10.00,0,'2017-04-28 08:17:02',NULL,1),(12,'3','111',39,'BOX',1,0.00,1,'2017-08-06 07:25:43',NULL,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `services_estimate` */

insert  into `services_estimate`(`estimateid`,`estimate_date`,`customerid`,`platenumber`,`vehicletype`,`addedby`,`estimate_timestamp`) values (2,NULL,NULL,NULL,NULL,'1','2017-07-26 11:11:01'),(3,'2017-07-26',NULL,NULL,NULL,'1','2017-07-26 11:11:22'),(4,'2017-07-26',NULL,NULL,NULL,'1','2017-07-26 11:11:45'),(5,'2017-07-26',NULL,NULL,NULL,'1','2017-07-26 11:12:02');

/*Table structure for table `services_estimate_ls_items` */

DROP TABLE IF EXISTS `services_estimate_ls_items`;

CREATE TABLE `services_estimate_ls_items` (
  `laborserviceid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ls_estimateid` bigint(20) DEFAULT NULL,
  `ls_jobdescription` text,
  `ls_amount` double(10,2) DEFAULT NULL,
  `ls_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`laborserviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `services_estimate_ls_items` */

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `suppliers` */

insert  into `suppliers`(`supplierID`,`supName`,`address`,`contactNo`,`TIN`,`products`,`email`) values (1,'Morning Star General Merchandise','Governor Ortigas, San Fernando, 2500 La Union, Philippine','+63 72 242 5115','NONE','NONE',NULL),(2,'National Bookstore','Manna Mall, Pagdaraoan Biday Road, San Fernando, La Union','NONE','NONE','NONE',NULL),(3,'PC 4 Me','San Fernando City La Union','607-2250/700-2249/09175005430/09199912205','NONE','NONE',NULL),(4,'SKM 2','Kenny Plaza, Quezon Ave, San Fernando City, La Union','(072)607-7775/607-1397','NONE','NONE',NULL),(5,'Insystech (Aquino Square)','Aquino Square, City of San Fernando La Union','','NONE',NULL,NULL),(6,'Sapphire Air-conditioning Center','Sevilla, San Fernando, La union','072-607-3348 / 607-4585 / 603-0229 / 09478928435','NONE','Aircon Maintenance',NULL),(7,'Azalea Residences','Baguio City','02-5794894/02-579-4890/074-442-8888	','NONE','Accomodation and Lease of Venue',NULL),(8,'Fort Ilocandia Hotel','Ilocos Norte','(6377) 670-9101/(6377) 670-9101','NONE','Accomodation and Lease of Venue','booking@fortilocandia.com.ph'),(9,'Hotel Elizabeth','Baguio City','0935-925-4213/0907-088-8568','NONE','Accomodation and Lease of Venue','salesaccount2.baguio@hotelelizabeth.com.ph'),(10,'B Hotel','Brgy. Laging Handa, Quezon City','990-5000/990-6000/02-7718383','NONE','Accomodation and Lease of Venue','iboto@thebhotelqc.com'),(11,'PhilCopy Corporation','Pagdalagan, City of San Fernando, La Union','072-8885102','NONE','Photocopying Machine','NONE'),(12,'Chowking','San Fernando City, La Union','072-242-4822/09108038348','NONE','Function room for seminars, meetings, birthdays','NONE'),(13,'Philippine Trade Training Center','Manila','02-834-1350	','NONE','Function rooms for seminars/conferences','facilities@pttc.gov.ph/www.pttc.gove.ph'),(14,'Hotel Ariana','Paringao, Bauang, La Union','705-0050/607-6788','NONE','Function rooms for seminars/conferences','NONE'),(15,'President Hotel','Lingayen, Pangasinan',NULL,'NONE','Function rooms for senubars.conferences','NONE'),(16,'CHIMES Enterprises','Parian, San Fernando City, La Union','Fax: 700-0443/09228845922','NONE','Office Furniture','NONE'),(17,'Apilado North Shutters and Construction','Quezon Avenue, Sevilla, San Fernando City, LU','242-3806/888-5108/09996789646','NONE','Roll-up doors and grills, metro plus doors, BFT Auto Gate Aluminum','NONE'),(18,'Godion Hotel','Vigan City, Ilocos Sur','077-674-0288/077-674-0998	','NONE','Function rooms for seminars/conferences','info@vigangordionhotel.com'),(19,'WindoBlinds','Marand, Bauang, LU','0917-802-9676/0998-861-9976','NONE','Window Blinds','NONE'),(20,'Savers Marketing','Sevilla, San Fernando, La Union','072-205-0163	','NONE','Office, School,Hub and Business Solution','NONE'),(21,'DBM-Procurement Service-PhilGEPS','NONE',NULL,'NONE',NULL,'NONE'),(22,'Inventory','CHED RO1','','','',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `warehouse` */

insert  into `warehouse`(`warehouseid`,`warehouse_name`) values (1,'DMMMSU-SLUC'),(2,'DMMMSU-SLUC CCS'),(3,'Coop');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
