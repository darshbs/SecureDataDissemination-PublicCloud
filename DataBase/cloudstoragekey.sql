/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.52-log : Database - cloudstoragekey
*********************************************************************
Server version : 5.5.52-log
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `cloudstoragekey`;

USE `cloudstoragekey`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `auditor` */

CREATE TABLE `auditor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adtname` varchar(255) NOT NULL,
  `adtpwd` varchar(255) NOT NULL,
  `Pubkey` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `auditor` */

insert  into `auditor`(`id`,`adtname`,`adtpwd`,`Pubkey`) values (1,'auditor','auditor','auditor123');

/*Table structure for table `file` */

CREATE TABLE `file` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `pkey` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `fcont` blob,
  `skey1` varchar(255) DEFAULT NULL,
  `skey2` varchar(255) DEFAULT NULL,
  `skey3` varchar(255) DEFAULT NULL,
  `skey4` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `groups` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`sid`,`pkey`,`fname`,`fcont`,`skey1`,`skey2`,`skey3`,`skey4`,`status`,`groups`) values (1,'1235','sadf','smita.d@alchemysolutions.com','77093248','8fgpq0wc','VPYILDRY','PdMbRViM','Generated',NULL),(5,'12345','hcl','smita.d@alchemysolutions.com','48345898','0kziumm5','FC43CYYF','ILpqQifg','Generated',NULL),(6,'12345','hcl','smita.d@alchemysolutions.com','80065791','az053k7m','037ZVJ4G','XrkJWiEG','Generated',NULL),(7,'42342','RTO','http://btis.in/rto','78302808','eevtdai4','P4X1X7KR','GbhpKTkR','Generated',NULL),(9,'1234','write','http://stackoverflow.com/questions/13507424/how-to-create-a-word-document-using-apache-poi\r\n\r\nhttp://developeriq.in/articles/2012/jul/03/handling-ms-word-documents-using-apache-poi/\r\n\r\n\r\n\r\nhttp://tkgospodinov.com/writing-microsoft-word-documents-in-java-with-apache-poi-part-2-creating-tables/\r\n\r\n\r\nhttp://javing.blogspot.in/2011/06/using-apache-poi-to-read-from-word.html\r\n\r\n\r\nimport java.io.File; import java.io.FileOutputStream; import org.apache.poi.xwpf.usermodel.XWPFDocument; import org.apache.poi.xwpf.usermodel.XWPFParagraph; import org.apache.poi.xwpf.usermodel.XWPFRun; public class App { public void newWordDoc(String filename, String fileContent) throws Exception { XWPFDocument document = new XWPFDocument(); XWPFParagraph tmpParagraph = document.createParagraph(); XWPFRun tmpRun = tmpParagraph.createRun(); tmpRun.setText(fileContent); tmpRun.setFontSize(18); FileOutputStream fos = new FileOutputStream(new File(filename + \".doc\")); document.write(fos); fos.close(); } public static void main(String[] args) throws Exception { App app = new App(); app.newWordDoc(\"testfile\", \"Hello World!\"); } } \r\n\r\n- See more at: http://javing.blogspot.in/2011/06/using-apache-poi-to-read-from-word.html#sthash.RJNh9xee.dpuf\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nimport java.io.File;   \r\n  import java.io.FileOutputStream;   \r\n  import org.apache.poi.xwpf.usermodel.XWPFDocument;   \r\n  import org.apache.poi.xwpf.usermodel.XWPFParagraph;   \r\n  import org.apache.poi.xwpf.usermodel.XWPFRun;   \r\n  public class DocFile {   \r\n    public void newWordDoc(String filename, String fileContent)   \r\n         throws Exception {   \r\n       XWPFDocument document = new XWPFDocument();   \r\n       XWPFParagraph tmpParagraph = document.createParagraph();   \r\n       XWPFRun tmpRun = tmpParagraph.createRun();   \r\n       tmpRun.setText(fileContent);   \r\n       tmpRun.setFontSize(18);   \r\n       FileOutputStream fos = new FileOutputStream(new File(\"C:\\\\Users\\\\amitabh\\\\Pictures\\\\pics\\\\\"+filename + \".doc\"));   \r\n       document.write(fos);   \r\n       fos.close();   \r\n    }   \r\n    public static void main(String[] args) throws Exception {   \r\n         DocFile app = new DocFile();   \r\n         app.newWordDoc(\"testfile\", \"Hi hw r u?\");   \r\n\r\n    }   \r\n  }   \r\n\r\n\r\n\r\n\r\n','49915723','du8u7dk5','WL2S4UQF','WUhQaTof','Generated',NULL),(11,'1234','mongodb','http://www.webiyo.com/2011/02/install-mongodb-service-on-windows-7.html','55614432','1mpz7x67','R7RDPBOZ','nmNkScog','Generated',NULL),(12,'1234','songs','http://tamiltunes.com/ilayarajas-best-melodies-2-132-songs.html\r\n(uTorrent)\r\nhttp://tamiltunes.com/super-hit-love-melodies-139-songs.html\r\n','91550861','172vhh2t','7XAKCOIJ','eTMJyPXq','Generated',NULL),(13,'121E3b6411','nagesh.txt','welcome to project demonistration','10908626','2lv5h6ip','2RO1JPLD','VvlvkwQU','Generated',NULL),(14,'2jEb3jj1k5','sampleData','Data deduplication is one of important data compression techniques for eliminating duplicate copies of repeating data, voice-based-email-for-blind-mastervoice-based-email-for-blind-master',NULL,NULL,NULL,NULL,'Key Not Gen',NULL),(15,'3RGj18aEC5','subkey','To accomplish more reliable verification or reorganization we should utilize something that truly characterizes the given individual user. Biometrics offer computerized strategies for identity verification or recognition on the standard','02581818','668lpebu','7BECWZDR','jkKSKXnl','Generated','group1');
 
/*Table structure for table `graph` */

CREATE TABLE `graph` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `Users` varchar(255) DEFAULT NULL,
  `Files` varchar(255) DEFAULT NULL,
  `Keygen` varchar(255) DEFAULT NULL,
  `Keynotgen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `graph` */

insert  into `graph`(`sid`,`Users`,`Files`,`Keygen`,`Keynotgen`) values (1,'5','10','9','1');

/*Table structure for table `registration` */

CREATE TABLE `registration` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pubkey` varchar(255) DEFAULT NULL,
  `Skey` varchar(255) NOT NULL,
  `groups` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`Id`,`Uname`,`Email`,`Password`,`Mobile`,`City`,`Pubkey`,`Skey`,`groups`) values (10,'Palani','chennaisunday.cs0177@gmail.com','123','7200157721','Chennai','j5sG148D1R','8a4GDj6EEa',NULL),(11,'velu','chennaisunday.cs0177@gmail.com','abc','7200157721','Bangalore',NULL,'8R666Db1Ra',NULL),(12,'palanikumar','chennaisunday.cs0177@gmail.com','123','7200157721','Chennai','s3sD2682D5','1CCDsDs3ks',NULL),(13,'nageswar','nageshp011996@gmail.com','12345678','6281348121','kadapa','b4Rb2RDCkD','8RDER4GaD3',NULL),(20,'suresh','vadde.seetha@gmail.com','suresh','9666589655','Hyderabad','RGRk5CkG3a','b2CRG1j5C2','group1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
