-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: agendadb.cfmlnopzuyrp.sa-east-1.rds.amazonaws.com    Database: agendadb
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `agenda_id` varchar(100) NOT NULL DEFAULT '',
  `descricao` text,
  `data_insert_local` datetime DEFAULT NULL,
  `data_insert_server` datetime DEFAULT NULL,
  `agenda_tipo_id` smallint(6) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `escola_id` int(11) DEFAULT NULL,
  `enviado_server` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`),
  KEY `fk_agenda_agenda_tipo_idx` (`agenda_tipo_id`),
  KEY `fk_agenda_x_funcionario_idx` (`funcionario_id`),
  KEY `idx_agenda_data` (`data_insert_local`),
  KEY `fk_agenda_x_escola_idx` (`escola_id`),
  CONSTRAINT `fk_agenda_x_agenda_tipo` FOREIGN KEY (`agenda_tipo_id`) REFERENCES `agenda_tipo` (`agenda_tipo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_x_escola` FOREIGN KEY (`escola_id`) REFERENCES `escola` (`escola_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_x_funcionario` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`funcionario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES ('047E01DC-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:40','2016-03-08 17:51:32',NULL,16,1,NULL),('10C78ADA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:38','2016-03-08 17:51:30',NULL,16,1,NULL),('12AA1AAA-72AF-4CAC-B9F2-B681A08189B4','8','2016-03-08 16:53:10','2016-03-08 16:53:19',NULL,16,1,'S'),('13528723-C47C-4B41-BF27-C8A1309BEDB0','8','2016-03-08 16:53:00','2016-03-08 16:53:19',NULL,16,1,'S'),('1C5B129A-DB44-4085-A563-76ED2ED25A0C','1','2016-03-08 16:36:10','2016-03-08 16:36:11',NULL,16,1,'S'),('2165CD07-AC50-40D6-90BC-A701D6212B4D','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S'),('243198DB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:39','2016-03-08 17:51:31',NULL,16,1,NULL),('289349D8-6EE5-E511-B38F-FDC87DDF9FD9','W','2016-03-08 17:46:34','2016-03-08 17:51:27',NULL,16,1,NULL),('29C781A8-731E-436F-93F2-06C71D424306','8','2016-03-08 16:53:02','2016-03-08 16:53:19',NULL,16,1,'S'),('2A03E1D8-6EE5-E511-B38F-FDC87DDF9FD9','W','2016-03-08 17:46:35','2016-03-08 17:51:28',NULL,16,1,NULL),('2AF56FDA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:37','2016-03-08 17:51:29',NULL,16,1,NULL),('343E41BB-AA23-454E-A10B-2689FD8E3432','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S'),('387AFF67-CBD2-493E-BD06-1FC28EC88EF8','8','2016-03-08 16:53:12','2016-03-08 16:53:19',NULL,16,1,'S'),('3894C597-9329-45D5-A3F4-45C9738FC16D','7','2016-03-08 16:52:57','2016-03-08 16:53:18',NULL,16,1,'S'),('38E3F31D-946B-4600-B503-EC6AFBDD6D84','8','2016-03-08 16:53:10','2016-03-08 16:53:19',NULL,16,1,'S'),('3D75E283-C91A-49AE-8BC5-7333BF9FFD7E','8','2016-03-08 16:53:00','2016-03-08 16:53:19',NULL,16,1,'S'),('3E784FDC-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:41','2016-03-08 17:51:33',NULL,16,1,NULL),('3EE9FF12-FF33-4DCF-8853-6C01C5FC3990','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S'),('44A946DB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:39','2016-03-08 17:51:31',NULL,16,1,NULL),('4E5709B7-53A8-4911-AE3F-68B58A859AC6','8','2016-03-08 16:53:12','2016-03-08 16:53:19',NULL,16,1,'S'),('509226BD-5D45-470A-B9F8-7BDF115FC980','8','2016-03-08 16:53:00','2016-03-08 16:53:19',NULL,16,1,'S'),('539E1130-D487-4875-8280-7BA3217EFBD4','8','2016-03-08 16:53:10','2016-03-08 16:53:19',NULL,16,1,'S'),('60E462DB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:39','2016-03-08 17:51:31',NULL,16,1,NULL),('615DD16E-DFCD-4F69-BA1D-9EFAAD033EC1','8','2016-03-08 16:53:00','2016-03-08 16:53:18',NULL,16,1,'S'),('71115F98-8224-4DEB-84FF-C15DC0841027','2','2016-03-08 16:36:31','2016-03-08 16:36:42',NULL,16,1,'S'),('71B971ED-B8E5-46D0-AD24-9A5C33040F3B','8','2016-03-08 16:53:12','2016-03-08 16:53:19',NULL,16,1,'S'),('730FE195-1FE5-4D17-8C82-B23A607EE4E9','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S'),('7AA0B6C5-0CA7-42A6-823D-124F2E78D47A','8','2016-03-08 16:53:11','2016-03-08 16:53:19',NULL,16,1,'S'),('7CD234DC-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:40','2016-03-08 17:51:33',NULL,16,1,NULL),('8026E9D9-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:36','2016-03-08 17:51:28',NULL,16,1,NULL),('83858751-2029-46DA-9307-FD3DDD165A2B','8','2016-03-08 16:53:10','2016-03-08 16:53:19',NULL,16,1,'S'),('84737DDB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:39','2016-03-08 17:51:31',NULL,16,1,NULL),('8A2DDCDA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:38','2016-03-08 17:51:30',NULL,16,1,NULL),('8AC04FD9-6EE5-E511-B38F-FDC87DDF9FD9','Wf','2016-03-08 17:46:35','2016-03-08 17:51:28',NULL,16,1,NULL),('8EC40769-288E-483E-A11B-5C6E48ED2AEB','8','2016-03-08 16:53:11','2016-03-08 16:53:19',NULL,16,1,'S'),('8F23B24D-D7CD-4570-9689-D6473D91305D','8','2016-03-08 16:53:10','2016-03-08 16:53:19',NULL,16,1,'S'),('96187209-8BB2-46AA-A964-77EFD4B2D2B3','8','2016-03-08 16:53:12','2016-03-08 16:53:19',NULL,16,1,'S'),('9A3BF5DA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:38','2016-03-08 17:51:30',NULL,16,1,NULL),('A0BEC1DA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:38','2016-03-08 17:51:30',NULL,16,1,NULL),('AC6F1EDA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:37','2016-03-08 17:51:29',NULL,16,1,NULL),('B0395655-7D40-4D4B-8DFD-F164A6F54865','4','2016-03-08 16:46:11','2016-03-08 16:46:20',NULL,16,1,'S'),('B4A069AB-6EE5-E511-B38F-FDC87DDF9FD9','Fgh','2016-03-08 17:45:18','2016-03-08 17:45:44',NULL,16,1,NULL),('B7B334CB-5659-4F73-BF80-8A1669629F2C','8','2016-03-08 16:53:02','2016-03-08 16:53:19',NULL,16,1,'S'),('B943231B-F265-4F4A-B374-E14E5E856266','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S'),('BCB181D9-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:36','2016-03-08 17:51:28',NULL,16,1,NULL),('C8CC1BDC-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:40','2016-03-08 17:51:32',NULL,16,1,NULL),('CA8E42C7-FA52-4339-A52B-D2DEEB0FFE11','8','2016-03-08 16:53:11','2016-03-08 16:53:19',NULL,16,1,'S'),('D40B2CDB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:39','2016-03-08 17:51:31',NULL,16,1,NULL),('D9D0CA33-3C5C-4693-8BBA-BFF553546D46','3','2016-03-08 16:45:23','2016-03-08 16:45:26',NULL,16,1,'S'),('DAA97260-F92C-4AC7-AF5C-FF6EE22AE086','5','2016-03-08 16:52:20','2016-03-08 16:52:31',NULL,16,1,'S'),('DBA252CB-4160-4FB8-810C-0897AE4713E1','8','2016-03-08 16:53:02','2016-03-08 16:53:19',NULL,16,1,'S'),('DC5E677E-8A76-47AC-B576-FCA03478B591','8','2016-03-08 16:53:11','2016-03-08 16:53:19',NULL,16,1,'S'),('DDE3B39C-2D3A-44C0-B82F-A793C995D150','8','2016-03-08 16:53:11','2016-03-08 16:53:19',NULL,16,1,'S'),('DE0E4D15-D804-419C-BF6F-30276F126180','8','2016-03-08 16:53:12','2016-03-08 16:53:19',NULL,16,1,'S'),('DE9E3ADA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:37','2016-03-08 17:51:29',NULL,16,1,NULL),('DF55C4EA-01DA-4269-A24E-DC899D5D0D83','8','2016-03-08 16:53:00','2016-03-08 16:53:19',NULL,16,1,'S'),('E1F018C4-2956-471E-B772-30EF2F4CF366','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S'),('E6BDB2DB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:39','2016-03-08 17:51:32',NULL,16,1,NULL),('EAA36F03-4236-4DF3-9963-06A5894C8369','8','2016-03-08 16:53:11','2016-03-08 16:53:19',NULL,16,1,'S'),('EAE203DA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:37','2016-03-08 17:51:29',NULL,16,1,NULL),('ECD4C9D9-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:36','2016-03-08 17:51:28',NULL,16,1,NULL),('ECFFE7DB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:40','2016-03-08 17:51:32',NULL,16,1,NULL),('F25811DB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:38','2016-03-08 17:51:30',NULL,16,1,NULL),('F43BA5DA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:38','2016-03-08 17:51:30',NULL,16,1,NULL),('F5F74211-CA13-44A0-B1F6-E6A271741B5F','8','2016-03-08 16:52:59','2016-03-08 16:53:18',NULL,16,1,'S'),('F65255DA-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:37','2016-03-08 17:51:29',NULL,16,1,NULL),('FA06CEDB-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:40','2016-03-08 17:51:32',NULL,16,1,NULL),('FA3666DC-6EE5-E511-B38F-FDC87DDF9FD9','Wff','2016-03-08 17:46:41','2016-03-08 17:51:33',NULL,16,1,NULL),('FBAB49BC-D794-4314-9EC6-CD9A38BE830B','7','2016-03-08 17:01:21','2016-03-08 17:01:32',NULL,16,1,'S'),('FC645B05-DE68-405B-A172-3E847E85E15B','6','2016-03-08 16:52:55','2016-03-08 16:53:18',NULL,16,1,'S'),('FD508187-4F4B-42C3-B6AD-A8633A9D1462','8','2016-03-08 16:53:01','2016-03-08 16:53:19',NULL,16,1,'S');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-08 17:59:21
