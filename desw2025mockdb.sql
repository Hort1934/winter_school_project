-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: desw2025mockdb
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add organization_ office',7,'add_organization_office'),(26,'Can change organization_ office',7,'change_organization_office'),(27,'Can delete organization_ office',7,'delete_organization_office'),(28,'Can view organization_ office',7,'view_organization_office'),(29,'Can add task_ custom_ trait',8,'add_task_custom_trait'),(30,'Can change task_ custom_ trait',8,'change_task_custom_trait'),(31,'Can delete task_ custom_ trait',8,'delete_task_custom_trait'),(32,'Can view task_ custom_ trait',8,'view_task_custom_trait'),(33,'Can add organization_ social',9,'add_organization_social'),(34,'Can change organization_ social',9,'change_organization_social'),(35,'Can delete organization_ social',9,'delete_organization_social'),(36,'Can view organization_ social',9,'view_organization_social'),(37,'Can add organization_ phone',10,'add_organization_phone'),(38,'Can change organization_ phone',10,'change_organization_phone'),(39,'Can delete organization_ phone',10,'delete_organization_phone'),(40,'Can view organization_ phone',10,'view_organization_phone'),(41,'Can add health_ vulnerability_ proof',11,'add_health_vulnerability_proof'),(42,'Can change health_ vulnerability_ proof',11,'change_health_vulnerability_proof'),(43,'Can delete health_ vulnerability_ proof',11,'delete_health_vulnerability_proof'),(44,'Can view health_ vulnerability_ proof',11,'view_health_vulnerability_proof'),(45,'Can add task',12,'add_task'),(46,'Can change task',12,'change_task'),(47,'Can delete task',12,'delete_task'),(48,'Can view task',12,'view_task'),(49,'Can add vulnerability_ proof',13,'add_vulnerability_proof'),(50,'Can change vulnerability_ proof',13,'change_vulnerability_proof'),(51,'Can delete vulnerability_ proof',13,'delete_vulnerability_proof'),(52,'Can view vulnerability_ proof',13,'view_vulnerability_proof'),(53,'Can add individual_ custom_ skill',14,'add_individual_custom_skill'),(54,'Can change individual_ custom_ skill',14,'change_individual_custom_skill'),(55,'Can delete individual_ custom_ skill',14,'delete_individual_custom_skill'),(56,'Can view individual_ custom_ skill',14,'view_individual_custom_skill'),(57,'Can add task_ category',15,'add_task_category'),(58,'Can change task_ category',15,'change_task_category'),(59,'Can delete task_ category',15,'delete_task_category'),(60,'Can view task_ category',15,'view_task_category'),(61,'Can add individual',16,'add_individual'),(62,'Can change individual',16,'change_individual'),(63,'Can delete individual',16,'delete_individual'),(64,'Can view individual',16,'view_individual'),(65,'Can add predefined_ trait_ of_ task',17,'add_predefined_trait_of_task'),(66,'Can change predefined_ trait_ of_ task',17,'change_predefined_trait_of_task'),(67,'Can delete predefined_ trait_ of_ task',17,'delete_predefined_trait_of_task'),(68,'Can view predefined_ trait_ of_ task',17,'view_predefined_trait_of_task'),(69,'Can add individual_ phone',18,'add_individual_phone'),(70,'Can change individual_ phone',18,'change_individual_phone'),(71,'Can delete individual_ phone',18,'delete_individual_phone'),(72,'Can view individual_ phone',18,'view_individual_phone'),(73,'Can add predefined_ skill',19,'add_predefined_skill'),(74,'Can change predefined_ skill',19,'change_predefined_skill'),(75,'Can delete predefined_ skill',19,'delete_predefined_skill'),(76,'Can view predefined_ skill',19,'view_predefined_skill'),(77,'Can add individual_ predefined_ skill',20,'add_individual_predefined_skill'),(78,'Can change individual_ predefined_ skill',20,'change_individual_predefined_skill'),(79,'Can delete individual_ predefined_ skill',20,'delete_individual_predefined_skill'),(80,'Can view individual_ predefined_ skill',20,'view_individual_predefined_skill'),(81,'Can add benefits_ acquisition',21,'add_benefits_acquisition'),(82,'Can change benefits_ acquisition',21,'change_benefits_acquisition'),(83,'Can delete benefits_ acquisition',21,'delete_benefits_acquisition'),(84,'Can view benefits_ acquisition',21,'view_benefits_acquisition'),(85,'Can add organization',22,'add_organization'),(86,'Can change organization',22,'change_organization'),(87,'Can delete organization',22,'delete_organization'),(88,'Can view organization',22,'view_organization'),(89,'Can add individual_ social',23,'add_individual_social'),(90,'Can change individual_ social',23,'change_individual_social'),(91,'Can delete individual_ social',23,'delete_individual_social'),(92,'Can view individual_ social',23,'view_individual_social'),(93,'Can add task_ needed_ skill',24,'add_task_needed_skill'),(94,'Can change task_ needed_ skill',24,'change_task_needed_skill'),(95,'Can delete task_ needed_ skill',24,'delete_task_needed_skill'),(96,'Can view task_ needed_ skill',24,'view_task_needed_skill'),(97,'Can add predefined_ task_ trait',25,'add_predefined_task_trait'),(98,'Can change predefined_ task_ trait',25,'change_predefined_task_trait'),(99,'Can delete predefined_ task_ trait',25,'delete_predefined_task_trait'),(100,'Can view predefined_ task_ trait',25,'view_predefined_task_trait'),(101,'Can add volunteering',26,'add_volunteering'),(102,'Can change volunteering',26,'change_volunteering'),(103,'Can delete volunteering',26,'delete_volunteering'),(104,'Can view volunteering',26,'view_volunteering'),(105,'Can add benefit',27,'add_benefit'),(106,'Can change benefit',27,'change_benefit'),(107,'Can delete benefit',27,'delete_benefit'),(108,'Can view benefit',27,'view_benefit'),(109,'Can add individual_ record',28,'add_individual_record'),(110,'Can change individual_ record',28,'change_individual_record'),(111,'Can delete individual_ record',28,'delete_individual_record'),(112,'Can view individual_ record',28,'view_individual_record'),(113,'Can add organization_ record',29,'add_organization_record'),(114,'Can change organization_ record',29,'change_organization_record'),(115,'Can delete organization_ record',29,'delete_organization_record'),(116,'Can view organization_ record',29,'view_organization_record');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(27,'website','benefit'),(21,'website','benefits_acquisition'),(11,'website','health_vulnerability_proof'),(16,'website','individual'),(14,'website','individual_custom_skill'),(18,'website','individual_phone'),(20,'website','individual_predefined_skill'),(28,'website','individual_record'),(23,'website','individual_social'),(22,'website','organization'),(7,'website','organization_office'),(10,'website','organization_phone'),(29,'website','organization_record'),(9,'website','organization_social'),(19,'website','predefined_skill'),(25,'website','predefined_task_trait'),(17,'website','predefined_trait_of_task'),(12,'website','task'),(15,'website','task_category'),(8,'website','task_custom_trait'),(24,'website','task_needed_skill'),(26,'website','volunteering'),(13,'website','vulnerability_proof');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-01-24 17:06:02.394400'),(2,'auth','0001_initial','2025-01-24 17:06:02.932005'),(3,'admin','0001_initial','2025-01-24 17:06:03.083043'),(4,'admin','0002_logentry_remove_auto_add','2025-01-24 17:06:03.088054'),(5,'admin','0003_logentry_add_action_flag_choices','2025-01-24 17:06:03.093616'),(6,'contenttypes','0002_remove_content_type_name','2025-01-24 17:06:03.156765'),(7,'auth','0002_alter_permission_name_max_length','2025-01-24 17:06:03.207696'),(8,'auth','0003_alter_user_email_max_length','2025-01-24 17:06:03.224726'),(9,'auth','0004_alter_user_username_opts','2025-01-24 17:06:03.230798'),(10,'auth','0005_alter_user_last_login_null','2025-01-24 17:06:03.295390'),(11,'auth','0006_require_contenttypes_0002','2025-01-24 17:06:03.300996'),(12,'auth','0007_alter_validators_add_error_messages','2025-01-24 17:06:03.306006'),(13,'auth','0008_alter_user_username_max_length','2025-01-24 17:06:03.352711'),(14,'auth','0009_alter_user_last_name_max_length','2025-01-24 17:06:03.416945'),(15,'auth','0010_alter_group_name_max_length','2025-01-24 17:06:03.430850'),(16,'auth','0011_update_proxy_permissions','2025-01-24 17:06:03.438090'),(17,'auth','0012_alter_user_first_name_max_length','2025-01-24 17:06:03.497196'),(18,'sessions','0001_initial','2025-01-24 17:06:03.525401'),(23,'website','0001_initial','2025-01-24 21:11:28.336626'),(24,'website','0002_individual_record_organization_record','2025-01-24 21:11:51.964904');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_individual_record`
--

DROP TABLE IF EXISTS `website_individual_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_individual_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `document_number` longtext NOT NULL,
  `document_type` smallint unsigned NOT NULL,
  `photo_file` longblob NOT NULL,
  `photo_type` varchar(127) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `website_individual_record_chk_1` CHECK ((`document_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_individual_record`
--

LOCK TABLES `website_individual_record` WRITE;
/*!40000 ALTER TABLE `website_individual_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_individual_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_organization_record`
--

DROP TABLE IF EXISTS `website_organization_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_organization_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `document_number` longtext NOT NULL,
  `document_type` smallint unsigned NOT NULL,
  `official_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `website_organization_record_chk_1` CHECK ((`document_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_organization_record`
--

LOCK TABLES `website_organization_record` WRITE;
/*!40000 ALTER TABLE `website_organization_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_organization_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-25 19:33:34
