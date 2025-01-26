-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: desw2025appdb
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add health_ vulnerability_ proof',7,'add_health_vulnerability_proof'),(26,'Can change health_ vulnerability_ proof',7,'change_health_vulnerability_proof'),(27,'Can delete health_ vulnerability_ proof',7,'delete_health_vulnerability_proof'),(28,'Can view health_ vulnerability_ proof',7,'view_health_vulnerability_proof'),(29,'Can add task',8,'add_task'),(30,'Can change task',8,'change_task'),(31,'Can delete task',8,'delete_task'),(32,'Can view task',8,'view_task'),(33,'Can add individual_ phone',9,'add_individual_phone'),(34,'Can change individual_ phone',9,'change_individual_phone'),(35,'Can delete individual_ phone',9,'delete_individual_phone'),(36,'Can view individual_ phone',9,'view_individual_phone'),(37,'Can add organization',10,'add_organization'),(38,'Can change organization',10,'change_organization'),(39,'Can delete organization',10,'delete_organization'),(40,'Can view organization',10,'view_organization'),(41,'Can add task_ category',11,'add_task_category'),(42,'Can change task_ category',11,'change_task_category'),(43,'Can delete task_ category',11,'delete_task_category'),(44,'Can view task_ category',11,'view_task_category'),(45,'Can add predefined_ skill',12,'add_predefined_skill'),(46,'Can change predefined_ skill',12,'change_predefined_skill'),(47,'Can delete predefined_ skill',12,'delete_predefined_skill'),(48,'Can view predefined_ skill',12,'view_predefined_skill'),(49,'Can add organization_ office',13,'add_organization_office'),(50,'Can change organization_ office',13,'change_organization_office'),(51,'Can delete organization_ office',13,'delete_organization_office'),(52,'Can view organization_ office',13,'view_organization_office'),(53,'Can add benefit',14,'add_benefit'),(54,'Can change benefit',14,'change_benefit'),(55,'Can delete benefit',14,'delete_benefit'),(56,'Can view benefit',14,'view_benefit'),(57,'Can add individual_ predefined_ skill',15,'add_individual_predefined_skill'),(58,'Can change individual_ predefined_ skill',15,'change_individual_predefined_skill'),(59,'Can delete individual_ predefined_ skill',15,'delete_individual_predefined_skill'),(60,'Can view individual_ predefined_ skill',15,'view_individual_predefined_skill'),(61,'Can add task_ needed_ skill',16,'add_task_needed_skill'),(62,'Can change task_ needed_ skill',16,'change_task_needed_skill'),(63,'Can delete task_ needed_ skill',16,'delete_task_needed_skill'),(64,'Can view task_ needed_ skill',16,'view_task_needed_skill'),(65,'Can add individual_ custom_ skill',17,'add_individual_custom_skill'),(66,'Can change individual_ custom_ skill',17,'change_individual_custom_skill'),(67,'Can delete individual_ custom_ skill',17,'delete_individual_custom_skill'),(68,'Can view individual_ custom_ skill',17,'view_individual_custom_skill'),(69,'Can add organization_ phone',18,'add_organization_phone'),(70,'Can change organization_ phone',18,'change_organization_phone'),(71,'Can delete organization_ phone',18,'delete_organization_phone'),(72,'Can view organization_ phone',18,'view_organization_phone'),(73,'Can add task_ custom_ trait',19,'add_task_custom_trait'),(74,'Can change task_ custom_ trait',19,'change_task_custom_trait'),(75,'Can delete task_ custom_ trait',19,'delete_task_custom_trait'),(76,'Can view task_ custom_ trait',19,'view_task_custom_trait'),(77,'Can add individual',20,'add_individual'),(78,'Can change individual',20,'change_individual'),(79,'Can delete individual',20,'delete_individual'),(80,'Can view individual',20,'view_individual'),(81,'Can add predefined_ task_ trait',21,'add_predefined_task_trait'),(82,'Can change predefined_ task_ trait',21,'change_predefined_task_trait'),(83,'Can delete predefined_ task_ trait',21,'delete_predefined_task_trait'),(84,'Can view predefined_ task_ trait',21,'view_predefined_task_trait'),(85,'Can add volunteering',22,'add_volunteering'),(86,'Can change volunteering',22,'change_volunteering'),(87,'Can delete volunteering',22,'delete_volunteering'),(88,'Can view volunteering',22,'view_volunteering'),(89,'Can add predefined_ trait_ of_ task',23,'add_predefined_trait_of_task'),(90,'Can change predefined_ trait_ of_ task',23,'change_predefined_trait_of_task'),(91,'Can delete predefined_ trait_ of_ task',23,'delete_predefined_trait_of_task'),(92,'Can view predefined_ trait_ of_ task',23,'view_predefined_trait_of_task'),(93,'Can add vulnerability_ proof',24,'add_vulnerability_proof'),(94,'Can change vulnerability_ proof',24,'change_vulnerability_proof'),(95,'Can delete vulnerability_ proof',24,'delete_vulnerability_proof'),(96,'Can view vulnerability_ proof',24,'view_vulnerability_proof'),(97,'Can add individual_ social',25,'add_individual_social'),(98,'Can change individual_ social',25,'change_individual_social'),(99,'Can delete individual_ social',25,'delete_individual_social'),(100,'Can view individual_ social',25,'view_individual_social'),(101,'Can add organization_ social',26,'add_organization_social'),(102,'Can change organization_ social',26,'change_organization_social'),(103,'Can delete organization_ social',26,'delete_organization_social'),(104,'Can view organization_ social',26,'view_organization_social'),(105,'Can add benefits_ acquisition',27,'add_benefits_acquisition'),(106,'Can change benefits_ acquisition',27,'change_benefits_acquisition'),(107,'Can delete benefits_ acquisition',27,'delete_benefits_acquisition'),(108,'Can view benefits_ acquisition',27,'view_benefits_acquisition');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(14,'website','benefit'),(27,'website','benefits_acquisition'),(7,'website','health_vulnerability_proof'),(20,'website','individual'),(17,'website','individual_custom_skill'),(9,'website','individual_phone'),(15,'website','individual_predefined_skill'),(25,'website','individual_social'),(10,'website','organization'),(13,'website','organization_office'),(18,'website','organization_phone'),(26,'website','organization_social'),(12,'website','predefined_skill'),(21,'website','predefined_task_trait'),(23,'website','predefined_trait_of_task'),(8,'website','task'),(11,'website','task_category'),(19,'website','task_custom_trait'),(16,'website','task_needed_skill'),(22,'website','volunteering'),(24,'website','vulnerability_proof');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-01-24 16:48:57.819395'),(2,'auth','0001_initial','2025-01-24 16:48:58.369451'),(3,'admin','0001_initial','2025-01-24 16:48:58.488508'),(4,'admin','0002_logentry_remove_auto_add','2025-01-24 16:48:58.494976'),(5,'admin','0003_logentry_add_action_flag_choices','2025-01-24 16:48:58.501059'),(6,'contenttypes','0002_remove_content_type_name','2025-01-24 16:48:58.563489'),(7,'auth','0002_alter_permission_name_max_length','2025-01-24 16:48:58.632035'),(8,'auth','0003_alter_user_email_max_length','2025-01-24 16:48:58.652603'),(9,'auth','0004_alter_user_username_opts','2025-01-24 16:48:58.659132'),(10,'auth','0005_alter_user_last_login_null','2025-01-24 16:48:58.706010'),(11,'auth','0006_require_contenttypes_0002','2025-01-24 16:48:58.708556'),(12,'auth','0007_alter_validators_add_error_messages','2025-01-24 16:48:58.713638'),(13,'auth','0008_alter_user_username_max_length','2025-01-24 16:48:58.771024'),(14,'auth','0009_alter_user_last_name_max_length','2025-01-24 16:48:58.836120'),(15,'auth','0010_alter_group_name_max_length','2025-01-24 16:48:58.849322'),(16,'auth','0011_update_proxy_permissions','2025-01-24 16:48:58.858809'),(17,'auth','0012_alter_user_first_name_max_length','2025-01-24 16:48:58.908763'),(18,'sessions','0001_initial','2025-01-24 16:48:58.936258'),(20,'website','0001_initial','2025-01-24 20:58:10.015488');
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
-- Table structure for table `website_benefit`
--

