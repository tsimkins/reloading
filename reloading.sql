-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: reloading
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add powder',8,'add_powder'),(23,'Can change powder',8,'change_powder'),(24,'Can delete powder',8,'delete_powder'),(25,'Can add caliber',9,'add_caliber'),(26,'Can change caliber',9,'change_caliber'),(27,'Can delete caliber',9,'delete_caliber'),(28,'Can add weapon',10,'add_weapon'),(29,'Can change weapon',10,'change_weapon'),(30,'Can delete weapon',10,'delete_weapon'),(31,'Can add bullet',11,'add_bullet'),(32,'Can change bullet',11,'change_bullet'),(33,'Can delete bullet',11,'delete_bullet'),(34,'Can add primer',12,'add_primer'),(35,'Can change primer',12,'change_primer'),(36,'Can delete primer',12,'delete_primer'),(37,'Can add load',13,'add_load'),(38,'Can change load',13,'change_load'),(39,'Can delete load',13,'delete_load'),(40,'Can add shooter',14,'add_shooter'),(41,'Can change shooter',14,'change_shooter'),(42,'Can delete shooter',14,'delete_shooter'),(43,'Can add result',15,'add_result'),(44,'Can change result',15,'change_result'),(45,'Can delete result',15,'delete_result'),(46,'Can add log entry',16,'add_logentry'),(47,'Can change log entry',16,'change_logentry'),(48,'Can delete log entry',16,'delete_logentry');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=761 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--


