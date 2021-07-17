-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: birthday_gifts
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `department_types`
--

DROP TABLE IF EXISTS `department_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'Название типа подразделения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Типы подразделений (блок/практика/регион/офис и тд)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_types`
--

LOCK TABLES `department_types` WRITE;
/*!40000 ALTER TABLE `department_types` DISABLE KEYS */;
INSERT INTO `department_types` VALUES (1,'block'),(2,'practice'),(3,'region'),(4,'office');
/*!40000 ALTER TABLE `department_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int unsigned NOT NULL COMMENT 'Тип подразделения (блок/практика/регион/офис и тд)',
  `name` varchar(255) DEFAULT NULL COMMENT 'Название подразделения',
  `parent_department_id` int unsigned DEFAULT NULL COMMENT 'Родитель подразделения',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departments_type_id_fk` (`type_id`),
  KEY `departments_parent_department_id_idx` (`parent_department_id`),
  CONSTRAINT `departments_type_id_fk` FOREIGN KEY (`type_id`) REFERENCES `department_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Подразделения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,1,'Блок Бэкофис',NULL,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(2,1,'Блок комплексного сервиса',NULL,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(3,1,'Блок BI',NULL,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(4,2,'Кадровая администрация',1,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(5,2,'Корпоративные порталы',1,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(6,2,'Внутренние коммуникации',1,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(7,2,'Администрация блока',2,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(8,2,'Практика облачных решений',2,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(9,2,'Практика по вопросам миграции',2,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(10,2,'Практика внедрения',2,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(11,2,'Администрация блока',3,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(12,2,'Финансовые технологии',3,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(13,2,'Инновационные технологии',3,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(14,2,'Цифровые приложения',3,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(15,3,'Санкт-Петербург',NULL,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(16,3,'Москва',NULL,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(17,3,'Сочи',NULL,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(18,4,'Невский проспект',15,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(19,4,'Васильевский остров',15,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(20,4,'Савеловская',16,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(21,4,'Дмитровская',16,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(22,4,'Чеховская',16,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL),(23,4,'Красная поляна',17,'2021-07-17 15:53:03','2021-07-17 15:53:03',NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_statuses`
--

DROP TABLE IF EXISTS `gift_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT 'Название статуса',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы подарков (новый, устарел, в архиве)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_statuses`
--

LOCK TABLES `gift_statuses` WRITE;
/*!40000 ALTER TABLE `gift_statuses` DISABLE KEYS */;
INSERT INTO `gift_statuses` VALUES (1,'active'),(2,'obsolete'),(3,'archive');
/*!40000 ALTER TABLE `gift_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts`
--

DROP TABLE IF EXISTS `gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gifts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'Название подарка',
  `status_id` int unsigned DEFAULT NULL COMMENT 'Статус подарка (активный, устаревший, в архиве)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gifts_status_id_fk` (`status_id`),
  CONSTRAINT `gifts_status_id_fk` FOREIGN KEY (`status_id`) REFERENCES `gift_statuses` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разновидности подарков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts`
--

LOCK TABLES `gifts` WRITE;
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
INSERT INTO `gifts` VALUES (1,'Рюкзак',1,'2021-07-17 16:41:47','2021-07-17 16:41:47'),(2,'Сумка',1,'2021-07-17 16:41:47','2021-07-17 16:41:47'),(3,'Шарф',2,'2021-07-17 16:41:47','2021-07-17 16:42:30'),(4,'Кружка',1,'2021-07-17 16:41:47','2021-07-17 16:41:47'),(5,'Кофта',2,'2021-07-17 16:41:47','2021-07-17 16:42:30');
/*!40000 ALTER TABLE `gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `given_gifts`
--

DROP TABLE IF EXISTS `given_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `given_gifts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `gift_id` int unsigned NOT NULL COMMENT 'Какой был выдан подарок',
  `pick_up_point_id` int unsigned NOT NULL COMMENT 'Откуда был выдан подарок',
  `user_id` int unsigned NOT NULL COMMENT 'Кому был выдан подарок',
  `date_of_issue` datetime NOT NULL COMMENT 'Когда был выдан подарок (дата списания)',
  PRIMARY KEY (`id`),
  KEY `given_gifts_gift_id_fk` (`gift_id`),
  KEY `given_gifts_pick_up_point_id_fk` (`pick_up_point_id`),
  KEY `given_gifts_user_id_fk` (`user_id`),
  KEY `given_gifts_date_of_issue_idx` (`date_of_issue`),
  CONSTRAINT `given_gifts_gift_id_fk` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `given_gifts_pick_up_point_id_fk` FOREIGN KEY (`pick_up_point_id`) REFERENCES `pick_up_points` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `given_gifts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='История выдачи подарков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `given_gifts`
--

LOCK TABLES `given_gifts` WRITE;
/*!40000 ALTER TABLE `given_gifts` DISABLE KEYS */;
INSERT INTO `given_gifts` VALUES (1,1,2,28,'2021-06-08 17:30:00'),(2,1,5,94,'2021-06-16 17:30:00'),(3,4,2,3,'2021-01-25 17:30:00'),(4,2,5,11,'2020-09-15 17:30:00'),(5,3,3,24,'2020-09-17 17:30:00'),(6,4,5,1,'2021-07-08 17:30:00'),(7,4,2,83,'2020-07-23 17:30:00'),(8,4,3,12,'2020-08-15 17:30:00'),(9,3,3,31,'2021-02-06 17:30:00'),(10,5,2,68,'2021-01-29 17:30:00'),(11,3,3,52,'2021-04-24 17:30:00'),(12,2,1,22,'2020-11-22 17:30:00'),(13,2,5,32,'2020-11-10 17:30:00'),(14,4,3,13,'2021-02-27 17:30:00'),(15,3,5,92,'2020-08-05 17:30:00'),(16,5,3,97,'2021-05-18 17:30:00'),(17,3,1,31,'2020-09-28 17:30:00'),(18,2,5,95,'2021-01-18 17:30:00'),(19,1,5,44,'2020-12-28 17:30:00'),(20,3,4,97,'2021-07-04 17:30:00'),(21,4,6,10,'2021-07-17 21:48:13'),(23,4,6,10,'2021-07-17 22:27:41'),(24,4,6,10,'2021-07-17 22:28:19'),(25,4,6,10,'2021-07-17 22:29:42'),(26,4,6,10,'2021-07-17 22:30:46');
/*!40000 ALTER TABLE `given_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT 'Название статуса заказа',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'Выполнен'),(2,'Отменен'),(3,'Ожидает согласования'),(4,'Ожидает поступления');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL COMMENT 'Номер заказа. В одном заказе может быть несколько подарков',
  `gift_id` int unsigned NOT NULL COMMENT 'Подарок',
  `pick_up_point_id` int unsigned NOT NULL COMMENT 'Пункт выдачи, для которого заказ',
  `quantity` int unsigned NOT NULL COMMENT 'Количество подарков',
  `status_id` int unsigned NOT NULL COMMENT 'Статус заказа',
  `created_by` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_gift_id_fk` (`gift_id`),
  KEY `orders_pick_up_point_id_fk` (`pick_up_point_id`),
  KEY `orders_status_id_fk` (`status_id`),
  KEY `orders_order_id_idx` (`order_id`),
  CONSTRAINT `orders_gift_id_fk` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_pick_up_point_id_fk` FOREIGN KEY (`pick_up_point_id`) REFERENCES `pick_up_points` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_status_id_fk` FOREIGN KEY (`status_id`) REFERENCES `order_statuses` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы на подарки для пополнения количества подарков в пунктах выдачи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,6,3,4,49,3,7,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(2,9,4,6,41,3,68,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(3,8,4,2,43,2,68,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(4,8,2,2,32,1,68,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(5,7,1,6,45,4,58,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(6,3,2,2,30,2,28,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(7,7,5,5,48,2,58,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(8,1,2,4,45,1,68,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(9,6,4,5,31,4,28,'2021-07-17 19:38:06','2021-07-17 19:38:06'),(10,3,4,2,41,3,58,'2021-07-17 19:38:06','2021-07-17 19:38:06');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pick_up_point_limits`
--

DROP TABLE IF EXISTS `pick_up_point_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pick_up_point_limits` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pick_up_point_id` int unsigned NOT NULL COMMENT 'Пункт выдачи',
  `gift_id` int unsigned DEFAULT NULL COMMENT 'Подарок (может быть NULL, если лимит установлен на весь пункт выдачи, т.е. на всю сумму имеющихся подарков',
  `min_count` int unsigned DEFAULT NULL COMMENT 'Минимальный лимит. Нужен для оповещения заканчивающихся подарков',
  `max_count` int unsigned DEFAULT NULL COMMENT 'Максимальный лимит. Больше данного лимита нельзя заказывать подарок указанного вида и вообще нельзя заказывать подарки, если лимит на весь пункт выдачи',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pick_up_point_id` (`pick_up_point_id`,`gift_id`),
  KEY `pick_up_point_limits_gift_id_fk` (`gift_id`),
  KEY `pick_up_point_pick_up_point_id_idx` (`pick_up_point_id`),
  CONSTRAINT `pick_up_point_limits_gift_id_fk` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `pick_up_point_limits_pick_up_point_id_fk` FOREIGN KEY (`pick_up_point_id`) REFERENCES `pick_up_points` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Установленные лимиты в пункте выдачи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pick_up_point_limits`
--

LOCK TABLES `pick_up_point_limits` WRITE;
/*!40000 ALTER TABLE `pick_up_point_limits` DISABLE KEYS */;
INSERT INTO `pick_up_point_limits` VALUES (1,5,3,5,NULL,'2021-07-17 19:32:36','2021-07-17 19:32:36'),(2,2,2,5,NULL,'2021-07-17 19:32:36','2021-07-17 19:32:36'),(3,3,5,8,NULL,'2021-07-17 19:32:36','2021-07-17 19:32:36'),(4,6,2,9,NULL,'2021-07-17 19:32:36','2021-07-17 19:32:36'),(5,1,4,5,NULL,'2021-07-17 19:32:36','2021-07-17 19:32:36'),(6,6,5,NULL,30,'2021-07-17 19:33:15','2021-07-17 23:06:05'),(7,2,3,NULL,91,'2021-07-17 19:33:15','2021-07-17 19:33:15'),(8,3,1,NULL,77,'2021-07-17 19:33:15','2021-07-17 19:33:15'),(9,1,5,NULL,91,'2021-07-17 19:33:15','2021-07-17 19:33:15'),(10,5,4,NULL,73,'2021-07-17 19:33:15','2021-07-17 19:33:15'),(13,6,NULL,NULL,80,'2021-07-17 19:33:15','2021-07-17 19:33:15'),(14,6,3,9,NULL,'2021-07-17 19:32:36','2021-07-17 19:32:36');
/*!40000 ALTER TABLE `pick_up_point_limits` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `limit_min_max_insert` BEFORE INSERT ON `pick_up_point_limits` FOR EACH ROW BEGIN 
	IF NEW.min_count IS NULL AND NEW.max_count IS NULL THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Должен быть установлен хотя бы один лимит';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `limit_min_max_update` BEFORE UPDATE ON `pick_up_point_limits` FOR EACH ROW BEGIN 
	IF NEW.min_count IS NULL AND NEW.max_count IS NULL THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Должен быть установлен хотя бы один лимит';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pick_up_points`
--

DROP TABLE IF EXISTS `pick_up_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pick_up_points` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название пункта выдачи',
  `department_id` int unsigned DEFAULT NULL COMMENT 'Офис, в котором находится пункт выдачи',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pick_up_points_department_id_fk` (`department_id`),
  CONSTRAINT `pick_up_points_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пункты выдачи. В одном офисе может быть несколько';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pick_up_points`
--

LOCK TABLES `pick_up_points` WRITE;
/*!40000 ALTER TABLE `pick_up_points` DISABLE KEYS */;
INSERT INTO `pick_up_points` VALUES (1,'Проходная 1',18,'2021-07-17 16:50:59','2021-07-17 16:50:59',NULL),(2,'Проходная 4',18,'2021-07-17 16:50:59','2021-07-17 16:50:59',NULL),(3,'Этаж 5',22,'2021-07-17 16:50:59','2021-07-17 16:50:59',NULL),(4,'Этаж 3',23,'2021-07-17 16:50:59','2021-07-17 16:50:59',NULL),(5,'Проходная 7',22,'2021-07-17 16:50:59','2021-07-17 16:50:59',NULL),(6,'Главный склад',20,'2021-07-17 17:12:25','2021-07-17 17:18:39',NULL);
/*!40000 ALTER TABLE `pick_up_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pupl`
--

DROP TABLE IF EXISTS `pupl`;
/*!50001 DROP VIEW IF EXISTS `pupl`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pupl` AS SELECT 
 1 AS `id`,
 1 AS `pick_up_point_id`,
 1 AS `gift_id`,
 1 AS `min_count`,
 1 AS `max_count`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `quantity_gifts`
--

DROP TABLE IF EXISTS `quantity_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantity_gifts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `gift_id` int unsigned NOT NULL COMMENT 'Подарок',
  `pick_up_point_id` int unsigned NOT NULL COMMENT 'Пункт выдачи',
  `quantity` int unsigned NOT NULL COMMENT 'Количество определенного подарка',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gift_id` (`gift_id`,`pick_up_point_id`),
  KEY `quantity_gifts_pick_up_point_id_fk` (`pick_up_point_id`),
  KEY `quantity_gifts_gift_id_idx` (`gift_id`),
  CONSTRAINT `quantity_gifts_gift_id_fk` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `quantity_gifts_pick_up_point_id_fk` FOREIGN KEY (`pick_up_point_id`) REFERENCES `pick_up_points` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Количество подарков в наличие в пункте выдачи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantity_gifts`
--

LOCK TABLES `quantity_gifts` WRITE;
/*!40000 ALTER TABLE `quantity_gifts` DISABLE KEYS */;
INSERT INTO `quantity_gifts` VALUES (1,4,3,42),(2,2,5,43),(3,4,1,49),(4,3,1,34),(5,3,3,8),(6,1,6,13),(7,1,5,41),(8,2,4,18),(9,3,2,21),(10,3,5,17),(11,1,1,16),(12,5,2,10),(13,2,1,6),(14,3,6,19),(15,2,6,33),(16,5,6,15),(17,2,2,44),(18,1,3,41),(19,4,6,0),(20,5,3,39);
/*!40000 ALTER TABLE `quantity_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resp`
--

DROP TABLE IF EXISTS `resp`;
/*!50001 DROP VIEW IF EXISTS `resp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resp` AS SELECT 
 1 AS `pick_up_point_id`,
 1 AS `user_id`,
 1 AS `deleted_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `responsables`
--

DROP TABLE IF EXISTS `responsables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsables` (
  `pick_up_point_id` int unsigned NOT NULL COMMENT 'Пункт выдачи',
  `user_id` int unsigned NOT NULL COMMENT 'Отвественный за пункт выдачи',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`pick_up_point_id`,`user_id`),
  KEY `responsables_user_id_fk` (`user_id`),
  CONSTRAINT `responsables_pick_up_point_id_fk` FOREIGN KEY (`pick_up_point_id`) REFERENCES `pick_up_points` (`id`) ON DELETE CASCADE,
  CONSTRAINT `responsables_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Ответственные за пункты выдачи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsables`
--

LOCK TABLES `responsables` WRITE;
/*!40000 ALTER TABLE `responsables` DISABLE KEYS */;
INSERT INTO `responsables` VALUES (1,7,NULL),(1,28,NULL),(2,7,NULL),(2,58,NULL),(3,58,NULL),(3,68,NULL),(4,58,NULL),(4,68,NULL),(6,28,NULL),(6,58,NULL);
/*!40000 ALTER TABLE `responsables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT 'Название роли',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Роли';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'bg_admin'),(2,'bg_responsable');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) NOT NULL COMMENT 'Фамилия',
  `name` varchar(255) NOT NULL COMMENT 'Имя',
  `patronymic` varchar(255) DEFAULT NULL COMMENT 'Отчество. Человек может быть без отчества',
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL COMMENT 'День рождения',
  `department_id` int unsigned DEFAULT NULL COMMENT 'Подразделение, в котором находится сотрудник',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_department_id_fk` (`department_id`),
  KEY `users_last_name_idx` (`last_name`),
  KEY `users_last_name_name_idx` (`last_name`,`name`),
  KEY `users_birthday_idx` (`birthday`),
  KEY `users_email_idx` (`email`),
  CONSTRAINT `users_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jones','nemo','voluptatem','pmorissette@example.net','1985-05-04',7,'2021-07-06 03:47:20','2021-06-25 18:57:25',NULL),(2,'Ullrich','repellendus','tenetur','lhalvorson@example.com','1989-05-31',12,'2021-07-10 11:09:03','2021-06-24 20:07:21',NULL),(3,'Ledner','labore','sit','kparker@example.net','1995-02-01',4,'2021-07-10 13:24:48','2021-07-06 11:26:09',NULL),(4,'Borer','voluptate','sit','ostark@example.com','1984-01-12',10,'2021-07-17 09:38:14','2021-07-07 09:45:27',NULL),(5,'Jerde','deserunt','mollitia','oo\'hara@example.net','2013-06-10',13,'2021-06-22 15:48:35','2021-07-13 18:33:51',NULL),(6,'Thiel','sunt','iure','muller.mallie@example.com','1974-11-22',12,'2021-07-13 01:25:56','2021-07-08 23:22:01',NULL),(7,'Fahey','totam','consequatur','burley79@example.net','1989-10-11',6,'2021-07-06 07:28:31','2021-06-27 10:58:53',NULL),(8,'Schaden','laborum','deserunt','tgraham@example.org','1975-06-30',9,'2021-07-05 19:36:34','2021-06-28 04:58:56',NULL),(9,'Bartell','dolores','voluptatem','will.astrid@example.net','2009-05-13',8,'2021-06-29 16:25:41','2021-07-14 03:13:31',NULL),(10,'Cummerata','eveniet','ut','ckris@example.net','1976-06-07',7,'2021-07-10 04:49:13','2021-06-17 22:41:54',NULL),(11,'Leuschke','dolores','nihil','bobbie44@example.org','2010-07-31',10,'2021-07-11 11:12:51','2021-06-18 01:50:35',NULL),(12,'Welch','et','doloribus','leonor82@example.com','2010-02-17',10,'2021-07-10 18:56:06','2021-07-15 05:03:09',NULL),(13,'Hoppe','facere','repellendus','dbeahan@example.com','2004-01-26',12,'2021-06-18 06:36:27','2021-07-10 19:26:14',NULL),(14,'Kuhic','natus','rerum','msteuber@example.org','1970-04-15',7,'2021-07-06 00:44:05','2021-06-21 23:31:58',NULL),(15,'Casper','voluptas','eos','ofelia.murazik@example.org','1977-07-29',13,'2021-07-15 00:33:57','2021-07-06 14:50:02',NULL),(16,'Morissette','assumenda','necessitatibus','fabshire@example.org','1986-10-12',4,'2021-06-23 20:01:43','2021-06-23 08:31:52',NULL),(17,'Tromp','laborum','incidunt','beulah.towne@example.com','2001-12-18',5,'2021-06-25 13:49:19','2021-06-19 16:49:14',NULL),(18,'Powlowski','asperiores','in','cruickshank.loyal@example.com','2002-06-05',5,'2021-07-08 09:47:12','2021-06-22 19:02:38',NULL),(19,'West','quas','ut','corbin09@example.net','2011-09-04',11,'2021-07-14 00:10:16','2021-06-20 11:12:00',NULL),(20,'Greenfelder','omnis','necessitatibus','pdare@example.com','2015-03-09',4,'2021-06-20 01:10:21','2021-06-20 03:59:16',NULL),(21,'Schaden','molestias','vero','lhyatt@example.com','1971-06-15',14,'2021-06-19 04:09:25','2021-06-27 15:47:37',NULL),(22,'Kirlin','mollitia','possimus','cgreen@example.net','2004-07-21',4,'2021-07-10 07:23:21','2021-06-22 02:50:44',NULL),(23,'Gulgowski','voluptas','explicabo','mitchell99@example.org','2003-11-08',10,'2021-06-22 13:11:25','2021-06-18 02:36:22',NULL),(24,'Lang','voluptate','sit','derrick32@example.net','1999-11-23',4,'2021-06-29 16:13:20','2021-07-14 12:26:02',NULL),(25,'O\'Kon','ea','delectus','boyer.mckayla@example.org','1998-02-09',7,'2021-06-30 05:53:23','2021-07-09 12:22:58',NULL),(26,'Goyette','exercitationem','et','west.cooper@example.com','1972-12-21',9,'2021-06-19 18:46:27','2021-07-03 05:00:17',NULL),(27,'Daniel','voluptas','quam','hboehm@example.net','1998-02-08',9,'2021-07-06 12:05:29','2021-07-03 00:47:53',NULL),(28,'Hilll','similique','provident','lwintheiser@example.org','2017-09-10',14,'2021-06-30 19:23:55','2021-07-01 17:02:01',NULL),(29,'Reichert','est','rerum','laura.effertz@example.com','2001-05-06',4,'2021-06-20 02:23:13','2021-06-19 06:30:10',NULL),(30,'Nader','eos','culpa','hyatt.gianni@example.com','2012-02-12',8,'2021-07-15 03:17:47','2021-06-24 18:38:02',NULL),(31,'Langosh','ipsa','est','aaron.hickle@example.org','2019-11-08',8,'2021-07-05 07:32:28','2021-07-13 09:52:55',NULL),(32,'Rohan','ut','reiciendis','bcormier@example.com','2015-04-15',7,'2021-07-10 14:13:35','2021-06-29 11:25:49',NULL),(33,'Tremblay','qui','voluptate','una.schoen@example.org','2017-05-11',11,'2021-07-10 11:28:52','2021-07-12 00:54:12',NULL),(34,'Ryan','culpa','autem','ijaskolski@example.org','1982-03-22',5,'2021-07-12 10:40:14','2021-06-18 06:07:12',NULL),(35,'Dietrich','voluptas','est','nconroy@example.org','2014-09-06',14,'2021-06-27 03:03:22','2021-07-08 18:41:20',NULL),(36,'Lubowitz','consectetur','eius','zstoltenberg@example.org','2005-10-28',12,'2021-06-26 12:44:33','2021-06-26 04:03:46',NULL),(37,'Schamberger','aliquid','nostrum','lkilback@example.com','2017-02-17',13,'2021-07-04 09:35:51','2021-07-07 02:59:13',NULL),(38,'Dach','pariatur','modi','patience07@example.com','1973-09-02',10,'2021-06-19 12:37:20','2021-07-04 21:37:41',NULL),(39,'Davis','qui','enim','clara99@example.org','2004-04-11',7,'2021-07-01 15:49:09','2021-07-17 04:13:32',NULL),(40,'McGlynn','minus','alias','mhettinger@example.org','2015-03-09',7,'2021-07-13 11:04:31','2021-07-15 02:36:45',NULL),(41,'Vandervort','unde','quidem','danielle92@example.org','1981-01-11',6,'2021-07-14 14:24:40','2021-07-05 00:31:04',NULL),(42,'Paucek','fugit','tempora','sporer.nolan@example.com','1983-01-05',13,'2021-06-25 14:28:09','2021-07-10 01:39:45',NULL),(43,'Hand','voluptas','ut','madelyn53@example.org','2009-11-20',5,'2021-06-25 18:44:57','2021-07-10 18:11:37',NULL),(44,'Schmitt','quis','repudiandae','elaina73@example.com','1993-10-30',8,'2021-06-25 08:00:28','2021-06-24 05:43:33',NULL),(45,'Little','et','voluptatem','korbin.mclaughlin@example.com','1998-07-05',10,'2021-07-03 04:23:57','2021-06-17 14:31:53',NULL),(46,'Feest','et','adipisci','tparker@example.com','1979-02-22',5,'2021-06-19 12:57:49','2021-06-25 01:39:36',NULL),(47,'Klein','nesciunt','laudantium','djenkins@example.org','1989-10-09',11,'2021-07-13 12:50:02','2021-07-02 01:08:34',NULL),(48,'Schamberger','sed','eos','kiara.fadel@example.net','1977-12-13',6,'2021-07-17 08:15:01','2021-06-20 11:48:55',NULL),(49,'Prosacco','dolore','ratione','matilde42@example.net','2000-07-12',11,'2021-06-23 18:16:14','2021-06-22 17:38:51',NULL),(50,'Shanahan','ducimus','rem','hailee45@example.com','1999-04-15',8,'2021-07-13 20:29:03','2021-07-02 09:18:15',NULL),(51,'Jenkins','ipsam','voluptatum','qbauch@example.com','2012-08-03',11,'2021-06-27 17:47:41','2021-06-29 01:46:17',NULL),(52,'Kihn','omnis','quod','stanton.tremayne@example.net','1993-07-25',10,'2021-07-14 21:51:16','2021-06-24 01:12:55',NULL),(53,'Schmidt','aut','expedita','krajcik.cristal@example.org','1972-02-16',14,'2021-06-27 02:22:36','2021-06-27 13:22:31',NULL),(54,'Morar','eaque','dolor','wilderman.reta@example.com','2014-01-19',12,'2021-07-01 03:11:15','2021-07-07 17:12:54',NULL),(55,'Wuckert','fuga','nisi','hickle.dameon@example.org','2014-02-25',6,'2021-07-02 11:00:48','2021-07-17 00:42:37',NULL),(56,'Friesen','vitae','sit','heath03@example.com','1980-07-06',13,'2021-07-11 18:37:28','2021-07-12 18:55:02',NULL),(57,'Wisoky','officiis','aperiam','cummerata.armando@example.org','2014-01-08',4,'2021-06-30 20:09:46','2021-07-15 08:12:23',NULL),(58,'Becker','voluptas','et','nzboncak@example.com','2021-02-25',11,'2021-06-28 17:44:50','2021-06-23 19:24:44',NULL),(59,'Bailey','molestiae','quia','sven.fisher@example.org','1996-08-15',13,'2021-07-07 21:28:48','2021-06-28 08:33:57',NULL),(60,'Kuphal','nesciunt','sunt','senger.oma@example.net','2011-04-14',5,'2021-07-11 00:22:24','2021-07-05 19:20:39',NULL),(61,'Hartmann','voluptatem','minima','nbotsford@example.com','1971-08-24',7,'2021-07-17 01:31:36','2021-06-20 12:05:48',NULL),(62,'Schneider','unde','et','lchamplin@example.com','2013-02-16',6,'2021-07-06 21:54:41','2021-07-05 08:22:25',NULL),(63,'Herzog','atque','eveniet','beatty.birdie@example.org','2018-04-08',11,'2021-07-02 10:38:35','2021-07-10 08:36:48',NULL),(64,'Rau','laudantium','aperiam','wiza.rosetta@example.com','1984-05-17',12,'2021-06-17 13:26:51','2021-06-18 16:43:16',NULL),(65,'Muller','sint','repellat','mccullough.carlotta@example.net','2009-12-08',4,'2021-07-12 14:35:11','2021-06-20 03:44:25',NULL),(66,'Thompson','enim','saepe','lakin.reyna@example.net','2001-09-04',12,'2021-07-17 07:37:40','2021-07-10 04:23:07',NULL),(67,'Mueller','optio','quia','parisian.monica@example.net','1971-12-02',7,'2021-07-11 07:39:10','2021-07-14 18:43:25',NULL),(68,'Brakus','dolores','sint','ischuppe@example.net','2010-01-25',6,'2021-07-07 16:47:26','2021-06-23 01:02:36',NULL),(69,'Kulas','minima','maxime','keebler.joey@example.com','1981-12-15',10,'2021-07-03 02:11:09','2021-07-13 21:37:13',NULL),(70,'McGlynn','possimus','aut','kulas.keanu@example.org','2012-10-30',11,'2021-07-10 14:53:32','2021-06-28 16:12:31',NULL),(71,'Walsh','fugiat','et','stokes.rex@example.com','1986-04-20',10,'2021-06-19 18:45:07','2021-07-10 04:26:02',NULL),(72,'Blanda','nihil','voluptatum','xbarton@example.net','1988-10-16',11,'2021-07-09 04:45:33','2021-06-22 12:25:41',NULL),(73,'Kutch','amet','voluptatibus','braun.mattie@example.org','1976-03-16',4,'2021-07-02 20:52:20','2021-07-01 14:04:01',NULL),(74,'Daniel','eius','sint','tamara69@example.com','2014-01-08',5,'2021-07-02 17:39:19','2021-07-11 23:05:34',NULL),(75,'Wintheiser','rem','nulla','gheidenreich@example.net','2002-02-04',10,'2021-07-12 08:15:08','2021-06-26 11:54:18',NULL),(76,'Runolfsson','ut','et','dhomenick@example.com','2006-08-01',13,'2021-06-23 23:39:28','2021-07-06 00:27:38',NULL),(77,'Mayert','omnis','aspernatur','oral47@example.org','1995-04-01',11,'2021-07-10 20:14:12','2021-06-28 01:27:43',NULL),(78,'Stanton','voluptatem','laboriosam','micaela43@example.net','2019-09-04',14,'2021-07-09 22:22:04','2021-06-28 18:21:42',NULL),(79,'Daugherty','mollitia','ea','pfunk@example.net','1986-03-04',8,'2021-07-02 16:21:52','2021-06-21 15:48:12',NULL),(80,'Frami','nihil','et','reinger.delphia@example.net','1973-11-22',7,'2021-06-27 17:42:03','2021-06-24 06:21:20',NULL),(81,'Cummings','ut','voluptatem','kkoelpin@example.com','1994-01-09',7,'2021-07-10 21:01:41','2021-06-20 19:57:18',NULL),(82,'Boyle','architecto','consectetur','brent11@example.net','2019-04-18',14,'2021-06-24 05:13:56','2021-07-16 02:43:00',NULL),(83,'Simonis','odio','amet','qwalter@example.net','1981-05-27',9,'2021-07-15 01:17:38','2021-07-14 23:37:52',NULL),(84,'Crona','voluptas','eum','wwuckert@example.org','2018-02-20',13,'2021-07-09 02:11:07','2021-06-23 06:55:54',NULL),(85,'Ritchie','labore','laborum','zterry@example.org','1995-06-08',6,'2021-07-12 05:46:59','2021-06-21 10:49:49',NULL),(86,'Kozey','atque','vel','vwaters@example.com','1992-06-06',7,'2021-07-15 18:53:46','2021-07-06 13:33:17',NULL),(87,'Witting','quas','placeat','garett.little@example.net','2011-07-13',13,'2021-07-07 16:12:32','2021-07-15 11:31:01',NULL),(88,'Mayer','et','quo','andreanne47@example.net','2012-10-31',6,'2021-07-04 17:02:14','2021-06-29 14:10:55',NULL),(89,'Sawayn','delectus','vitae','leanne66@example.com','2011-09-11',12,'2021-07-11 21:26:19','2021-06-29 17:01:51',NULL),(90,'Bailey','voluptatem','aut','larkin.willow@example.com','1998-08-21',4,'2021-06-17 15:08:44','2021-06-29 10:26:54',NULL),(91,'Aufderhar','totam','sed','oberbrunner.margaret@example.org','2018-03-23',4,'2021-07-03 11:05:47','2021-07-06 08:07:21',NULL),(92,'Nader','voluptate','aspernatur','dalton93@example.com','2012-07-21',5,'2021-06-19 23:18:57','2021-06-27 08:38:38',NULL),(93,'Raynor','enim','a','hbarton@example.org','1995-10-26',13,'2021-06-25 20:04:18','2021-06-21 22:33:41',NULL),(94,'Kuphal','non','sequi','kilback.asia@example.net','1996-02-23',14,'2021-06-19 02:42:28','2021-06-18 01:50:06',NULL),(95,'Gleason','aut','placeat','verda40@example.net','1987-08-30',12,'2021-07-02 18:28:01','2021-06-20 03:35:42',NULL),(96,'Rolfson','cupiditate','qui','vinnie89@example.net','2002-04-07',12,'2021-07-12 04:50:07','2021-07-04 17:30:38',NULL),(97,'Mohr','harum','provident','roman13@example.com','2013-10-13',4,'2021-06-22 05:07:15','2021-07-13 09:23:03',NULL),(98,'Rath','occaecati','ut','mckenzie.schumm@example.org','1993-10-09',8,'2021-06-24 19:39:16','2021-07-03 15:38:28',NULL),(99,'Wisozk','possimus','aut','nbeer@example.org','1978-06-07',13,'2021-07-14 09:22:28','2021-07-11 20:13:03',NULL),(100,'Rippin','alias','sit','braden51@example.com','2001-02-03',6,'2021-07-13 02:45:08','2021-06-29 00:13:08',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `role_id` int unsigned NOT NULL COMMENT 'Роль',
  `user_id` int unsigned NOT NULL COMMENT 'Пользователь, которому присвоена роль',
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `users_roles_user_id_fk` (`user_id`),
  CONSTRAINT `users_roles_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_roles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Роли пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,5),(2,7),(2,28),(2,55),(2,58),(2,68),(2,80),(1,91);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `pupl`
--

/*!50001 DROP VIEW IF EXISTS `pupl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pupl` AS select `pick_up_point_limits`.`id` AS `id`,`pick_up_point_limits`.`pick_up_point_id` AS `pick_up_point_id`,`pick_up_point_limits`.`gift_id` AS `gift_id`,`pick_up_point_limits`.`min_count` AS `min_count`,`pick_up_point_limits`.`max_count` AS `max_count`,`pick_up_point_limits`.`created_at` AS `created_at`,`pick_up_point_limits`.`updated_at` AS `updated_at` from `pick_up_point_limits` where (`pick_up_point_limits`.`pick_up_point_id` = `pupl_info`(6)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resp`
--

/*!50001 DROP VIEW IF EXISTS `resp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resp` AS select `responsables`.`pick_up_point_id` AS `pick_up_point_id`,`responsables`.`user_id` AS `user_id`,`responsables`.`deleted_at` AS `deleted_at` from `responsables` where (`responsables`.`pick_up_point_id` = `pupl_info`(6)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-18  0:57:51
