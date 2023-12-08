-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'tMGwr9BMFsPt0Ee973n3QT9RouqXApLA',1,'2023-11-19 00:36:10','2023-11-19 00:36:10','2023-11-19 00:36:10'),(2,2,'2mLKCFsKO5sbwFyZGLNfGI2zwlvCAUbn',1,'2023-11-19 00:36:10','2023-11-19 00:36:10','2023-11-19 00:36:10');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2028-11-19 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(2,'Make your Breakfast','2028-11-19 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(3,'The best Organic','2028-11-19 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(4,'Bring nature into your home','2028-11-19 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(5,'Delivered to your home','2028-11-19 00:00:00','not_set','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(6,'Save 17% on Oganic Juice','2028-11-19 00:00:00','not_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(7,'Everyday Fresh & Clean with Our Products','2028-11-19 00:00:00','not_set','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(8,'The best Organic Products Online','2028-11-19 00:00:00','not_set','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(9,'Everyday Fresh with Our Products','2028-11-19 00:00:00','not_set','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(10,'100% guaranteed all Fresh items','2028-11-19 00:00:00','not_set','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(11,'Special grocery sale off this month','2028-11-19 00:00:00','not_set','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL),(12,'Enjoy 15% OFF for all vegetable and fruit','2028-11-19 00:00:00','not_set','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Molestias laborum ea sapiente corporis ut quo. Molestiae eveniet inventore autem et voluptas. Velit odit similique iste maiores sunt blanditiis laborum quisquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(2,'Fashion',0,'Rerum molestiae dolore et ut quae omnis. Officia rerum nobis est voluptatem. Et placeat officiis velit placeat.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(3,'Electronic',0,'Nihil eum explicabo accusamus quae aperiam ut omnis. Fuga eligendi est alias ut. Quia reiciendis explicabo quia ut. Rerum quis rerum maxime hic suscipit ut aliquid ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(4,'Commercial',0,'Iure veniam qui et sit ut saepe. Est modi eum vel esse exercitationem optio. Ut quae ut iure. Odit est deserunt reprehenderit ducimus sint.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-11-19 00:36:09','2023-11-19 00:36:09');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2023-11-19 00:35:54','2023-11-19 00:35:54');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(2,'EUR','€',0,2,1,0,0.84,'2023-11-19 00:35:54','2023-11-19 00:35:54'),(3,'VND','₫',0,0,2,0,23203,'2023-11-19 00:35:54','2023-11-19 00:35:54');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Alberta Murazik','customer@botble.com','+15016502395','CO','Arkansas','Jenkinsbury','28556 Mike Streets Apt. 275',1,1,'2023-11-19 00:36:03','2023-11-19 00:36:03','32939-3176'),(2,'Alberta Murazik','customer@botble.com','+18786548123','MH','California','Christiansenport','54036 Strosin Branch Apt. 494',1,0,'2023-11-19 00:36:03','2023-11-19 00:36:03','47330'),(3,'Gussie Gulgowski II','vendor@botble.com','+19528207928','CW','Tennessee','New Esperanza','8769 Wuckert Mount Apt. 429',2,1,'2023-11-19 00:36:03','2023-11-19 00:36:03','32938'),(4,'Gussie Gulgowski II','vendor@botble.com','+15855657677','GW','Utah','Port Ignacio','491 Mckenzie Circle Suite 802',2,0,'2023-11-19 00:36:03','2023-11-19 00:36:03','77855-3938'),(5,'Ms. Anissa Doyle DDS','koelpin.alexys@example.net','+17434669042','LA','Massachusetts','Wunschfort','487 Murphy Alley',3,1,'2023-11-19 00:36:04','2023-11-19 00:36:04','33005-1298'),(6,'Erika Mraz','hessel.rylan@example.net','+18433881561','OM','South Carolina','Port Rosemary','85843 Ena Stream Suite 758',4,1,'2023-11-19 00:36:04','2023-11-19 00:36:04','46997-0194'),(7,'Perry Rohan','nadams@example.org','+16363470526','KY','Georgia','O\'Konfurt','9068 Reinger Valley Suite 815',5,1,'2023-11-19 00:36:04','2023-11-19 00:36:04','40417'),(8,'Lawson Willms','schneider.oral@example.org','+19202968424','GN','Wyoming','Ginotown','2004 Renner Valley Suite 306',6,1,'2023-11-19 00:36:04','2023-11-19 00:36:04','02076-2206'),(9,'Dr. Hadley Howe IV','johnston.sydni@example.org','+12545620597','BF','South Carolina','Assuntashire','2540 Maximo Skyway',7,1,'2023-11-19 00:36:05','2023-11-19 00:36:05','10154'),(10,'Prof. Eve Welch DDS','tcormier@example.net','+18785636093','RW','New York','Prohaskamouth','3655 Quigley Centers',8,1,'2023-11-19 00:36:05','2023-11-19 00:36:05','10304-5685'),(11,'Prof. Norberto Nolan','bode.peter@example.net','+12626252451','NA','Texas','Oceanefort','7568 Jeanne Stream',9,1,'2023-11-19 00:36:05','2023-11-19 00:36:05','86644-9675'),(12,'Ms. Lou Feest','godfrey89@example.org','+19296913832','AI','North Dakota','Lake Candice','67227 Bayer Prairie Apt. 904',10,1,'2023-11-19 00:36:05','2023-11-19 00:36:05','45817');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Alberta Murazik','customer@botble.com','$2y$12$bkyGEmoTTteK/GrBlQs4S.OLv3US8Dz30NDq5J/AZfPxFftqYi2CO','customers/9.jpg','1974-10-28','+12188551029',NULL,'2023-11-19 00:36:03','2023-11-19 00:36:03','2023-11-19 07:36:03',NULL,'activated',0,NULL),(2,'Gussie Gulgowski II','vendor@botble.com','$2y$12$CvNRgI31WeLEAIK1MlSMzOJuNvgikQ9tbJH7TrKaUX.wtdzF5Pa.q','customers/10.jpg','1981-11-16','+18475970591',NULL,'2023-11-19 00:36:03','2023-11-19 00:36:14','2023-11-19 07:36:03',NULL,'activated',1,'2023-11-19 07:36:14'),(3,'Ms. Anissa Doyle DDS','koelpin.alexys@example.net','$2y$12$tSZVs8Udq3cfYLTFZyr/Nua4Rx9U20IeCTFg6udOWi7uXKnGOEIH2','customers/1.jpg','1999-11-16','+14345933142',NULL,'2023-11-19 00:36:04','2023-11-19 00:36:04','2023-11-19 07:36:04',NULL,'activated',0,NULL),(4,'Erika Mraz','hessel.rylan@example.net','$2y$12$t74XSzvW0/Y/EjO.beW57eVgbzw4SK0GUQJvrejKi4lcs.YktBzdC','customers/2.jpg','1988-10-26','+14845264609',NULL,'2023-11-19 00:36:04','2023-11-19 00:36:04','2023-11-19 07:36:04',NULL,'activated',0,NULL),(5,'Perry Rohan','nadams@example.org','$2y$12$xeQ1Mo7dqopfOfvnWe7SUemMfTzXQw31ka7QLiz81Wd7ggevtf5k6','customers/3.jpg','1981-11-07','+12568161832',NULL,'2023-11-19 00:36:04','2023-11-19 00:36:14','2023-11-19 07:36:04',NULL,'activated',1,'2023-11-19 07:36:14'),(6,'Lawson Willms','schneider.oral@example.org','$2y$12$v8hBh/PgYTOLiXYCEJ.FGOFaCNu2cCAhwltrFUJYNnPfquLeBs6z6','customers/4.jpg','1998-10-26','+17167008762',NULL,'2023-11-19 00:36:04','2023-11-19 00:36:14','2023-11-19 07:36:04',NULL,'activated',1,'2023-11-19 07:36:14'),(7,'Dr. Hadley Howe IV','johnston.sydni@example.org','$2y$12$aSaEiXnR8D4k1cZXZsu6puyyHVwpE..JRzjmR5UWDkk.qcG0UJRhi','customers/5.jpg','1990-10-29','+19284827260',NULL,'2023-11-19 00:36:05','2023-11-19 00:36:05','2023-11-19 07:36:05',NULL,'activated',0,NULL),(8,'Prof. Eve Welch DDS','tcormier@example.net','$2y$12$CgTCOFvRooUXdsMr84K0QOrVKzRodQGka.C5n1ktVJBpXPMeJdjzG','customers/6.jpg','1974-11-03','+18026176055',NULL,'2023-11-19 00:36:05','2023-11-19 00:36:05','2023-11-19 07:36:05',NULL,'activated',0,NULL),(9,'Prof. Norberto Nolan','bode.peter@example.net','$2y$12$aYfhc7QOlOWFrD98guM3cuj2Ie6WzaOC8BfeXi3MdNThOUVbOiQia','customers/7.jpg','1999-11-10','+15648208418',NULL,'2023-11-19 00:36:05','2023-11-19 00:36:05','2023-11-19 07:36:05',NULL,'activated',0,NULL),(10,'Ms. Lou Feest','godfrey89@example.org','$2y$12$r01E61iH8S5gsZlg3ECnUeXt6QbrQ2btVVpoNxmaMHbfWxqzgCdTK','customers/8.jpg','1989-11-16','+14636132643',NULL,'2023-11-19 00:36:05','2023-11-19 00:36:05','2023-11-19 07:36:05',NULL,'activated',0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,16,79.12,11,3),(2,12,60.39,10,2),(3,6,36.04,16,3),(4,1,157.99,6,2),(5,6,42.4,11,1),(5,1,108.78,17,5),(5,2,174.9,13,1),(5,3,116.79,16,5),(5,4,46.0152,9,1),(5,5,13.8,14,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2023-12-16 00:00:00','published','2023-11-19 00:36:06','2023-11-19 00:36:06'),(2,'Winter Sale','2023-12-07 00:00:00','published','2023-11-19 00:36:06','2023-11-19 00:36:06'),(3,'Gadgets &amp; Accessories','2024-01-02 00:00:00','published','2023-11-19 00:36:06','2023-11-19 00:36:06'),(4,'Hot products','2023-12-15 00:00:00','published','2023-11-19 00:36:06','2023-11-19 00:36:06'),(5,'Best sale items','2023-12-05 00:00:00','published','2023-11-19 00:36:06','2023-11-19 00:36:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(1,2,'2 Year',10,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(1,3,'3 Year',20,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(2,4,'4GB',0,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(2,5,'8GB',10,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(2,6,'16GB',20,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(3,7,'Core i5',0,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(3,8,'Core i7',10,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(3,9,'Core i9',20,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(4,10,'128GB',0,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(4,11,'256GB',10,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(4,12,'512GB',20,9999,0,'2023-11-19 00:36:13','2023-11-19 00:36:13');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-11-19 00:36:13','2023-11-19 00:36:13'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-11-19 00:36:13','2023-11-19 00:36:13');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',69,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',2,118.00,236.00,0.00,0.00,236.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(2,1,'Botble\\Ecommerce\\Models\\Product',72,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20-1.jpg',2,111.00,222.00,0.00,0.00,222.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(3,1,'Botble\\Ecommerce\\Models\\Product',75,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',1,124.00,124.00,0.00,0.00,124.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(4,2,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',1,259.00,259.00,0.00,0.00,259.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(5,2,'Botble\\Ecommerce\\Models\\Product',49,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',1,112.00,112.00,0.00,0.00,112.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(6,3,'Botble\\Ecommerce\\Models\\Product',32,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',3,53.00,159.00,0.00,0.00,159.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(7,3,'Botble\\Ecommerce\\Models\\Product',51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',3,122.00,366.00,0.00,0.00,366.00,'[]','2023-11-19 00:36:15','2023-11-19 00:36:15'),(8,4,'Botble\\Ecommerce\\Models\\Product',27,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',1,229.00,229.00,0.00,0.00,229.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(9,5,'Botble\\Ecommerce\\Models\\Product',45,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10-1.jpg',2,386.00,772.00,0.00,0.00,772.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(10,6,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',2,112.00,224.00,0.00,0.00,224.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(11,6,'Botble\\Ecommerce\\Models\\Product',82,'Colorful Banana',NULL,'products/23.jpg',3,126.00,378.00,0.00,0.00,378.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(12,7,'Botble\\Ecommerce\\Models\\Product',26,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',2,265.00,530.00,0.00,0.00,530.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(13,7,'Botble\\Ecommerce\\Models\\Product',46,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',1,112.00,112.00,0.00,0.00,112.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(14,7,'Botble\\Ecommerce\\Models\\Product',49,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,112.00,336.00,0.00,0.00,336.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(15,8,'Botble\\Ecommerce\\Models\\Product',53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',2,110.00,220.00,0.00,0.00,220.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(16,9,'Botble\\Ecommerce\\Models\\Product',27,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',2,229.00,458.00,0.00,0.00,458.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(17,10,'Botble\\Ecommerce\\Models\\Product',37,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',1,122.00,122.00,0.00,0.00,122.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(18,11,'Botble\\Ecommerce\\Models\\Product',51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',3,122.00,366.00,0.00,0.00,366.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(19,11,'Botble\\Ecommerce\\Models\\Product',54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',3,110.00,330.00,0.00,0.00,330.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(20,12,'Botble\\Ecommerce\\Models\\Product',39,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',2,122.00,244.00,0.00,0.00,244.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(21,12,'Botble\\Ecommerce\\Models\\Product',49,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',1,112.00,112.00,0.00,0.00,112.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(22,13,'Botble\\Ecommerce\\Models\\Product',56,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',2,110.00,220.00,0.00,0.00,220.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(23,14,'Botble\\Ecommerce\\Models\\Product',65,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',3,126.00,378.00,0.00,0.00,378.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(24,15,'Botble\\Ecommerce\\Models\\Product',82,'Colorful Banana',NULL,'products/23.jpg',3,126.00,378.00,0.00,0.00,378.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(25,16,'Botble\\Ecommerce\\Models\\Product',53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',1,110.00,110.00,0.00,0.00,110.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(26,16,'Botble\\Ecommerce\\Models\\Product',55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',1,110.00,110.00,0.00,0.00,110.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(27,16,'Botble\\Ecommerce\\Models\\Product',72,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20-1.jpg',3,111.00,333.00,0.00,0.00,333.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(28,17,'Botble\\Ecommerce\\Models\\Product',57,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',1,110.00,110.00,0.00,0.00,110.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(29,18,'Botble\\Ecommerce\\Models\\Product',75,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',1,124.00,124.00,0.00,0.00,124.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(30,19,'Botble\\Ecommerce\\Models\\Product',58,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',3,110.00,330.00,0.00,0.00,330.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(31,20,'Botble\\Ecommerce\\Models\\Product',76,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22-1.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(32,21,'Botble\\Ecommerce\\Models\\Product',81,'Colorful Banana',NULL,'products/23-1.jpg',1,126.00,126.00,0.00,0.00,126.00,'[]','2023-11-19 00:36:16','2023-11-19 00:36:16'),(33,22,'Botble\\Ecommerce\\Models\\Product',27,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',2,229.00,458.00,0.00,0.00,458.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(34,23,'Botble\\Ecommerce\\Models\\Product',36,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',2,122.00,244.00,0.00,0.00,244.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(35,24,'Botble\\Ecommerce\\Models\\Product',52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12-1.jpg',2,122.00,244.00,0.00,0.00,244.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(36,24,'Botble\\Ecommerce\\Models\\Product',75,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(37,25,'Botble\\Ecommerce\\Models\\Product',63,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16-1.jpg',3,115.00,345.00,0.00,0.00,345.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(38,26,'Botble\\Ecommerce\\Models\\Product',83,'Colorful Banana',NULL,'products/23.jpg',2,126.00,252.00,0.00,0.00,252.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(39,27,'Botble\\Ecommerce\\Models\\Product',79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',1,124.00,124.00,0.00,0.00,124.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(40,28,'Botble\\Ecommerce\\Models\\Product',82,'Colorful Banana',NULL,'products/23.jpg',1,126.00,126.00,0.00,0.00,126.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(41,29,'Botble\\Ecommerce\\Models\\Product',26,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',3,265.00,795.00,0.00,0.00,795.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(42,30,'Botble\\Ecommerce\\Models\\Product',57,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',3,110.00,330.00,0.00,0.00,330.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(43,31,'Botble\\Ecommerce\\Models\\Product',71,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20.jpg',2,111.00,222.00,0.00,0.00,222.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(44,32,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',3,259.00,777.00,0.00,0.00,777.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(45,32,'Botble\\Ecommerce\\Models\\Product',80,'Colorful Banana',NULL,'products/23.jpg',1,126.00,126.00,0.00,0.00,126.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(46,33,'Botble\\Ecommerce\\Models\\Product',76,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22-1.jpg',3,124.00,372.00,0.00,0.00,372.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(47,34,'Botble\\Ecommerce\\Models\\Product',34,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',2,53.00,106.00,0.00,0.00,106.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(48,34,'Botble\\Ecommerce\\Models\\Product',70,'Simply Lemonade with Raspberry Juice',NULL,'products/19-1.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(49,34,'Botble\\Ecommerce\\Models\\Product',75,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(50,34,'Botble\\Ecommerce\\Models\\Product',77,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(51,35,'Botble\\Ecommerce\\Models\\Product',39,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',1,122.00,122.00,0.00,0.00,122.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(52,35,'Botble\\Ecommerce\\Models\\Product',81,'Colorful Banana',NULL,'products/23-1.jpg',2,126.00,252.00,0.00,0.00,252.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(53,36,'Botble\\Ecommerce\\Models\\Product',70,'Simply Lemonade with Raspberry Juice',NULL,'products/19-1.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(54,36,'Botble\\Ecommerce\\Models\\Product',79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(55,37,'Botble\\Ecommerce\\Models\\Product',31,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',3,46.00,138.00,0.00,0.00,138.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(56,37,'Botble\\Ecommerce\\Models\\Product',57,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',3,110.00,330.00,0.00,0.00,330.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(57,38,'Botble\\Ecommerce\\Models\\Product',59,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',2,121.00,242.00,0.00,0.00,242.00,'[]','2023-11-19 00:36:17','2023-11-19 00:36:17'),(58,39,'Botble\\Ecommerce\\Models\\Product',70,'Simply Lemonade with Raspberry Juice',NULL,'products/19-1.jpg',2,118.00,236.00,0.00,0.00,236.00,'[]','2023-11-19 00:36:18','2023-11-19 00:36:18'),(59,40,'Botble\\Ecommerce\\Models\\Product',74,'Chen Watermelon (Digital)',NULL,'products/21-1.jpg',1,123.00,123.00,0.00,0.00,123.00,'[]','2023-11-19 00:36:18','2023-11-19 00:36:18'),(60,41,'Botble\\Ecommerce\\Models\\Product',29,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,46.00,46.00,0.00,0.00,46.00,'[]','2023-11-19 00:36:18','2023-11-19 00:36:18'),(61,41,'Botble\\Ecommerce\\Models\\Product',57,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',3,110.00,330.00,0.00,0.00,330.00,'[]','2023-11-19 00:36:18','2023-11-19 00:36:18'),(62,42,'Botble\\Ecommerce\\Models\\Product',36,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',1,122.00,122.00,0.00,0.00,122.00,'[]','2023-11-19 00:36:18','2023-11-19 00:36:18');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Prof. Eve Welch DDS','',NULL,'tcormier@example.net','+18785636093','3655 Quigley Centers, Prohaskamouth, New York, RW',NULL,582.00,0.00,0.00,0.00,'1','default',NULL,NULL,582.00,NULL,1,'completed','2023-11-19 00:36:15','2023-11-02 08:36:15','2023-11-19 00:36:15'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Alberta Murazik','',NULL,'customer@botble.com','+15016502395','28556 Mike Streets Apt. 275, Jenkinsbury, Arkansas, CO',NULL,371.00,0.00,0.00,0.00,'1','default',NULL,NULL,371.00,NULL,2,'completed','2023-11-19 00:36:15','2023-11-07 22:36:15','2023-11-19 00:36:15'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Alberta Murazik','',NULL,'customer@botble.com','+15016502395','28556 Mike Streets Apt. 275, Jenkinsbury, Arkansas, CO',NULL,525.00,0.00,0.00,0.00,'1','default',NULL,NULL,525.00,NULL,3,'pending',NULL,'2023-11-09 12:36:15','2023-11-19 00:36:15'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,229.00,0.00,0.00,0.00,'1','default',NULL,NULL,229.00,NULL,4,'completed','2023-11-19 00:36:16','2023-11-04 00:36:15','2023-11-19 00:36:16'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,772.00,0.00,0.00,0.00,'1','default',NULL,NULL,772.00,NULL,5,'pending',NULL,'2023-11-08 12:36:16','2023-11-19 00:36:16'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,602.00,0.00,0.00,0.00,'1','default',NULL,NULL,602.00,NULL,6,'completed','2023-11-19 00:36:16','2023-11-04 00:36:16','2023-11-19 00:36:16'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,978.00,0.00,0.00,0.00,'1','default',NULL,NULL,978.00,NULL,7,'completed','2023-11-19 00:36:16','2023-11-09 02:36:16','2023-11-19 00:36:16'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,220.00,0.00,0.00,0.00,NULL,'',NULL,NULL,220.00,NULL,8,'pending',NULL,'2023-11-13 08:36:16','2023-11-19 00:36:16'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Alberta Murazik','',NULL,'customer@botble.com','+15016502395','28556 Mike Streets Apt. 275, Jenkinsbury, Arkansas, CO',NULL,458.00,0.00,0.00,0.00,'1','default',NULL,NULL,458.00,NULL,9,'completed','2023-11-19 00:36:16','2023-11-12 08:36:16','2023-11-19 00:36:16'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Alberta Murazik','',NULL,'customer@botble.com','+15016502395','28556 Mike Streets Apt. 275, Jenkinsbury, Arkansas, CO',NULL,122.00,0.00,0.00,0.00,'1','default',NULL,NULL,122.00,NULL,10,'completed','2023-11-19 00:36:16','2023-11-12 08:36:16','2023-11-19 00:36:16'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Alberta Murazik','',NULL,'customer@botble.com','+15016502395','28556 Mike Streets Apt. 275, Jenkinsbury, Arkansas, CO',NULL,696.00,0.00,0.00,0.00,'1','default',NULL,NULL,696.00,NULL,11,'pending',NULL,'2023-11-13 16:36:16','2023-11-19 00:36:16'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,356.00,0.00,0.00,0.00,'1','default',NULL,NULL,356.00,NULL,12,'completed','2023-11-19 00:36:16','2023-11-12 18:36:16','2023-11-19 00:36:16'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,220.00,0.00,0.00,0.00,'1','default',NULL,NULL,220.00,NULL,13,'completed','2023-11-19 00:36:16','2023-11-15 12:36:16','2023-11-19 00:36:16'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,378.00,0.00,0.00,0.00,NULL,'',NULL,NULL,378.00,NULL,14,'completed','2023-11-19 00:36:16','2023-11-17 20:36:16','2023-11-19 00:36:16'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,378.00,0.00,0.00,0.00,'1','default',NULL,NULL,378.00,NULL,15,'completed','2023-11-19 00:36:16','2023-11-17 20:36:16','2023-11-19 00:36:16'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Erika Mraz','',NULL,'hessel.rylan@example.net','+18433881561','85843 Ena Stream Suite 758, Port Rosemary, South Carolina, OM',NULL,553.00,0.00,0.00,0.00,'1','default',NULL,NULL,553.00,NULL,16,'pending',NULL,'2023-11-15 18:36:16','2023-11-19 00:36:16'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,110.00,0.00,0.00,0.00,'1','default',NULL,NULL,110.00,NULL,17,'pending',NULL,'2023-11-11 00:36:16','2023-11-19 00:36:16'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,124.00,0.00,0.00,0.00,'1','default',NULL,NULL,124.00,NULL,18,'pending',NULL,'2023-11-15 00:36:16','2023-11-19 00:36:16'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,330.00,0.00,0.00,0.00,'1','default',NULL,NULL,330.00,NULL,19,'completed','2023-11-19 00:36:16','2023-11-14 10:36:16','2023-11-19 00:36:16'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,248.00,0.00,0.00,0.00,'1','default',NULL,NULL,248.00,NULL,20,'pending',NULL,'2023-11-15 08:36:16','2023-11-19 00:36:16'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,126.00,0.00,0.00,0.00,'1','default',NULL,NULL,126.00,NULL,21,'completed','2023-11-19 00:36:16','2023-11-16 06:36:16','2023-11-19 00:36:16'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Ms. Lou Feest','',NULL,'godfrey89@example.org','+19296913832','67227 Bayer Prairie Apt. 904, Lake Candice, North Dakota, AI',NULL,458.00,0.00,0.00,0.00,'1','default',NULL,NULL,458.00,NULL,22,'pending',NULL,'2023-11-10 16:36:17','2023-11-19 00:36:17'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Ms. Lou Feest','',NULL,'godfrey89@example.org','+19296913832','67227 Bayer Prairie Apt. 904, Lake Candice, North Dakota, AI',NULL,244.00,0.00,0.00,0.00,'1','default',NULL,NULL,244.00,NULL,23,'completed','2023-11-19 00:36:17','2023-11-11 12:36:17','2023-11-19 00:36:17'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Ms. Lou Feest','',NULL,'godfrey89@example.org','+19296913832','67227 Bayer Prairie Apt. 904, Lake Candice, North Dakota, AI',NULL,492.00,0.00,0.00,0.00,'1','default',NULL,NULL,492.00,NULL,24,'completed','2023-11-19 00:36:17','2023-11-11 12:36:17','2023-11-19 00:36:17'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,345.00,0.00,0.00,0.00,'1','default',NULL,NULL,345.00,NULL,25,'completed','2023-11-19 00:36:17','2023-11-16 00:36:17','2023-11-19 00:36:17'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,252.00,0.00,0.00,0.00,'1','default',NULL,NULL,252.00,NULL,26,'completed','2023-11-19 00:36:17','2023-11-13 18:36:17','2023-11-19 00:36:17'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,124.00,0.00,0.00,0.00,'1','default',NULL,NULL,124.00,NULL,27,'pending',NULL,'2023-11-15 00:36:17','2023-11-19 00:36:17'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Prof. Norberto Nolan','',NULL,'bode.peter@example.net','+12626252451','7568 Jeanne Stream, Oceanefort, Texas, NA',NULL,126.00,0.00,0.00,0.00,'1','default',NULL,NULL,126.00,NULL,28,'pending',NULL,'2023-11-15 16:36:17','2023-11-19 00:36:17'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,795.00,0.00,0.00,0.00,'1','default',NULL,NULL,795.00,NULL,29,'completed','2023-11-19 00:36:17','2023-11-18 10:36:17','2023-11-19 00:36:17'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,330.00,0.00,0.00,0.00,'1','default',NULL,NULL,330.00,NULL,30,'completed','2023-11-19 00:36:17','2023-11-13 04:36:17','2023-11-19 00:36:17'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,222.00,0.00,0.00,0.00,'1','default',NULL,NULL,222.00,NULL,31,'completed','2023-11-19 00:36:17','2023-11-14 08:36:17','2023-11-19 00:36:17'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,903.00,0.00,0.00,0.00,'1','default',NULL,NULL,903.00,NULL,32,'pending',NULL,'2023-11-14 12:36:17','2023-11-19 00:36:17'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Ms. Anissa Doyle DDS','',NULL,'koelpin.alexys@example.net','+17434669042','487 Murphy Alley, Wunschfort, Massachusetts, LA',NULL,372.00,0.00,0.00,0.00,'1','default',NULL,NULL,372.00,NULL,33,'completed','2023-11-19 00:36:17','2023-11-15 12:36:17','2023-11-19 00:36:17'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Prof. Eve Welch DDS','',NULL,'tcormier@example.net','+18785636093','3655 Quigley Centers, Prohaskamouth, New York, RW',NULL,720.00,0.00,0.00,0.00,'1','default',NULL,NULL,720.00,NULL,34,'completed','2023-11-19 00:36:17','2023-11-18 14:36:17','2023-11-19 00:36:17'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Ms. Lou Feest','',NULL,'godfrey89@example.org','+19296913832','67227 Bayer Prairie Apt. 904, Lake Candice, North Dakota, AI',NULL,374.00,0.00,0.00,0.00,'1','default',NULL,NULL,374.00,NULL,35,'completed','2023-11-19 00:36:17','2023-11-17 00:36:17','2023-11-19 00:36:17'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Ms. Lou Feest','',NULL,'godfrey89@example.org','+19296913832','67227 Bayer Prairie Apt. 904, Lake Candice, North Dakota, AI',NULL,366.00,0.00,0.00,0.00,'1','default',NULL,NULL,366.00,NULL,36,'completed','2023-11-19 00:36:17','2023-11-17 16:36:17','2023-11-19 00:36:17'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,468.00,0.00,0.00,0.00,'1','default',NULL,NULL,468.00,NULL,37,'pending',NULL,'2023-11-18 18:36:17','2023-11-19 00:36:17'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Dr. Hadley Howe IV','',NULL,'johnston.sydni@example.org','+12545620597','2540 Maximo Skyway, Assuntashire, South Carolina, BF',NULL,242.00,0.00,0.00,0.00,'1','default',NULL,NULL,242.00,NULL,38,'completed','2023-11-19 00:36:17','2023-11-18 06:36:17','2023-11-19 00:36:17'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Erika Mraz','',NULL,'hessel.rylan@example.net','+18433881561','85843 Ena Stream Suite 758, Port Rosemary, South Carolina, OM',NULL,236.00,0.00,0.00,0.00,'1','default',NULL,NULL,236.00,NULL,39,'completed','2023-11-19 00:36:18','2023-11-18 20:36:18','2023-11-19 00:36:18'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Erika Mraz','',NULL,'hessel.rylan@example.net','+18433881561','85843 Ena Stream Suite 758, Port Rosemary, South Carolina, OM',NULL,123.00,0.00,0.00,0.00,NULL,'',NULL,NULL,123.00,NULL,40,'completed','2023-11-19 00:36:18','2023-11-17 16:36:18','2023-11-19 00:36:18'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Prof. Eve Welch DDS','',NULL,'tcormier@example.net','+18785636093','3655 Quigley Centers, Prohaskamouth, New York, RW',NULL,376.00,0.00,0.00,0.00,'1','default',NULL,NULL,376.00,NULL,41,'completed','2023-11-19 00:36:18','2023-11-18 16:36:18','2023-11-19 00:36:18'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Prof. Eve Welch DDS','',NULL,'tcormier@example.net','+18785636093','3655 Quigley Centers, Prohaskamouth, New York, RW',NULL,122.00,0.00,0.00,0.00,'1','default',NULL,NULL,122.00,NULL,42,'pending',NULL,'2023-11-18 12:36:18','2023-11-19 00:36:18');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Eve Welch DDS','+18785636093','tcormier@example.net','RW','New York','Prohaskamouth','3655 Quigley Centers',1,'10304-5685','shipping_address'),(2,'Alberta Murazik','+15016502395','customer@botble.com','CO','Arkansas','Jenkinsbury','28556 Mike Streets Apt. 275',2,'32939-3176','shipping_address'),(3,'Alberta Murazik','+15016502395','customer@botble.com','CO','Arkansas','Jenkinsbury','28556 Mike Streets Apt. 275',3,'32939-3176','shipping_address'),(4,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',4,'33005-1298','shipping_address'),(5,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',5,'33005-1298','shipping_address'),(6,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',6,'33005-1298','shipping_address'),(7,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',7,'33005-1298','shipping_address'),(8,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',8,'33005-1298','shipping_address'),(9,'Alberta Murazik','+15016502395','customer@botble.com','CO','Arkansas','Jenkinsbury','28556 Mike Streets Apt. 275',9,'32939-3176','shipping_address'),(10,'Alberta Murazik','+15016502395','customer@botble.com','CO','Arkansas','Jenkinsbury','28556 Mike Streets Apt. 275',10,'32939-3176','shipping_address'),(11,'Alberta Murazik','+15016502395','customer@botble.com','CO','Arkansas','Jenkinsbury','28556 Mike Streets Apt. 275',11,'32939-3176','shipping_address'),(12,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',12,'33005-1298','shipping_address'),(13,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',13,'86644-9675','shipping_address'),(14,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',14,'86644-9675','shipping_address'),(15,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',15,'86644-9675','shipping_address'),(16,'Erika Mraz','+18433881561','hessel.rylan@example.net','OM','South Carolina','Port Rosemary','85843 Ena Stream Suite 758',16,'46997-0194','shipping_address'),(17,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',17,'33005-1298','shipping_address'),(18,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',18,'33005-1298','shipping_address'),(19,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',19,'86644-9675','shipping_address'),(20,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',20,'86644-9675','shipping_address'),(21,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',21,'86644-9675','shipping_address'),(22,'Ms. Lou Feest','+19296913832','godfrey89@example.org','AI','North Dakota','Lake Candice','67227 Bayer Prairie Apt. 904',22,'45817','shipping_address'),(23,'Ms. Lou Feest','+19296913832','godfrey89@example.org','AI','North Dakota','Lake Candice','67227 Bayer Prairie Apt. 904',23,'45817','shipping_address'),(24,'Ms. Lou Feest','+19296913832','godfrey89@example.org','AI','North Dakota','Lake Candice','67227 Bayer Prairie Apt. 904',24,'45817','shipping_address'),(25,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',25,'10154','shipping_address'),(26,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',26,'10154','shipping_address'),(27,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',27,'86644-9675','shipping_address'),(28,'Prof. Norberto Nolan','+12626252451','bode.peter@example.net','NA','Texas','Oceanefort','7568 Jeanne Stream',28,'86644-9675','shipping_address'),(29,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',29,'10154','shipping_address'),(30,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',30,'10154','shipping_address'),(31,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',31,'10154','shipping_address'),(32,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',32,'33005-1298','shipping_address'),(33,'Ms. Anissa Doyle DDS','+17434669042','koelpin.alexys@example.net','LA','Massachusetts','Wunschfort','487 Murphy Alley',33,'33005-1298','shipping_address'),(34,'Prof. Eve Welch DDS','+18785636093','tcormier@example.net','RW','New York','Prohaskamouth','3655 Quigley Centers',34,'10304-5685','shipping_address'),(35,'Ms. Lou Feest','+19296913832','godfrey89@example.org','AI','North Dakota','Lake Candice','67227 Bayer Prairie Apt. 904',35,'45817','shipping_address'),(36,'Ms. Lou Feest','+19296913832','godfrey89@example.org','AI','North Dakota','Lake Candice','67227 Bayer Prairie Apt. 904',36,'45817','shipping_address'),(37,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',37,'10154','shipping_address'),(38,'Dr. Hadley Howe IV','+12545620597','johnston.sydni@example.org','BF','South Carolina','Assuntashire','2540 Maximo Skyway',38,'10154','shipping_address'),(39,'Erika Mraz','+18433881561','hessel.rylan@example.net','OM','South Carolina','Port Rosemary','85843 Ena Stream Suite 758',39,'46997-0194','shipping_address'),(40,'Erika Mraz','+18433881561','hessel.rylan@example.net','OM','South Carolina','Port Rosemary','85843 Ena Stream Suite 758',40,'46997-0194','shipping_address'),(41,'Prof. Eve Welch DDS','+18785636093','tcormier@example.net','RW','New York','Prohaskamouth','3655 Quigley Centers',41,'10304-5685','shipping_address'),(42,'Prof. Eve Welch DDS','+18785636093','tcormier@example.net','RW','New York','Prohaskamouth','3655 Quigley Centers',42,'10304-5685','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-11-02 08:36:15','2023-11-02 08:36:15'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-11-02 08:36:15','2023-11-02 08:36:15'),(3,'confirm_payment','Payment was confirmed (amount $582.00) by %user_name%',0,1,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-11-07 22:36:15','2023-11-07 22:36:15'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-11-07 22:36:15','2023-11-07 22:36:15'),(7,'confirm_payment','Payment was confirmed (amount $371.00) by %user_name%',0,2,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-11-09 12:36:15','2023-11-09 12:36:15'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-11-09 12:36:15','2023-11-09 12:36:15'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(12,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-11-04 00:36:15','2023-11-04 00:36:15'),(13,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-11-04 00:36:15','2023-11-04 00:36:15'),(14,'confirm_payment','Payment was confirmed (amount $229.00) by %user_name%',0,4,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(15,'create_shipment','Created shipment for order',0,4,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-11-08 12:36:16','2023-11-08 12:36:16'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-11-08 12:36:16','2023-11-08 12:36:16'),(19,'create_shipment','Created shipment for order',0,5,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-11-04 00:36:16','2023-11-04 00:36:16'),(21,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-11-04 00:36:16','2023-11-04 00:36:16'),(22,'confirm_payment','Payment was confirmed (amount $602.00) by %user_name%',0,6,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(23,'create_shipment','Created shipment for order',0,6,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-11-09 02:36:16','2023-11-09 02:36:16'),(25,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-11-09 02:36:16','2023-11-09 02:36:16'),(26,'confirm_payment','Payment was confirmed (amount $978.00) by %user_name%',0,7,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(27,'create_shipment','Created shipment for order',0,7,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-11-13 08:36:16','2023-11-13 08:36:16'),(29,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-11-13 08:36:16','2023-11-13 08:36:16'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-11-12 08:36:16','2023-11-12 08:36:16'),(31,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-11-12 08:36:16','2023-11-12 08:36:16'),(32,'confirm_payment','Payment was confirmed (amount $458.00) by %user_name%',0,9,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(33,'create_shipment','Created shipment for order',0,9,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-11-12 08:36:16','2023-11-12 08:36:16'),(36,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-11-12 08:36:16','2023-11-12 08:36:16'),(37,'confirm_payment','Payment was confirmed (amount $122.00) by %user_name%',0,10,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(38,'create_shipment','Created shipment for order',0,10,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-11-13 16:36:16','2023-11-13 16:36:16'),(40,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-11-13 16:36:16','2023-11-13 16:36:16'),(41,'create_shipment','Created shipment for order',0,11,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-11-12 18:36:16','2023-11-12 18:36:16'),(44,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-11-12 18:36:16','2023-11-12 18:36:16'),(45,'confirm_payment','Payment was confirmed (amount $356.00) by %user_name%',0,12,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(46,'create_shipment','Created shipment for order',0,12,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-11-15 12:36:16','2023-11-15 12:36:16'),(48,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-11-15 12:36:16','2023-11-15 12:36:16'),(49,'confirm_payment','Payment was confirmed (amount $220.00) by %user_name%',0,13,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(50,'create_shipment','Created shipment for order',0,13,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-11-17 20:36:16','2023-11-17 20:36:16'),(52,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-11-17 20:36:16','2023-11-17 20:36:16'),(53,'confirm_payment','Payment was confirmed (amount $378.00) by %user_name%',0,14,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(54,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,14,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-11-17 20:36:16','2023-11-17 20:36:16'),(56,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-11-17 20:36:16','2023-11-17 20:36:16'),(57,'confirm_payment','Payment was confirmed (amount $378.00) by %user_name%',0,15,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(58,'create_shipment','Created shipment for order',0,15,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-11-15 18:36:16','2023-11-15 18:36:16'),(60,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-11-15 18:36:16','2023-11-15 18:36:16'),(61,'create_shipment','Created shipment for order',0,16,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-11-11 00:36:16','2023-11-11 00:36:16'),(64,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-11-11 00:36:16','2023-11-11 00:36:16'),(65,'create_shipment','Created shipment for order',0,17,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-11-15 00:36:16','2023-11-15 00:36:16'),(68,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-11-15 00:36:16','2023-11-15 00:36:16'),(69,'create_shipment','Created shipment for order',0,18,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(70,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-11-14 10:36:16','2023-11-14 10:36:16'),(72,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-11-14 10:36:16','2023-11-14 10:36:16'),(73,'confirm_payment','Payment was confirmed (amount $330.00) by %user_name%',0,19,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(74,'create_shipment','Created shipment for order',0,19,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-11-15 08:36:16','2023-11-15 08:36:16'),(76,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-11-15 08:36:16','2023-11-15 08:36:16'),(77,'create_shipment','Created shipment for order',0,20,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-11-16 06:36:16','2023-11-16 06:36:16'),(80,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-11-16 06:36:16','2023-11-16 06:36:16'),(81,'confirm_payment','Payment was confirmed (amount $126.00) by %user_name%',0,21,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16'),(82,'create_shipment','Created shipment for order',0,21,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-11-10 16:36:17','2023-11-10 16:36:17'),(84,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-11-10 16:36:17','2023-11-10 16:36:17'),(85,'create_shipment','Created shipment for order',0,22,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-11-11 12:36:17','2023-11-11 12:36:17'),(88,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-11-11 12:36:17','2023-11-11 12:36:17'),(89,'confirm_payment','Payment was confirmed (amount $244.00) by %user_name%',0,23,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(90,'create_shipment','Created shipment for order',0,23,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-11-11 12:36:17','2023-11-11 12:36:17'),(93,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-11-11 12:36:17','2023-11-11 12:36:17'),(94,'confirm_payment','Payment was confirmed (amount $492.00) by %user_name%',0,24,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(95,'create_shipment','Created shipment for order',0,24,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-11-16 00:36:17','2023-11-16 00:36:17'),(98,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-11-16 00:36:17','2023-11-16 00:36:17'),(99,'confirm_payment','Payment was confirmed (amount $345.00) by %user_name%',0,25,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(100,'create_shipment','Created shipment for order',0,25,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(102,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-11-13 18:36:17','2023-11-13 18:36:17'),(103,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-11-13 18:36:17','2023-11-13 18:36:17'),(104,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,26,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(105,'create_shipment','Created shipment for order',0,26,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(106,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(107,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-11-15 00:36:17','2023-11-15 00:36:17'),(108,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-11-15 00:36:17','2023-11-15 00:36:17'),(109,'create_shipment','Created shipment for order',0,27,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-11-15 16:36:17','2023-11-15 16:36:17'),(111,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-11-15 16:36:17','2023-11-15 16:36:17'),(112,'create_shipment','Created shipment for order',0,28,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(113,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-11-18 10:36:17','2023-11-18 10:36:17'),(114,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-11-18 10:36:17','2023-11-18 10:36:17'),(115,'confirm_payment','Payment was confirmed (amount $795.00) by %user_name%',0,29,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(116,'create_shipment','Created shipment for order',0,29,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(117,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-11-13 04:36:17','2023-11-13 04:36:17'),(119,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-11-13 04:36:17','2023-11-13 04:36:17'),(120,'confirm_payment','Payment was confirmed (amount $330.00) by %user_name%',0,30,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(121,'create_shipment','Created shipment for order',0,30,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-11-14 08:36:17','2023-11-14 08:36:17'),(123,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-11-14 08:36:17','2023-11-14 08:36:17'),(124,'confirm_payment','Payment was confirmed (amount $222.00) by %user_name%',0,31,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(125,'create_shipment','Created shipment for order',0,31,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-11-14 12:36:17','2023-11-14 12:36:17'),(127,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-11-14 12:36:17','2023-11-14 12:36:17'),(128,'create_shipment','Created shipment for order',0,32,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-11-15 12:36:17','2023-11-15 12:36:17'),(130,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-11-15 12:36:17','2023-11-15 12:36:17'),(131,'confirm_payment','Payment was confirmed (amount $372.00) by %user_name%',0,33,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(132,'create_shipment','Created shipment for order',0,33,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-11-18 14:36:17','2023-11-18 14:36:17'),(134,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-11-18 14:36:17','2023-11-18 14:36:17'),(135,'confirm_payment','Payment was confirmed (amount $720.00) by %user_name%',0,34,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(136,'create_shipment','Created shipment for order',0,34,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(137,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-11-17 00:36:17','2023-11-17 00:36:17'),(139,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-11-17 00:36:17','2023-11-17 00:36:17'),(140,'confirm_payment','Payment was confirmed (amount $374.00) by %user_name%',0,35,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(141,'create_shipment','Created shipment for order',0,35,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-11-17 16:36:17','2023-11-17 16:36:17'),(143,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-11-17 16:36:17','2023-11-17 16:36:17'),(144,'confirm_payment','Payment was confirmed (amount $366.00) by %user_name%',0,36,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(145,'create_shipment','Created shipment for order',0,36,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-11-18 18:36:17','2023-11-18 18:36:17'),(147,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-11-18 18:36:17','2023-11-18 18:36:17'),(148,'create_shipment','Created shipment for order',0,37,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(149,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-11-18 06:36:17','2023-11-18 06:36:17'),(151,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-11-18 06:36:17','2023-11-18 06:36:17'),(152,'confirm_payment','Payment was confirmed (amount $242.00) by %user_name%',0,38,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(153,'create_shipment','Created shipment for order',0,38,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(154,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-11-18 20:36:18','2023-11-18 20:36:18'),(156,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-11-18 20:36:18','2023-11-18 20:36:18'),(157,'confirm_payment','Payment was confirmed (amount $236.00) by %user_name%',0,39,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(158,'create_shipment','Created shipment for order',0,39,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-11-17 16:36:18','2023-11-17 16:36:18'),(160,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-11-17 16:36:18','2023-11-17 16:36:18'),(161,'confirm_payment','Payment was confirmed (amount $123.00) by %user_name%',0,40,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(162,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,40,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-11-18 16:36:18','2023-11-18 16:36:18'),(164,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-11-18 16:36:18','2023-11-18 16:36:18'),(165,'confirm_payment','Payment was confirmed (amount $376.00) by %user_name%',0,41,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(166,'create_shipment','Created shipment for order',0,41,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-11-18 12:36:18','2023-11-18 12:36:18'),(168,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-11-18 12:36:18','2023-11-18 12:36:18'),(169,'create_shipment','Created shipment for order',0,42,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(170,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(171,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(172,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18'),(173,'update_status','Order confirmed by %user_name%',0,23,NULL,'2023-11-19 00:36:19','2023-11-19 00:36:19'),(174,'update_status','Order confirmed by %user_name%',0,24,NULL,'2023-11-19 00:36:19','2023-11-19 00:36:19'),(175,'update_status','Order confirmed by %user_name%',0,25,NULL,'2023-11-19 00:36:20','2023-11-19 00:36:20'),(176,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-11-19 00:36:20','2023-11-19 00:36:20'),(177,'update_status','Order confirmed by %user_name%',0,29,NULL,'2023-11-19 00:36:21','2023-11-19 00:36:21'),(178,'update_status','Order confirmed by %user_name%',0,34,NULL,'2023-11-19 00:36:21','2023-11-19 00:36:21'),(179,'update_status','Order confirmed by %user_name%',0,38,NULL,'2023-11-19 00:36:22','2023-11-19 00:36:22');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,2,118.00,0.00,'[]',NULL,69,'Simply Lemonade with Raspberry Juice','products/19.jpg',1292.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(2,1,2,111.00,0.00,'[]',NULL,72,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1206.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(3,1,1,124.00,0.00,'[]',NULL,75,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',595.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(4,2,1,259.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',749.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','digital',4,NULL),(5,2,1,112.00,0.00,'[]',NULL,49,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',850.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(6,3,3,53.00,0.00,'[]',NULL,32,'Chobani Complete Vanilla Greek','products/6.jpg',1581.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(7,3,3,122.00,0.00,'[]',NULL,51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',1533.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(8,4,1,229.00,0.00,'[]',NULL,27,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',841.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','physical',0,NULL),(9,5,2,386.00,0.00,'[]',NULL,45,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',1090.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(10,6,2,112.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1700.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(11,6,3,126.00,0.00,'[]',NULL,82,'Colorful Banana','products/23.jpg',2496.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(12,7,2,265.00,0.00,'[]',NULL,26,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1118.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(13,7,1,112.00,0.00,'[]',NULL,46,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',850.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(14,7,3,112.00,0.00,'[]',NULL,49,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',2550.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(15,8,2,110.00,0.00,'[]',NULL,53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',1432.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','digital',1,NULL),(16,9,2,229.00,0.00,'[]',NULL,27,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',1682.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(17,10,1,122.00,0.00,'[]',NULL,37,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',539.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(18,11,3,122.00,0.00,'[]',NULL,51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',1533.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(19,11,3,110.00,0.00,'[]',NULL,54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',2148.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','digital',4,NULL),(20,12,2,122.00,0.00,'[]',NULL,39,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1078.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(21,12,1,112.00,0.00,'[]',NULL,49,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',850.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(22,13,2,110.00,0.00,'[]',NULL,56,'Organic Frozen Triple Berry Blend','products/14.jpg',1270.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(23,14,3,126.00,0.00,'[]',NULL,65,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',1776.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','digital',8,NULL),(24,15,3,126.00,0.00,'[]',NULL,82,'Colorful Banana','products/23.jpg',2496.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(25,16,1,110.00,0.00,'[]',NULL,53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',716.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','digital',2,NULL),(26,16,1,110.00,0.00,'[]',NULL,55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',716.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','digital',9,NULL),(27,16,3,111.00,0.00,'[]',NULL,72,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1809.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(28,17,1,110.00,0.00,'[]',NULL,57,'Organic Frozen Triple Berry Blend','products/14-1.jpg',635.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(29,18,1,124.00,0.00,'[]',NULL,75,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',595.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(30,19,3,110.00,0.00,'[]',NULL,58,'Organic Frozen Triple Berry Blend','products/14.jpg',1905.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(31,20,2,124.00,0.00,'[]',NULL,76,'Organic Cage-Free Grade A Large Brown Eggs','products/22-1.jpg',1190.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(32,21,1,126.00,0.00,'[]',NULL,81,'Colorful Banana','products/23-1.jpg',832.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','physical',0,NULL),(33,22,2,229.00,0.00,'[]',NULL,27,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',1682.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(34,23,2,122.00,0.00,'[]',NULL,36,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',1078.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(35,24,2,122.00,0.00,'[]',NULL,52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',1022.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(36,24,2,124.00,0.00,'[]',NULL,75,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',1190.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(37,25,3,115.00,0.00,'[]',NULL,63,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-1.jpg',2160.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(38,26,2,126.00,0.00,'[]',NULL,83,'Colorful Banana','products/23.jpg',1664.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(39,27,1,124.00,0.00,'[]',NULL,79,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',595.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(40,28,1,126.00,0.00,'[]',NULL,82,'Colorful Banana','products/23.jpg',832.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(41,29,3,265.00,0.00,'[]',NULL,26,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1677.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(42,30,3,110.00,0.00,'[]',NULL,57,'Organic Frozen Triple Berry Blend','products/14-1.jpg',1905.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(43,31,2,111.00,0.00,'[]',NULL,71,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',1206.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(44,32,3,259.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',2247.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','digital',2,NULL),(45,32,1,126.00,0.00,'[]',NULL,80,'Colorful Banana','products/23.jpg',832.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(46,33,3,124.00,0.00,'[]',NULL,76,'Organic Cage-Free Grade A Large Brown Eggs','products/22-1.jpg',1785.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(47,34,2,53.00,0.00,'[]',NULL,34,'Chobani Complete Vanilla Greek','products/6.jpg',1054.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(48,34,1,118.00,0.00,'[]',NULL,70,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',646.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(49,34,2,124.00,0.00,'[]',NULL,75,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',1190.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(50,34,2,124.00,0.00,'[]',NULL,77,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',1190.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(51,35,1,122.00,0.00,'[]',NULL,39,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',539.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(52,35,2,126.00,0.00,'[]',NULL,81,'Colorful Banana','products/23-1.jpg',1664.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(53,36,1,118.00,0.00,'[]',NULL,70,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',646.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(54,36,2,124.00,0.00,'[]',NULL,79,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',1190.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(55,37,3,46.00,0.00,'[]',NULL,31,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',2589.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','digital',0,NULL),(56,37,3,110.00,0.00,'[]',NULL,57,'Organic Frozen Triple Berry Blend','products/14-1.jpg',1905.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(57,38,2,121.00,0.00,'[]',NULL,59,'Oroweat Country Buttermilk Bread','products/15.jpg',1428.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','physical',0,NULL),(58,39,2,118.00,0.00,'[]',NULL,70,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',1292.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','physical',0,NULL),(59,40,1,123.00,0.00,'[]',NULL,74,'Chen Watermelon (Digital)','products/21-1.jpg',518.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','digital',8,NULL),(60,41,1,46.00,0.00,'[]',NULL,29,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',863.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','digital',0,NULL),(61,41,3,110.00,0.00,'[]',NULL,57,'Organic Frozen Triple Berry Blend','products/14-1.jpg',1905.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','physical',0,NULL),(62,42,1,122.00,0.00,'[]',NULL,36,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',539.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return ID',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product ID',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product ID',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',8,'1','default','pending',582.00,0.00,0.00,NULL,NULL,0.00,582.00,1,NULL,1,NULL,'jMCKcAlLWp5eu6Mufwg9NJOfel70u',1,'2023-11-02 08:36:15','2023-11-19 00:36:15',1),(2,'#10000002',1,'1','default','pending',371.00,0.00,0.00,NULL,NULL,0.00,371.00,1,NULL,1,NULL,'aAzMD7TQU6PI4B9yQqxc2yVOzlE3b',2,'2023-11-07 22:36:15','2023-11-19 00:36:15',2),(3,'#10000003',1,'1','default','pending',525.00,0.00,0.00,NULL,NULL,0.00,525.00,1,NULL,1,NULL,'ZolfC3CUkfpOc2PzihPVWqLICXPzs',3,'2023-11-09 12:36:15','2023-11-19 00:36:15',1),(4,'#10000004',3,'1','default','completed',229.00,0.00,0.00,NULL,NULL,0.00,229.00,1,NULL,1,'2023-11-19 00:36:18','WAJwO5EMeS60cb8t3IwwMsQUFXoED',4,'2023-11-04 00:36:15','2023-11-19 00:36:18',3),(5,'#10000005',3,'1','default','pending',772.00,0.00,0.00,NULL,NULL,0.00,772.00,1,NULL,1,NULL,'UI1oIiKQ7JQrKQGlcetUwfB5mAp9T',5,'2023-11-08 12:36:16','2023-11-19 00:36:16',1),(6,'#10000006',3,'1','default','pending',602.00,0.00,0.00,NULL,NULL,0.00,602.00,1,NULL,1,NULL,'fYAz1ct7ZcF81SOnAxs3hXeIaNlNS',6,'2023-11-04 00:36:16','2023-11-19 00:36:16',2),(7,'#10000007',3,'1','default','pending',978.00,0.00,0.00,NULL,NULL,0.00,978.00,1,NULL,1,NULL,'CwijUtls2Ynkb1cyg0NUovBMOopWB',7,'2023-11-09 02:36:16','2023-11-19 00:36:16',2),(8,'#10000008',3,NULL,'','pending',220.00,0.00,0.00,NULL,NULL,0.00,220.00,1,NULL,1,NULL,'tUoOss37NoCahkItEVxFFuxxIdxkq',8,'2023-11-13 08:36:16','2023-11-19 00:36:16',1),(9,'#10000009',1,'1','default','completed',458.00,0.00,0.00,NULL,NULL,0.00,458.00,1,NULL,1,'2023-11-19 00:36:18','AXrRkYRdJTD0O2vslr8HD7eyTVPBX',9,'2023-11-12 08:36:16','2023-11-19 00:36:18',3),(10,'#10000010',1,'1','default','pending',122.00,0.00,0.00,NULL,NULL,0.00,122.00,1,NULL,1,NULL,'Emh372I1jn3QCGP20kouRaXxRqoaC',10,'2023-11-12 08:36:16','2023-11-19 00:36:16',2),(11,'#10000011',1,'1','default','completed',696.00,0.00,0.00,NULL,NULL,0.00,696.00,1,NULL,1,'2023-11-19 00:36:16','kfxUVbj9owQH06WHntLy5b62MICmA',11,'2023-11-13 16:36:16','2023-11-19 00:36:16',1),(12,'#10000012',3,'1','default','pending',356.00,0.00,0.00,NULL,NULL,0.00,356.00,1,NULL,1,NULL,'suk7NdukdgZQxLqqg9AXoYrFacRL5',12,'2023-11-12 18:36:16','2023-11-19 00:36:16',2),(13,'#10000013',9,'1','default','pending',220.00,0.00,0.00,NULL,NULL,0.00,220.00,1,NULL,1,NULL,'d34BK4eT35ZxGAPaIzzaCJD7pQIAL',13,'2023-11-15 12:36:16','2023-11-19 00:36:16',3),(14,'#10000014',9,NULL,'','completed',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2023-11-19 00:36:16','pxrQg7MSCvBHsdUR6bHwgWbgpmdhY',14,'2023-11-17 20:36:16','2023-11-19 00:36:16',1),(15,'#10000015',9,'1','default','pending',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,NULL,'gi86OttDMOpoz2tCsA1XhWRASIyKi',15,'2023-11-17 20:36:16','2023-11-19 00:36:16',2),(16,'#10000016',4,'1','default','completed',553.00,0.00,0.00,NULL,NULL,0.00,553.00,1,NULL,1,'2023-11-19 00:36:16','i47GLzyfdnwPawc50PwwNM4B2rnFI',16,'2023-11-15 18:36:16','2023-11-19 00:36:16',1),(17,'#10000017',3,'1','default','completed',110.00,0.00,0.00,NULL,NULL,0.00,110.00,1,NULL,1,'2023-11-19 00:36:16','0KkIyXzlLYMq2UHAftGgM57AsoXRT',17,'2023-11-11 00:36:16','2023-11-19 00:36:16',3),(18,'#10000018',3,'1','default','completed',124.00,0.00,0.00,NULL,NULL,0.00,124.00,1,NULL,1,'2023-11-19 00:36:16','knjQYlu9HaltV4DM2IoupOJpubkIO',18,'2023-11-15 00:36:16','2023-11-19 00:36:16',1),(19,'#10000019',9,'1','default','pending',330.00,0.00,0.00,NULL,NULL,0.00,330.00,1,NULL,1,NULL,'1kZlYoDesjqmHuuJS9rJtA5DZWxJs',19,'2023-11-14 10:36:16','2023-11-19 00:36:16',3),(20,'#10000020',9,'1','default','completed',248.00,0.00,0.00,NULL,NULL,0.00,248.00,1,NULL,1,'2023-11-19 00:36:16','FhmeKfzEwE7ZajQA5u9RSSKQlALUI',20,'2023-11-15 08:36:16','2023-11-19 00:36:16',1),(21,'#10000021',9,'1','default','pending',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,NULL,'yEb7TlYPtibaYmKqFxVWMvjylknkb',21,'2023-11-16 06:36:16','2023-11-19 00:36:16',2),(22,'#10000022',10,'1','default','completed',458.00,0.00,0.00,NULL,NULL,0.00,458.00,1,NULL,1,'2023-11-19 00:36:17','Cvqn7xQjHcQXExiM6juxglOt1kP4N',22,'2023-11-10 16:36:17','2023-11-19 00:36:17',3),(23,'#10000023',10,'1','default','completed',244.00,0.00,0.00,NULL,NULL,0.00,244.00,1,NULL,1,'2023-11-19 00:36:19','UgkYGe1EqZO8jCwoc8IZzIPxuJcM3',23,'2023-11-11 12:36:17','2023-11-19 00:36:19',2),(24,'#10000024',10,'1','default','completed',492.00,0.00,0.00,NULL,NULL,0.00,492.00,1,NULL,1,'2023-11-19 00:36:19','ATNsAXGK55cOTVWkajh8DKdcnPd2E',24,'2023-11-11 12:36:17','2023-11-19 00:36:19',1),(25,'#10000025',7,'1','default','completed',345.00,0.00,0.00,NULL,NULL,0.00,345.00,1,NULL,1,'2023-11-19 00:36:20','NFqsKmMi0wRWLaZhuGYM6IfH4wQuC',25,'2023-11-16 00:36:17','2023-11-19 00:36:20',3),(26,'#10000026',7,'1','default','completed',252.00,0.00,0.00,NULL,NULL,0.00,252.00,1,NULL,1,'2023-11-19 00:36:20','QlCdyaFGjjRldCH781gdXQndlvu5q',26,'2023-11-13 18:36:17','2023-11-19 00:36:20',2),(27,'#10000027',9,'1','default','pending',124.00,0.00,0.00,NULL,NULL,0.00,124.00,1,NULL,1,NULL,'tN1cm2V38RIIoLTcaKPrgzIyb9rUk',27,'2023-11-15 00:36:17','2023-11-19 00:36:17',1),(28,'#10000028',9,'1','default','pending',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,NULL,'pP4x0z0I2oTinnBzZwxwucMFk9AbM',28,'2023-11-15 16:36:17','2023-11-19 00:36:17',2),(29,'#10000029',7,'1','default','completed',795.00,0.00,0.00,NULL,NULL,0.00,795.00,1,NULL,1,'2023-11-19 00:36:21','WV84D1IJzfmEOf9BU1dnBsiCwgyxq',29,'2023-11-18 10:36:17','2023-11-19 00:36:21',2),(30,'#10000030',7,'1','default','pending',330.00,0.00,0.00,NULL,NULL,0.00,330.00,1,NULL,1,NULL,'iH4ZCRo6GSmhvsmUXKSzVu3rquiBo',30,'2023-11-13 04:36:17','2023-11-19 00:36:17',3),(31,'#10000031',7,'1','default','pending',222.00,0.00,0.00,NULL,NULL,0.00,222.00,1,NULL,1,NULL,'mWU7AZgiTsvg7pebBXgFl6dc8uTot',31,'2023-11-14 08:36:17','2023-11-19 00:36:17',1),(32,'#10000032',3,'1','default','pending',903.00,0.00,0.00,NULL,NULL,0.00,903.00,1,NULL,1,NULL,'URaQp0c0ZHXCuRUfmcrT0OHqJpNoU',32,'2023-11-14 12:36:17','2023-11-19 00:36:17',2),(33,'#10000033',3,'1','default','pending',372.00,0.00,0.00,NULL,NULL,0.00,372.00,1,NULL,1,NULL,'4KNzNiKgExmxbYVGuUBjqSKjxsuOV',33,'2023-11-15 12:36:17','2023-11-19 00:36:17',1),(34,'#10000034',8,'1','default','completed',720.00,0.00,0.00,NULL,NULL,0.00,720.00,1,NULL,1,'2023-11-19 00:36:21','9dgmfoc7i7aIArrhy2UleShTUV7Mu',34,'2023-11-18 14:36:17','2023-11-19 00:36:21',1),(35,'#10000035',10,'1','default','pending',374.00,0.00,0.00,NULL,NULL,0.00,374.00,1,NULL,1,NULL,'pJbCJ5oNGxNuMbMrIIaZZEbig9My5',35,'2023-11-17 00:36:17','2023-11-19 00:36:17',2),(36,'#10000036',10,'1','default','pending',366.00,0.00,0.00,NULL,NULL,0.00,366.00,1,NULL,1,NULL,'lCJK3CPXG5oM6DlmpFUAgcoEQ7Atb',36,'2023-11-17 16:36:17','2023-11-19 00:36:17',1),(37,'#10000037',7,'1','default','completed',468.00,0.00,0.00,NULL,NULL,0.00,468.00,1,NULL,1,'2023-11-19 00:36:17','sNrv8Zc0EeNN63Ztl9EPnsthXCflB',37,'2023-11-18 18:36:17','2023-11-19 00:36:17',3),(38,'#10000038',7,'1','default','completed',242.00,0.00,0.00,NULL,NULL,0.00,242.00,1,NULL,1,'2023-11-19 00:36:22','Xj6eMZBxAoY99emKBzjDYsFVQjKGe',38,'2023-11-18 06:36:17','2023-11-19 00:36:22',1),(39,'#10000039',4,'1','default','pending',236.00,0.00,0.00,NULL,NULL,0.00,236.00,1,NULL,1,NULL,'16n0xKYPklrqO3FjPslVFrTJ8dHr7',39,'2023-11-18 20:36:18','2023-11-19 00:36:18',1),(40,'#10000040',4,NULL,'','completed',123.00,0.00,0.00,NULL,NULL,0.00,123.00,1,NULL,1,'2023-11-19 00:36:18','9juWxX1PZj1ORkdG9SEQ7GXmNX0si',40,'2023-11-17 16:36:18','2023-11-19 00:36:18',2),(41,'#10000041',8,'1','default','pending',376.00,0.00,0.00,NULL,NULL,0.00,376.00,1,NULL,1,NULL,'lJjM2bZgQSzKk3mK5LcLcJsHeL7US',41,'2023-11-18 16:36:18','2023-11-19 00:36:18',3),(42,'#10000042',8,'1','default','completed',122.00,0.00,0.00,NULL,NULL,0.00,122.00,1,NULL,1,'2023-11-19 00:36:18','oTwt2A3qkZ90YUfGHiiFGdS6fz3Dz',42,'2023-11-18 12:36:18','2023-11-19 00:36:18',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2023-11-19 00:35:56','2023-11-19 00:35:56',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(2,1,'2KG','2kg',NULL,NULL,0,2,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(3,1,'3KG','3kg',NULL,NULL,0,3,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(4,1,'4KG','4kg',NULL,NULL,0,4,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(5,1,'5KG','5kg',NULL,NULL,0,5,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(6,2,'1 Box','1box',NULL,NULL,1,1,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'2023-11-19 00:35:56','2023-11-19 00:35:56'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'2023-11-19 00:35:56','2023-11-19 00:35:56');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-1.png'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-2.png'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-3.png'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-4.png'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-5.png'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-6.png'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-7.png'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-8.png'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-9.png'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-10.png'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-11.png'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-12.png'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-13.png'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL,'product-categories/icon-14.png');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,13),(1,16),(2,7),(3,6),(3,21),(4,11),(6,19),(7,14),(7,17),(7,24),(8,10),(8,12),(8,15),(9,9),(10,5),(10,8),(10,20),(10,22),(10,23),(12,2),(12,3),(12,4),(13,18),(14,1);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,7),(1,8),(1,10),(1,14),(1,19),(2,2),(2,3),(2,4),(2,5),(2,13),(2,16),(2,18),(2,22),(2,23),(3,6),(3,9),(3,11),(3,12),(3,15),(3,17),(3,20),(3,21),(3,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2),(1,16),(1,18),(1,24),(2,12),(2,14),(2,16),(3,6),(3,11),(3,15),(3,24),(4,10),(4,11),(4,16),(4,19),(5,2),(5,6),(5,8),(5,13),(6,4),(6,5),(6,14),(6,18),(7,5),(7,10),(7,12),(7,19),(8,11),(8,19),(8,20),(8,23),(9,2),(9,4),(9,11),(9,18),(10,7),(10,12),(10,17),(11,8),(11,18),(11,24),(12,1),(12,2),(12,10),(12,11),(13,17),(13,18),(13,20),(13,22),(14,1),(14,3),(14,15),(14,17),(15,9),(15,13),(15,19),(16,4),(16,5),(16,18),(16,22),(17,10),(17,12),(17,16),(17,19),(18,5),(18,8),(18,10),(18,12),(19,3),(19,8),(19,13),(19,14),(20,1),(20,7),(20,19),(20,23),(21,10),(21,15),(21,18),(21,20),(22,8),(22,11),(22,15),(22,18),(23,2),(23,5),(23,14),(24,5),(24,6),(24,14),(24,23);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(3,29,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(4,29,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(5,30,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(6,30,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(7,31,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(8,31,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(9,43,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(10,43,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(11,53,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(12,53,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(13,54,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(14,54,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(15,55,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(16,55,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(17,65,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(18,65,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(19,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(20,66,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(21,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(22,67,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:01\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:01','2023-11-19 00:36:01'),(23,73,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:02\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-11-19 00:36:02','2023-11-19 00:36:02'),(24,73,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:02\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:02','2023-11-19 00:36:02'),(25,74,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:02\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-11-19 00:36:02','2023-11-19 00:36:02'),(26,74,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2023-11-19 07:36:02\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-11-19 00:36:02','2023-11-19 00:36:02');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,7),(2,21),(3,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-11-19 00:35:56','2023-11-19 00:35:56'),(2,'New','#00c9a7','published','2023-11-19 00:35:56','2023-11-19 00:35:56'),(3,'Sale','#fe9931','published','2023-11-19 00:35:56','2023-11-19 00:35:56');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(2,4),(2,5),(2,6),(3,4),(3,6),(4,1),(4,2),(4,4),(5,1),(5,2),(5,5),(6,4),(6,6),(7,1),(7,4),(7,5),(8,2),(8,5),(8,6),(9,1),(9,2),(9,4),(10,3),(10,4),(10,6),(11,2),(11,4),(11,5),(12,1),(12,2),(13,5),(13,6),(14,1),(14,3),(14,5),(15,1),(15,2),(16,1),(16,4),(16,6),(17,1),(17,3),(17,4),(18,1),(18,3),(18,5),(19,2),(19,5),(20,1),(20,2),(20,4),(21,1),(21,4),(22,1),(22,3),(22,6),(23,1),(23,3),(23,6),(24,1),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56'),(2,'Bags',NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56'),(3,'Shoes',NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56'),(4,'Clothes',NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56'),(5,'Hand bag',NULL,'published','2023-11-19 00:35:56','2023-11-19 00:35:56');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(15,1,8),(41,1,21),(45,1,23),(53,1,27),(59,1,30),(75,1,38),(77,1,39),(79,1,40),(83,1,42),(95,1,48),(119,1,60),(5,2,3),(11,2,6),(31,2,16),(37,2,19),(39,2,20),(57,2,29),(61,2,31),(65,2,33),(69,2,35),(93,2,47),(99,2,50),(113,2,57),(117,2,59),(9,3,5),(13,3,7),(17,3,9),(23,3,12),(25,3,13),(51,3,26),(67,3,34),(73,3,37),(81,3,41),(85,3,43),(87,3,44),(91,3,46),(97,3,49),(107,3,54),(111,3,56),(19,4,10),(27,4,14),(49,4,25),(55,4,28),(71,4,36),(105,4,53),(109,4,55),(115,4,58),(1,5,1),(3,5,2),(21,5,11),(29,5,15),(33,5,17),(35,5,18),(43,5,22),(47,5,24),(63,5,32),(89,5,45),(101,5,51),(103,5,52),(6,6,3),(8,6,4),(38,6,19),(46,6,23),(50,6,25),(58,6,29),(74,6,37),(96,6,48),(98,6,49),(118,6,59),(120,6,60),(14,7,7),(26,7,13),(28,7,14),(32,7,16),(42,7,21),(48,7,24),(56,7,28),(60,7,30),(62,7,31),(72,7,36),(78,7,39),(80,7,40),(88,7,44),(112,7,56),(10,8,5),(22,8,11),(40,8,20),(54,8,27),(84,8,42),(110,8,55),(114,8,57),(2,9,1),(30,9,15),(34,9,17),(44,9,22),(52,9,26),(64,9,32),(68,9,34),(76,9,38),(86,9,43),(92,9,46),(102,9,51),(104,9,52),(108,9,54),(4,10,2),(12,10,6),(16,10,8),(18,10,9),(20,10,10),(24,10,12),(36,10,18),(66,10,33),(70,10,35),(82,10,41),(90,10,45),(94,10,47),(100,10,50),(106,10,53),(116,10,58);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,2,1),(3,27,3,1),(4,28,4,1),(5,29,5,1),(6,30,5,0),(7,31,5,0),(8,32,6,1),(9,33,6,0),(10,34,6,0),(11,35,7,1),(12,36,7,0),(13,37,7,0),(14,38,7,0),(15,39,7,0),(16,40,8,1),(17,41,8,0),(18,42,8,0),(19,43,9,1),(20,44,10,1),(21,45,10,0),(22,46,11,1),(23,47,11,0),(24,48,11,0),(25,49,11,0),(26,50,11,0),(27,51,12,1),(28,52,12,0),(29,53,13,1),(30,54,13,0),(31,55,13,0),(32,56,14,1),(33,57,14,0),(34,58,14,0),(35,59,15,1),(36,60,15,0),(37,61,15,0),(38,62,16,1),(39,63,16,0),(40,64,16,0),(41,65,17,1),(42,66,17,0),(43,67,17,0),(44,68,18,1),(45,69,19,1),(46,70,19,0),(47,71,20,1),(48,72,20,0),(49,73,21,1),(50,74,21,0),(51,75,22,1),(52,76,22,0),(53,77,22,0),(54,78,22,0),(55,79,22,0),(56,80,23,1),(57,81,23,0),(58,82,23,0),(59,83,23,0),(60,84,24,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-11-19',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-160-A0',0,18,0,1,1,4,0,0,259,NULL,NULL,NULL,15.00,11.00,20.00,749.00,NULL,63456,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-130-A0',0,10,0,1,1,7,0,0,265,NULL,NULL,NULL,14.00,12.00,12.00,559.00,NULL,99507,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-170-A0',0,19,0,1,1,7,0,0,229,NULL,NULL,NULL,10.00,15.00,19.00,841.00,NULL,7780,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-174-A0',0,14,0,1,1,4,0,0,72,55.44,NULL,NULL,17.00,16.00,16.00,576.00,NULL,43775,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-132-A0',0,10,0,1,1,7,0,0,46,NULL,NULL,NULL,20.00,11.00,18.00,863.00,NULL,88693,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-140-A0',0,10,0,1,1,4,0,0,53,NULL,NULL,NULL,13.00,10.00,19.00,527.00,NULL,165260,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-123-A0',0,13,0,1,1,5,0,0,122,NULL,NULL,NULL,14.00,18.00,20.00,539.00,NULL,6098,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-115-A0',0,14,0,1,1,6,0,0,116,88.16,NULL,NULL,12.00,13.00,17.00,506.00,NULL,55693,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-165-A0',0,15,0,1,1,7,0,0,110,NULL,NULL,NULL,20.00,13.00,17.00,707.00,NULL,138302,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-129-A0',0,18,0,1,1,7,0,0,386,NULL,NULL,NULL,13.00,17.00,14.00,545.00,NULL,41381,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-164-A0',0,13,0,1,1,4,0,0,112,NULL,NULL,NULL,14.00,10.00,14.00,850.00,NULL,81750,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-103-A0',0,19,0,1,1,4,0,0,122,109.8,NULL,NULL,19.00,18.00,18.00,511.00,NULL,40519,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-155-A0',0,18,0,1,1,7,0,0,110,NULL,NULL,NULL,19.00,19.00,14.00,716.00,NULL,113100,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-154-A0',0,18,0,1,1,1,0,0,110,NULL,NULL,NULL,18.00,16.00,11.00,635.00,NULL,109126,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-110-A0',0,15,0,1,1,5,0,0,121,NULL,NULL,NULL,12.00,18.00,14.00,714.00,NULL,195210,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-133-A0',0,20,0,1,1,3,0,0,115,92,NULL,NULL,12.00,17.00,14.00,720.00,NULL,175321,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-127-A0',0,20,0,1,1,7,0,0,126,NULL,NULL,NULL,15.00,16.00,13.00,592.00,NULL,113760,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-114-A0',0,16,0,1,1,5,0,0,121,NULL,NULL,NULL,11.00,19.00,14.00,891.00,NULL,139071,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-171-A0',0,19,0,1,1,2,0,0,118,NULL,NULL,NULL,10.00,12.00,13.00,646.00,NULL,102949,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-131-A0',0,19,0,1,1,7,0,0,111,91.02,NULL,NULL,17.00,16.00,17.00,603.00,NULL,19665,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-169-A0',0,11,0,1,1,3,0,0,123,NULL,NULL,NULL,13.00,13.00,12.00,518.00,NULL,8949,'2023-11-19 00:36:00','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-167-A0',0,16,0,1,1,6,0,0,124,NULL,NULL,NULL,15.00,12.00,15.00,595.00,NULL,101712,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-111-A0',0,13,0,1,1,7,0,0,126,NULL,NULL,NULL,19.00,16.00,19.00,832.00,NULL,36319,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-129-A0',0,18,0,1,1,1,0,0,119,107.1,NULL,NULL,16.00,19.00,10.00,839.00,NULL,60532,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-160-A0',0,18,0,1,0,4,1,0,259,NULL,NULL,NULL,15.00,11.00,20.00,749.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(26,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-130-A0',0,10,0,1,0,7,1,0,265,NULL,NULL,NULL,14.00,12.00,12.00,559.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(27,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-170-A0',0,19,0,1,0,7,1,0,229,NULL,NULL,NULL,10.00,15.00,19.00,841.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(28,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-174-A0',0,14,0,1,0,4,1,0,72,55.44,NULL,NULL,17.00,16.00,16.00,576.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-132-A0',0,10,0,1,0,7,1,0,46,NULL,NULL,NULL,20.00,11.00,18.00,863.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(30,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-132-A0-A1',0,10,0,1,0,7,1,0,46,NULL,NULL,NULL,20.00,11.00,18.00,863.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(31,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-132-A0-A2',0,10,0,1,0,7,1,0,46,NULL,NULL,NULL,20.00,11.00,18.00,863.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(32,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-140-A0',0,10,0,1,0,4,1,0,53,NULL,NULL,NULL,13.00,10.00,19.00,527.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-140-A0-A1',0,10,0,1,0,4,1,0,53,NULL,NULL,NULL,13.00,10.00,19.00,527.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(34,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-140-A0-A2',0,10,0,1,0,4,1,0,53,NULL,NULL,NULL,13.00,10.00,19.00,527.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(35,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-123-A0',0,13,0,1,0,5,1,0,122,NULL,NULL,NULL,14.00,18.00,20.00,539.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(36,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-123-A0-A1',0,13,0,1,0,5,1,0,122,NULL,NULL,NULL,14.00,18.00,20.00,539.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(37,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-123-A0-A2',0,13,0,1,0,5,1,0,122,NULL,NULL,NULL,14.00,18.00,20.00,539.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(38,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-123-A0-A3',0,13,0,1,0,5,1,0,122,NULL,NULL,NULL,14.00,18.00,20.00,539.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(39,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-123-A0-A4',0,13,0,1,0,5,1,0,122,NULL,NULL,NULL,14.00,18.00,20.00,539.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-115-A0',0,14,0,1,0,6,1,0,116,88.16,NULL,NULL,12.00,13.00,17.00,506.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-115-A0-A1',0,14,0,1,0,6,1,0,116,98.6,NULL,NULL,12.00,13.00,17.00,506.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-115-A0-A2',0,14,0,1,0,6,1,0,116,92.8,NULL,NULL,12.00,13.00,17.00,506.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-165-A0',0,15,0,1,0,7,1,0,110,NULL,NULL,NULL,20.00,13.00,17.00,707.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(44,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-129-A0',0,18,0,1,0,7,1,0,386,NULL,NULL,NULL,13.00,17.00,14.00,545.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-129-A0-A1',0,18,0,1,0,7,1,0,386,NULL,NULL,NULL,13.00,17.00,14.00,545.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-164-A0',0,13,0,1,0,4,1,0,112,NULL,NULL,NULL,14.00,10.00,14.00,850.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(47,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-164-A0-A1',0,13,0,1,0,4,1,0,112,NULL,NULL,NULL,14.00,10.00,14.00,850.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(48,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-164-A0-A2',0,13,0,1,0,4,1,0,112,NULL,NULL,NULL,14.00,10.00,14.00,850.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(49,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-164-A0-A3',0,13,0,1,0,4,1,0,112,NULL,NULL,NULL,14.00,10.00,14.00,850.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-164-A0-A4',0,13,0,1,0,4,1,0,112,NULL,NULL,NULL,14.00,10.00,14.00,850.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-103-A0',0,19,0,1,0,4,1,0,122,109.8,NULL,NULL,19.00,18.00,18.00,511.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-103-A0-A1',0,19,0,1,0,4,1,0,122,106.14,NULL,NULL,19.00,18.00,18.00,511.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-155-A0',0,18,0,1,0,7,1,0,110,NULL,NULL,NULL,19.00,19.00,14.00,716.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-155-A0-A1',0,18,0,1,0,7,1,0,110,NULL,NULL,NULL,19.00,19.00,14.00,716.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-155-A0-A2',0,18,0,1,0,7,1,0,110,NULL,NULL,NULL,19.00,19.00,14.00,716.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(56,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-154-A0',0,18,0,1,0,1,1,0,110,NULL,NULL,NULL,18.00,16.00,11.00,635.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(57,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-154-A0-A1',0,18,0,1,0,1,1,0,110,NULL,NULL,NULL,18.00,16.00,11.00,635.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(58,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-154-A0-A2',0,18,0,1,0,1,1,0,110,NULL,NULL,NULL,18.00,16.00,11.00,635.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(59,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-110-A0',0,15,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,18.00,14.00,714.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-110-A0-A1',0,15,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,18.00,14.00,714.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(61,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-110-A0-A2',0,15,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,18.00,14.00,714.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(62,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-133-A0',0,20,0,1,0,3,1,0,115,92,NULL,NULL,12.00,17.00,14.00,720.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(63,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-133-A0-A1',0,20,0,1,0,3,1,0,115,95.45,NULL,NULL,12.00,17.00,14.00,720.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(64,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-2.jpg\"]','HS-133-A0-A2',0,20,0,1,0,3,1,0,115,89.7,NULL,NULL,12.00,17.00,14.00,720.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-127-A0',0,20,0,1,0,7,1,0,126,NULL,NULL,NULL,15.00,16.00,13.00,592.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(66,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-127-A0-A1',0,20,0,1,0,7,1,0,126,NULL,NULL,NULL,15.00,16.00,13.00,592.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-127-A0-A2',0,20,0,1,0,7,1,0,126,NULL,NULL,NULL,15.00,16.00,13.00,592.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(68,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-114-A0',0,16,0,1,0,5,1,0,121,NULL,NULL,NULL,11.00,19.00,14.00,891.00,NULL,0,'2023-11-19 00:36:01','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-171-A0',0,19,0,1,0,2,1,0,118,NULL,NULL,NULL,10.00,12.00,13.00,646.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(70,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-171-A0-A1',0,19,0,1,0,2,1,0,118,NULL,NULL,NULL,10.00,12.00,13.00,646.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(71,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-131-A0',0,19,0,1,0,7,1,0,111,91.02,NULL,NULL,17.00,16.00,17.00,603.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(72,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-131-A0-A1',0,19,0,1,0,7,1,0,111,97.68,NULL,NULL,17.00,16.00,17.00,603.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-169-A0',0,11,0,1,0,3,1,0,123,NULL,NULL,NULL,13.00,13.00,12.00,518.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(74,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-169-A0-A1',0,11,0,1,0,3,1,0,123,NULL,NULL,NULL,13.00,13.00,12.00,518.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(75,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-167-A0',0,16,0,1,0,6,1,0,124,NULL,NULL,NULL,15.00,12.00,15.00,595.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(76,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-167-A0-A1',0,16,0,1,0,6,1,0,124,NULL,NULL,NULL,15.00,12.00,15.00,595.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(77,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-167-A0-A2',0,16,0,1,0,6,1,0,124,NULL,NULL,NULL,15.00,12.00,15.00,595.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(78,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-167-A0-A3',0,16,0,1,0,6,1,0,124,NULL,NULL,NULL,15.00,12.00,15.00,595.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-167-A0-A4',0,16,0,1,0,6,1,0,124,NULL,NULL,NULL,15.00,12.00,15.00,595.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(80,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-111-A0',0,13,0,1,0,7,1,0,126,NULL,NULL,NULL,19.00,16.00,19.00,832.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(81,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-111-A0-A1',0,13,0,1,0,7,1,0,126,NULL,NULL,NULL,19.00,16.00,19.00,832.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(82,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-111-A0-A2',0,13,0,1,0,7,1,0,126,NULL,NULL,NULL,19.00,16.00,19.00,832.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(83,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-111-A0-A3',0,13,0,1,0,7,1,0,126,NULL,NULL,NULL,19.00,16.00,19.00,832.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(84,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-129-A0',0,18,0,1,0,1,1,0,119,107.1,NULL,NULL,16.00,19.00,10.00,839.00,NULL,0,'2023-11-19 00:36:02','2023-11-19 00:36:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,6,4.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15-1.jpg\",\"products\\/16-5.jpg\",\"products\\/24-1.jpg\"]'),(2,1,6,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\"]'),(3,8,1,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/17-1.jpg\"]'),(4,1,24,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\"]'),(5,5,9,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/12.jpg\",\"products\\/16-4.jpg\"]'),(6,6,15,2.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\"]'),(7,1,14,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(8,4,6,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\"]'),(9,9,6,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\",\"products\\/9.jpg\",\"products\\/12-1.jpg\",\"products\\/18.jpg\"]'),(10,1,11,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/12.jpg\",\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(11,3,16,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/14.jpg\",\"products\\/15-1.jpg\",\"products\\/16-2.jpg\"]'),(12,2,1,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/12.jpg\"]'),(13,5,21,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/18-1.jpg\"]'),(14,7,9,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/10-1.jpg\"]'),(15,2,20,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\"]'),(16,2,13,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/12.jpg\",\"products\\/14-1.jpg\",\"products\\/24-1.jpg\"]'),(17,1,1,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6-1.jpg\"]'),(18,3,17,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/15.jpg\",\"products\\/21-1.jpg\"]'),(19,8,8,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/16-4.jpg\",\"products\\/19-1.jpg\",\"products\\/23-1.jpg\"]'),(20,9,15,1.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\"]'),(21,7,14,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13.jpg\"]'),(22,6,3,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/16-2.jpg\"]'),(23,3,13,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\"]'),(24,2,16,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13-1.jpg\",\"products\\/15-1.jpg\",\"products\\/16-2.jpg\"]'),(26,6,5,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/6-1.jpg\",\"products\\/13-1.jpg\"]'),(27,8,4,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/17-1.jpg\"]'),(28,2,12,1.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7.jpg\"]'),(29,10,24,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/19-1.jpg\"]'),(30,10,7,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(31,10,11,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\",\"products\\/3.jpg\",\"products\\/15.jpg\",\"products\\/22.jpg\"]'),(32,2,2,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\"]'),(33,6,4,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\",\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(34,2,18,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/16-2.jpg\",\"products\\/16-4.jpg\",\"products\\/20-1.jpg\"]'),(35,1,4,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15-1.jpg\"]'),(39,6,9,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/11-1.jpg\",\"products\\/16-2.jpg\",\"products\\/18.jpg\"]'),(40,9,24,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/20-1.jpg\"]'),(41,5,20,3.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/17.jpg\"]'),(42,8,5,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\",\"products\\/22-1.jpg\"]'),(43,7,4,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/16-2.jpg\",\"products\\/18-1.jpg\"]'),(45,7,18,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/12.jpg\"]'),(46,7,23,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\",\"products\\/16-3.jpg\",\"products\\/19.jpg\",\"products\\/23.jpg\"]'),(47,3,7,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\"]'),(48,5,16,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/16.jpg\"]'),(49,10,20,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\"]'),(50,1,5,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\",\"products\\/21-1.jpg\"]'),(51,9,14,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/5-1.jpg\",\"products\\/17-1.jpg\",\"products\\/21.jpg\"]'),(52,7,6,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12-1.jpg\"]'),(53,5,7,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\"]'),(55,4,9,3.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/13.jpg\",\"products\\/16-2.jpg\",\"products\\/24.jpg\"]'),(56,5,11,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/4.jpg\"]'),(57,7,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\"]'),(58,9,19,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4-1.jpg\",\"products\\/23-1.jpg\"]'),(59,8,22,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/21.jpg\"]'),(60,9,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\",\"products\\/23-1.jpg\"]'),(61,5,12,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/9-1.jpg\",\"products\\/11-1.jpg\",\"products\\/23.jpg\"]'),(62,4,22,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\"]'),(63,9,16,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12.jpg\"]'),(64,9,7,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12-1.jpg\",\"products\\/16-1.jpg\",\"products\\/18-1.jpg\"]'),(65,8,2,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16-3.jpg\",\"products\\/16.jpg\"]'),(67,7,24,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/7.jpg\"]'),(68,6,18,2.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/23.jpg\"]'),(69,7,19,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\"]'),(71,6,20,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/21.jpg\"]'),(72,8,18,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-5.jpg\",\"products\\/19-1.jpg\"]'),(73,7,17,4.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/14-1.jpg\",\"products\\/14.jpg\",\"products\\/20.jpg\"]'),(74,9,18,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/20.jpg\"]'),(75,4,14,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(76,7,5,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\",\"products\\/19-1.jpg\"]'),(77,1,19,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\"]'),(78,8,10,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4-1.jpg\"]'),(80,7,16,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/15.jpg\",\"products\\/18-1.jpg\",\"products\\/21.jpg\"]'),(81,6,7,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-6.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),(82,5,22,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12.jpg\"]'),(83,9,12,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\"]'),(84,7,15,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12-1.jpg\"]'),(85,7,20,1.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4-1.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\",\"products\\/15-1.jpg\"]'),(86,6,11,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16.jpg\",\"products\\/24.jpg\"]'),(87,1,9,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/4.jpg\",\"products\\/10-1.jpg\",\"products\\/20-1.jpg\"]'),(89,5,10,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\",\"products\\/12-1.jpg\",\"products\\/16-1.jpg\",\"products\\/20.jpg\"]'),(90,10,5,2.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/15.jpg\"]'),(91,3,1,4.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/11-1.jpg\",\"products\\/12-1.jpg\",\"products\\/24-1.jpg\"]'),(92,5,17,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(93,1,7,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6-1.jpg\",\"products\\/14.jpg\",\"products\\/16-1.jpg\",\"products\\/22-1.jpg\"]'),(94,4,10,5.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\"]'),(95,7,2,3.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-2.jpg\",\"products\\/21-1.jpg\"]'),(96,2,15,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/17-1.jpg\",\"products\\/18-1.jpg\"]'),(97,7,1,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12-1.jpg\",\"products\\/16-3.jpg\"]'),(98,4,20,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/23.jpg\"]'),(101,5,23,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-6.jpg\"]'),(102,5,24,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15.jpg\",\"products\\/17-1.jpg\",\"products\\/18.jpg\",\"products\\/19-1.jpg\"]'),(103,4,13,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\",\"products\\/12.jpg\",\"products\\/13.jpg\",\"products\\/23-1.jpg\"]'),(104,4,3,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12-1.jpg\",\"products\\/15.jpg\"]'),(105,4,24,3.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/21-1.jpg\"]'),(106,5,14,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/14-1.jpg\"]'),(107,8,20,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/14.jpg\",\"products\\/15-1.jpg\",\"products\\/21-1.jpg\"]'),(108,3,14,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\",\"products\\/8.jpg\",\"products\\/12.jpg\"]'),(110,2,24,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/9-1.jpg\",\"products\\/11-1.jpg\"]'),(111,2,6,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7.jpg\",\"products\\/8-1.jpg\",\"products\\/16.jpg\"]'),(112,10,15,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13-1.jpg\",\"products\\/15-1.jpg\",\"products\\/16-2.jpg\"]'),(115,1,23,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\",\"products\\/16-6.jpg\",\"products\\/17-1.jpg\"]'),(116,8,13,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\"]'),(117,5,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/19.jpg\"]'),(118,8,23,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/22.jpg\"]'),(119,7,22,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\"]'),(123,5,18,5.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9.jpg\",\"products\\/15.jpg\",\"products\\/22.jpg\",\"products\\/24.jpg\"]'),(129,6,2,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-2.jpg\"]'),(131,9,17,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-2.jpg\",\"products\\/21.jpg\"]'),(134,6,8,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/3.jpg\",\"products\\/24-1.jpg\"]'),(139,3,3,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-4.jpg\",\"products\\/18-1.jpg\"]'),(140,3,22,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/15.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(146,8,6,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\",\"products\\/18.jpg\",\"products\\/23.jpg\"]'),(149,2,23,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15.jpg\"]'),(152,6,22,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9.jpg\",\"products\\/15-1.jpg\"]'),(153,1,10,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9.jpg\",\"products\\/16-3.jpg\",\"products\\/24.jpg\"]'),(155,7,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/18-1.jpg\"]'),(161,6,16,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\"]'),(162,1,16,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12-1.jpg\"]'),(163,6,1,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7-1.jpg\",\"products\\/10.jpg\",\"products\\/18.jpg\"]'),(164,1,2,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/16-3.jpg\",\"products\\/18.jpg\",\"products\\/21.jpg\"]'),(165,1,21,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6-1.jpg\",\"products\\/12.jpg\"]'),(166,8,3,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7.jpg\",\"products\\/20-1.jpg\"]'),(167,4,5,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/14-1.jpg\",\"products\\/19.jpg\",\"products\\/21.jpg\"]'),(174,9,22,3.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13.jpg\",\"products\\/16-1.jpg\",\"products\\/16-4.jpg\"]'),(178,3,10,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(179,2,8,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\",\"products\\/16-4.jpg\",\"products\\/19-1.jpg\"]'),(180,9,2,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15.jpg\",\"products\\/17-1.jpg\"]'),(182,6,10,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/10-1.jpg\",\"products\\/11.jpg\",\"products\\/21.jpg\"]'),(184,3,2,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/11-1.jpg\"]'),(187,2,14,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\",\"products\\/24-1.jpg\"]'),(188,5,19,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/21-1.jpg\"]'),(189,4,16,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\",\"products\\/16-1.jpg\",\"products\\/24.jpg\"]'),(190,2,4,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15-1.jpg\",\"products\\/17.jpg\",\"products\\/22.jpg\"]'),(192,2,7,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/14-1.jpg\",\"products\\/17-1.jpg\"]'),(193,2,3,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12.jpg\"]'),(196,3,8,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/12.jpg\"]'),(197,4,23,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-3.jpg\",\"products\\/16-6.jpg\",\"products\\/17.jpg\",\"products\\/18.jpg\"]'),(198,8,21,3.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12-1.jpg\",\"products\\/16-5.jpg\"]'),(200,9,21,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-3.jpg\",\"products\\/19.jpg\"]'),(211,10,23,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13.jpg\",\"products\\/17-1.jpg\",\"products\\/17.jpg\",\"products\\/22-1.jpg\"]'),(213,10,12,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/11.jpg\"]'),(215,7,10,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/9-1.jpg\",\"products\\/10.jpg\"]'),(217,7,12,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\",\"products\\/12.jpg\",\"products\\/16-2.jpg\"]'),(218,9,8,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\",\"products\\/6-1.jpg\",\"products\\/22.jpg\"]'),(219,4,18,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/16-1.jpg\"]'),(222,10,13,3.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\",\"products\\/6.jpg\",\"products\\/16-1.jpg\",\"products\\/22.jpg\"]'),(225,1,20,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\",\"products\\/24-1.jpg\"]'),(227,6,21,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/22-1.jpg\"]'),(228,2,19,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9.jpg\",\"products\\/16-2.jpg\",\"products\\/18-1.jpg\"]'),(234,2,10,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16.jpg\"]'),(240,5,15,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/5-1.jpg\",\"products\\/11.jpg\",\"products\\/22-1.jpg\"]'),(242,3,15,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7.jpg\",\"products\\/16-5.jpg\"]'),(244,4,7,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/16-4.jpg\"]'),(245,3,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\"]'),(247,9,10,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15.jpg\",\"products\\/18-1.jpg\",\"products\\/24.jpg\"]'),(249,9,3,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\"]'),(252,8,14,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/16-4.jpg\"]'),(256,9,9,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/18-1.jpg\"]'),(257,3,6,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/19.jpg\",\"products\\/24.jpg\"]'),(259,2,22,2.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/14-1.jpg\",\"products\\/16-4.jpg\"]'),(263,10,6,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12.jpg\",\"products\\/13.jpg\",\"products\\/21.jpg\",\"products\\/24-1.jpg\"]'),(266,8,7,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8-1.jpg\",\"products\\/9.jpg\",\"products\\/20-1.jpg\"]'),(268,5,2,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/16-3.jpg\",\"products\\/16.jpg\",\"products\\/21-1.jpg\"]'),(274,2,17,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/11-1.jpg\",\"products\\/21.jpg\"]'),(286,10,10,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/22-1.jpg\"]'),(287,6,6,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/20.jpg\"]'),(295,3,5,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1.jpg\",\"products\\/12.jpg\",\"products\\/16-3.jpg\",\"products\\/17-1.jpg\"]'),(298,4,15,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/16-3.jpg\"]'),(302,2,11,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\"]'),(304,7,21,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-4.jpg\"]'),(306,3,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6-1.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(308,9,20,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-4.jpg\"]'),(312,7,3,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/5.jpg\",\"products\\/16-2.jpg\",\"products\\/16-5.jpg\"]'),(313,6,17,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-2.jpg\",\"products\\/16-6.jpg\"]'),(321,4,17,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\",\"products\\/18-1.jpg\",\"products\\/21.jpg\",\"products\\/23.jpg\"]'),(325,10,21,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/17.jpg\",\"products\\/22.jpg\"]'),(336,9,23,2.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\"]'),(339,1,17,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13-1.jpg\",\"products\\/15.jpg\",\"products\\/23-1.jpg\"]'),(342,3,21,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\"]'),(350,10,4,5.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/20.jpg\"]'),(352,7,8,2.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/16-5.jpg\"]'),(357,5,13,4.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10.jpg\"]'),(363,2,5,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13.jpg\"]'),(369,4,21,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6.jpg\",\"products\\/16-5.jpg\",\"products\\/20.jpg\"]'),(374,4,11,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\"]'),(377,10,1,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/10.jpg\",\"products\\/14-1.jpg\",\"products\\/21.jpg\"]'),(378,8,15,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\",\"products\\/15-1.jpg\",\"products\\/15.jpg\"]'),(379,1,3,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/10-1.jpg\",\"products\\/21-1.jpg\"]'),(384,8,17,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/7-1.jpg\",\"products\\/15.jpg\",\"products\\/24.jpg\"]'),(389,5,8,1.00,'Clean & perfect source code','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9.jpg\",\"products\\/12-1.jpg\"]'),(393,4,12,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\"]'),(395,3,20,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\"]'),(397,3,23,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/11.jpg\"]'),(398,6,23,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15.jpg\"]'),(421,3,11,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/8.jpg\",\"products\\/15-1.jpg\"]'),(430,8,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5-1.jpg\",\"products\\/16-6.jpg\"]'),(434,8,16,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/19-1.jpg\"]'),(435,10,17,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-1.jpg\",\"products\\/21.jpg\"]'),(436,5,3,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/21.jpg\"]'),(454,4,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/6-1.jpg\",\"products\\/12-1.jpg\",\"products\\/19.jpg\"]'),(468,4,4,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/17.jpg\",\"products\\/18.jpg\",\"products\\/20.jpg\"]'),(470,1,15,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\"]'),(475,1,12,5.00,'Best ecommerce CMS online store!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/4-1.jpg\",\"products\\/19.jpg\"]'),(494,3,18,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/8.jpg\",\"products\\/18.jpg\"]'),(495,3,9,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/10-1.jpg\",\"products\\/24-1.jpg\"]'),(496,3,19,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2-1.jpg\"]'),(512,1,13,2.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/16-3.jpg\",\"products\\/23-1.jpg\"]'),(519,7,11,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-2.jpg\"]'),(531,6,24,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/6-1.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(542,4,8,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/15.jpg\",\"products\\/23.jpg\"]'),(543,3,12,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\"]'),(548,10,19,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\",\"products\\/6.jpg\",\"products\\/8-1.jpg\",\"products\\/21-1.jpg\"]'),(565,1,18,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-6.jpg\"]'),(570,2,21,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\"]'),(586,10,2,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4.jpg\",\"products\\/7-1.jpg\",\"products\\/12-1.jpg\"]'),(588,10,3,2.00,'Good app, good backup service and support. Good documentation.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/4-1.jpg\",\"products\\/8.jpg\",\"products\\/23.jpg\"]'),(614,1,8,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/11.jpg\"]'),(632,9,1,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/21-1.jpg\"]'),(636,8,11,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3.jpg\",\"products\\/16-3.jpg\"]'),(637,4,2,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/22-1.jpg\"]'),(642,10,8,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/19.jpg\"]'),(646,10,18,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/9-1.jpg\",\"products\\/10.jpg\",\"products\\/11-1.jpg\",\"products\\/18.jpg\"]'),(650,10,16,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/2.jpg\",\"products\\/3.jpg\",\"products\\/24.jpg\"]'),(686,9,5,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/17.jpg\",\"products\\/19.jpg\",\"products\\/22.jpg\",\"products\\/23.jpg\"]'),(691,5,4,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/21.jpg\"]'),(762,6,13,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\",\"products\\/9-1.jpg\",\"products\\/16-4.jpg\"]'),(763,10,22,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/12.jpg\",\"products\\/15.jpg\",\"products\\/16-5.jpg\",\"products\\/21-1.jpg\"]'),(773,2,9,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-6.jpg\",\"products\\/24.jpg\"]'),(824,9,11,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/12-1.jpg\",\"products\\/16-2.jpg\"]'),(839,10,9,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10.jpg\",\"products\\/14-1.jpg\"]'),(845,8,24,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/3-1.jpg\",\"products\\/8.jpg\",\"products\\/16-1.jpg\",\"products\\/19-1.jpg\"]'),(849,8,9,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/7.jpg\"]'),(867,6,19,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/13.jpg\",\"products\\/14-1.jpg\",\"products\\/21-1.jpg\"]'),(920,8,12,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/5.jpg\",\"products\\/16-4.jpg\",\"products\\/17.jpg\",\"products\\/24.jpg\"]'),(927,10,14,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/10-1.jpg\"]'),(941,5,5,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-11-19 00:36:05','2023-11-19 00:36:05','[\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-11-02 08:36:15','2023-11-02 08:36:15','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-11-17 08:36:15','2023-11-19 00:36:15','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-11-07 22:36:15','2023-11-07 22:36:15','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-11-17 10:36:15','2023-11-19 00:36:15','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-11-09 12:36:15','2023-11-09 12:36:15','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-11-17 10:36:15','2023-11-19 00:36:15','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-11-04 00:36:15','2023-11-04 00:36:15','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-11-17 12:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-11-08 12:36:16','2023-11-08 12:36:16','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-11-17 12:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-11-04 00:36:16','2023-11-04 00:36:16','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-11-17 12:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-11-09 02:36:16','2023-11-09 02:36:16','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-11-17 14:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,9,'2023-11-12 08:36:16','2023-11-12 08:36:16','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,9,'2023-11-17 16:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,9,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(19,'create_from_order','Shipping was created from order %order_id%',0,9,10,'2023-11-12 08:36:16','2023-11-12 08:36:16','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,10,'2023-11-17 16:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(21,'create_from_order','Shipping was created from order %order_id%',0,10,11,'2023-11-13 16:36:16','2023-11-13 16:36:16','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,11,'2023-11-17 16:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,11,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(24,'create_from_order','Shipping was created from order %order_id%',0,11,12,'2023-11-12 18:36:16','2023-11-12 18:36:16','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,12,'2023-11-17 18:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,12,13,'2023-11-15 12:36:16','2023-11-15 12:36:16','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,13,'2023-11-17 20:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,13,15,'2023-11-17 20:36:16','2023-11-17 20:36:16','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,15,'2023-11-17 20:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,14,16,'2023-11-15 18:36:16','2023-11-15 18:36:16','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,16,'2023-11-17 22:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(32,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,14,16,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,16,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,15,17,'2023-11-11 00:36:16','2023-11-11 00:36:16','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,17,'2023-11-18 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(36,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,15,17,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,17,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(38,'create_from_order','Shipping was created from order %order_id%',0,16,18,'2023-11-15 00:36:16','2023-11-15 00:36:16','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,18,'2023-11-18 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(40,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,16,18,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,18,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(42,'create_from_order','Shipping was created from order %order_id%',0,17,19,'2023-11-14 10:36:16','2023-11-14 10:36:16','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,19,'2023-11-18 02:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(44,'create_from_order','Shipping was created from order %order_id%',0,18,20,'2023-11-15 08:36:16','2023-11-15 08:36:16','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,20,'2023-11-18 02:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(46,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,18,20,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,20,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,19,21,'2023-11-16 06:36:16','2023-11-16 06:36:16','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,21,'2023-11-18 02:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(50,'create_from_order','Shipping was created from order %order_id%',0,20,22,'2023-11-10 16:36:17','2023-11-10 16:36:17','Botble\\ACL\\Models\\User'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,22,'2023-11-18 04:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(52,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,20,22,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,22,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,21,23,'2023-11-11 12:36:17','2023-11-11 12:36:17','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,23,'2023-11-18 04:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,23,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(57,'create_from_order','Shipping was created from order %order_id%',0,22,24,'2023-11-11 12:36:17','2023-11-11 12:36:17','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,24,'2023-11-18 04:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,24,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(60,'create_from_order','Shipping was created from order %order_id%',0,23,25,'2023-11-16 00:36:17','2023-11-16 00:36:17','Botble\\ACL\\Models\\User'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,25,'2023-11-18 06:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,25,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(63,'create_from_order','Shipping was created from order %order_id%',0,24,26,'2023-11-13 18:36:17','2023-11-13 18:36:17','Botble\\ACL\\Models\\User'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,26,'2023-11-18 06:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,26,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,25,27,'2023-11-15 00:36:17','2023-11-15 00:36:17','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,27,'2023-11-18 08:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(68,'create_from_order','Shipping was created from order %order_id%',0,26,28,'2023-11-15 16:36:17','2023-11-15 16:36:17','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,28,'2023-11-18 08:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,27,29,'2023-11-18 10:36:17','2023-11-18 10:36:17','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,29,'2023-11-18 10:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,29,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,28,30,'2023-11-13 04:36:17','2023-11-13 04:36:17','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,30,'2023-11-18 10:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(75,'create_from_order','Shipping was created from order %order_id%',0,29,31,'2023-11-14 08:36:17','2023-11-14 08:36:17','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,31,'2023-11-18 10:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(77,'create_from_order','Shipping was created from order %order_id%',0,30,32,'2023-11-14 12:36:17','2023-11-14 12:36:17','Botble\\ACL\\Models\\User'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,32,'2023-11-18 12:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(79,'create_from_order','Shipping was created from order %order_id%',0,31,33,'2023-11-15 12:36:17','2023-11-15 12:36:17','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,33,'2023-11-18 12:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(81,'create_from_order','Shipping was created from order %order_id%',0,32,34,'2023-11-18 14:36:17','2023-11-18 14:36:17','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,34,'2023-11-18 14:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,34,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(84,'create_from_order','Shipping was created from order %order_id%',0,33,35,'2023-11-17 00:36:17','2023-11-17 00:36:17','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,35,'2023-11-18 16:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(86,'create_from_order','Shipping was created from order %order_id%',0,34,36,'2023-11-17 16:36:17','2023-11-17 16:36:17','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,36,'2023-11-18 16:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(88,'create_from_order','Shipping was created from order %order_id%',0,35,37,'2023-11-18 18:36:17','2023-11-18 18:36:17','Botble\\ACL\\Models\\User'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,37,'2023-11-18 18:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,37,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(91,'create_from_order','Shipping was created from order %order_id%',0,36,38,'2023-11-18 06:36:17','2023-11-18 06:36:17','Botble\\ACL\\Models\\User'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,38,'2023-11-18 18:36:17','2023-11-19 00:36:17','Botble\\ACL\\Models\\User'),(93,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,38,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\ACL\\Models\\User'),(94,'create_from_order','Shipping was created from order %order_id%',0,37,39,'2023-11-18 20:36:18','2023-11-18 20:36:18','Botble\\ACL\\Models\\User'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,39,'2023-11-18 20:36:18','2023-11-19 00:36:18','Botble\\ACL\\Models\\User'),(96,'create_from_order','Shipping was created from order %order_id%',0,38,41,'2023-11-18 16:36:18','2023-11-18 16:36:18','Botble\\ACL\\Models\\User'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,41,'2023-11-18 22:36:18','2023-11-19 00:36:18','Botble\\ACL\\Models\\User'),(98,'create_from_order','Shipping was created from order %order_id%',0,39,42,'2023-11-18 12:36:18','2023-11-18 12:36:18','Botble\\ACL\\Models\\User'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,42,'2023-11-18 22:36:18','2023-11-19 00:36:18','Botble\\ACL\\Models\\User'),(100,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,39,42,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\ACL\\Models\\User'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,42,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3093.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','JJD003653006','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-22 07:36:15',NULL,NULL,NULL),(2,2,NULL,1599.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','JJD0038408898','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-29 07:36:15',NULL,NULL,NULL),(3,3,NULL,3114.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:15','2023-11-19 00:36:15','JJD0063962717','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-21 07:36:15',NULL,NULL,NULL),(4,4,NULL,841.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0086374094','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-27 07:36:16','2023-11-19 07:36:16',NULL,NULL),(5,5,NULL,1090.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0011498727','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-21 07:36:16',NULL,NULL,NULL),(6,6,NULL,4196.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0076330894','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-29 07:36:16',NULL,NULL,NULL),(7,7,NULL,4518.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0069895681','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-22 07:36:16',NULL,NULL,NULL),(8,9,NULL,1682.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0090066056','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-23 07:36:16','2023-11-19 07:36:16',NULL,NULL),(9,10,NULL,539.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0079114255','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-28 07:36:16',NULL,NULL,NULL),(10,11,NULL,3681.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0035973638','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-26 07:36:16','2023-11-19 07:36:16',NULL,NULL),(11,12,NULL,1928.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0044339382','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-24 07:36:16',NULL,NULL,NULL),(12,13,NULL,1270.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0051481713','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-24 07:36:16',NULL,NULL,NULL),(13,15,NULL,2496.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0081406169','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-25 07:36:16',NULL,NULL,NULL),(14,16,NULL,3241.00,NULL,NULL,'','delivered',553.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0083995544','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-20 07:36:16','2023-11-19 07:36:16',NULL,NULL),(15,17,NULL,635.00,NULL,NULL,'','delivered',110.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0017106501','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-26 07:36:16','2023-11-19 07:36:16',NULL,NULL),(16,18,NULL,595.00,NULL,NULL,'','delivered',124.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0081112784','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-23 07:36:16','2023-11-19 07:36:16',NULL,NULL),(17,19,NULL,1905.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0034542005','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-21 07:36:16',NULL,NULL,NULL),(18,20,NULL,1190.00,NULL,NULL,'','delivered',248.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD0070408769','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-29 07:36:16','2023-11-19 07:36:16',NULL,NULL),(19,21,NULL,832.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:16','2023-11-19 00:36:16','JJD005232510','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-22 07:36:16',NULL,NULL,NULL),(20,22,NULL,1682.00,NULL,NULL,'','delivered',458.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0084239177','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-21 07:36:17','2023-11-19 07:36:17',NULL,NULL),(21,23,NULL,1078.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0030170343','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-29 07:36:17','2023-11-19 07:36:17',NULL,NULL),(22,24,NULL,2212.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0053342048','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-24 07:36:17','2023-11-19 07:36:17',NULL,NULL),(23,25,NULL,2160.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0047860368','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-20 07:36:17','2023-11-19 07:36:17',NULL,NULL),(24,26,NULL,1664.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0022355927','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-20 07:36:17','2023-11-19 07:36:17',NULL,NULL),(25,27,NULL,595.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0044739582','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-21 07:36:17',NULL,NULL,NULL),(26,28,NULL,832.00,NULL,NULL,'','approved',126.00,'pending','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0024011329','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-25 07:36:17',NULL,NULL,NULL),(27,29,NULL,1677.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0041919845','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-28 07:36:17','2023-11-19 07:36:17',NULL,NULL),(28,30,NULL,1905.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0070818625','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-29 07:36:17',NULL,NULL,NULL),(29,31,NULL,1206.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0098775410','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-28 07:36:17',NULL,NULL,NULL),(30,32,NULL,3079.00,NULL,NULL,'','approved',903.00,'pending','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0035655048','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-21 07:36:17',NULL,NULL,NULL),(31,33,NULL,1785.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0097182420','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-29 07:36:17',NULL,NULL,NULL),(32,34,NULL,4080.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0075144784','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-28 07:36:17','2023-11-19 07:36:17',NULL,NULL),(33,35,NULL,2203.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0047083690','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-24 07:36:17',NULL,NULL,NULL),(34,36,NULL,1836.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0094874364','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-26 07:36:17',NULL,NULL,NULL),(35,37,NULL,4494.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0099711215','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-23 07:36:17','2023-11-19 07:36:17',NULL,NULL),(36,38,NULL,1428.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:17','2023-11-19 00:36:17','JJD0031980667','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-25 07:36:17','2023-11-19 07:36:17',NULL,NULL),(37,39,NULL,1292.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','JJD0047497494','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-27 07:36:18',NULL,NULL,NULL),(38,41,NULL,2768.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','JJD0083824729','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-23 07:36:18',NULL,NULL,NULL),(39,42,NULL,539.00,NULL,NULL,'','delivered',122.00,'completed','pending',0.00,0,'2023-11-19 00:36:18','2023-11-19 00:36:18','JJD0090628164','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-22 07:36:18','2023-11-19 07:36:18',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-11-19 00:36:06','2023-11-19 00:36:06');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-11-19 00:36:06','2023-11-19 00:36:06');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-11-19 00:36:06','2023-11-19 00:36:06');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-11-19 00:36:02','2023-11-19 00:36:02'),(2,'None',0.000000,2,'published','2023-11-19 00:36:02','2023-11-19 00:36:02'),(3,'Import Tax',15.000000,3,'published','2023-11-19 00:36:02','2023-11-19 00:36:02');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(2,'Payment',1,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(3,'Order &amp; Returns',2,'published','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-11-19 00:36:11','2023-11-19 00:36:11'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-11-19 00:36:11','2023-11-19 00:36:11');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','523dbfc9ec1833e536be76b9cfb5ebd1',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','fb4531baa6264209c3d03b6494c168ab',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','2ed692eee52bf84422c6020e8abdca4e',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','4c79996378113ef6ab76da5c7f43d6b0',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','e559810bfcbac153ba8193855ab13b03',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','a01a6c02f10806c4c11b0c382a18adca',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','d78832e6b5aefe2a22e3d280e7184dd1',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','db8c43edf6de6068899178de3d64be94',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','38398824c88c769811b9ae1f4588fa00',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','e313a700a27002bf2aaea55ec3fc0d69',2,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','1b8a43fcd149a41e25e67b6fc62ee80c',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','b3e73d2a224b03d0de4f609c4bf141ad',3,'Botble\\Menu\\Models\\Menu'),(13,'en_US','c7786da49c4648d9f0139459e85a8f01',4,'Botble\\Menu\\Models\\Menu'),(14,'en_US','a22070e5182555188201200432fcb05b',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',5306,'product-categories/icon-1.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(2,0,'icon-10','icon-10',1,'image/png',5306,'product-categories/icon-10.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(3,0,'icon-11','icon-11',1,'image/png',5306,'product-categories/icon-11.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(4,0,'icon-12','icon-12',1,'image/png',5306,'product-categories/icon-12.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(5,0,'icon-13','icon-13',1,'image/png',5306,'product-categories/icon-13.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(6,0,'icon-14','icon-14',1,'image/png',5306,'product-categories/icon-14.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(7,0,'icon-2','icon-2',1,'image/png',5306,'product-categories/icon-2.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(8,0,'icon-3','icon-3',1,'image/png',5306,'product-categories/icon-3.png','[]','2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(9,0,'icon-4','icon-4',1,'image/png',5306,'product-categories/icon-4.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(10,0,'icon-5','icon-5',1,'image/png',5306,'product-categories/icon-5.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(11,0,'icon-6','icon-6',1,'image/png',5306,'product-categories/icon-6.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(12,0,'icon-7','icon-7',1,'image/png',5306,'product-categories/icon-7.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(13,0,'icon-8','icon-8',1,'image/png',5306,'product-categories/icon-8.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(14,0,'icon-9','icon-9',1,'image/png',5306,'product-categories/icon-9.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(15,0,'image-1','image-1',1,'image/png',5306,'product-categories/image-1.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(16,0,'image-10','image-10',1,'image/png',5306,'product-categories/image-10.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(17,0,'image-11','image-11',1,'image/png',5306,'product-categories/image-11.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(18,0,'image-12','image-12',1,'image/png',5306,'product-categories/image-12.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(19,0,'image-13','image-13',1,'image/png',5306,'product-categories/image-13.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(20,0,'image-14','image-14',1,'image/png',5306,'product-categories/image-14.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(21,0,'image-15','image-15',1,'image/png',5306,'product-categories/image-15.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(22,0,'image-2','image-2',1,'image/png',5306,'product-categories/image-2.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(23,0,'image-3','image-3',1,'image/png',5306,'product-categories/image-3.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(24,0,'image-4','image-4',1,'image/png',5306,'product-categories/image-4.png','[]','2023-11-19 00:35:55','2023-11-19 00:35:55',NULL),(25,0,'image-5','image-5',1,'image/png',5306,'product-categories/image-5.png','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(26,0,'image-6','image-6',1,'image/png',5306,'product-categories/image-6.png','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(27,0,'image-7','image-7',1,'image/png',5306,'product-categories/image-7.png','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(28,0,'image-8','image-8',1,'image/png',5306,'product-categories/image-8.png','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(29,0,'image-9','image-9',1,'image/png',5306,'product-categories/image-9.png','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(30,0,'1-1','1-1',2,'image/jpeg',9730,'products/1-1.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(31,0,'1','1',2,'image/jpeg',9730,'products/1.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(32,0,'10-1','10-1',2,'image/jpeg',9730,'products/10-1.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(33,0,'10','10',2,'image/jpeg',9730,'products/10.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(34,0,'11-1','11-1',2,'image/jpeg',9730,'products/11-1.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(35,0,'11','11',2,'image/jpeg',9730,'products/11.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(36,0,'12-1','12-1',2,'image/jpeg',9730,'products/12-1.jpg','[]','2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(37,0,'12','12',2,'image/jpeg',9730,'products/12.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(38,0,'13-1','13-1',2,'image/jpeg',9730,'products/13-1.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(39,0,'13','13',2,'image/jpeg',9730,'products/13.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(40,0,'14-1','14-1',2,'image/jpeg',9730,'products/14-1.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(41,0,'14','14',2,'image/jpeg',9730,'products/14.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(42,0,'15-1','15-1',2,'image/jpeg',9730,'products/15-1.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(43,0,'15','15',2,'image/jpeg',9730,'products/15.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(44,0,'16-1','16-1',2,'image/jpeg',9730,'products/16-1.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(45,0,'16-2','16-2',2,'image/jpeg',9730,'products/16-2.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(46,0,'16-3','16-3',2,'image/jpeg',9730,'products/16-3.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(47,0,'16-4','16-4',2,'image/jpeg',9730,'products/16-4.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(48,0,'16-5','16-5',2,'image/jpeg',9730,'products/16-5.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(49,0,'16-6','16-6',2,'image/jpeg',9730,'products/16-6.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(50,0,'16','16',2,'image/jpeg',9730,'products/16.jpg','[]','2023-11-19 00:35:57','2023-11-19 00:35:57',NULL),(51,0,'17-1','17-1',2,'image/jpeg',9730,'products/17-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(52,0,'17','17',2,'image/jpeg',9730,'products/17.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(53,0,'18-1','18-1',2,'image/jpeg',9730,'products/18-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(54,0,'18','18',2,'image/jpeg',9730,'products/18.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(55,0,'19-1','19-1',2,'image/jpeg',9730,'products/19-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(56,0,'19','19',2,'image/jpeg',9730,'products/19.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(57,0,'2-1','2-1',2,'image/jpeg',9730,'products/2-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(58,0,'2','2',2,'image/jpeg',9730,'products/2.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(59,0,'20-1','20-1',2,'image/jpeg',9730,'products/20-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(60,0,'20','20',2,'image/jpeg',9730,'products/20.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(61,0,'21-1','21-1',2,'image/jpeg',9730,'products/21-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(62,0,'21','21',2,'image/jpeg',9730,'products/21.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(63,0,'22-1','22-1',2,'image/jpeg',9730,'products/22-1.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(64,0,'22','22',2,'image/jpeg',9730,'products/22.jpg','[]','2023-11-19 00:35:58','2023-11-19 00:35:58',NULL),(65,0,'23-1','23-1',2,'image/jpeg',9730,'products/23-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(66,0,'23','23',2,'image/jpeg',9730,'products/23.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(67,0,'24-1','24-1',2,'image/jpeg',9730,'products/24-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(68,0,'24','24',2,'image/jpeg',9730,'products/24.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(69,0,'3-1','3-1',2,'image/jpeg',9730,'products/3-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(70,0,'3','3',2,'image/jpeg',9730,'products/3.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(71,0,'4-1','4-1',2,'image/jpeg',9730,'products/4-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(72,0,'4','4',2,'image/jpeg',9730,'products/4.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(73,0,'5-1','5-1',2,'image/jpeg',9730,'products/5-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(74,0,'5','5',2,'image/jpeg',9730,'products/5.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(75,0,'6-1','6-1',2,'image/jpeg',9730,'products/6-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(76,0,'6','6',2,'image/jpeg',9730,'products/6.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(77,0,'7-1','7-1',2,'image/jpeg',9730,'products/7-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(78,0,'7','7',2,'image/jpeg',9730,'products/7.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(79,0,'8-1','8-1',2,'image/jpeg',9730,'products/8-1.jpg','[]','2023-11-19 00:35:59','2023-11-19 00:35:59',NULL),(80,0,'8','8',2,'image/jpeg',9730,'products/8.jpg','[]','2023-11-19 00:36:00','2023-11-19 00:36:00',NULL),(81,0,'9-1','9-1',2,'image/jpeg',9730,'products/9-1.jpg','[]','2023-11-19 00:36:00','2023-11-19 00:36:00',NULL),(82,0,'9','9',2,'image/jpeg',9730,'products/9.jpg','[]','2023-11-19 00:36:00','2023-11-19 00:36:00',NULL),(83,0,'1','1',3,'image/jpeg',9730,'customers/1.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(84,0,'10','10',3,'image/jpeg',9730,'customers/10.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(85,0,'2','2',3,'image/jpeg',9730,'customers/2.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(86,0,'3','3',3,'image/jpeg',9730,'customers/3.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(87,0,'4','4',3,'image/jpeg',9730,'customers/4.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(88,0,'5','5',3,'image/jpeg',9730,'customers/5.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(89,0,'6','6',3,'image/jpeg',9730,'customers/6.jpg','[]','2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(90,0,'7','7',3,'image/jpeg',9730,'customers/7.jpg','[]','2023-11-19 00:36:03','2023-11-19 00:36:03',NULL),(91,0,'8','8',3,'image/jpeg',9730,'customers/8.jpg','[]','2023-11-19 00:36:03','2023-11-19 00:36:03',NULL),(92,0,'9','9',3,'image/jpeg',9730,'customers/9.jpg','[]','2023-11-19 00:36:03','2023-11-19 00:36:03',NULL),(93,0,'1','1',4,'image/png',17734,'flash-sales/1.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(94,0,'2','2',4,'image/png',12245,'flash-sales/2.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(95,0,'3','3',4,'image/png',12245,'flash-sales/3.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(96,0,'4','4',4,'image/png',12245,'flash-sales/4.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(97,0,'5','5',4,'image/png',12245,'flash-sales/5.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(98,0,'1-1','1-1',5,'image/png',28937,'sliders/1-1.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(99,0,'1-2','1-2',5,'image/png',28937,'sliders/1-2.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(100,0,'2-1','2-1',5,'image/png',15605,'sliders/2-1.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(101,0,'2-2','2-2',5,'image/png',15605,'sliders/2-2.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(102,0,'3-1','3-1',5,'image/png',28937,'sliders/3-1.png','[]','2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(103,0,'3-2','3-2',5,'image/png',28937,'sliders/3-2.png','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(104,0,'4-1','4-1',5,'image/png',28937,'sliders/4-1.png','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(105,0,'4-2','4-2',5,'image/png',28937,'sliders/4-2.png','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(106,0,'5-1','5-1',5,'image/png',23845,'sliders/5-1.png','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(107,0,'5-2','5-2',5,'image/png',23845,'sliders/5-2.png','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(108,0,'banner-1','banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(109,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',9730,'sliders/thumbnail-1.jpg','[]','2023-11-19 00:36:07','2023-11-19 00:36:07',NULL),(110,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',9730,'sliders/thumbnail-2.jpg','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(111,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',9730,'sliders/thumbnail-3.jpg','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(112,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',9730,'sliders/thumbnail-4.jpg','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(113,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',9730,'sliders/thumbnail-5.jpg','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(114,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',9730,'sliders/thumbnail-6.jpg','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(115,0,'1','1',6,'image/png',9730,'news/1.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(116,0,'10','10',6,'image/png',9730,'news/10.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(117,0,'11','11',6,'image/png',9730,'news/11.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(118,0,'2','2',6,'image/png',9730,'news/2.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(119,0,'3','3',6,'image/png',9730,'news/3.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(120,0,'4','4',6,'image/png',9730,'news/4.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(121,0,'5','5',6,'image/png',9730,'news/5.png','[]','2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(122,0,'6','6',6,'image/png',9730,'news/6.png','[]','2023-11-19 00:36:09','2023-11-19 00:36:09',NULL),(123,0,'7','7',6,'image/png',9730,'news/7.png','[]','2023-11-19 00:36:09','2023-11-19 00:36:09',NULL),(124,0,'8','8',6,'image/png',9730,'news/8.png','[]','2023-11-19 00:36:09','2023-11-19 00:36:09',NULL),(125,0,'9','9',6,'image/png',9730,'news/9.png','[]','2023-11-19 00:36:09','2023-11-19 00:36:09',NULL),(128,0,'1','1',8,'image/png',11507,'promotion/1.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(129,0,'10','10',8,'image/png',7862,'promotion/10.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(130,0,'11','11',8,'image/png',7862,'promotion/11.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(131,0,'12','12',8,'image/png',7862,'promotion/12.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(132,0,'2','2',8,'image/png',11507,'promotion/2.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(133,0,'3','3',8,'image/png',11507,'promotion/3.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(134,0,'4','4',8,'image/png',13921,'promotion/4.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(135,0,'5','5',8,'image/png',26249,'promotion/5.png','[]','2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(136,0,'6','6',8,'image/png',26249,'promotion/6.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(137,0,'7','7',8,'image/png',14369,'promotion/7.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(138,0,'8','8',8,'image/png',7007,'promotion/8.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(139,0,'9','9',8,'image/png',7862,'promotion/9.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(140,0,'app-store','app-store',9,'image/jpeg',1907,'general/app-store.jpg','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(141,0,'category-1','category-1',9,'image/png',1033,'general/category-1.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(142,0,'clock','clock',9,'image/png',5056,'general/clock.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(143,0,'credit-card','credit-card',9,'image/png',1716,'general/credit-card.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(144,0,'facebook','facebook',9,'image/png',646,'general/facebook.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(145,0,'favicon','favicon',9,'image/png',3890,'general/favicon.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(146,0,'google-play','google-play',9,'image/jpeg',1907,'general/google-play.jpg','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(147,0,'header-bg','header-bg',9,'image/png',16995,'general/header-bg.png','[]','2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(148,0,'home-6','home-6',9,'image/jpeg',799491,'general/home-6.jpeg','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(149,0,'icon-1','icon-1',9,'image/png',2024,'general/icon-1.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(150,0,'icon-2','icon-2',9,'image/png',3531,'general/icon-2.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(151,0,'icon-3','icon-3',9,'image/png',2344,'general/icon-3.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(152,0,'icon-4','icon-4',9,'image/png',2314,'general/icon-4.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(153,0,'icon-5','icon-5',9,'image/png',2853,'general/icon-5.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(154,0,'instagram','instagram',9,'image/png',2586,'general/instagram.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(155,0,'loading','loading',9,'image/gif',25062,'general/loading.gif','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(156,0,'login-1','login-1',9,'image/png',20670,'general/login-1.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(157,0,'logo','logo',9,'image/png',16457,'general/logo.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(158,0,'newsletter-background-image','newsletter-background-image',9,'image/png',28409,'general/newsletter-background-image.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(159,0,'newsletter-image','newsletter-image',9,'image/png',14158,'general/newsletter-image.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(160,0,'open-graph-image','open-graph-image',9,'image/png',436809,'general/open-graph-image.png','[]','2023-11-19 00:36:12','2023-11-19 00:36:12',NULL),(161,0,'paper-plane','paper-plane',9,'image/png',5119,'general/paper-plane.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(162,0,'payment-methods','payment-methods',9,'image/png',455,'general/payment-methods.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(163,0,'pinterest','pinterest',9,'image/png',2128,'general/pinterest.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(164,0,'twitter','twitter',9,'image/png',1759,'general/twitter.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(165,0,'youtube','youtube',9,'image/png',1083,'general/youtube.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(166,0,'1','1',10,'image/png',5306,'stores/1.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(167,0,'10','10',10,'image/png',5306,'stores/10.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(168,0,'11','11',10,'image/png',5306,'stores/11.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(169,0,'12','12',10,'image/png',5306,'stores/12.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(170,0,'13','13',10,'image/png',5306,'stores/13.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(171,0,'14','14',10,'image/png',5306,'stores/14.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(172,0,'15','15',10,'image/png',5306,'stores/15.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(173,0,'16','16',10,'image/png',5306,'stores/16.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(174,0,'17','17',10,'image/png',5306,'stores/17.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(175,0,'2','2',10,'image/png',5306,'stores/2.png','[]','2023-11-19 00:36:13','2023-11-19 00:36:13',NULL),(176,0,'3','3',10,'image/png',5306,'stores/3.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL),(177,0,'4','4',10,'image/png',5306,'stores/4.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL),(178,0,'5','5',10,'image/png',5306,'stores/5.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL),(179,0,'6','6',10,'image/png',5306,'stores/6.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL),(180,0,'7','7',10,'image/png',5306,'stores/7.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL),(181,0,'8','8',10,'image/png',5306,'stores/8.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL),(182,0,'9','9',10,'image/png',5306,'stores/9.png','[]','2023-11-19 00:36:14','2023-11-19 00:36:14',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2023-11-19 00:35:54','2023-11-19 00:35:54',NULL),(2,0,'products','products',0,'2023-11-19 00:35:56','2023-11-19 00:35:56',NULL),(3,0,'customers','customers',0,'2023-11-19 00:36:02','2023-11-19 00:36:02',NULL),(4,0,'flash-sales','flash-sales',0,'2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(5,0,'sliders','sliders',0,'2023-11-19 00:36:06','2023-11-19 00:36:06',NULL),(6,0,'news','news',0,'2023-11-19 00:36:08','2023-11-19 00:36:08',NULL),(8,0,'promotion','promotion',0,'2023-11-19 00:36:10','2023-11-19 00:36:10',NULL),(9,0,'general','general',0,'2023-11-19 00:36:11','2023-11-19 00:36:11',NULL),(10,0,'stores','stores',0,'2023-11-19 00:36:13','2023-11-19 00:36:13',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-11-19 00:36:15','2023-11-19 00:36:15'),(2,2,'header-navigation','2023-11-19 00:36:15','2023-11-19 00:36:15');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home 1',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe-digital',NULL,0,'Product',NULL,'_self',1,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe-digital',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-11-19 00:36:15','2023-11-19 00:36:15');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-11-19 00:36:15','2023-11-19 00:36:15'),(2,'Header menu','header-menu','published','2023-11-19 00:36:15','2023-11-19 00:36:15'),(3,'Product categories','product-categories','published','2023-11-19 00:36:15','2023-11-19 00:36:15'),(4,'Information','information','published','2023-11-19 00:36:15','2023-11-19 00:36:15'),(5,'Company','company','published','2023-11-19 00:36:15','2023-11-19 00:36:15');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(2,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(3,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(4,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(5,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(6,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(7,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(8,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(9,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(10,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(11,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(12,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(13,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(14,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-11-19 00:35:56','2023-11-19 00:35:56'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(17,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(18,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(20,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(22,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(25,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(28,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(31,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(34,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(37,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(40,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(42,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(43,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(46,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:00','2023-11-19 00:36:00'),(48,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:01','2023-11-19 00:36:01'),(49,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:01','2023-11-19 00:36:01'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:01','2023-11-19 00:36:01'),(51,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:01','2023-11-19 00:36:01'),(52,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:01','2023-11-19 00:36:01'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-11-19 00:36:01','2023-11-19 00:36:01'),(54,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-11-19 00:36:06','2023-11-19 00:36:06'),(55,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-11-19 00:36:06','2023-11-19 00:36:06'),(56,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-11-19 00:36:06','2023-11-19 00:36:06'),(57,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-11-19 00:36:06','2023-11-19 00:36:06'),(58,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-11-19 00:36:06','2023-11-19 00:36:06'),(59,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(60,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(61,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(62,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(63,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(64,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(65,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-11-19 00:36:08','2023-11-19 00:36:08'),(66,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2023-11-19 00:36:09','2023-11-19 00:36:09'),(67,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2023-11-19 00:36:09','2023-11-19 00:36:09'),(68,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(69,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(70,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(71,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(72,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(73,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(74,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(75,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(76,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(77,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(78,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(79,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(80,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(81,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(82,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(83,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(84,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(85,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(86,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(87,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(88,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(89,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(90,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(91,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2023-11-19 00:36:11','2023-11-19 00:36:11'),(92,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2023-11-19 00:36:15','2023-11-19 00:36:15'),(93,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2023-11-19 00:36:15','2023-11-19 00:36:15'),(94,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2023-11-19 00:36:15','2023-11-19 00:36:15');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2020_11_18_150916_ads_create_ads_table',2),(31,'2021_12_02_035301_add_ads_translations_table',2),(32,'2023_04_17_062645_add_open_in_new_tab',2),(33,'2023_11_07_023805_add_tablet_mobile_image',2),(34,'2015_06_29_025744_create_audit_history',3),(35,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(36,'2015_06_18_033822_create_blog_table',4),(37,'2021_02_16_092633_remove_default_value_for_author_type',4),(38,'2021_12_03_030600_create_blog_translations',4),(39,'2022_04_19_113923_add_index_to_table_posts',4),(40,'2023_08_29_074620_make_column_author_id_nullable',4),(41,'2016_06_17_091537_create_contacts_table',5),(42,'2020_03_05_041139_create_ecommerce_tables',6),(43,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(44,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(45,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(46,'2021_02_18_073505_update_table_ec_reviews',6),(47,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(48,'2021_03_10_025153_change_column_tax_amount',6),(49,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(50,'2021_04_28_074008_ecommerce_create_product_label_table',6),(51,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(52,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(53,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(54,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(55,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(56,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(57,'2021_11_23_071403_correct_languages_for_product_variations',6),(58,'2021_11_28_031808_add_product_tags_translations',6),(59,'2021_12_01_031123_add_featured_image_to_ec_products',6),(60,'2022_01_01_033107_update_table_ec_shipments',6),(61,'2022_02_16_042457_improve_product_attribute_sets',6),(62,'2022_03_22_075758_correct_product_name',6),(63,'2022_04_19_113334_add_index_to_ec_products',6),(64,'2022_04_28_144405_remove_unused_table',6),(65,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(66,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(67,'2022_06_16_095633_add_index_to_some_tables',6),(68,'2022_06_30_035148_create_order_referrals_table',6),(69,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(70,'2022_08_14_032836_create_ec_order_returns_table',6),(71,'2022_08_14_033554_create_ec_order_return_items_table',6),(72,'2022_08_15_040324_add_billing_address',6),(73,'2022_08_30_091114_support_digital_products_table',6),(74,'2022_09_13_095744_create_options_table',6),(75,'2022_09_13_104347_create_option_value_table',6),(76,'2022_10_05_163518_alter_table_ec_order_product',6),(77,'2022_10_12_041517_create_invoices_table',6),(78,'2022_10_12_142226_update_orders_table',6),(79,'2022_10_13_024916_update_table_order_returns',6),(80,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(81,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(82,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(83,'2022_11_19_041643_add_ec_tax_product_table',6),(84,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(85,'2022_12_17_041532_fix_address_in_order_invoice',6),(86,'2022_12_26_070329_create_ec_product_views_table',6),(87,'2023_01_04_033051_fix_product_categories',6),(88,'2023_01_09_050400_add_ec_global_options_translations_table',6),(89,'2023_01_10_093754_add_missing_option_value_id',6),(90,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(91,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(92,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(93,'2023_02_27_095752_remove_duplicate_reviews',6),(94,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(95,'2023_04_21_082427_create_ec_product_categorizables_table',6),(96,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(97,'2023_05_17_025812_fix_invoice_issue',6),(98,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(99,'2023_05_27_144611_fix_exchange_rate_setting',6),(100,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(101,'2023_06_30_042512_create_ec_order_tax_information_table',6),(102,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(103,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(104,'2023_08_15_064505_create_ec_tax_rules_table',6),(105,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(106,'2023_08_22_094114_drop_unique_for_barcode',6),(107,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(108,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(109,'2023_09_19_024955_create_discount_product_categories_table',6),(110,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(111,'2018_07_09_221238_create_faq_table',7),(112,'2021_12_03_082134_create_faq_translations',7),(113,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(114,'2016_10_03_032336_create_languages_table',8),(115,'2023_09_14_022423_add_index_for_language_table',8),(116,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(117,'2021_12_03_075608_create_page_translations',9),(118,'2023_07_06_011444_create_slug_translations_table',9),(119,'2019_11_18_061011_create_country_table',10),(120,'2021_12_03_084118_create_location_translations',10),(121,'2021_12_03_094518_migrate_old_location_data',10),(122,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(123,'2022_01_16_085908_improve_plugin_location',10),(124,'2022_08_04_052122_delete_location_backup_tables',10),(125,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(126,'2023_07_26_041451_add_more_columns_to_location_table',10),(127,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(128,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(129,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(130,'2021_07_06_030002_create_marketplace_table',11),(131,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(132,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(133,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(134,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(135,'2021_12_06_031304_update_table_mp_customer_revenues',11),(136,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(137,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(138,'2022_11_02_071413_add_more_info_for_store',11),(139,'2022_11_02_080444_add_tax_info',11),(140,'2023_02_01_062030_add_store_translations',11),(141,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(142,'2023_02_17_023648_fix_store_prefix',11),(143,'2017_10_24_154832_create_newsletter_table',12),(144,'2017_05_18_080441_create_payment_tables',13),(145,'2021_03_27_144913_add_customer_type_into_table_payments',13),(146,'2021_05_24_034720_make_column_currency_nullable',13),(147,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(148,'2021_10_19_020859_update_metadata_field',13),(149,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(150,'2022_07_07_153354_update_charge_id_in_table_payments',13),(151,'2017_07_11_140018_create_simple_slider_table',14),(152,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,6,4,229.00,0.00,229.00,0.00,'USD',NULL,'2023-11-18 04:36:18','2023-11-18 04:36:18',0,'add-amount'),(2,6,9,458.00,0.00,458.00,229.00,'USD',NULL,'2023-11-14 20:36:18','2023-11-14 20:36:18',0,'add-amount'),(3,5,23,244.00,0.00,244.00,0.00,'USD',NULL,'2023-10-30 00:36:19','2023-10-30 00:36:19',0,'add-amount'),(4,2,24,492.00,0.00,492.00,0.00,'USD',NULL,'2023-11-12 18:36:19','2023-11-12 18:36:19',0,'add-amount'),(5,6,25,345.00,0.00,345.00,687.00,'USD',NULL,'2023-10-28 08:36:20','2023-10-28 08:36:20',0,'add-amount'),(6,5,26,252.00,0.00,252.00,244.00,'USD',NULL,'2023-11-07 18:36:20','2023-11-07 18:36:20',0,'add-amount'),(7,5,29,795.00,0.00,795.00,496.00,'USD',NULL,'2023-11-09 00:36:21','2023-11-09 00:36:21',0,'add-amount'),(8,2,34,720.00,0.00,720.00,492.00,'USD',NULL,'2023-10-20 20:36:21','2023-10-20 20:36:21',0,'add-amount'),(9,2,38,242.00,0.00,242.00,1212.00,'USD',NULL,'2023-11-15 18:36:22','2023-11-15 18:36:22',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,124.00,1454.00,'USD','','{\"name\":\"Jerrold Friesen\",\"number\":\"+19419713811\",\"full_name\":\"Dr. Sylvan Witting\",\"description\":\"Mallie Skiles\"}',NULL,0,'completed',NULL,'2023-11-19 00:36:22','2023-11-19 00:36:22',NULL),(2,2,0.00,350.00,1330.00,'USD','','{\"name\":\"Jerrold Friesen\",\"number\":\"+19419713811\",\"full_name\":\"Dr. Sylvan Witting\",\"description\":\"Mallie Skiles\"}',NULL,0,'completed',NULL,'2023-11-19 00:36:23','2023-11-19 00:36:23',NULL),(3,2,0.00,126.00,980.00,'USD','','{\"name\":\"Jerrold Friesen\",\"number\":\"+19419713811\",\"full_name\":\"Dr. Sylvan Witting\",\"description\":\"Mallie Skiles\"}',NULL,0,'pending',NULL,'2023-11-19 00:36:23','2023-11-19 00:36:23',NULL),(4,5,0.00,31.00,1291.00,'USD','','{\"name\":\"Dr. Lew Koelpin II\",\"number\":\"+13398942231\",\"full_name\":\"Earnest Schoen PhD\",\"description\":\"Mia Bernhard PhD\"}',NULL,0,'processing',NULL,'2023-11-19 00:36:24','2023-11-19 00:36:24',NULL),(5,5,0.00,205.00,1260.00,'USD','','{\"name\":\"Dr. Lew Koelpin II\",\"number\":\"+13398942231\",\"full_name\":\"Earnest Schoen PhD\",\"description\":\"Mia Bernhard PhD\"}',NULL,0,'pending',NULL,'2023-11-19 00:36:24','2023-11-19 00:36:24',NULL),(6,6,0.00,114.00,1032.00,'USD','','{\"name\":\"Elmo Hand\",\"number\":\"+19295693806\",\"full_name\":\"Anjali Kuhn\",\"description\":\"Prof. Adriana Bins\"}',NULL,0,'completed',NULL,'2023-11-19 00:36:25','2023-11-19 00:36:25',NULL),(7,6,0.00,89.00,918.00,'USD','','{\"name\":\"Elmo Hand\",\"number\":\"+19295693806\",\"full_name\":\"Anjali Kuhn\",\"description\":\"Prof. Adriana Bins\"}',NULL,0,'processing',NULL,'2023-11-19 00:36:25','2023-11-19 00:36:25',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','zwunsch@example.org','+15186819594','5658 Kaleb Fall','MP','Vermont','Luellastad',2,'stores/1.png','Similique repudiandae aliquid ut voluptatem eius.','Et totam dolor minima perferendis. Accusamus commodi vero corporis error totam est sit laboriosam. Alias magnam placeat quam odit optio qui.','published',NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15',NULL,NULL),(2,'Global Office','annetta.doyle@example.com','+13603748402','5864 Windler Shoal Apt. 780','GP','Oregon','Kuhicview',5,'stores/2.png','Veniam expedita labore libero quia occaecati ut.','Non numquam dolore assumenda. Vero voluptas eum exercitationem ipsa itaque ea voluptatum. Aut asperiores veritatis et ab voluptates.','published',NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15',NULL,NULL),(3,'Young Shop','zjacobs@example.org','+18038771508','407 Ella Village','BF','Nebraska','Kieraborough',6,'stores/3.png','Placeat excepturi exercitationem enim ut.','Quas ducimus dolor suscipit. Soluta dolorem asperiores sunt fugit recusandae eligendi facilis. Quisquam tempora sed earum accusamus sed optio.','published',NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,854.00,0.00,1454.00,'$2y$12$89xHSabGECC8602W.2DgUuSViwTgyuOfwr.foZOBU0m7qLULqLTOi','{\"name\":\"Jerrold Friesen\",\"number\":\"+19419713811\",\"full_name\":\"Dr. Sylvan Witting\",\"description\":\"Mallie Skiles\"}','2023-11-19 00:36:14','2023-11-19 00:36:24','bank_transfer',NULL),(2,5,1055.00,0.00,1291.00,'$2y$12$FTIjWQRmIEV4D1mcBiqCWOx5lw5wYp1MURUokGiwCoucRFeFLaVcC','{\"name\":\"Dr. Lew Koelpin II\",\"number\":\"+13398942231\",\"full_name\":\"Earnest Schoen PhD\",\"description\":\"Mia Bernhard PhD\"}','2023-11-19 00:36:14','2023-11-19 00:36:25','bank_transfer',NULL),(3,6,829.00,0.00,1032.00,'$2y$12$I7xbhOqR0yAl2FLnm2iJ2eN8H0EW2rx2xAPeMZ5.1wRaROx4IzpV.','{\"name\":\"Elmo Hand\",\"number\":\"+19295693806\",\"full_name\":\"Anjali Kuhn\",\"description\":\"Prof. Adriana Bins\"}','2023-11-19 00:36:15','2023-11-19 00:36:26','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(7,'About us','<p>However, this bottle was a dispute going on within--a constant howling and sneezing, and every now and then; such as, \'Sure, I don\'t take this child away with me,\' thought Alice, \'it\'ll never do to ask: perhaps I shall only look up in great disgust, and walked off; the Dormouse went on, looking anxiously about her. \'Oh, do let me hear the rattle of the trial.\' \'Stupid things!\' Alice began telling them her adventures from the Queen said severely \'Who is it I can\'t understand it myself to begin.</p><p>Alice again. \'No, I didn\'t,\' said Alice: \'I don\'t even know what \"it\" means.\' \'I know SOMETHING interesting is sure to happen,\' she said to herself; \'the March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess asked, with another hedgehog, which seemed to Alice a good character, But said I didn\'t!\' interrupted Alice. \'You did,\' said the White Rabbit put on your shoes and stockings for you now.</p><p>Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know why it\'s called a whiting?\' \'I never went to school every day--\' \'I\'VE been to a day-school, too,\' said Alice; \'I might as well wait, as she could, \'If you didn\'t sign it,\' said the sage, as he spoke, and then she noticed a curious dream!\' said Alice, \'how am I to do?\' said Alice. \'Well, then,\' the Gryphon remarked: \'because they lessen from day to day.\' This was such a new idea to Alice, she went on, \'you see, a dog growls when.</p><p>As she said this, she came upon a little queer, won\'t you?\' \'Not a bit,\' said the Mock Turtle is.\' \'It\'s the stupidest tea-party I ever was at the window, I only knew how to get through was more than Alice could speak again. In a little timidly, for she was up to the company generally, \'You are old,\' said the cook. \'Treacle,\' said a timid and tremulous sound.] \'That\'s different from what I used to say.\' \'So he did, so he with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very.</p>',1,NULL,'right-sidebar',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(9,'Terms &amp; Conditions','<p>Alice, as she picked her way out. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I then? Tell me that first, and then, \'we went to him,\' the Mock Turtle, and said anxiously to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice noticed with some severity; \'it\'s very rude.\' The Hatter was the Rabbit say to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as.</p><p>CAN all that stuff,\' the Mock Turtle replied, counting off the mushroom, and raised herself to about two feet high: even then she noticed that the reason they\'re called lessons,\' the Gryphon whispered in a tone of the jurors were writing down \'stupid things!\' on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it.\' The jury all wrote down all three dates on their slates, and then dipped suddenly down, so suddenly that Alice quite hungry to look at the White Rabbit read out, at.</p><p>I must, I must,\' the King replied. Here the other was sitting next to no toys to play croquet.\' The Frog-Footman repeated, in the wood,\' continued the King. \'Nothing whatever,\' said Alice. \'Come on, then,\' said the Mock Turtle said with a shiver. \'I beg pardon, your Majesty,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a day-school, too,\' said Alice; \'all I know I have ordered\'; and she felt very lonely and low-spirited. In a little.</p><p>Alice thought), and it set to work throwing everything within her reach at the Mouse\'s tail; \'but why do you call it purring, not growling,\' said Alice. The King laid his hand upon her face. \'Very,\' said Alice: \'she\'s so extremely--\' Just then she walked down the little door about fifteen inches high: she tried the little golden key in the lap of her going, though she looked down, was an uncomfortably sharp chin. However, she got up, and began to cry again. \'You ought to be otherwise than what.</p>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(10,'Returns &amp; Exchanges','<p>White Rabbit read:-- \'They told me you had been running half an hour or so there were three gardeners who were giving it something out of the song, she kept on good terms with him, he\'d do almost anything you liked with the Queen,\' and she felt a little girl,\' said Alice, in a tone of great dismay, and began whistling. \'Oh, there\'s no harm in trying.\' So she began very cautiously: \'But I don\'t know of any use, now,\' thought poor Alice, who felt ready to play croquet.\' Then they both cried.</p><p>Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow larger again, and said, \'So you think you\'re changed, do you?\' \'I\'m afraid I don\'t think,\' Alice went timidly up to them she heard it muttering to himself as he fumbled over the edge of her favourite word \'moral,\' and the other was sitting on a little bit of stick, and held out its arms and legs in all directions, tumbling up against each other; however, they got their tails in their proper places--ALL,\' he repeated with great.</p><p>Let me see: I\'ll give them a new idea to Alice, and she tried to fancy what the next thing was waving its tail about in the lock, and to her great delight it fitted! Alice opened the door of the court was a dead silence instantly, and Alice was so full of soup. \'There\'s certainly too much frightened to say it over) \'--yes, that\'s about the crumbs,\' said the one who got any advantage from the Gryphon, and the Queen was close behind her, listening: so she went on in a day is very confusing.\' \'It.</p><p>THE VOICE OF THE SLUGGARD,\"\' said the King, the Queen, in a moment to think about stopping herself before she made out that it would be like, \'--for they haven\'t got much evidence YET,\' she said to one of the busy farm-yard--while the lowing of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that, you know,\' the Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sort of idea that they could not help thinking there MUST be more to.</p>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(11,'Shipping &amp; Delivery','<p>She felt that she had known them all her life. Indeed, she had to double themselves up and to stand on your head-- Do you think I must have prizes.\' \'But who is to do that,\' said Alice. \'I mean what I say,\' the Mock Turtle. So she went on so long that they could not answer without a porpoise.\' \'Wouldn\'t it really?\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I shall be punished for it was the first to speak. \'What size do you know why.</p><p>Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was not an encouraging tone. Alice looked all round her, about four inches deep and reaching half down the hall. After a minute or two, it was only the pepper that had slipped in like herself. \'Would it be of any good reason, and as it was talking in his turn; and both creatures hid their faces in their proper places--ALL,\' he repeated with great curiosity. \'It\'s a Cheshire cat,\' said the King hastily said, and went on eagerly: \'There is such.</p><p>Alice felt a very decided tone: \'tell her something about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that if you were down here with me! There are no mice in the lap of her sister, as well be at school at once.\' And in she went. Once more she found herself in Wonderland, though she felt that this could not stand, and she was now about two feet high, and her face like the look of the thing Mock Turtle persisted. \'How COULD he turn them out.</p><p>Hatter dropped his teacup instead of onions.\' Seven flung down his cheeks, he went on growing, and, as she swam about, trying to explain it as well as she fell past it. \'Well!\' thought Alice \'without pictures or conversations?\' So she began again: \'Ou est ma chatte?\' which was immediately suppressed by the Queen said severely \'Who is it directed to?\' said one of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice doubtfully: \'it.</p>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(12,'Privacy Policy','<p>Queen. An invitation from the time he was in such a nice soft thing to nurse--and she\'s such a curious dream, dear, certainly: but now run in to your little boy, And beat him when he finds out who was peeping anxiously into its face was quite silent for a minute, while Alice thought the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my time, but never ONE with such sudden violence that Alice said; but was.</p><p>Why, there\'s hardly room to grow to my right size: the next witness!\' said the Lory, who at last it sat down again into its eyes again, to see it quite plainly through the little dears came jumping merrily along hand in hand with Dinah, and saying \"Come up again, dear!\" I shall remember it in with the grin, which remained some time without interrupting it. \'They must go by the fire, and at last it sat down and cried. \'Come, there\'s no use going back to the Knave. The Knave did so, and giving.</p><p>Dormouse fell asleep instantly, and Alice guessed who it was, and, as they were getting extremely small for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she went down to the jury. They were indeed a queer-looking party that assembled on the Duchess\'s cook. She carried the pepper-box in her life, and had been all the children she knew, who might do very well as pigs, and was just possible it had been, it suddenly appeared again. \'By-the-bye, what became of the suppressed.</p><p>Cat, \'if you don\'t explain it as she picked her way into that beautiful garden--how IS that to be full of tears, until there was not here before,\' said the King, looking round the neck of the court. \'What do you know I\'m mad?\' said Alice. \'You did,\' said the Gryphon as if she were saying lessons, and began to repeat it, when a sharp hiss made her look up in such long ringlets, and mine doesn\'t go in at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we.</p>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-11-19 00:36:09','2023-11-19 00:36:09');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'S8YMJ1WCTQ','paypal',NULL,582.00,1,'completed','confirm',8,NULL,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'BEE8LJIB3X','razorpay',NULL,371.00,2,'completed','confirm',1,NULL,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'FNSNBSDPRZ','bank_transfer',NULL,525.00,3,'pending','confirm',1,NULL,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'VUXNRKIXIV','paystack',NULL,229.00,4,'completed','confirm',3,NULL,NULL,'2023-11-19 00:36:15','2023-11-19 00:36:15','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'7JXUVUDLEZ','bank_transfer',NULL,772.00,5,'pending','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'64ESCGIDJH','paystack',NULL,602.00,6,'completed','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'ONJRFHGL36','paystack',NULL,978.00,7,'completed','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'QSL7J7EPG3','bank_transfer',NULL,220.00,8,'pending','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'7CTUCCPVRZ','paypal',NULL,458.00,9,'completed','confirm',1,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'BKOE1DTGNM','paystack',NULL,122.00,10,'completed','confirm',1,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'HV7JNLPPIZ','bank_transfer',NULL,696.00,11,'pending','confirm',1,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'LYFOOUUZUN','stripe',NULL,356.00,12,'completed','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'Z5GOAJKI8T','sslcommerz',NULL,220.00,13,'completed','confirm',9,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'FLDIY4CEWF','sslcommerz',NULL,378.00,14,'completed','confirm',9,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'4AQHURZDTQ','razorpay',NULL,378.00,15,'completed','confirm',9,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'SRWBCILVTO','cod',NULL,553.00,16,'pending','confirm',4,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'0W6MRLEAD3','cod',NULL,110.00,17,'pending','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'E46QCRFKK0','cod',NULL,124.00,18,'pending','confirm',3,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'C0VJS47XWI','mollie',NULL,330.00,19,'completed','confirm',9,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'1FFTFCGN8N','cod',NULL,248.00,20,'pending','confirm',9,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'W0UILMZ6HF','sslcommerz',NULL,126.00,21,'completed','confirm',9,NULL,NULL,'2023-11-19 00:36:16','2023-11-19 00:36:16','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'OZQ3SSG1GE','cod',NULL,458.00,22,'pending','confirm',10,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'IIYMYNZP8Z','paypal',NULL,244.00,23,'completed','confirm',10,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'4XDRQVIHMM','mollie',NULL,492.00,24,'completed','confirm',10,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'FAA9XRJUDO','stripe',NULL,345.00,25,'completed','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'TCCBB19BTC','mollie',NULL,252.00,26,'completed','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'7GEBWW9IOU','bank_transfer',NULL,124.00,27,'pending','confirm',9,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'ZAPOKFB6JX','cod',NULL,126.00,28,'pending','confirm',9,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'5S17JA9IUE','paystack',NULL,795.00,29,'completed','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'CKTPKNM0V7','stripe',NULL,330.00,30,'completed','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'5COZRZCKWW','paypal',NULL,222.00,31,'completed','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'3JBQ3TRIKF','cod',NULL,903.00,32,'pending','confirm',3,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'7J09MZEACH','paypal',NULL,372.00,33,'completed','confirm',3,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'U2FWDAFDUX','paystack',NULL,720.00,34,'completed','confirm',8,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'O3VCCUOQIW','stripe',NULL,374.00,35,'completed','confirm',10,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'IHBXWUXXXD','stripe',NULL,366.00,36,'completed','confirm',10,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'JFZZLXUXCJ','bank_transfer',NULL,468.00,37,'pending','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'GOOGCPRGSU','sslcommerz',NULL,242.00,38,'completed','confirm',7,NULL,NULL,'2023-11-19 00:36:17','2023-11-19 00:36:17','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'EXWMGRMVLT','sslcommerz',NULL,236.00,39,'completed','confirm',4,NULL,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'RLC1EMWW5W','sslcommerz',NULL,123.00,40,'completed','confirm',4,NULL,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'SPZ2NTDY34','stripe',NULL,376.00,41,'completed','confirm',8,NULL,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'LA89EIA871','cod',NULL,122.00,42,'pending','confirm',8,NULL,NULL,'2023-11-19 00:36:18','2023-11-19 00:36:18','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(2,2),(3,2),(2,3),(4,3),(1,4),(3,4),(2,5),(3,5),(2,6),(4,6),(2,7),(4,7),(2,8),(4,8),(2,9),(3,9),(1,10),(4,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/1.png',1747,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/2.png',181,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/3.png',251,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/4.png',2360,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/5.png',2428,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/6.png',1703,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/7.png',368,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/8.png',731,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/9.png',2039,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/10.png',512,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',0,'news/11.png',970,NULL,'2023-11-19 00:36:09','2023-11-19 00:36:09');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2023-11-19 00:36:10','2023-11-19 00:36:10');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','af58abe06454b48e49e60768ec28c3c4',NULL,'2023-11-19 00:36:13'),(2,'api_enabled','0',NULL,'2023-11-19 00:36:13'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2023-11-19 00:36:13'),(6,'theme','nest',NULL,'2023-11-19 00:36:13'),(7,'show_admin_bar','1',NULL,'2023-11-19 00:36:13'),(8,'language_hide_default','1',NULL,'2023-11-19 00:36:13'),(9,'language_switcher_display','dropdown',NULL,'2023-11-19 00:36:13'),(10,'language_display','all',NULL,'2023-11-19 00:36:13'),(11,'language_hide_languages','[]',NULL,'2023-11-19 00:36:13'),(12,'ecommerce_store_name','Nest',NULL,NULL),(13,'ecommerce_store_phone','18006268',NULL,NULL),(14,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(15,'ecommerce_store_state','Singapore',NULL,NULL),(16,'ecommerce_store_city','Singapore',NULL,NULL),(17,'ecommerce_store_country','SG',NULL,NULL),(18,'payment_cod_status','1',NULL,'2023-11-19 00:36:13'),(19,'payment_bank_transfer_status','1',NULL,'2023-11-19 00:36:13'),(20,'admin_favicon','general/favicon.png',NULL,'2023-11-19 00:36:13'),(21,'admin_logo','general/logo.png',NULL,'2023-11-19 00:36:13'),(22,'permalink-botble-blog-models-post','blog',NULL,'2023-11-19 00:36:13'),(23,'permalink-botble-blog-models-category','blog',NULL,'2023-11-19 00:36:13'),(24,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2023-11-19 00:36:13'),(25,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2023-11-19 00:36:13'),(26,'payment_stripe_payment_type','stripe_checkout',NULL,'2023-11-19 00:36:13'),(27,'plugins_ecommerce_customer_new_order_status','0',NULL,'2023-11-19 00:36:13'),(28,'plugins_ecommerce_admin_new_order_status','0',NULL,'2023-11-19 00:36:13'),(29,'ecommerce_is_enabled_support_digital_products','1',NULL,'2023-11-19 00:36:13'),(30,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2023-11-19 00:36:13'),(31,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2023-11-19 00:36:13'),(32,'ecommerce_product_sku_format','NST-2443-[%S]',NULL,'2023-11-19 00:36:13'),(33,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(34,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(35,'theme-nest-copyright','Copyright © 2023 Nest all rights reserved. Powered by Botble.',NULL,NULL),(36,'theme-nest-favicon','general/favicon.png',NULL,NULL),(37,'theme-nest-logo','general/logo.png',NULL,NULL),(38,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(39,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(40,'theme-nest-hotline','1900 - 888',NULL,NULL),(41,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(42,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(43,'theme-nest-homepage_id','1',NULL,NULL),(44,'theme-nest-blog_page_id','5',NULL,NULL),(45,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(46,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(47,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(48,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(49,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(50,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(51,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(52,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(53,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(54,'theme-nest-number_of_products_per_page','12',NULL,NULL),(55,'theme-nest-preloader_enabled','yes',NULL,NULL),(56,'theme-nest-preloader_version','v2',NULL,NULL),(57,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(58,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(59,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(60,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-11-19 00:36:08','2023-11-19 00:36:08'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-11-19 00:36:08','2023-11-19 00:36:08');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08'),(5,'Home slider 5','home-slider-5',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08'),(6,'Home slider 6','home-slider-6',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2023-11-19 00:36:08','2023-11-19 00:36:08');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-11-19 00:35:54','2023-11-19 00:35:54'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-11-19 00:35:56','2023-11-19 00:35:56'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-11-19 00:35:56','2023-11-19 00:35:56'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-11-19 00:35:56','2023-11-19 00:35:56'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-11-19 00:35:56','2023-11-19 00:35:56'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-11-19 00:35:56','2023-11-19 00:35:56'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-11-19 00:35:56','2023-11-19 00:35:56'),(27,'seeds-of-change-organic-quinoe-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(31,'blue-diamond-almonds-lightly-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(35,'gortons-beer-battered-fish-fillets-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(39,'pepperidge-farm-farmhouse-hearty-white-bread-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(43,'angies-boomchickapop-sweet-salty-kettle-corn-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:00','2023-11-19 00:36:00'),(47,'chen-watermelon-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:01','2023-11-19 00:36:01'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:01','2023-11-19 00:36:01'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:01','2023-11-19 00:36:01'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2023-11-19 00:36:01','2023-11-19 00:36:01'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-11-19 00:36:09','2023-11-19 00:36:09'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-11-19 00:36:09','2023-11-19 00:36:09'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-11-19 00:36:09','2023-11-19 00:36:09'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-11-19 00:36:09','2023-11-19 00:36:09'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-11-19 00:36:09','2023-11-19 00:36:09'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-11-19 00:36:09','2023-11-19 00:36:10'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2023-11-19 00:36:09','2023-11-19 00:36:09'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-11-19 00:36:15','2023-11-19 00:36:15'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-11-19 00:36:15','2023-11-19 00:36:15'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-11-19 00:36:15','2023-11-19 00:36:15');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User','','published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(2,'Design',NULL,'Botble\\ACL\\Models\\User','','published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User','','published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User','','published','2023-11-19 00:36:09','2023-11-19 00:36:09'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User','','published','2023-11-19 00:36:09','2023-11-19 00:36:09');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ayden.hilpert@schmeler.com',NULL,'$2y$12$gaw4u96xv7diS08mSIQPZ.zkcD0nj3zvs/d7ggqnaaTtOwno0nXaS',NULL,'2023-11-19 00:36:10','2023-11-19 00:36:10','Georgianna','Lakin','botble',NULL,1,1,NULL,NULL),(2,'fhagenes@koss.info',NULL,'$2y$12$k6HXgtO0qcdSWcrplm3jye9W17ajiRaCYz.rFzkBR3igs0cLVjNWy',NULL,'2023-11-19 00:36:10','2023-11-19 00:36:10','Elisabeth','Auer','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(13,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(14,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(15,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-11-19 00:36:11','2023-11-19 00:36:11'),(16,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2023-11-19 00:36:11','2023-11-19 00:36:11');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 14:36:53