--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'auth','permission'),(2,'auth','group'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'sites','site'),(8,'reloading','powder'),(9,'reloading','caliber'),(10,'reloading','weapon'),(11,'reloading','bullet'),(12,'reloading','primer'),(13,'reloading','load'),(14,'reloading','shooter'),(15,'reloading','result'),(16,'admin','logentry');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-11-05 21:32:03'),(2,'auth','0001_initial','2016-11-05 21:32:03'),(3,'admin','0001_initial','2016-11-05 21:32:03'),(4,'admin','0002_logentry_remove_auto_add','2016-11-05 21:32:03'),(5,'contenttypes','0002_remove_content_type_name','2016-11-05 21:32:03'),(6,'auth','0002_alter_permission_name_max_length','2016-11-05 21:32:03'),(7,'auth','0003_alter_user_email_max_length','2016-11-05 21:32:03'),(8,'auth','0004_alter_user_username_opts','2016-11-05 21:32:03'),(9,'auth','0005_alter_user_last_login_null','2016-11-05 21:32:04'),(10,'auth','0006_require_contenttypes_0002','2016-11-05 21:32:04'),(11,'auth','0007_alter_validators_add_error_messages','2016-11-05 21:32:04'),(12,'auth','0008_alter_user_username_max_length','2016-11-05 21:32:04'),(13,'sessions','0001_initial','2016-11-05 21:32:04'),(14,'sites','0001_initial','2016-11-05 21:32:04'),(15,'sites','0002_alter_domain_unique','2016-11-05 21:32:04');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9408c92d633c0edd6f2a8cfab2f280af','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5iY2ViOWQ5NzJiN2ZiNWY1Nzk0\nOWVjYTM4ZDJlN2U3Yg==\n','2012-03-21 17:28:24'),('1523db568c0612af10aaf9d15183f9c1','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5iY2ViOWQ5NzJiN2ZiNWY1Nzk0\nOWVjYTM4ZDJlN2U3Yg==\n','2012-03-24 15:13:28'),('786b7bbc1bc22bf347862ef38d254c79','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-09 06:43:36'),('ae8fcaa2fde57b893397cd758b5e9640','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-03-29 00:02:49'),('e4f5d0bac0bd8af857471d7ed06c9ef3','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-03-29 11:24:29'),('9a9c5b6bd1c74a78c3e186065b4a924e','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-03-30 14:37:33'),('df8fdf167536f2bbab450425769b9576','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-04-04 10:18:21'),('49c87d92e68d70a4d4dd111f4b228daf','NzgyNzE2OGMwZGFhMDhlN2ViNmRlZGE1Y2ViODc1YjE1YWI3Y2MzNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n','2012-04-08 21:09:59'),('56657d4a4d2d7ea3609fb7edfdac0555','NzgyNzE2OGMwZGFhMDhlN2ViNmRlZGE1Y2ViODc1YjE1YWI3Y2MzNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n','2012-04-08 21:27:13'),('0e186044b7ca5a55043152f70b903b1a','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-13 17:55:36'),('5015932307a50e4928ab2e6bb93cd2c0','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-13 19:45:34'),('b5cd1115d770e7138e2069e7ff293505','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-14 17:37:52'),('de86c9e62ab7ce98ad530ad0c0fae887','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-15 19:10:48'),('17223ea7e1a5d23948e9e6b3b3ed9715','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-15 20:54:18'),('ffe37085ce864fd5ac10cb1d7f4d3920','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-19 06:30:05'),('a7f886643e27c7ce4e17679f9fd95af2','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-04-25 22:11:46'),('e9d4dabdf0dd0d8b623c7f08864b22d3','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-17 05:59:31'),('e4d1b78b9ac019475dd127bca6e41cf4','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-02 16:06:15'),('2e83725791841b848f2b9731f561e5b2','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-05 14:56:52'),('281bb3e6959e692907027f7b50548448','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-19 13:35:19'),('f88e2a782448f63163f4e6f9947673f4','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-20 14:05:19'),('078d6cc8a82987968c1e3f94a31e3882','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-25 05:54:48'),('068881e187369d50a7e9fa1523f979bc','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-28 19:48:44'),('51b5a6591a90397f265295f5130fb01e','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-28 20:57:11'),('6e8273c2b3aff79fcea75824ac1818e8','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-31 21:16:00'),('28b26f21197e5aa313f36f0044e7f6bd','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-31 20:28:30'),('d0ec50cdcfb2f831f52a11c55ddb79dd','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-06-03 09:51:03'),('f6b36b343f84921ee74829c6c9967053','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-06-03 21:03:12'),('78dd32b9b97f2a736b2cf5ee6c6d2c80','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-23 14:52:12'),('f66a83675aee88c8fc3b25eb4820d0ee','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-07-14 18:04:16'),('341438619368bc6dba348effbc14ddd8','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-12 21:35:37'),('1f1d147696d7d82cec29a43a616f0a55','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-08 14:44:32'),('b42ee1872f6df8aee7680fe78a2c7207','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-11 12:22:52'),('e644d7ee0bdadeec7ac807abf5005880','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-02-02 15:35:58'),('331b967d704752d13bf1bb607972e956','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-04-29 10:19:07'),('f16dea918d5b8e7668e9b452c877e86e','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-05-09 19:14:19'),('4672b44c23e34db3be84b2fc627f5b45','N2NhMzZkOTNmZmJkZjk0NDAzZjEzYzUzMGU2ZjE2YjVkZGIxNDlhNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2014-05-10 14:42:08'),('kjxqmpmy2fhk1lwqg6ol3zd31519p488','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-06-02 19:03:30'),('31b6d1f3cb3e527f116d31a67a41ac9e','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-07-05 03:34:25'),('38c0b218da37302c4136e325db84b285','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-07-05 06:26:48'),('8d97f3d65153234544f0aff12106b729','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-08-31 18:53:59'),('ba0e00d5f5da40ad5402d57cb26eed41','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-11-03 20:13:27'),('42b38fc7fffc41dda6eb3ef1fbddcb78','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-11-15 16:12:24'),('49639dff6dd92478e0a8acd2cdd47b16','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-02-15 16:16:01'),('a37140987254281d30da809ba4a8ef51','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-03-09 13:55:55'),('9f51e7aaa5ddd04bf5666abdcb5c42af','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-03-28 20:41:05'),('62487612ab19a8f18bd230df2b6b5554','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-04-27 19:49:19'),('9cutmvqdm4zgd2t5filidzj6euwr45me','ZmIyZDkyZWRlMGYwOWZmNDYxNWI1YzBkZmRlNzE3ODEwMjViMGE3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1ZTQ0NmViYTVlNDA0NDg0MjUyMGViMjRhZjFiM2M5MmNiNDI2NTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-19 21:44:26'),('47a4e9b3eddfe182472ebcf42ac57424','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-06-08 07:07:06'),('116c2894016f7901aa00b012a5750b0d','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-06-28 16:32:39'),('6b09c3d7fbfbb5bdc8cf9165d1cf9bd9','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-07-25 18:45:37'),('ade3c8f6c5efdb250e5a687a073c9ac9','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-08-31 18:06:34'),('7a543880f3c4223c7dda33d497583d4f','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-09-27 18:33:41'),('eb64d83cf9867e4f8cde8fca67347640','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-10-19 15:43:34'),('3031022dec03ed4e355b78602419c8cf','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-01-05 08:58:13'),('9c87c3d128b286819b019e9f0dd31283','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-03-22 18:00:21'),('2d1ecc2b81a82c3df012e06cfa4c3a4f','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-04-11 16:14:17'),('5824d04ac1a66d45b93f648a3863fde7','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-09-10 12:16:26'),('a02cdcb81abe641ef19fb63655a17967','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-10-25 16:10:29'),('ac13769d140094a097c25f9982f2ff04','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2016-01-07 16:32:05'),('decfac9425cdca89bbf71ca8cb32d534','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2016-02-05 17:53:34'),('410cac0010e54f27f6ad8706159fa162','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2016-05-08 15:42:41'),('4d4a9b0494968105bdd431a351b3e15b','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2016-08-18 07:54:28'),('071ae19c94096a463e144d766116ae5c','YmQyN2FlMGU3MmQ3MjFmOTBiMWVmNzRlZDBjNzBlOTQ3OTNlOTIxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2016-10-21 19:26:33'),('av42vpugl79h1kk1g04tllukorrehclx','ZmIyZDkyZWRlMGYwOWZmNDYxNWI1YzBkZmRlNzE3ODEwMjViMGE3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1ZTQ0NmViYTVlNDA0NDg0MjUyMGViMjRhZjFiM2M5MmNiNDI2NTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-06 16:59:30'),('c0zuaqa0uhkg2rvlxguq2nwxb7x96y9f','ZmIyZDkyZWRlMGYwOWZmNDYxNWI1YzBkZmRlNzE3ODEwMjViMGE3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1ZTQ0NmViYTVlNDA0NDg0MjUyMGViMjRhZjFiM2M5MmNiNDI2NTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-25 19:48:50'),('vo3ug8ueld1e3s6fg7gi5sixtolnh7le','ZmIyZDkyZWRlMGYwOWZmNDYxNWI1YzBkZmRlNzE3ODEwMjViMGE3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1ZTQ0NmViYTVlNDA0NDg0MjUyMGViMjRhZjFiM2M5MmNiNDI2NTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-11-03 14:11:38'),('ojvyd8ticvfhlp8ca7j8wpls0ks4bdw7','ZmIyZDkyZWRlMGYwOWZmNDYxNWI1YzBkZmRlNzE3ODEwMjViMGE3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1ZTQ0NmViYTVlNDA0NDg0MjUyMGViMjRhZjFiM2M5MmNiNDI2NTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-31 17:18:06'),('3kthvy9bp19kd0mr5cuo3i1awmlxj0lo','ZmIyZDkyZWRlMGYwOWZmNDYxNWI1YzBkZmRlNzE3ODEwMjViMGE3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1ZTQ0NmViYTVlNDA0NDg0MjUyMGViMjRhZjFiM2M5MmNiNDI2NTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2022-08-30 12:47:36');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_bullet`
--

DROP TABLE IF EXISTS `reloading_bullet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_bullet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `weight` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_bullet`
--

LOCK TABLES `reloading_bullet` WRITE;
/*!40000 ALTER TABLE `reloading_bullet` DISABLE KEYS */;
INSERT INTO `reloading_bullet` VALUES (1,'Magtech','jacketed','JHP',125),(2,'Hornady','jacketed','JHP',140),(3,'Speer','lead_swaged','LSWCHP',158),(4,'Buffalo Bore','lead_cast','LSWCHP',158),(5,'Magtech','jacketed','JSP',125),(6,'Magtech','jacketed','JSP',158),(7,'Hornady','jacketed','JSP',158),(8,'Federal','jacketed','FMJ',180),(9,'PMC Starfire','jacketed','JHP',125),(10,'Speer GD','jacketed','JHP',125),(11,'Winchester','jacketed','FMJ',130),(12,'CCI Blazer','jacketed','FMJ',180),(13,'Wolf 9mm','jacketed','FMJ',115),(14,'UNK','jacketed','FMJ',40),(15,'UNK','jacketed','FMJ',124),(16,'Remington','jacketed','JSP',125),(17,'Federal','jacketed','JSP',158),(18,'Hornady','jacketed','JHP',125),(19,'Sierra','jacketed','OTM',53),(20,'Privi Partizan','jacketed','JSP',55),(21,'Hornady','jacketed','JHP',230),(22,'Moyer','lead_cast','LSWC',255),(23,'Hornady','jacketed','JHP',158),(24,'Hornady','jacketed','FMJ',150),(25,'Sierra','jacketed','JSP',100),(26,'Precision Delta','jacketed','FMJ',230),(27,'Moyer','lead_swaged','LSWC',290),(28,'Hornady','jacketed','JSP',50),(29,'Nosler','jacketed','JSP',35),(30,'Moyer','lead_cast','LSWC',158),(31,'Nosler','jacketed','JSP',64),(32,'Winchester','jacketed','JSP',55),(42,'Hunter\'s Supply','lead_cast','LSWC',190),(34,'Moyer','lead_cast','LRN',130),(41,'Moyer','lead_cast','LSWC',350),(36,'Speer','jacketed','JHP',230),(37,'Magtech','jacketed','FMJ',230),(38,'Federal','jacketed','FMJ',230),(39,'Winchester','jacketed','FMJ',230),(48,'Sierra','jacketed','OTM',52),(47,'Sierra','jacketed','JSP',63),(46,'Precision Delta','jacketed','FMJ',165),(49,'Winchester','jacketed','JSP',64),(50,'Sierra','jacketed','OTM',168),(51,'Federal M193','jacketed','FMJ',55),(52,'Prvi Partizan M193','jacketed','FMJ',55),(53,'Remington','jacketed','FMJ',55),(54,'Sierra','jacketed','JSP',65),(55,'PMC','jacketed','FMJ',55),(56,'Hornady','jacketed','BTIP',55),(57,'Remington','jacketed','OTM',80),(58,'Winchester','jacketed','JHP',230),(59,'Sierra','jacketed','JSP',150),(60,'Hornady','jacketed','JSP',170),(61,'Remington','jacketed','JSP',170),(62,'Hornady','jacketed','FMJ',55),(63,'Sierra','jacketed','OTM',85),(64,'Sierra','jacketed','OTM',77),(65,'Sierra','jacketed','JSP',55),(67,'Moyer','lead_cast','LRN',95),(68,'Winchester','jacketed','FMJ',95),(69,'Hornady','jacketed','OTM',75),(70,'Hornady','jacketed','JHP',250),(71,'Moyer','lead_cast','LRN',230),(72,'Rimrock','lead_cast','LSWCHP',158),(73,'S&W (1970s blue and white box)','lead_swaged','LSWCHP',158),(74,'Remington','lead_swaged','LSWC',158),(75,'Midway','jacketed','JSP',55),(76,'Hornady Superperformance','jacketed','OTM',75),(77,'Hornady TAP','jacketed','OTM',75),(78,'Sierra','jacketed','JSP',150),(79,'Sierra','jacketed','JSP',175),(80,'Buffalo Arms','jacketed','JSP',175),(81,'Moyer','lead_cast','LFN',405),(82,'Winchester','jacketed','FMJ',115),(83,'Speer','jacketed','JHP',124),(84,'Hornady','jacketed','JHP',124),(85,'Acme','lead_cast','LRN',124),(86,'Hornady','jacketed','BTIP',125),(87,'Missouri Bullet Company','lead_cast','LFN',180),(88,'Missouri','lead_cast','LFN',215);
/*!40000 ALTER TABLE `reloading_bullet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_bullet_caliber`
--

DROP TABLE IF EXISTS `reloading_bullet_caliber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_bullet_caliber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bullet_id` int NOT NULL,
  `caliber_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bullet_id` (`bullet_id`,`caliber_id`),
  KEY `reloading_bullet_caliber_2ede258a` (`bullet_id`),
  KEY `reloading_bullet_caliber_5bc3d76d` (`caliber_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_bullet_caliber`
--

LOCK TABLES `reloading_bullet_caliber` WRITE;
/*!40000 ALTER TABLE `reloading_bullet_caliber` DISABLE KEYS */;
INSERT INTO `reloading_bullet_caliber` VALUES (16,6,1),(10,1,2),(9,1,1),(11,2,1),(15,5,2),(12,3,2),(14,5,1),(113,4,2),(17,6,2),(18,7,1),(19,7,2),(20,8,4),(21,9,2),(22,10,2),(23,11,2),(24,12,4),(25,13,5),(26,14,6),(27,15,5),(28,16,1),(29,17,1),(30,18,1),(122,19,7),(32,20,7),(33,21,8),(111,22,9),(35,23,1),(38,24,11),(37,25,10),(39,26,8),(110,27,9),(41,28,12),(42,28,7),(43,29,12),(44,29,7),(108,30,1),(46,31,12),(47,31,7),(48,32,12),(49,32,7),(107,34,5),(51,36,8),(52,37,8),(53,38,8),(54,39,8),(106,41,9),(62,47,7),(61,47,12),(60,46,4),(117,48,7),(116,48,12),(65,49,12),(66,49,7),(115,50,11),(68,51,12),(69,52,12),(70,53,12),(71,53,7),(72,54,12),(73,54,7),(74,55,12),(123,56,12),(124,56,7),(120,57,10),(78,58,8),(79,59,13),(80,60,14),(81,61,14),(82,62,12),(83,62,7),(121,63,10),(103,64,7),(102,64,12),(87,65,12),(88,65,7),(125,72,1),(98,67,15),(91,68,15),(100,69,12),(101,69,7),(96,70,9),(114,71,8),(104,42,1),(105,42,2),(109,30,2),(126,72,2),(128,73,1),(129,74,2),(130,75,12),(131,75,7),(132,76,12),(134,77,12),(135,78,16),(136,79,16),(137,80,16),(138,81,17),(139,82,5),(140,83,5),(141,84,5),(142,85,5),(143,86,18),(144,87,1),(145,88,18);
/*!40000 ALTER TABLE `reloading_bullet_caliber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_caliber`
--

DROP TABLE IF EXISTS `reloading_caliber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_caliber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reloading_caliber_56ae2a2a` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_caliber`
--

