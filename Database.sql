/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - lab
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lab` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lab`;

/*Table structure for table `dreg` */

DROP TABLE IF EXISTS `dreg`;

CREATE TABLE `dreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `special` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `dreg` */

insert  into `dreg`(`id`,`name`,`pass`,`email`,`phone`,`address`,`special`) values (1,'sathya','sathya','sathya@gmail.com','9383938393','chennai','heart'),(2,'sathya','sathya','sathya@gmail.com','9383938393','chennai','heart'),(4,'praba','praba','praba@gmail.com','938383938','chennai','Diabetic'),(5,'ragu','ragu','ragu@gmail.com','9838373837','chennai','Kidney');

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) DEFAULT NULL,
  `spe` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `upload` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `pre` text,
  `level` varchar(200) DEFAULT NULL,
  `rating` varchar(200) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `report` */

insert  into `report`(`id`,`dname`,`spe`,`uname`,`email`,`upload`,`type`,`amount`,`status`,`pre`,`level`,`rating`) values (1,'sathya','heart','deepa','1cp.javateam2020@gmail.com','admin.jfif','Hemoglobin','200','Sent','taken daily one fruit','Normal','5'),(2,'sathya','heart','deepa','1cp.javateam2020@gmail.com','blod.jpg','Blood','200','Waiting',NULL,NULL,'0'),(3,'praba','Diabetic','deepa','sathya@gmail.com','u.jpg','Urine Analysis','200','Sent','Risk Level ','Risk','0'),(4,'praba','Diabetic','dinesh','dineshrs1612@gmail.com','dia.jpg','Hemoglobin','200','Sent','Taken daily dates, friuts','Normal','4'),(5,'ragu','Kidney','dinesh','dineshrs1612@gmail.com','blod.jpg','Urine Analysis','200','Sent','immedialtey ','Risk','0');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `aadhar` varchar(12) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `age` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`name`,`pass`,`email`,`aadhar`,`phone`,`address`,`age`,`gender`) values (1,'deepa','deepa','1cp.javateam2020@gmail.com','873738373837','9838373837','chennai','23','female'),(2,'dinesh','2345','dineshrs1612@gmail.com','123456789023','93883738737','cehnnai','23','male');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