DROP TABLE IF EXISTS `website_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_benefit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `points_price` int NOT NULL,
  `days_duration` smallint unsigned NOT NULL,
  `last_day_offered` date NOT NULL,
  `description` longtext NOT NULL,
  `organization_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_benefit_organization_id_610dc930_fk_website_o` (`organization_id`),
  CONSTRAINT `website_benefit_organization_id_610dc930_fk_website_o` FOREIGN KEY (`organization_id`) REFERENCES `website_organization` (`id`),
  CONSTRAINT `website_benefit_chk_1` CHECK ((`days_duration` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_benefit`
--

LOCK TABLES `website_benefit` WRITE;
/*!40000 ALTER TABLE `website_benefit` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_benefits_acquisition`
--

DROP TABLE IF EXISTS `website_benefits_acquisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_benefits_acquisition` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_valid_since` date NOT NULL,
  `benefit_id` bigint NOT NULL,
  `individual_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_benefits_acq_benefit_id_a721520a_fk_website_b` (`benefit_id`),
  KEY `website_benefits_acq_individual_id_97ab6b6f_fk_website_i` (`individual_id`),
  CONSTRAINT `website_benefits_acq_benefit_id_a721520a_fk_website_b` FOREIGN KEY (`benefit_id`) REFERENCES `website_benefit` (`id`),
  CONSTRAINT `website_benefits_acq_individual_id_97ab6b6f_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_benefits_acquisition`
--

LOCK TABLES `website_benefits_acquisition` WRITE;
/*!40000 ALTER TABLE `website_benefits_acquisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_benefits_acquisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_health_vulnerability_proof`
--

DROP TABLE IF EXISTS `website_health_vulnerability_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_health_vulnerability_proof` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `med_document_file` longblob NOT NULL,
  `content_type` varchar(127) NOT NULL,
  `individual_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_health_vulne_individual_id_b2559578_fk_website_i` (`individual_id`),
  CONSTRAINT `website_health_vulne_individual_id_b2559578_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_health_vulnerability_proof`
--

LOCK TABLES `website_health_vulnerability_proof` WRITE;
/*!40000 ALTER TABLE `website_health_vulnerability_proof` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_health_vulnerability_proof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_individual`
--

DROP TABLE IF EXISTS `website_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_individual` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `document_number` longtext NOT NULL,
  `document_type` smallint unsigned NOT NULL,
  `description` longtext NOT NULL,
  `location_lat` double DEFAULT NULL,
  `location_long` double DEFAULT NULL,
  `address_text` longtext,
  `social_points` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `website_individual_chk_1` CHECK ((`document_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_individual`
--

LOCK TABLES `website_individual` WRITE;
/*!40000 ALTER TABLE `website_individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_individual_custom_skill`
--

DROP TABLE IF EXISTS `website_individual_custom_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_individual_custom_skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `individual_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_individual_c_individual_id_fe5f102c_fk_website_i` (`individual_id`),
  CONSTRAINT `website_individual_c_individual_id_fe5f102c_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_individual_custom_skill`
--

LOCK TABLES `website_individual_custom_skill` WRITE;
/*!40000 ALTER TABLE `website_individual_custom_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_individual_custom_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_individual_phone`
--

DROP TABLE IF EXISTS `website_individual_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_individual_phone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `individual_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_individual_p_individual_id_b7e346f2_fk_website_i` (`individual_id`),
  CONSTRAINT `website_individual_p_individual_id_b7e346f2_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_individual_phone`
--

LOCK TABLES `website_individual_phone` WRITE;
/*!40000 ALTER TABLE `website_individual_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_individual_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_individual_predefined_skill`
--

DROP TABLE IF EXISTS `website_individual_predefined_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_individual_predefined_skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `individual_id` bigint NOT NULL,
  `skill_code_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_individual_p_individual_id_8e4e7a63_fk_website_i` (`individual_id`),
  KEY `website_individual_p_skill_code_id_fe6dc5dc_fk_website_p` (`skill_code_id`),
  CONSTRAINT `website_individual_p_individual_id_8e4e7a63_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`),
  CONSTRAINT `website_individual_p_skill_code_id_fe6dc5dc_fk_website_p` FOREIGN KEY (`skill_code_id`) REFERENCES `website_predefined_skill` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_individual_predefined_skill`
--

LOCK TABLES `website_individual_predefined_skill` WRITE;
/*!40000 ALTER TABLE `website_individual_predefined_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_individual_predefined_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_individual_social`
--

DROP TABLE IF EXISTS `website_individual_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_individual_social` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` longtext NOT NULL,
  `social_media_type` smallint unsigned NOT NULL,
  `individual_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_individual_s_individual_id_dc919ae0_fk_website_i` (`individual_id`),
  CONSTRAINT `website_individual_s_individual_id_dc919ae0_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`),
  CONSTRAINT `website_individual_social_chk_1` CHECK ((`social_media_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_individual_social`
--

LOCK TABLES `website_individual_social` WRITE;
/*!40000 ALTER TABLE `website_individual_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_individual_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_organization`
--

DROP TABLE IF EXISTS `website_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_organization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `document_number` longtext NOT NULL,
  `document_type` smallint unsigned NOT NULL,
  `unofficial_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `logo_file` longblob,
  `logo_content_type` varchar(127) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `website_organization_chk_1` CHECK ((`document_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_organization`
--

LOCK TABLES `website_organization` WRITE;
/*!40000 ALTER TABLE `website_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_organization_office`
--

DROP TABLE IF EXISTS `website_organization_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_organization_office` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_text` longtext NOT NULL,
  `location_lat` double DEFAULT NULL,
  `location_long` double DEFAULT NULL,
  `organization_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_organization_organization_id_7807da54_fk_website_o` (`organization_id`),
  CONSTRAINT `website_organization_organization_id_7807da54_fk_website_o` FOREIGN KEY (`organization_id`) REFERENCES `website_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_organization_office`
--

LOCK TABLES `website_organization_office` WRITE;
/*!40000 ALTER TABLE `website_organization_office` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_organization_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_organization_phone`
--

DROP TABLE IF EXISTS `website_organization_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_organization_phone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `organization_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_organization_organization_id_1f6ac5f7_fk_website_o` (`organization_id`),
  CONSTRAINT `website_organization_organization_id_1f6ac5f7_fk_website_o` FOREIGN KEY (`organization_id`) REFERENCES `website_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_organization_phone`
--

LOCK TABLES `website_organization_phone` WRITE;
/*!40000 ALTER TABLE `website_organization_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_organization_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_organization_social`
--

DROP TABLE IF EXISTS `website_organization_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_organization_social` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` longtext NOT NULL,
  `social_media_type` smallint unsigned NOT NULL,
  `organization_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_organization_organization_id_9739f1d6_fk_website_o` (`organization_id`),
  CONSTRAINT `website_organization_organization_id_9739f1d6_fk_website_o` FOREIGN KEY (`organization_id`) REFERENCES `website_organization` (`id`),
  CONSTRAINT `website_organization_social_chk_1` CHECK ((`social_media_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_organization_social`
--

LOCK TABLES `website_organization_social` WRITE;
/*!40000 ALTER TABLE `website_organization_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_organization_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_predefined_skill`
--

DROP TABLE IF EXISTS `website_predefined_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_predefined_skill` (
  `code` smallint unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`code`),
  CONSTRAINT `website_predefined_skill_chk_1` CHECK ((`code` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_predefined_skill`
--

LOCK TABLES `website_predefined_skill` WRITE;
/*!40000 ALTER TABLE `website_predefined_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_predefined_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_predefined_task_trait`
--

DROP TABLE IF EXISTS `website_predefined_task_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_predefined_task_trait` (
  `code` smallint unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`code`),
  CONSTRAINT `website_predefined_task_trait_chk_1` CHECK ((`code` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_predefined_task_trait`
--

LOCK TABLES `website_predefined_task_trait` WRITE;
/*!40000 ALTER TABLE `website_predefined_task_trait` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_predefined_task_trait` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_predefined_trait_of_task`
--

DROP TABLE IF EXISTS `website_predefined_trait_of_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_predefined_trait_of_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `trait_code_id` smallint unsigned NOT NULL,
  `task_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_predefined_t_trait_code_id_53bb5af0_fk_website_p` (`trait_code_id`),
  KEY `website_predefined_t_task_id_572e3e37_fk_website_t` (`task_id`),
  CONSTRAINT `website_predefined_t_task_id_572e3e37_fk_website_t` FOREIGN KEY (`task_id`) REFERENCES `website_task` (`id`),
  CONSTRAINT `website_predefined_t_trait_code_id_53bb5af0_fk_website_p` FOREIGN KEY (`trait_code_id`) REFERENCES `website_predefined_task_trait` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_predefined_trait_of_task`
--

LOCK TABLES `website_predefined_trait_of_task` WRITE;
/*!40000 ALTER TABLE `website_predefined_trait_of_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_predefined_trait_of_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_task`
--

DROP TABLE IF EXISTS `website_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `location_lat` double DEFAULT NULL,
  `location_long` double DEFAULT NULL,
  `address_text` longtext,
  `datetime_created` datetime(6) NOT NULL,
  `datetime_planned` datetime(6) NOT NULL,
  `status` smallint unsigned NOT NULL,
  `asking_individual_id` bigint DEFAULT NULL,
  `category_id` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `website_task_asking_individual_id_03e0e138_fk_website_i` (`asking_individual_id`),
  KEY `website_task_category_id_751586d8_fk_website_task_category_code` (`category_id`),
  CONSTRAINT `website_task_asking_individual_id_03e0e138_fk_website_i` FOREIGN KEY (`asking_individual_id`) REFERENCES `website_individual` (`id`),
  CONSTRAINT `website_task_category_id_751586d8_fk_website_task_category_code` FOREIGN KEY (`category_id`) REFERENCES `website_task_category` (`code`),
  CONSTRAINT `website_task_chk_1` CHECK ((`status` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_task`
--

LOCK TABLES `website_task` WRITE;
/*!40000 ALTER TABLE `website_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_task_category`
--

DROP TABLE IF EXISTS `website_task_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_task_category` (
  `code` smallint unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_points` int NOT NULL,
  `max_points` int NOT NULL,
  PRIMARY KEY (`code`),
  CONSTRAINT `website_task_category_chk_1` CHECK ((`code` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_task_category`
--

LOCK TABLES `website_task_category` WRITE;
/*!40000 ALTER TABLE `website_task_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_task_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_task_custom_trait`
--

DROP TABLE IF EXISTS `website_task_custom_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_task_custom_trait` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `task_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_task_custom_trait_task_id_c4df50c9_fk_website_task_id` (`task_id`),
  CONSTRAINT `website_task_custom_trait_task_id_c4df50c9_fk_website_task_id` FOREIGN KEY (`task_id`) REFERENCES `website_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_task_custom_trait`
--

LOCK TABLES `website_task_custom_trait` WRITE;
/*!40000 ALTER TABLE `website_task_custom_trait` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_task_custom_trait` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_task_needed_skill`
--

DROP TABLE IF EXISTS `website_task_needed_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_task_needed_skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `skill_code_id` bigint NOT NULL,
  `task_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_task_needed__skill_code_id_60a117f5_fk_website_i` (`skill_code_id`),
  KEY `website_task_needed_skill_task_id_ffd5ca6e_fk_website_task_id` (`task_id`),
  CONSTRAINT `website_task_needed__skill_code_id_60a117f5_fk_website_i` FOREIGN KEY (`skill_code_id`) REFERENCES `website_individual_predefined_skill` (`id`),
  CONSTRAINT `website_task_needed_skill_task_id_ffd5ca6e_fk_website_task_id` FOREIGN KEY (`task_id`) REFERENCES `website_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_task_needed_skill`
--

LOCK TABLES `website_task_needed_skill` WRITE;
/*!40000 ALTER TABLE `website_task_needed_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_task_needed_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_volunteering`
--

DROP TABLE IF EXISTS `website_volunteering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_volunteering` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_accepted` tinyint(1) NOT NULL,
  `individual_id` bigint NOT NULL,
  `task_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_volunteering_individual_id_3ae8e482_fk_website_i` (`individual_id`),
  KEY `website_volunteering_task_id_a65a7950_fk_website_task_id` (`task_id`),
  CONSTRAINT `website_volunteering_individual_id_3ae8e482_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`),
  CONSTRAINT `website_volunteering_task_id_a65a7950_fk_website_task_id` FOREIGN KEY (`task_id`) REFERENCES `website_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_volunteering`
--

LOCK TABLES `website_volunteering` WRITE;
/*!40000 ALTER TABLE `website_volunteering` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_volunteering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_vulnerability_proof`
--

DROP TABLE IF EXISTS `website_vulnerability_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `website_vulnerability_proof` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vulnerability_type` smallint unsigned NOT NULL,
  `proof_document_number` longtext NOT NULL,
  `individual_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_vulnerabilit_individual_id_c807adde_fk_website_i` (`individual_id`),
  CONSTRAINT `website_vulnerabilit_individual_id_c807adde_fk_website_i` FOREIGN KEY (`individual_id`) REFERENCES `website_individual` (`id`),
  CONSTRAINT `website_vulnerability_proof_chk_1` CHECK ((`vulnerability_type` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_vulnerability_proof`
--

LOCK TABLES `website_vulnerability_proof` WRITE;
/*!40000 ALTER TABLE `website_vulnerability_proof` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_vulnerability_proof` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-25 19:33:24