LOCK TABLES `reloading_caliber` WRITE;
/*!40000 ALTER TABLE `reloading_caliber` DISABLE KEYS */;
INSERT INTO `reloading_caliber` VALUES (1,'357-magnum','.357 Magnum',''),(2,'38-special','.38 Special',''),(7,'22-250','.22-250',''),(5,'9mm','9mm',''),(4,'40-sw','.40 S&W',''),(6,'22-lr','.22 LR',''),(8,'45-acp','.45 ACP',''),(9,'45-long-colt','.45 Long Colt',''),(10,'243','.243',''),(11,'308','.308',''),(12,'223','.223',''),(13,'30-06','.30-06',''),(14,'32-winchester-special','.32 Winchester Special',''),(15,'380-acp','.380 ACP',''),(16,'318-300-savage','.318-300 Savage',''),(17,'45-70','.45-70',''),(18,'300-blackout','.300 Blackout','');
/*!40000 ALTER TABLE `reloading_caliber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_load`
--

DROP TABLE IF EXISTS `reloading_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_load` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caliber_id` int NOT NULL,
  `primer_id` int NOT NULL,
  `powder_id` int NOT NULL,
  `bullet_id` int NOT NULL,
  `powder_weight` decimal(3,1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reloading_load_5bc3d76d` (`caliber_id`),
  KEY `reloading_load_76afe3cd` (`primer_id`),
  KEY `reloading_load_75bc4887` (`powder_id`),
  KEY `reloading_load_2ede258a` (`bullet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_load`
--

LOCK TABLES `reloading_load` WRITE;
/*!40000 ALTER TABLE `reloading_load` DISABLE KEYS */;
INSERT INTO `reloading_load` VALUES (1,1,1,1,1,16.8),(2,1,1,2,2,10.6),(3,1,1,2,2,10.8),(4,1,1,2,2,11.0),(5,2,1,3,3,4.6),(6,2,1,3,3,4.9),(7,2,3,4,4,0.0),(8,1,1,2,2,11.5),(9,2,2,3,5,6.0),(10,1,1,1,7,13.8),(11,1,1,1,7,14.2),(12,1,1,1,7,14.7),(13,1,1,1,7,15.1),(21,1,2,3,1,9.2),(15,1,1,1,7,15.5),(16,1,1,5,7,16.7),(17,1,1,5,7,17.1),(18,1,1,5,7,17.6),(19,1,1,5,7,18.1),(20,1,1,5,7,18.6),(22,1,2,3,6,8.0),(23,1,2,3,6,8.5),(24,1,2,3,6,9.0),(25,4,3,4,8,0.0),(26,2,3,4,9,0.0),(27,2,3,4,10,0.0),(28,2,3,4,6,0.0),(29,2,3,4,11,0.0),(30,4,3,4,12,0.0),(31,5,3,4,13,0.0),(32,6,3,4,14,0.0),(33,1,2,3,1,8.8),(34,5,3,4,15,0.0),(35,2,2,3,6,4.8),(36,1,1,1,1,17.2),(37,1,3,4,16,0.0),(38,1,3,4,17,0.0),(39,1,2,6,6,15.3),(40,1,2,6,7,15.8),(41,1,2,6,18,21.2),(42,1,1,5,2,17.5),(43,1,1,5,2,18.0),(44,1,1,5,2,18.5),(45,1,1,5,2,19.0),(46,1,1,5,2,19.5),(47,1,1,2,6,9.3),(48,7,3,4,20,0.0),(49,7,4,1,19,12.5),(50,8,5,3,21,6.0),(51,9,5,3,22,8.5),(52,9,5,1,22,18.5),(53,1,2,5,23,17.7),(54,10,4,7,25,39.5),(55,11,7,8,24,42.0),(56,11,7,8,24,42.5),(57,8,5,3,26,6.0),(58,9,8,6,27,22.0),(59,9,8,6,27,22.5),(60,9,8,6,27,23.0),(61,12,9,9,28,24.2),(62,12,9,9,29,25.0),(63,1,1,1,30,13.5),(64,12,9,9,28,22.8),(65,12,9,9,28,24.3),(66,12,9,10,28,28.5),(67,12,1,10,31,26.5),(68,12,1,9,31,21.5),(69,12,3,4,32,0.0),(70,9,8,5,27,24.0),(71,9,8,5,27,24.5),(72,9,8,5,27,25.0),(73,9,8,5,27,25.5),(74,9,8,5,27,26.0),(75,1,2,5,23,18.0),(76,9,5,11,22,5.5),(77,5,1,3,34,4.5),(78,6,3,4,14,0.0),(79,8,5,3,26,6.2),(80,8,5,3,26,6.4),(81,8,5,3,36,5.7),(82,8,3,4,37,0.0),(83,8,3,4,38,0.0),(84,8,3,4,39,0.0),(85,8,5,12,26,5.3),(86,2,10,11,3,3.5),(87,1,2,5,2,19.0),(88,9,8,6,41,19.0),(89,9,8,6,41,19.5),(90,9,8,6,41,20.0),(91,9,8,6,41,20.5),(92,9,8,6,41,21.0),(93,9,8,5,41,20.0),(94,9,8,5,41,20.5),(95,9,8,5,41,21.0),(96,9,8,5,41,21.5),(97,9,8,5,41,22.0),(98,1,1,1,42,11.0),(99,1,1,1,42,11.5),(100,1,1,1,42,12.0),(101,4,1,3,46,4.5),(102,2,1,3,30,5.0),(103,7,4,13,47,34.0),(104,7,4,2,48,12.5),(105,7,3,4,32,0.0),(106,7,3,4,49,0.0),(107,11,7,8,24,43.9),(108,11,7,8,50,42.1),(109,11,7,8,50,42.4),(110,12,3,4,51,0.0),(111,12,3,4,52,0.0),(112,12,11,14,53,24.3),(113,12,11,14,48,24.5),(114,12,11,14,54,24.0),(115,11,7,8,50,40.9),(116,11,7,8,50,41.2),(117,11,7,8,50,41.5),(118,11,7,8,50,41.8),(119,12,3,4,55,0.0),(120,12,9,14,56,24.4),(121,12,9,14,54,25.0),(122,10,4,11,57,11.0),(123,8,5,3,58,6.0),(124,8,3,4,58,0.0),(125,13,4,7,59,57.5),(126,14,4,13,60,34.0),(127,14,3,4,61,0.0),(128,12,11,2,62,11.5),(129,10,4,11,63,14.6),(130,12,9,15,64,24.0),(131,12,9,16,64,24.2),(132,12,11,14,65,25.0),(133,12,11,14,56,24.5),(134,8,5,11,71,4.2),(135,15,10,12,67,3.2),(136,15,3,4,68,0.0),(137,12,12,14,62,24.3),(138,1,1,2,6,9.6),(139,1,1,2,6,9.9),(140,1,1,2,6,10.2),(141,1,1,2,6,10.5),(142,9,5,2,22,13.0),(143,12,13,17,69,23.5),(144,9,5,2,22,12.1),(145,9,5,2,22,12.5),(146,9,5,2,22,13.5),(147,9,5,2,22,14.0),(148,9,5,2,22,14.5),(149,2,1,18,3,4.5),(150,2,1,18,3,5.5),(151,2,1,18,3,5.2),(152,2,1,18,3,4.9),(153,2,1,18,3,4.6),(154,2,1,18,3,4.2),(155,8,5,18,58,6.8),(156,8,5,18,58,6.5),(157,8,5,18,58,6.2),(158,8,5,18,58,5.9),(159,8,5,18,58,5.6),(160,8,5,18,58,5.3),(161,9,5,1,70,20.2),(162,9,8,6,70,24.0),(163,9,8,6,70,24.5),(164,9,8,6,70,25.0),(165,9,8,6,70,25.5),(166,9,8,6,70,26.0),(167,9,8,5,70,24.5),(168,9,8,5,70,25.0),(169,9,8,5,70,25.5),(170,9,8,5,70,26.0),(171,9,8,5,70,26.5),(172,2,1,18,3,3.9),(173,8,5,19,71,4.8),(174,9,5,19,22,5.5),(175,9,5,19,22,6.0),(176,1,1,18,72,6.2),(177,1,3,4,73,0.0),(178,2,3,4,74,0.0),(179,12,11,2,56,11.5),(180,12,9,14,62,24.3),(181,12,13,15,75,25.0),(182,12,13,15,54,24.0),(183,12,11,16,64,24.3),(184,12,3,4,76,0.0),(185,12,3,4,77,0.0),(186,16,4,13,78,42.0),(187,16,4,13,79,40.0),(188,16,4,13,80,40.0),(189,2,1,19,3,3.1),(190,17,6,3,81,11.0),(191,17,6,3,81,12.0),(192,17,6,3,81,13.0),(193,17,6,20,81,32.0),(194,1,1,18,30,7.2),(195,5,1,19,34,3.4),(196,5,1,19,34,3.6),(197,5,1,19,34,3.8),(198,5,1,19,34,4.0),(199,5,1,19,34,4.2),(200,5,1,18,34,4.7),(201,5,1,18,34,4.9),(202,5,1,18,34,5.1),(203,5,1,18,34,5.3),(204,5,1,18,34,5.5),(205,5,3,4,82,0.0),(206,5,3,4,83,0.0),(207,5,1,18,85,5.1),(208,5,1,18,84,5.2),(209,5,1,12,85,4.3),(210,18,11,5,86,18.0),(211,18,11,5,86,18.5),(212,18,11,5,86,19.0),(213,18,11,5,86,19.5),(214,18,11,5,86,20.0),(215,1,2,5,87,15.0),(216,1,2,5,87,16.5),(217,1,2,5,87,17.0),(218,18,11,5,88,8.2),(219,18,11,5,88,9.2),(220,18,11,5,88,7.9),(221,18,11,5,88,7.7),(222,18,9,1,88,8.0),(223,18,11,1,88,7.0),(224,5,1,12,15,4.3),(225,5,1,2,15,7.6);
/*!40000 ALTER TABLE `reloading_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_powder`
--

DROP TABLE IF EXISTS `reloading_powder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_powder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_powder`
--

LOCK TABLES `reloading_powder` WRITE;
/*!40000 ALTER TABLE `reloading_powder` DISABLE KEYS */;
INSERT INTO `reloading_powder` VALUES (1,'2400','','Alliant'),(2,'Blue Dot','','Alliant'),(3,'Unique','','Alliant'),(4,'Factory','','Factory'),(5,'300-MP','','Alliant'),(6,'H-110','','Hodgdon'),(7,'IMR-4350','','Hodgdon'),(8,'IMR-4895','','Hodgdon'),(9,'H322','','Hodgdon'),(10,'BL-C(2)','','Hodgdon'),(11,'Trail Boss','','IMR'),(12,'W231','','Winchester'),(13,'IMR-4064','','Hodgdon'),(14,'H335','','Hodgdon'),(15,'TAC','','Ramshot'),(16,'CFE223','','Hodgdon'),(17,'Varget','','Hodgdon'),(18,'BE-86','','Alliant'),(19,'Red Dot','','Alliant'),(20,'IMR-4198','','Hodgdon');
/*!40000 ALTER TABLE `reloading_powder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_primer`
--

DROP TABLE IF EXISTS `reloading_primer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_primer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_primer`
--

LOCK TABLES `reloading_primer` WRITE;
/*!40000 ALTER TABLE `reloading_primer` DISABLE KEYS */;
INSERT INTO `reloading_primer` VALUES (1,'CCI-500'),(2,'CCI-550'),(3,'Factory'),(4,'Remington 9 1/2'),(5,'CCI-300'),(6,'CCI-200'),(7,'Federal 210'),(8,'CCI-350'),(9,'WSR'),(10,'WSP'),(11,'CCI-400'),(12,'CCI #41'),(13,'CCI-450');
/*!40000 ALTER TABLE `reloading_primer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_result`
--

DROP TABLE IF EXISTS `reloading_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `weapon_id` int NOT NULL,
  `load_id` int NOT NULL,
  `date` date NOT NULL,
  `temperature` int DEFAULT NULL,
  `shooter_id` int NOT NULL,
  `velocities` longtext NOT NULL,
  `notes` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reloading_result_3f7d06ce` (`weapon_id`),
  KEY `reloading_result_643a4604` (`load_id`),
  KEY `reloading_result_1f26b28b` (`shooter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_result`
--

LOCK TABLES `reloading_result` WRITE;
/*!40000 ALTER TABLE `reloading_result` DISABLE KEYS */;
INSERT INTO `reloading_result` VALUES (1,1,1,'2012-03-03',47,1,'1348\r\n1309\r\n1294\r\n1341\r\n1288\r\n1314',''),(2,2,1,'2012-03-03',47,1,'1573\r\n1630\r\n1532\r\n1522\r\n1560\r\n1602',''),(3,1,2,'2012-01-08',36,1,'1231\r\n1246\r\n1238\r\n1277\r\n1253',''),(4,1,3,'2012-01-08',36,1,'1299\r\n1265\r\n1268\r\n1305\r\n1322',''),(5,1,4,'2012-01-08',36,1,'1260\r\n1309\r\n1225\r\n1311\r\n1285',''),(6,1,5,'2012-01-08',36,1,'777.6\r\n791.2\r\n821.4\r\n857.7\r\n844.3',''),(7,1,6,'2012-01-08',36,1,'877.5\r\n892.7\r\n910.4\r\n894.4\r\n873.6',''),(8,3,5,'2012-01-08',36,1,'706.5\r\n723.3\r\n680.4\r\n719.8\r\n751.1',''),(9,3,6,'2012-01-08',36,1,'843.9\r\n785.3\r\n791.1\r\n785.1\r\n767.2',''),(10,2,5,'2012-01-08',36,1,'915.4\r\n935.6\r\n977.7\r\n1002\r\n955.6',''),(11,2,6,'2012-01-08',36,1,'1018\r\n1062\r\n1067\r\n1011\r\n1071',''),(12,3,7,'2012-01-08',36,1,'780.9\r\n757.4\r\n748.7\r\n809.4\r\n818.6',''),(13,4,8,'2011-09-17',56,1,'1720\r\n1769\r\n1735\r\n1712\r\n1787',''),(14,4,9,'2011-09-17',56,1,'1277\r\n1045\r\n1274\r\n1328\r\n1306',''),(15,4,10,'2011-09-17',56,1,'1556\r\n1554\r\n1553\r\n1544\r\n1554',''),(16,4,11,'2011-09-17',56,1,'1571\r\n1535\r\n1524\r\n1622\r\n1588',''),(17,4,12,'2011-09-17',56,1,'1634\r\n1629\r\n1637\r\n1616\r\n1686',''),(18,4,13,'2011-09-17',56,1,'1651\r\n1665\r\n1642\r\n1613\r\n1706',''),(19,4,15,'2011-09-17',56,1,'1738\r\n1732\r\n1758\r\n1700\r\n1766',''),(20,4,16,'2011-09-17',56,1,'1591\r\n1583\r\n1606\r\n1607\r\n1626',''),(21,4,17,'2011-09-17',56,1,'1681\r\n1679\r\n1670\r\n1684\r\n1670',''),(22,4,18,'2011-09-17',56,1,'1717\r\n1720\r\n1718\r\n1700\r\n1732',''),(23,4,19,'2011-09-17',56,1,'1777\r\n1729\r\n1752\r\n1709\r\n1750',''),(24,4,20,'2011-09-17',56,1,'1727\r\n1742\r\n1795\r\n1766\r\n1795',''),(25,1,10,'2011-09-17',56,1,'1073\r\n1042\r\n1078',''),(26,1,11,'2011-09-17',56,1,'1080\r\n1060\r\n1110\r\n1083\r\n1112',''),(27,1,12,'2011-09-17',56,1,'1095\r\n1131\r\n1202\r\n1099\r\n1101',''),(28,1,21,'2011-09-17',56,1,'1361\r\n1382\r\n1355\r\n1357\r\n1323',''),(29,1,9,'2011-09-17',56,1,'1023\r\n1030\r\n1009\r\n1033\r\n1031',''),(30,4,22,'2011-09-17',56,1,'1440\r\n1432\r\n1426\r\n1441\r\n1471',''),(31,4,23,'2011-09-17',56,1,'1493\r\n1495\r\n1493\r\n1534\r\n1524',''),(32,4,24,'2011-09-17',56,1,'1495\r\n1539\r\n1540\r\n1494\r\n1523',''),(33,5,25,'2011-09-17',56,1,'974\r\n990.5\r\n973.3\r\n972.8\r\n1002',''),(34,3,26,'2009-07-04',71,1,'748.1\r\n784.8\r\n772.1\r\n778\r\n777',''),(35,3,27,'2009-07-04',71,1,'739.9\r\n749.8\r\n728.1\r\n729\r\n772.5',''),(36,3,28,'2009-07-04',71,1,'680.4\r\n700.9\r\n682.6\r\n685.4\r\n689.4',''),(37,3,29,'2009-07-04',71,1,'728\r\n761.2\r\n762.6\r\n762.9\r\n760.1',''),(38,1,29,'2009-07-04',71,1,'826.3\r\n859.4\r\n853.5\r\n845.6\r\n903.6\r\n856.5',''),(39,6,30,'2009-07-04',71,1,'967.8\r\n939.3\r\n939.8\r\n949.6\r\n927.7\r\n943.3\r\n938.2\r\n940.2\r\n917.1\r\n940.4',''),(40,7,31,'2009-07-04',71,1,'1080\r\n1095\r\n1068\r\n1094\r\n1061\r\n1112\r\n1080',''),(41,8,32,'2008-12-27',37,1,'1063\r\n1014\r\n1024\r\n1102\r\n1088\r\n1074\r\n1090\r\n1008\r\n1068\r\n1059',''),(42,8,32,'2008-12-27',37,1,'1072\r\n1100\r\n1025\r\n1003\r\n1128\r\n1110\r\n1055\r\n1031\r\n1059',''),(43,1,28,'2008-12-27',37,1,'790\r\n767.6\r\n758.2\r\n799\r\n786',''),(44,1,33,'2008-12-27',37,1,'1227\r\n1359\r\n1364\r\n1320\r\n1389\r\n1370',''),(45,2,33,'2008-12-27',37,1,'1400\r\n1494\r\n1513\r\n1538\r\n1509',''),(46,3,28,'2008-12-27',37,1,'650.6\r\n668\r\n681\r\n670\r\n663',''),(47,7,34,'2008-12-27',37,1,'1063\r\n1064\r\n1058\r\n1088\r\n1054\r\n1083\r\n1069',''),(48,1,35,'2008-12-27',37,1,'742.6\r\n824.4\r\n818.5\r\n799\r\n826.3\r\n813.4',''),(49,2,35,'2008-12-27',37,1,'876\r\n922\r\n978\r\n997\r\n985\r\n925',''),(50,2,35,'2008-12-27',37,1,'890\r\n933\r\n927\r\n899\r\n941\r\n990',''),(51,4,1,'2012-03-17',76,1,'1941\r\n1960\r\n1923\r\n1909\r\n1885',''),(52,4,36,'2012-03-17',76,1,'1940\r\n1901\r\n1919\r\n1897\r\n1922',''),(53,2,36,'2012-03-17',76,1,'1432\r\n1466\r\n1506\r\n1499\r\n1446',''),(54,1,36,'2012-03-17',76,1,'1271\r\n1272\r\n1265\r\n1120\r\n1290',''),(55,4,37,'2012-03-17',76,1,'2097\r\n2116\r\n2095\r\n2079',''),(56,1,37,'2012-03-17',76,1,'1427\r\n1383\r\n1436\r\n1369\r\n1448',''),(57,2,18,'2012-03-17',76,1,'1304\r\n1420\r\n1388\r\n1568\r\n1345',''),(58,1,3,'2012-03-17',76,1,'1238\r\n1250\r\n1379\r\n1234\r\n1214',''),(59,4,18,'2012-03-17',76,1,'1756\r\n1794\r\n1794\r\n1791\r\n1824',''),(60,4,33,'2012-03-17',76,1,'1616\r\n1653\r\n1638\r\n1602\r\n1617',''),(61,4,3,'2012-03-17',76,1,'1567\r\n1679\r\n1654\r\n1683\r\n1709',''),(62,2,3,'2012-03-17',76,1,'1356\r\n1395\r\n1454\r\n1518\r\n1521',''),(63,1,18,'2012-03-17',76,1,'1208\r\n1125\r\n1164\r\n1197\r\n1142',''),(64,4,38,'2012-03-17',76,1,'1735\r\n1760\r\n1788\r\n1785\r\n1768',''),(65,2,38,'2012-03-17',76,1,'1477\r\n1440\r\n1407\r\n1440\r\n1463\r\n1394',''),(66,1,38,'2012-03-17',76,1,'1298\r\n1226\r\n1297\r\n1226\r\n1210\r\n1292',''),(67,4,39,'2012-04-21',68,1,'1554\r\n1601\r\n1602\r\n1610\r\n1619',''),(68,4,40,'2012-04-21',68,1,'1607\r\n1637\r\n1645\r\n1634\r\n1631',''),(69,2,39,'2012-04-21',68,1,'1311\r\n1289\r\n1270\r\n1295\r\n1277',''),(70,2,40,'2012-04-21',68,1,'1250\r\n1291\r\n1289\r\n1295\r\n1256',''),(71,1,39,'2012-04-21',68,1,'1165\r\n1121\r\n1121\r\n1120\r\n1154',''),(72,1,40,'2012-04-21',68,1,'1140\r\n1122\r\n1135\r\n1134\r\n1075',''),(73,1,41,'2012-06-30',80,1,'1558\r\n1497\r\n1490\r\n1492\r\n1477',''),(74,4,41,'2012-06-30',80,1,'2201\r\n2203\r\n2200\r\n2204\r\n2160',''),(75,4,42,'2012-06-30',80,1,'1810\r\n1792\r\n1786\r\n1810\r\n1769',''),(76,4,43,'2012-06-30',80,1,'1806\r\n1824\r\n1806\r\n1816\r\n1781',''),(77,4,44,'2012-06-30',80,1,'1872\r\n1881\r\n1886\r\n1876\r\n1870',''),(78,4,45,'2012-06-30',80,1,'1897\r\n1926\r\n1945\r\n1926\r\n1932',''),(79,4,46,'2012-06-30',80,1,'1945\r\n1945\r\n1943\r\n1933\r\n1949',''),(80,4,29,'2012-06-30',80,1,'1018\r\n1003\r\n1078\r\n1068\r\n1078\r\n1059',''),(81,1,47,'2012-07-29',80,1,'1020\r\n991.4\r\n998.1\r\n1071\r\n1056',''),(82,10,48,'2012-07-29',80,1,'3660\r\n3643\r\n3697',''),(83,10,49,'2012-07-29',80,1,'2185\r\n2200\r\n2216',''),(85,12,51,'2013-01-19',51,1,'996.7\r\n1026\r\n1033\r\n1028\r\n1043',''),(84,11,50,'2012-08-25',79,1,'752.1\r\n762.3\r\n815.4\r\n813.8\r\n762.8',''),(87,1,53,'2013-01-19',51,1,'1224\r\n1177\r\n1214\r\n1231\r\n1185',''),(88,13,55,'2013-04-15',40,2,'2514\r\n2540\r\n2531\r\n2519\r\n2505',''),(89,14,54,'2013-04-15',40,1,'2764\r\n2738\r\n2695\r\n2739\r\n2712',''),(90,13,56,'2013-04-17',58,2,'2540\r\n2565\r\n2548\r\n2554\r\n2558',''),(86,12,52,'2013-01-19',51,1,'1096\r\n1169\r\n1109\r\n1198\r\n1124',''),(91,12,58,'2013-04-17',58,1,'1265\r\n1242\r\n1253\r\n1265\r\n1281',''),(92,12,59,'2013-04-17',58,2,'1231\r\n1234\r\n1253\r\n1242\r\n1246',''),(93,12,59,'2013-04-17',58,1,'1281\r\n1285\r\n1257\r\n1238\r\n1275',''),(94,12,60,'2013-04-17',58,1,'1288\r\n1333\r\n1284\r\n1296\r\n1271',''),(95,12,57,'2013-04-17',58,1,'857.2\r\n866.8\r\n861.7\r\n927.5\r\n873.1\r\n861.5',''),(96,12,57,'2013-04-17',58,2,'873.7\r\n872.1\r\n915.1\r\n825.2\r\n877.0\r\n905.3',''),(97,15,61,'2013-04-25',57,1,'3235\r\n3126\r\n3112\r\n3151\r\n3198',''),(98,15,62,'2013-04-25',57,1,'3642\r\n3431\r\n3286\r\n3422\r\n3426\r\n3307\r\n3374',''),(99,1,63,'2013-06-20',71,1,'1281\r\n1240\r\n1272\r\n1269\r\n1309\r\n1288',''),(100,15,64,'2013-06-20',71,1,'3114\r\n3073\r\n3157\r\n3163\r\n3140',''),(101,15,65,'2013-06-20',71,1,'3339\r\n3295\r\n3355\r\n3257\r\n3263',''),(102,15,66,'2013-06-20',71,1,'3491\r\n3442\r\n3536\r\n3490\r\n3495',''),(103,15,67,'2013-06-20',71,1,'3157\r\n3135\r\n3157\r\n3099\r\n3122',''),(104,15,68,'2013-06-20',71,1,'2852\r\n2850\r\n2819\r\n2838\r\n2831',''),(105,15,69,'2013-06-20',71,1,'3280\r\n3208\r\n3284\r\n3224\r\n3255',''),(106,12,70,'2013-08-17',74,1,'1315\r\n1271\r\n1310\r\n1279\r\n1275',''),(107,12,71,'2013-08-17',74,1,'1316\r\n1305\r\n1291\r\n1285\r\n1284',''),(108,12,72,'2013-08-17',74,1,'1352\r\n1326\r\n1317\r\n1335\r\n1354',''),(109,12,73,'2013-08-17',74,1,'1367\r\n1343\r\n1375\r\n1349\r\n1351',''),(110,12,74,'2013-08-17',74,1,'1392\r\n1397\r\n1412\r\n1379\r\n1388',''),(111,4,75,'2013-08-17',74,1,'1766\r\n1788\r\n1797\r\n1754\r\n1767',''),(112,2,63,'2013-10-20',55,1,'1432\r\n1488\r\n1444\r\n1470\r\n1463',''),(113,12,76,'2013-10-20',55,1,'696\r\n669\r\n713\r\n705\r\n691',''),(114,2,77,'2013-10-20',55,3,'1160\r\n1215\r\n1149\r\n1147\r\n1163\r\n1194',''),(115,17,78,'2013-10-20',55,1,'1119\r\n1103\r\n1165\r\n1165\r\n1136',''),(116,11,57,'2013-10-27',46,1,'748.5\r\n750.1\r\n725.5\r\n722.9\r\n724.8',''),(117,11,79,'2013-10-27',46,1,'753.4\r\n768.8\r\n768.9\r\n815.7\r\n822.5',''),(118,11,80,'2013-10-27',46,1,'787.9\r\n832.6\r\n887.2\r\n843.7\r\n820',''),(119,11,81,'2013-10-27',46,1,'810.8\r\n758.9\r\n802.3\r\n768.8\r\n778.3',''),(120,11,82,'2013-10-27',46,1,'752.2\r\n767.9\r\n772\r\n790.5\r\n810.5',''),(121,11,83,'2013-10-27',46,1,'768.8\r\n790.7\r\n771.7\r\n774.7\r\n780.1',''),(122,11,83,'2013-10-27',46,1,'746.2\r\n774\r\n777.1\r\n762.6\r\n782.1',''),(123,11,84,'2013-10-27',46,1,'799.9\r\n824.8\r\n810.6\r\n798.7\r\n779.4',''),(124,11,85,'2013-10-27',46,1,'702.4\r\n753.2\r\n706.9\r\n704.5\r\n719',''),(125,3,86,'2014-02-01',43,1,'510.9\r\n492.7\r\n529.1\r\n532.4\r\n556.9',''),(126,1,86,'2014-02-01',43,1,'627.0\r\n638.2\r\n655.3\r\n679.1\r\n648.8',''),(127,1,87,'2014-02-01',43,1,'1339\r\n1255\r\n1330\r\n1344\r\n1324',''),(128,4,87,'2014-02-01',43,1,'1926\r\n1906\r\n1932\r\n1909\r\n1910',''),(129,12,88,'2014-02-23',46,1,'1167\r\n1172\r\n1167\r\n1153\r\n1163',''),(130,12,89,'2014-02-23',46,1,'1153\r\n1109\r\n1184\r\n1187\r\n1152',''),(131,12,90,'2014-02-23',46,1,'1180\r\n1224\r\n1210\r\n1166\r\n1203',''),(132,12,91,'2014-02-23',46,1,'1211\r\n1207\r\n1198\r\n1210\r\n1211',''),(133,12,92,'2014-02-23',46,1,'1214\r\n1197\r\n1225\r\n1179\r\n1180',''),(134,12,93,'2014-02-23',46,1,'1199\r\n1190\r\n1151\r\n1170\r\n1180',''),(135,12,94,'2014-02-23',46,1,'1227\r\n1200\r\n1192\r\n1185\r\n1218',''),(136,12,95,'2014-02-23',46,1,'1241\r\n1222\r\n1202\r\n1240\r\n1213',''),(137,12,96,'2014-02-23',46,1,'1244\r\n1246\r\n1245\r\n1232\r\n1233',''),(138,12,97,'2014-02-23',46,1,'1283\r\n1235\r\n1224\r\n1244\r\n1233',''),(139,1,98,'2014-03-14',51,1,'1049\r\n1046\r\n1062\r\n1031\r\n1048',''),(140,1,99,'2014-03-14',51,1,'1064\r\n1021\r\n1084\r\n994.6\r\n1082',''),(141,1,100,'2014-03-14',51,1,'1099\r\n1090\r\n1061\r\n1072\r\n1083',''),(142,18,101,'2014-04-13',77,3,'959.4\r\n985.5\r\n947.3\r\n961.7\r\n928.2\r\n972.2\r\n961.0\r\n962.5\r\n987.4\r\n1007\r\n',''),(143,2,102,'2014-04-13',77,3,'1031\r\n1071\r\n1021\r\n990.1\r\n1007\r\n1098\r\n939.1\r\n1023\r\n1103\r\n1016',''),(144,2,98,'2014-04-13',77,1,'1274\r\n1244\r\n1273\r\n1275\r\n1270',''),(145,10,103,'2014-04-26',65,1,'3518\r\n3546\r\n3537\r\n3511\r\n3546',''),(146,10,104,'2014-04-26',65,1,'2512\r\n2499\r\n2508\r\n2485\r\n2480',''),(147,10,105,'2014-04-26',65,1,'3696\r\n3696\r\n3730\r\n3729\r\n3678',''),(148,10,106,'2014-04-26',65,1,'3230\r\n3201\r\n3277\r\n3240',''),(149,13,107,'2014-05-24',70,2,'2741\r\n2741\r\n2727\r\n2742\r\n2727',''),(150,13,108,'2014-05-24',70,2,'2548\r\n2526\r\n2531\r\n2528\r\n2536',''),(151,13,109,'2014-05-24',70,2,'2561\r\n2558\r\n2538\r\n2537\r\n2534',''),(152,19,110,'2014-05-24',70,1,'3163\r\n3187\r\n3182\r\n3187\r\n3211',''),(153,19,111,'2014-05-24',70,1,'3162\r\n3204\r\n3208\r\n3204\r\n3219',''),(154,19,112,'2014-05-24',70,1,'2751\r\n2780\r\n2800\r\n2742\r\n2781',''),(155,19,113,'2014-05-24',70,1,'2805\r\n2843\r\n2831\r\n2926\r\n2838',''),(156,19,114,'2014-05-24',70,1,'2744\r\n2777\r\n2679\r\n2710\r\n2738',''),(157,13,115,'2014-05-28',79,2,'2514\r\n2488\r\n2502\r\n2471\r\n2484',''),(158,13,116,'2014-05-28',79,2,'2506\r\n2485\r\n2484\r\n2472\r\n2474',''),(159,13,117,'2014-05-28',79,2,'2450\r\n2541\r\n2514\r\n2512\r\n2511',''),(160,13,118,'2014-05-28',79,2,'2528\r\n2526\r\n2531\r\n2533\r\n2539',''),(161,20,119,'2014-06-14',62,1,'2840\r\n2812\r\n2805\r\n2812\r\n2858',''),(162,19,119,'2014-06-14',62,1,'2979\r\n2951\r\n2939\r\n2952\r\n2957',''),(163,20,111,'2014-06-14',62,1,'3056\r\n3153\r\n3136\r\n3139\r\n3131',''),(164,19,120,'2014-07-11',78,1,'2884\r\n2861\r\n2844\r\n2911\r\n2786',''),(165,19,121,'2014-07-11',78,1,'2822\r\n2821\r\n2884\r\n2834\r\n2811',''),(166,14,122,'2014-08-17',78,1,'1433\r\n1484\r\n1400',''),(167,11,123,'2014-08-17',78,1,'827.7\r\n851.9\r\n866.2\r\n824.0\r\n863.3',''),(168,11,124,'2014-08-17',78,1,'917.1\r\n902.4\r\n901.8\r\n909.5\r\n851.8',''),(169,21,125,'2014-08-28',65,1,'2858\r\n2793\r\n2876\r\n2852\r\n2820',''),(170,22,126,'2014-08-28',65,1,'2055\r\n2095\r\n2050\r\n2016\r\n1996\r\n2051',''),(171,22,127,'2014-08-28',65,1,'2180\r\n2118\r\n2184\r\n2150\r\n2163\r\n2207\r\n2190',''),(172,19,128,'2014-09-13',58,1,'2491\r\n2496\r\n2505\r\n2507\r\n2493',''),(173,14,129,'2014-10-05',51,1,'1731\r\n1856\r\n1787\r\n1694',''),(174,19,130,'2014-10-05',51,1,'2707\r\n2709\r\n2691\r\n2725\r\n2686\r\n2701\r\n2665',''),(175,19,131,'2014-10-05',51,1,'2582\r\n2538\r\n2574\r\n2551\r\n2555\r\n2538\r\n2546',''),(176,20,132,'2014-10-05',51,4,'2858\r\n2848\r\n2884\r\n2880\r\n2885',''),(177,20,133,'2014-10-05',51,4,'2893\r\n2914\r\n2882\r\n2807\r\n2873',''),(178,11,134,'2014-12-22',26,1,'688.6\r\n671.1\r\n674.4\r\n664.8\r\n660.0',''),(179,23,135,'2014-12-29',40,1,'799.0\r\n844.5\r\n849.8\r\n834.4\r\n820.5',''),(180,23,136,'2014-12-29',40,1,'875.5\r\n892.8\r\n859.7\r\n834.2\r\n868.5',''),(181,19,137,'2014-12-29',40,1,'2912\r\n2891\r\n2950\r\n2880\r\n2882',''),(182,1,138,'2015-03-08',42,1,'1064\r\n1191\r\n1183\r\n1183\r\n1128',''),(183,1,139,'2015-03-08',42,1,'1230\r\n1217\r\n1148\r\n1250\r\n1235',''),(184,1,140,'2015-03-08',42,1,'1218\r\n1245\r\n1215\r\n1280\r\n1252',''),(185,1,141,'2015-03-08',42,1,'1245\r\n1282\r\n1317\r\n1244\r\n1268',''),(186,4,140,'2015-03-08',42,1,'1555\r\n1542\r\n1595\r\n1544\r\n1578',''),(187,12,142,'2015-03-28',25,1,'1015\r\n1037\r\n1008\r\n1049\r\n1051',''),(188,19,143,'2015-08-27',70,1,'2694\r\n2705\r\n2715\r\n2650\r\n2705',''),(189,12,144,'2015-08-27',70,1,'972.9\r\n996.3\r\n964.6\r\n967.6\r\n972.4',''),(190,12,145,'2015-08-27',70,1,'1011\r\n1018\r\n1077\r\n1123\r\n1099',''),(191,12,142,'2015-08-27',70,1,'1071\r\n1104\r\n1098\r\n1156\r\n1188',''),(192,12,146,'2015-08-27',70,1,'1101\r\n1198\r\n1195\r\n1198\r\n1194',''),(193,12,147,'2015-08-27',70,1,'1158\r\n1224\r\n1254\r\n966.7\r\n921.4',''),(194,12,148,'2015-08-27',70,1,'1252\r\n973.5\r\n1304\r\n1269\r\n1296',''),(195,1,7,'2015-10-11',67,1,'946.5\r\n956.7\r\n941.5\r\n969.7\r\n976.1',''),(196,3,149,'2015-10-11',67,1,'652.8\r\n705.0\r\n677.6\r\n692.1\r\n694.4',''),(197,1,150,'2015-10-11',67,1,'909.7\r\n921.6\r\n907.7\r\n929.7\r\n934.0',''),(198,1,151,'2015-10-11',67,1,'845.3\r\n858.7\r\n866.8\r\n892.3\r\n874.7',''),(199,1,152,'2015-10-11',67,1,'809.9\r\n848.1\r\n846.2\r\n851.0\r\n842.6',''),(200,1,153,'2015-10-11',67,1,'805.0\r\n788.9\r\n803.6\r\n779.8\r\n803.1',''),(201,1,154,'2015-10-11',67,1,'741.6\r\n741.9\r\n725.0\r\n733.1\r\n739.7',''),(202,11,155,'2015-10-11',67,1,'860.3\r\n887.9\r\n864.2\r\n876.5\r\n854.2',''),(203,11,156,'2015-10-11',67,1,'811.7\r\n853.9\r\n841.2\r\n817.6\r\n827.4',''),(204,11,157,'2015-10-11',67,1,'777.0\r\n807.2\r\n811.4\r\n814.6\r\n802.9',''),(205,11,158,'2015-10-11',67,1,'742.5\r\n766.7\r\n766.4\r\n767.9\r\n756.1',''),(206,11,159,'2015-10-11',67,1,'719.5\r\n738.8\r\n746.8\r\n728.9\r\n735.4',''),(207,11,160,'2015-10-11',67,1,'697.4\r\n695.9\r\n690.2\r\n700.6\r\n685.2',''),(208,12,161,'2015-10-11',67,1,'1267\r\n1187\r\n1230\r\n1231\r\n1277',''),(209,12,162,'2015-10-11',67,1,'1378\r\n1387\r\n1370\r\n1398\r\n1420',''),(210,12,163,'2015-10-11',67,1,'1386\r\n1351\r\n1387\r\n1357\r\n1375',''),(211,12,164,'2015-10-11',67,1,'1382\r\n1394\r\n1318\r\n1357\r\n1409',''),(212,12,165,'2015-10-11',67,1,'1394\r\n1320\r\n1339',''),(213,12,166,'2015-10-11',67,1,'1375\r\n1381\r\n1357\r\n1383\r\n1427',''),(214,12,167,'2015-10-11',67,1,'1253\r\n1262\r\n1283\r\n1332\r\n1317',''),(215,12,168,'2015-10-11',67,1,'1363\r\n1344\r\n1292\r\n1332\r\n1295',''),(216,12,169,'2015-10-11',67,1,'1271\r\n1247\r\n1357\r\n1280\r\n1325',''),(217,12,170,'2015-10-11',67,1,'1255\r\n1342\r\n1346\r\n1304',''),(218,12,171,'2015-10-11',67,1,'1331\r\n1315\r\n1302\r\n1329\r\n1346',''),(219,1,172,'2015-10-11',67,1,'685.7\r\n683.7\r\n682.7\r\n703.9\r\n683.7',''),(220,11,173,'2015-12-24',61,1,'773.2\r\n793.4\r\n768\r\n800.8\r\n781.8\r\n791.3\r\n748.6\r\n822.1',''),(221,12,173,'2015-12-24',61,1,'904\r\n869\r\n835.6\r\n870.8\r\n913.8\r\n879.4',''),(222,12,174,'2015-12-24',61,1,'788.5\r\n790.8\r\n766.6\r\n785.3\r\n797.1\r\n778.2',''),(223,12,175,'2015-12-24',61,1,'817.1\r\n837.8\r\n825\r\n822.1\r\n819.9\r\n843',''),(224,1,176,'2016-04-24',64,1,'1046\r\n1014\r\n1055\r\n1025\r\n1059',''),(225,1,177,'2016-04-24',64,1,'1239\r\n1214\r\n1218\r\n1170\r\n1123',''),(226,1,178,'2016-04-24',64,1,'949.3\r\n972.6\r\n950.7\r\n980.2\r\n983.0',''),(227,24,179,'2016-04-24',64,1,'2207\r\n2230\r\n2314\r\n2373\r\n2329',''),(228,19,180,'2016-04-24',64,1,'2986\r\n3016\r\n2989\r\n2988\r\n2985',''),(229,24,180,'2016-04-24',64,1,'2882\r\n2850\r\n2857\r\n2830\r\n2907',''),(230,19,181,'2016-04-24',64,1,'3006\r\n3020\r\n3060\r\n3028\r\n3066',''),(231,24,181,'2016-04-24',64,1,'2854\r\n2890\r\n2879\r\n2808\r\n2808',''),(232,19,182,'2016-04-24',64,1,'2839\r\n2885\r\n2914\r\n2889\r\n2904',''),(233,24,182,'2016-04-24',64,1,'2676\r\n2648\r\n2771\r\n2654\r\n2668',''),(234,24,183,'2016-04-24',64,1,'2531\r\n2468\r\n2462\r\n2494\r\n2486\r\n2502',''),(235,19,143,'2016-08-03',76,1,'2545\r\n2585\r\n2574\r\n2568\r\n2587',''),(236,24,143,'2016-08-03',76,1,'2460\r\n2470\r\n2514\r\n2499\r\n2454',''),(237,19,184,'2016-08-03',76,1,'2869\r\n2838\r\n2841\r\n2864\r\n2860',''),(238,24,184,'2016-08-03',76,1,'2771\r\n2724\r\n2710\r\n2745\r\n2756',''),(239,19,185,'2016-08-03',76,1,'2571\r\n2593\r\n2591\r\n2604\r\n2613',''),(240,24,185,'2016-08-03',76,1,'2499\r\n2492\r\n2517\r\n2465\r\n2485',''),(241,25,186,'2016-10-07',65,1,'2561\r\n2599\r\n2684\r\n2610\r\n2577\r\n2587\r\n2620',''),(242,25,187,'2016-10-07',65,1,'2433\r\n2360\r\n2425\r\n2433\r\n2369',''),(243,25,188,'2016-11-04',61,1,'2432\r\n2374\r\n2395\r\n2379\r\n2356',''),(244,1,189,'2016-11-06',63,1,'654.2\r\n655.8\r\n669.3\r\n677.3\r\n674.8',''),(245,3,189,'2016-11-06',63,1,'587.7\r\n605.0\r\n597.3\r\n585.5\r\n577.5',''),(246,4,98,'2016-11-06',63,1,'1370\r\n1382\r\n1387\r\n1414\r\n1426\r\n1419',''),(247,26,190,'2016-12-23',35,1,'1067\r\n1021\r\n1021\r\n1025\r\n1011',''),(248,26,191,'2016-12-23',35,3,'1075\r\n1082\r\n1076\r\n1108\r\n1083',''),(249,26,192,'2016-12-23',35,1,'1125\r\n1134\r\n1119\r\n1113\r\n1140',''),(250,26,193,'2016-12-23',35,1,'1434\r\n1404\r\n1404\r\n1428\r\n1420',''),(251,1,194,'2016-12-23',35,1,'1067\r\n1075\r\n1079\r\n1090\r\n1133',''),(252,1,194,'2016-12-23',35,1,'1120\r\n1164\r\n1159\r\n1151\r\n1151',''),(253,27,195,'2017-07-11',80,1,'996.7\r\n976.9\r\n974.9\r\n981.6\r\n972.7',''),(254,27,196,'2017-07-11',80,1,'1050\r\n1008\r\n999.9\r\n997.1\r\n995.5\r\n1028',''),(255,27,197,'2017-07-11',80,1,'1041\r\n1030\r\n1021\r\n1021\r\n1014',''),(256,27,198,'2017-07-11',80,1,'1066\r\n1052\r\n1060\r\n1064\r\n1033',''),(257,27,199,'2017-07-11',80,1,'1081\r\n1073\r\n1073\r\n1086\r\n1091',''),(258,27,77,'2017-07-11',80,1,'1076\r\n1052\r\n1072\r\n1026\r\n1072',''),(259,27,200,'2017-07-11',80,1,'1022\r\n1029\r\n1025\r\n1025\r\n1047',''),(260,27,201,'2017-07-11',80,1,'1071\r\n1077\r\n1067\r\n1093\r\n1070',''),(261,27,202,'2017-07-11',80,1,'1080\r\n1109\r\n1092\r\n1080\r\n1100',''),(262,27,203,'2017-07-11',80,1,'1120\r\n1084\r\n1112\r\n1104\r\n1120',''),(263,27,204,'2017-07-11',80,1,'1117\r\n1123\r\n1090\r\n1115\r\n1130',''),(264,27,205,'2017-07-11',80,1,'1195\r\n1201\r\n1195\r\n1179\r\n1166',''),(265,27,206,'2017-07-23',80,1,'1200\r\n1179\r\n1164\r\n1185\r\n1168',''),(266,28,207,'2018-10-05',77,1,'1350\r\n1353\r\n1335\r\n1355\r\n1343',''),(267,28,208,'2018-10-20',57,1,'1266\r\n1264\r\n1287\r\n1299\r\n1269',''),(268,28,209,'2018-10-20',57,1,'1279\r\n1271\r\n1249\r\n1260\r\n1277\r\n1257\r\n1261',''),(269,27,209,'2018-10-20',57,1,'1089\r\n1071\r\n1084\r\n1069\r\n1085\r\n1075\r\n1073\r\n1089',''),(270,27,208,'2018-10-20',57,1,'1076\r\n1075\r\n1087\r\n1069\r\n1077',''),(271,29,210,'2019-05-17',73,1,'2109\r\n2183\r\n2182\r\n2167\r\n2199',''),(272,29,211,'2019-05-17',73,1,'2206\r\n2198\r\n2202\r\n2238\r\n2204',''),(273,29,212,'2019-05-17',73,1,'2215\r\n2230\r\n2252\r\n2231\r\n2248',''),(274,29,213,'2019-05-17',73,1,'2257\r\n2259\r\n2277\r\n2280',''),(275,29,214,'2019-05-17',73,1,'2289\r\n2293\r\n2316\r\n2282\r\n2300',''),(276,4,215,'2019-05-17',73,1,'1626\r\n1600\r\n1596\r\n1578\r\n1611',''),(277,4,216,'2019-05-17',73,1,'1735\r\n1736\r\n1731\r\n1716\r\n1737',''),(278,4,217,'2019-05-17',73,1,'1792\r\n1771\r\n1799\r\n1786',''),(279,4,63,'2019-05-17',73,1,'1629\r\n1647\r\n1653\r\n1649\r\n1668',''),(280,29,218,'2019-05-23',74,1,'1052\r\n1063\r\n1111\r\n1135\r\n1146',''),(281,29,219,'2019-05-23',74,1,'1174\r\n1251\r\n1232\r\n1217\r\n1205',''),(282,29,220,'2019-05-23',74,1,'1012\r\n1118\r\n1102\r\n1115\r\n1104',''),(283,29,221,'2019-05-23',74,1,'964.8\r\n1091\r\n1089\r\n1086\r\n1029',''),(284,29,222,'2019-05-23',74,1,'1186\r\n1175\r\n1196',''),(285,29,223,'2019-05-23',74,1,'1004\r\n1084\r\n1091\r\n1069',''),(286,27,224,'2022-08-06',87,2,'917\r\n928\r\n902\r\n944\r\n945\r\n897',''),(287,28,224,'2022-08-06',87,2,'1101\r\n1106\r\n1146\r\n1141',''),(288,27,225,'2022-08-06',87,2,'1093\r\n1109\r\n1084\r\n1042\r\n1096\r\n1101',''),(289,28,225,'2022-08-06',87,2,'1422\r\n1424\r\n1426\r\n1357\r\n1384\r\n1430','');
/*!40000 ALTER TABLE `reloading_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_shooter`
--

DROP TABLE IF EXISTS `reloading_shooter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_shooter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_shooter`
--

LOCK TABLES `reloading_shooter` WRITE;
/*!40000 ALTER TABLE `reloading_shooter` DISABLE KEYS */;
INSERT INTO `reloading_shooter` VALUES (1,'Tim Simkins'),(2,'Justin Poirier'),(3,'Terry Simkins'),(4,'Travis Weaver');
/*!40000 ALTER TABLE `reloading_shooter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_weapon`
--

DROP TABLE IF EXISTS `reloading_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_weapon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `barrel_length` decimal(3,1) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_weapon`
--

LOCK TABLES `reloading_weapon` WRITE;
/*!40000 ALTER TABLE `reloading_weapon` DISABLE KEYS */;
INSERT INTO `reloading_weapon` VALUES (1,'GP-100','Ruger GP-100',4.0,''),(2,'Ruger Blackhawk .357/9mm','Ruger Blackhawk .357/9mm',9.0,''),(3,'Charter Undercover','Charter Arms Undercover',2.0,''),(4,'1894C','Marlin 1894C',18.5,''),(5,'Glock 23','Glock 23',4.0,''),(6,'M&P .40 S&W','M&P Compact (.40 S&W)',3.5,''),(7,'Kahr 9mm','Kahr Arms 9mm',4.0,''),(8,'Ruger Mark III','Ruger Mark III Hunter',7.0,''),(9,'S&W 4006','Smith and Wesson 4006',4.0,''),(10,'Stevens Model 200','Stevens Model 200',22.0,''),(11,'Sig Sauer P220','Sig Sauer P220',3.9,''),(12,'Ruger Blackhawk','Ruger Blackhawk 45 Colt/45 ACP',7.5,''),(13,'DPMS AR-15','.308 DPMS AR-15',20.0,''),(14,'Remington Model 700','.243 Remington 700',22.0,''),(15,'Ruger M77 .223','Ruger M77 .223',22.0,''),(16,'Keltec PF-9','Keltec PF-9',3.1,''),(17,'CZ-455 .22 LR','CZ-455 .22 LR',16.5,''),(18,'M&P Full Size (.40 S&W)','M&P Full Size (.40 S&W)',4.3,''),(19,'Palmetto State Armory AR-15 18\" Upper','PSA AR-15 18\"',18.0,''),(20,'S&W M&P 15, 16\"','S&W M&P 15, 16\"',16.0,''),(21,'.30-06 Remington 700','.30-06 Remington 700',22.0,''),(22,'Winchester 1894 .32 Winchester Special','Winchester 1894 .32 Winchester Special',99.0,''),(23,'Walther PPK/S','Walther PPK/S',3.4,''),(24,'Bravo Company AR-15 14.5\" Upper','BCM AR-15 14.5\"',14.5,''),(25,'Sporterized Mauser','Sporterized Mauser Wehrmann Gewehr',24.0,''),(26,'Shiloh Sharps 1874 Rifle','Shiloh Sharps 1874 Rifle .45-70',24.0,''),(27,'CZ P-01','CZ P-01',3.8,''),(28,'9mm Carbine','Ruger PC Carbine',16.0,''),(29,'Palmetto State Armory AR-15 Upper, 16\"','PSA AR-15, 16\"',16.0,'');
/*!40000 ALTER TABLE `reloading_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloading_weapon_caliber`
--

DROP TABLE IF EXISTS `reloading_weapon_caliber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reloading_weapon_caliber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `weapon_id` int NOT NULL,
  `caliber_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `weapon_id` (`weapon_id`,`caliber_id`),
  KEY `reloading_weapon_caliber_3f7d06ce` (`weapon_id`),
  KEY `reloading_weapon_caliber_5bc3d76d` (`caliber_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloading_weapon_caliber`
--

LOCK TABLES `reloading_weapon_caliber` WRITE;
/*!40000 ALTER TABLE `reloading_weapon_caliber` DISABLE KEYS */;
INSERT INTO `reloading_weapon_caliber` VALUES (14,4,2),(9,1,2),(8,1,1),(13,4,1),(35,2,5),(34,2,2),(12,3,2),(15,5,4),(16,6,4),(17,7,5),(18,8,6),(19,9,4),(20,10,7),(21,11,8),(22,12,8),(23,12,9),(26,13,11),(27,14,10),(28,15,12),(33,2,1),(32,16,5),(36,17,6),(38,18,4),(40,19,12),(42,20,12),(43,21,13),(44,22,14),(45,23,15),(46,24,12),(48,25,16),(49,26,17),(50,27,5),(51,28,5),(52,29,18);
/*!40000 ALTER TABLE `reloading_weapon_caliber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 13:38:39
