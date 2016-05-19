-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hrm_y16
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'superadmin','{\"_superadmin\":1}',0,'2016-05-15 04:20:10','2016-05-16 23:34:23'),(2,'editor','{\"_user-editor\":1,\"_group-editor\":1}',0,'2016-05-15 04:20:10','2016-05-15 04:20:10'),(3,'base admin','{\"_user-editor\":1}',0,'2016-05-15 04:20:10','2016-05-15 04:20:10'),(5,'user profile','{\"_profile-change-avatar\":1}',0,'2016-05-15 20:06:01','2016-05-15 20:06:08'),(6,'HRM admin','{\"_hrm-admin\":1}',0,'2016-05-17 01:34:44','2016-05-17 01:34:49'),(7,'HRM user','{\"_hrm-user\":1}',0,'2016-05-17 01:35:04','2016-05-17 01:35:08'),(8,'aaaaaaaaa',NULL,0,'2016-05-17 19:27:09','2016-05-17 19:27:09'),(9,'bbbbbbbbbbbbbbbb',NULL,0,'2016-05-17 19:27:14','2016-05-17 19:27:14'),(10,'cccccccccccccccccccc',NULL,0,'2016-05-17 19:27:19','2016-05-17 19:27:19'),(11,'dddddddddddddddd',NULL,0,'2016-05-17 19:27:23','2016-05-17 19:27:23'),(12,'eeeeeeeeeeeeeeeee',NULL,0,'2016-05-17 19:27:27','2016-05-17 19:27:27'),(13,'ggggggggggggggggggg',NULL,0,'2016-05-17 19:27:30','2016-05-17 19:27:30'),(14,'eeeeeeeeeeeeeeee',NULL,0,'2016-05-17 19:27:35','2016-05-17 19:27:35'),(15,'tttttttttttttttkk12',NULL,0,'2016-05-17 19:27:40','2016-05-19 06:37:25');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hrm_payrolls`
--

DROP TABLE IF EXISTS `hrm_payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hrm_payrolls` (
  `hrm_payroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `hrm_payroll_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `hrm_payroll_description` text COLLATE utf8_unicode_ci NOT NULL,
  `hrm_payroll_time` int(11) NOT NULL,
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`hrm_payroll_id`),
  KEY `hrm_payroll_time` (`hrm_payroll_time`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hrm_payrolls`
--

LOCK TABLES `hrm_payrolls` WRITE;
/*!40000 ALTER TABLE `hrm_payrolls` DISABLE KEYS */;
INSERT INTO `hrm_payrolls` VALUES (1,'Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 01:32:17','2016-05-18 01:32:17'),(2,'Test 2 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:36','2016-05-18 02:02:36'),(3,'Test 3 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:46','2016-05-18 02:02:46'),(4,'Test 4 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(5,'Test 5 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(6,'Test 6 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(8,'Test 7 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(9,'Test 8 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(10,'Test 9 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(11,'Test 10 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(12,'Test 11 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(13,'Test 12 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(14,'Test 13 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(15,'Test 15 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(16,'Test 16 báº£ng lÆ°Æ¡ng thÃ¡ng 1','Test 1 báº£ng lÆ°Æ¡ng thÃ¡ng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57');
/*!40000 ALTER TABLE `hrm_payrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2012_12_06_225988_migration_cartalyst_sentry_install_throttle',1),('2014_02_19_095545_create_users_table',1),('2014_02_19_095623_create_user_groups_table',1),('2014_02_19_095637_create_groups_table',1),('2014_02_19_160516_create_permission_table',1),('2014_02_26_165011_create_user_profile_table',1),('2014_05_06_122145_create_profile_field_types',1),('2014_05_06_122155_create_profile_field',1),('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'superadmin','_superadmin',0,'2016-05-15 04:28:39','2016-05-15 04:28:39'),(2,'user editor','_user-editor',0,'2016-05-15 04:28:39','2016-05-15 04:28:39'),(3,'group editor','_group-editor',0,'2016-05-15 04:28:39','2016-05-15 04:28:39'),(4,'permission editor','_permission-editor',0,'2016-05-15 04:28:39','2016-05-15 04:28:39'),(5,'profile type editor','_profile-editor',0,'2016-05-15 04:28:39','2016-05-15 04:28:39'),(7,'profile change avatar','_profile-change-avatar',0,'2016-05-15 08:14:57','2016-05-15 08:14:57'),(9,'HRM Admin','_hrm-admin',0,'2016-05-16 23:36:03','2016-05-16 23:36:43'),(10,'HRM User','_hrm-user',0,'2016-05-16 23:36:22','2016-05-16 23:36:22'),(11,'testtest','testtest',0,NULL,NULL),(12,'testtest','testtest',0,NULL,NULL),(13,'testtest','testtest',0,NULL,NULL),(14,'testtest','testtest',0,NULL,NULL),(15,'testtest','testtest',0,NULL,NULL),(16,'testtestssss','_testtestssss',0,NULL,'2016-05-19 06:50:19'),(17,'testtest','testtest',0,NULL,NULL),(18,'testtest','testtest',0,NULL,NULL),(19,'testtest','testtest',0,NULL,NULL),(20,'testtest','testtest',0,NULL,NULL),(21,'testtest','testtest',0,NULL,NULL);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_field`
--

DROP TABLE IF EXISTS `profile_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `profile_field_type_id` int(10) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_field_profile_id_profile_field_type_id_unique` (`profile_id`,`profile_field_type_id`),
  KEY `profile_field_profile_field_type_id_foreign` (`profile_field_type_id`),
  CONSTRAINT `profile_field_profile_field_type_id_foreign` FOREIGN KEY (`profile_field_type_id`) REFERENCES `profile_field_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_field_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_field`
--

LOCK TABLES `profile_field` WRITE;
/*!40000 ALTER TABLE `profile_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_field_type`
--

DROP TABLE IF EXISTS `profile_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_field_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_field_type`
--

LOCK TABLES `profile_field_type` WRITE;
/*!40000 ALTER TABLE `profile_field_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_field_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` VALUES (1,1,'127.0.0.1',0,0,0,NULL,NULL,NULL),(2,2,'127.0.0.1',0,0,0,NULL,NULL,NULL),(3,18,'127.0.0.1',0,0,0,NULL,NULL,NULL),(4,19,'127.0.0.1',0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_profile_user_id_foreign` (`user_id`),
  CONSTRAINT `user_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,1,'',NULL,'','','','','','','','','ÿØÿà\0JFIF\0\0\0\0\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v90), quality = 90\nÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0\0ª\0ª\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýOÁ¥Ï4ê(tÅ&\r;4b€p*Î­agpOyÈ2‘É\"«7n95v¼÷â¿Á_üaÒ$²×ì7L‹}Fòîm[ûÑ¸ä}:{Rw¶¥õ;ÍêÝÁÌ|Lø¡ü*ðV§â]}›KÓÓ{”Øœ**÷fb\0¦¿=®¾3|Sýˆ>)\nx‹QŸÅ¾r&·[ÒXÏlN7Ã!?+ŽA^™ŽA­OÛ÷ãÎ‘ñKá¿Ãø<-|·º>¥$—óÈuuP‚7î²î`AõúWœñQQ’ûK¡èG	\'(7ð¾§Ô²ÿ\0íY¢þÒðE™Ñµ-:`Éa4¡¤’Ù¾ä¹r»Ç¨\'ß®:Ž\r~b|›Â±×…­üyã	\'Ô~$jÖÄéž¶œ£[Û:ðÓÂ—X\0¸¯7ø“ûsüXøw;E¯\riÍþ®ÃDHQØ4‡.ÇÎN3Ð\nÏëÐ§M{O‹²5x	Ô¨ý—ÃÝŸ®Z·‰tjZ¦ž½ss:ÇüÍdCñWÁ—2G^)Ñä’C„U¾,:ü5×<Gªø–çÏÕµ½JlçÌº™¥ ÿ\0À‰ÇáY¡\0…³ŸÇÖ¹%š®‘:ã”¾²? {¨náA*M}×ƒøŠU#$ñ_†^øÍã¯‡ò¬žñ^«¦ãþYÃrÛ±RH#ÛõŸÁ_ø)v¯¦Íñ\'LT²ÈQ¬i¨#¬‘ý×ú®Óìz×UÆ•K){¯ð9+eµ©ëy~\'èè ô9§s~øáïˆ¾·Ö¼9©Á©é×vX;[º°ê¬;‚®\\0È¯Y5%tyr\\®Ìu4u§š)ˆCÈ RÑ@h¢Š\0(¢Š\0(Q@\0¯(øåûHx;à—^$½g¾¸ÈµÒ­û›Œu!{(îÇ\0tÎHÔå—ÉGc€ª2I¯ÈÁþ$ý¸¿hÝnáo\r2K‡žmA”¼vvJÛbU Ü–=k‹VTâ”¯c³\rJ5s~êÜÚý©¿l]öˆð”ZZx\"KË9üë-F[µi\"ìÀázÛ=@ô¯štdèšÎŸ¨˜VôYÎ·iqóBì¤0½13ê+êOÚ÷ÃŸ~éöÿ\0<áè5ÉOªk—ÎfžÝ	;QNp±¸€8\\z×ÊVp¬Ò1ŽÜrz}+ç1sœjûÎìú<!*^â´K\ZÖ¹âM^ïTÕ/f¿Ô.¤2Ïq;nyõ$ÿ\0/J¢=*gHcr¤º‘Æü)7B\"Fü@ÿ\0\ZóÜœÙéF**È¥  ý=ÅKçD\0\"”u,Ù?¥(œ‘&=ÆjJ!Ï?ýj2~†¤3¦5?N)KÄßòÈ§û­HÜ|!øÝâß‚>&‹Uð¾¥%¶â>Ñdäµ½Â÷]:cÐŒž\r~¹þÏ_´/ž‡YÒÙ!¿ˆùwúqoÞZËÜýÓÔâ¿<´q•}b½?ösøÓª|ø›§ëöîßÙ“2ÛjVÛ¾IíÉç>ëËõõ¯_‹•9rÉèyÜjÇš+SöÃ#ê¥¥ßÅªiÖ·vÌ$·ž%–7þò°È?‘«µõkT™ò]XQEÆfŠ9ô Š( Š)\r\0W¼·[¸e‚A˜åBB0kÉ¾|Ð?fÏ†Òil³šK«ÝA—\r63‚}•@ö5ì<C^ñæýtÏƒ8»ßåù:=Ëû³YÉ+6ÊÞ‹­Åÿ\0‰¾,ŸÇ<G¯Ï9¸“Q¿š0œ‚œ~vÿ\0*ÁoÝÙ æ”çè*Ô»€Ÿ|ð>µ-Ü¥\"?õj ÿ\0ë×ÁÎ\\òmŸ}òÅAtHÄ«–”ÿ\0:qŸùièTÔsÅ%¢#OÛ	PIN…)èÃ=A­;].÷G—Ä0_®‘}Iö«²Œ –BÃS8#¦Aš§)lÊ1voR ·þ{/â¤R‹\\îÛ4Mö±üëØãý›dñV’ukðkv•K¸ÚÚCí’1Ÿ®ß­y—‰¼âNcÖ4››DÊ£ƒø\Z†­¹vvº1¤¶–!–±ýìd~b¢Èû¿®iÉ#Äw#> â¥[…aûÕÕ‡\rF€B:qô£$ÁëOx†ÝèÛ£ÏÞ#}ED	ç4;­PZûŸ¯_°_ÄWøû:hKq1šûF’M&rO8ŒƒþChùîA¯£kàOø%v·¿KñîÌÄ$Ö×HOºêßû-}ökíð²s£Ï†ÅEB´¢ƒ½\n+¬å\nZJOÎ€4f’ƒ@õõ¬/ø¯Oð~‘6§¨ÊRÚ Ê73± *¨I${ÖÃão¶y¯•>6üP>5Ö_Jµ¼ŸNÐ¬Îø®‡ÝÜÄä¶HçjíSß1çsb+ªægf\r<UEóô=ëÁ_´_\ZÜIkjf¶¾@\\ÚÝ&ÆÚ1ÊóƒÔtõ¬ßÚI›_øã½:Óæ¸¹Ñ®c@9äÆÕòÆ™uâk«/Y²¸ƒF–Ø™!C½Û‘Á`1ÁÃâ9ëšúCYøžÏðjÓW¼µŠKýQM‚Ú£|’Jw£œöP©#ŸeÇZãÃbþ±JNjÍ†3.–¬c\rSz‹°Ê±+8?Ýè=MO¤é—ZÞ«g§YDÓÜÜÌ°Ç³1nßç¦kÑ¾<|%ƒáVµ§-µÓ\\Ùê¼vìua¹~˜eÇÿ\0ªºßØóÃ‘_xÃTÖ&Œ1Óí‚BÎ3µÜHô;Wð#_&Ò»å>¦)«&µ=CâÇÀ(<gàhz6œ·ž(Óãútq(ýö2)Ïll“Æ?\nõoƒŸ²Ÿ‡>9~Ìš2k÷wé¯Åo%”2°éSÁ#ÄÊÀÉùx|’:â½ö{ðú_øZÖåXÙE©aÊËÌGÔ@ôÃz×ºØi–ºoÚ\rµ´6æâS<¾Jó$ ÍŽ¤àsí_K‚ÃBTÔÞìù¼Ë8×tã¥ÆmwHø…û$|B›L¾­ÏÞ\nùkKèó÷—×ðÁÕôÃ¿ŒþøÃ§e\\ìµ)P¬º}Ãrüså·ñ~ŠûŸâ¯ÃüXðÕÖ‘âm\"ÓSƒc´-rƒt´ñ¿„g¨\"¿2|Qû%ÝÙ\\ÃwáMbH§y’(mnI%.º{‘Î8Î{W›ŒÂû®N»¦_•h>hü;›þ<ýü3¯ÛðÉ¿Óu”C\"Â’Ír²÷%Ôe‡?Ä8íÍ|«âjž×n4­N;›;è$¶¸S‘è~o˜Û5úåû0øâwÃ{Y´OÙh7öìK®½§]³]HF0’¡ŒÇ\0ƒÆ:sX_·_Ám7âW€tÛÿ\0*uË+±\r­ÐC¸ù€€„’»¶žxâºåµ6ÝþGöŒjâ#\r;Ÿ”1JÐÿ\0´­Á¡O‰(Ã+ô§^YË§ÝËm:§ÌouR8 ûƒškÌLH˜i8Ïa^­ÙžÞ¶Ðûëþ	]i™|rJü¢Ö,gæä¹ééò×èM~[~ÊÚ¶£ðrßLÖ/¢“M•®>Ömü¢ÒÞÚHd?î¢!|pAÇ0Ýú’kì0R¢¢º˜Òtë¶ú‡z?•\'J3^‘æ\nhÍ&qFGù\0½é¥šÊ—© µ‘c`%e;28Î8Í|)âë:Aÿ\0„cTµf»¼‘ÏŸ: |—guÝÊàƒÊ‚:‘÷£ aƒY\Zï†tÏXµ–¥gõ³`ì™w`úCî1ŠâÅPöñ×u·ù–õI9Z÷ÑŸx“_“áõ¦±¬_^OvcK[f!RGÛœí\\\02Øc×}« ð¿Æ·ñßÂÿ\0\néú¦˜4ÙôÍHÆ. F\\£J<âX¹f`A<³q\\Gí!àMJçãüÞ\Z³°¾²ÐáH…„—eÞ1‰iUÛ;ðÅ—’NWèv:E®™¥Ã§C°Æ!XÈÏÊ+ï²þÂ<{IßW[­¢º.Í÷¾§ã|oâ…l‹7£GKš1ÕÅöêï¿¦§Œ~Ø^}CÁzn¨‹¸Ø]“8I?˜ZÃýŒC2ø–N©ºÓŒó^Óâ-ÛXðýï‡ubÏ¤ÞÆaŠãø¡br Ÿc§ÛÆ|ð¡ð~ÛÄvzãÂ©=Ú5­ÌlgPÎ:Œz{×ä8üº¾YZXzªÍlû®çïü=Ä*ÃSÌ²éÞ2W’ëÕ]~ÏšÜV:¶µ¦ÌU$¼Xî!Rqæ2Y?<¾>¾•îb`ëÆ?:øÖÎðHb¹¶¸d‘|sFûY[ÔÆºÈ¾/øêQk©a&Ñq=ŽéˆúŸ|í]X<Â:jMÑYŽUZµwVŽÏ¸ïÛ/‰‘ê¿õ/ø’\rÃö×ò¦³§³•“PÞ€$`\0w(Q!=1×µy¶©}®xsPðkxsH]wQ\\°‹ì’d~ä¾Ùdã¦ÔÜÙíŽ†ºMKS¿Ön¾Ù©ßÏ©Þ·Ì™‡ÑU@Uú(ëÉæ¤ðÖ²Ú.¹§êMÉi0”§ÞÊò1ßâ±«Œ|E=}Ø³¢†[<>¢kß’ü®‘ŽÜœW“~Ñú—•á}*Á3Ýê1Æ8DË»ôàc>¤z×Dÿ\0\Zü\rof“?Šô˜ÙÐºÛ5Ò	ÛTDNòÙãnÜçµx?‹üi/ÄMsûj[ilàŽ/³ÙÛLFøã,K3Ñ›\nHìGýlv\"è´å«ìxn¤ñ\néò­ÏÏOÚD\ZÅ½~5\0Gq(ºP£þz(cú“Yß¼ªø“Ä¶š;êöv×Q	`\nÅerw,.O!X“ƒÔr+­øÉm}ñ#ãî§¥iQ‡I’Õv•*ïf=•X°\'ÛÜWèGì‹ð\nÃáÇ…mµ\'€´Ò!6ï*áÛwß˜WÀÆz(\0c\'<¹nTÿ\0hÄE:omlïò#:ÍêañÀ`šu^¯ªŠ]üö²;_þÏº}´¶Z—ˆ§‹[¸‰VH,¾ÏäÁ`uRÌXŽœ?Ùí5[(;rØüªÍ{0„)®X+}J³­+Ô•Ø„f€1KGJÐÌB2hÙïKF(\0ïE\'ZZ\0L\ndˆ	É©æ£”‘ÐZ7Ü==øÍà©<_á½öQ‡Ô¬[í\'üôÃÆ=Èéî|Ö­N8û¬0G±µ}ª2HãµxÆ/†’YÝÜxƒJ†I •‹ÝÛªòÞ@P{l××ä9”pÓú­Gî½¼Â<Já)f´k„_¼¦­%ÝtÐòK›h® xe@ð¸ÚÊzjŒž[í[›™µkÉû,Ï¼ÞÄ9-À>bŒå?‹¨çƒ£÷‡‚)6–e`Å]X2ºœaÐƒê\r}Fo”QÍèòÉ.e³ë÷ö?à®5Ì8/«Q~ã~ü5·fíµíåsœð¥ûGv‘ÆÛâ”uõ­vDœ‘Î=ûÓ´ýûmîõ\r>Ñ_W‡çº±‡§SÖâõþúŽø#®7®|Aðï‡/\"µÔµH­.æÈX¥\r¼`€w|Ÿð +ù÷•bhbe…äm­tOôGúC–q.[žàéf8z‰BKfÖýz÷¹³}¦Á¨¤K8ßåH%L1R¬>”Øt¸¢Õ%¿+O2*iX ÝW ¥„‹è’æÍðÈ7FÐí*ÊyÎpsVUN1¼32x¯§Ô•ŸT{éû¼ÉéÜÌÕ<A„»JùÓ¨þÂ«ÏâÛx4‹›Ö|H„œ³¶8U÷\'\0}k‘Ô$5)m#îµÄ´H:sÕ›¢Öºï‡Ÿ\ru_kÛ¦ËOÝ•sŒdãyîÇƒƒÔà€\0É¯©Êò:øåík{”Öíöùî~{Äüi—d)`°¾ÆÏàŒlýç·5¯dµzÙhTý‘?fùnîï5ÿ\0E×W3›Is‘#±Þ¶ùè@Îçõ\':ýÛm\nÇŒ:b°<á;?èšMŠÉäÂ‡2H>yœ»±õbIüx®‘WÐÔ”£I{«åø–á*aé¹âeÍZošrþóè¼–ÈjFÎiÔQY¸QHi\0;½¢ŒPÞŠBhÍ\0-™ö¤/Š\0uW”omÊžõ\'šx<P¼ŒôÍ³·P~güQø;>Ÿ$Ú¶ƒoæZ6^{8Ç1ú´c¸õ_ËÒ¼Ž6¹S‘Ôú×ÚÒ©hØ`ö5ã¿~\r¶£$úÎ„‹Ñæ³	ªö\rüþ½~Ï)Ï%FÔq.ë¿cùóü:†1O2Ê£j›¸.¯¹áªÎ²Ç42Éo<GrM”t> ŽEqþ7øicã‹¯¶ÞÝÞ6§¿m–v–FèÛÉÈ€àvØ°(ÌŒ\nº’¥HäpA¦Zý\nšŒj,E=û¥©üáK1Ì0ÂÂ¬ “»Wi&º[×sÁ´sWø=â	4]B{Ë>HÙ¬aµ„K¹À$R3ÎÓžp½O4žñ·~\"øºÝbžâÛHIÕ¥‚ØíA>`ò($äŒÚºŸŽ÷ZF ê–2k¸/(ç\\n_2	Q†}$W{á}2\'ÃÚu¥¼k\ZÇ/8\'Üžÿ\0Î¼w”a:®>¶ö‰$ú¦·n;kÜýÊ·‰9´xgB=G(½{hié:9ó­tí.ÍMÕË„†”ì{ý;–=&¾¬øiàh<£}?}u/ïnnYd?È€zWðÁ0ÚxvËÄ—«j:¤<!ÇúˆYAUöb\'òç>·í}Ýˆé_›æYŸ°¥¤#Û©ú/ð¯ö=íkçÄÖWr“»Iô\'ŠMÔn¯œ?[RnÅ4HÎ âŠŒÎ Ð³+€M+­<À“ÑŠh|öÅýé€»hÛKHÇ€\rµ^âAeˆT%˜à\n˜Àzüðý³þ7_ø¿âÞ\ZÒïîm´]yc†FD¹œòå‚Ÿ˜Ç÷¯{%É«ç¸Å„¡.W»}<¬Ë0§–Ñuª&úY¡ÝÇ,{ãe‘}PäU¤”QšüÉý–~!ëžñUÈ°¼–K(<ºt’€0ÜžˆÈ\rÇ8ÎGúC£k‘kš]®¡i*Éms\ZÉCê1ÁíZ×<ÈëäX§‡­%.ÍF{†ÍùéÒÒpÝ7®»\Z®™SÚ£a¹1œ`Ó7Éß‘ëš7àyëŒWÍÝ;ŸD¯ºGÍtx´¯ÊÐ .­£¸`>rÎ¬€ýI®o½vuèõÿ\0ˆW‚H, ŽÇrò«;±ÏÖLcýšã	Å~Å“¹}FŸ6öýYü%Ç.ƒâ<_ÕÚåºÛkò«þ7<óãuäš„àž$ŠGK‘4bEù¢‘:óópk¯ðÝÒ]øwL¸L•’Þ28ÿ\0dW#ñÂâKCx¶ð^Eo¨[I5´ù*y€H#Öµ~j)¨øH• H¼¢«Ð%qúW¢¢¥ÌÕ+k¬º?/‘ËZ-pö¬%¬g;|íú£ì‚:ºjßô˜ƒ7OO°È¹äyc\nO¹]§ñ¯B¾Mø}ãéþë¿i;¤Ò§aô e”Šuî:•é’{äŸ|!kiÄ¾$Ó¶8È`[îŽGå_“æx\n¸|L’Ó»Vó?­ø?‰°™ÎSN¤ª(Î	FWij–ú½ŽãmkÈµÚ;E·ŽA¥XÞê“/1ùîÎ3uS\\E÷íâË¶)4ý>6å|¨ZFObÎpß÷È¨£”ãkë\Zoç¡¶eÇ<?•¾Zø”åÚ7“ü?ÌúSms¾1ñU§ƒ¼;{«^e¡·Aò/&G$*¨÷,@ZùúŽ~8¶Ùu ØÛÕˆÚ¿Š5ã/kþ?ŠÞßVšÙlmå[HZ5’Eû¦L³´ò\0=pOJï§cyÒœU½OšÅøŸGR¦«ç·ºœZÕìx¿Ä¿Ú«â~•ñRúãMñ$–\Ze¹AŒm ’Ü\r IMíœã;óé€q_iþÏß­þ5xÛ[XÒÛPŒýžþÑDS€m=Ôä}8ê\r~füHs/ŽµÆ~X\\¸P=3_PÁ:uÙ?µüi£|¾G“ox9äÌ½=+ôN&áÌ!§ÃC–qµß{<-cqµ¡TïÌ¯óÿ\0#î”í‚‘:švM~*~°šy§R7OÆ“µµ­ü†9¤P2ˆÌ3êE~9ø‹P›Wñ©rKOuu$Ï“žY‰?Î¿c52ÙÎƒ«£/æ+ñÇ^µk-{T¶a†‚êXˆô*äå_µxb¡õ¬K{òÆßyùÇ\Zs<=+mwÿ\0\0ô€*ÇÄ×ÄtÇõ?ýjö/kZ‡RêE‰T‘ˆ,{œÞøÅyìõ§»]j×˜;¤ ýN ®âOÃc]Öìµÿ\0ßÁ«h /c˜988<ôÆµ}ÉWRn*Vî4bêR©Äq2£•åÖ¾vhí´=oN”‰tMX,‡Úuó#Å5Ó?|^m·ü&\Z·ØÈÚaNâ¾žiÍüwƒï_^x\'ÄMâ;GÔtÛu¼Ôob¶Î]‘‡’@»ƒ\rÀ®[<zWÑúì_ñsKh#Ñn´¤¶Ž$¢³Ö®só9VŒ(Ï 5ó¸ì>U†b\'Êjú­öø>ÎêáçˆÊ3\Z’ƒ}ïÿ\0·i¡Ô“\r•¾ï1`…Y¤n\0êI$þdþuÅëß\Z|9£Ç ·¸mR`p#¶RWþûà~DÖ~³û&|]›B6—^ºÖup$?ÛÐIn6å|Û¹Ívÿ\0¿bÏëZ+i^4Ôaðî€÷åôÛR—R8rã(ƒ±lûwç©šåô({eR2Qš*vm4twô²×©x+Ollå&Ómô¿kžomãOÚ7ÆPxsK…]÷‰dCj€ó,Í×ƒÆ}xšè-u«ïÙïV¹ð§‰l§–áGÚ^\\IfBÖ#Ç9ïœ~…ü3øKáÏ„úög‡´å´Gù¦¸\'t×\rýçsËåž\0§xûá§ƒþ$Amgâ\ZÏT`X@n%CŒ·–ëó/@5âVâ¾|O, þ®ŸÃ{7Ñ6í¿[ªË²úÙ_Ô%lïmŸõÔøsNø×áù–#yî•æ‚Ñý®Ù‚¸ÉR3‘yæ´âgƒàÌ5{¥aƒ,Šc8ô,@¯{ñì?àr+p×ZÜÛ/•\n‹âê‘ä 08&¼¿ö…ý|ðá…ÂxnÓVÔuÝ^h­,í$ÔJ7)|°Xã\"º©ñ´csÊV³Z%{^ççø¿0¸wR¯·té(Ý¾móØå.¾-øN/ö´r7EÆï“Û)¬iþ>xj7*‘ßNûËý+Çt¿…ž:·»†æÂÇR´»·`é1žÊ°ÇBXgð­{ÙïÅzƒ«jvÐå÷]3>{’@?÷Õ}÷Õ°°®áR¢pKFŸV¶·üóßìÃRæ­‰»íÍú­~Gy¬|w:ZÃ^Ä·‰á7,±‡Cœ0êpqV|ñ¾×Å\ZôZ-Õ˜°¾œ1VO00<Žàz{æ²,f1ü—Ö5GRh×bF“²,j3…˜œrx¯Ið·ôÛ´:.\rŽð7º¨Þþå»ý?A^\\]«û5å¯½»Oø\'‹šÖáªTe%)[~‰ù6ßä|ëñ>Í¬¼}­G÷wMæcýå?}5ÿ\0è±®øÒõvü–ÖÐžK0ý+Â¿h$Øøª×R\'d7–ûK“ÿ\0-óŸª”ÿ\0¾M}‰ûø\nü%—Zº‰¡¸ñÿ\0kX`›ublµó7Ñ…iÅy\'ÃQ ¤œÛŠµõÐýÛ€Ô±Nuw\rÿ\0N›K/z}1{Ó³_€Ÿº…#t¥ ŒÒjú =s_™µOÂKÁ?uY¡Óî%ÒõiMÝœÂÌŒ_“ }àÙã©¯Ó¦BqÒ«ÜZ$¬»•[€@#>µô¹{_‡ñOF<×Viÿ\0]5Ë)æ”U)É«;¦µ?>~è7ðd^Ú]YÝÎí<«=»Ç°“…*?„Î»•†á¶ì²¼u#†KY¡_e½ª°ù”7ÕA¡-‚ð°½jÜUZ´åQÓWzïÜüsá>ˆz˜¹{ÎírŸÝü;×¼OlŸ`ÒnÅÜ3GqmpÖøò¦FŒCc€Ê28ÈÍ}ðçâ,šëI¤ø–Þ×Ãþ1µ;.4•º	ªË	!LˆÃ¸ƒÒ»Õ$È÷¬Ïø/Bñm¿ÙõÍOÖ­Çü±Ômc?\'WÌæ…LÆq•X¥m¬~‘Ã<1C†(ÎŽ\Z¬¤¤ïimµ´V/-äÝKl“F×(i#WÐí$u\0àãèjUn@ïÞ¼þoÙ÷Áïçè:,Ô€;u/¢é÷=¸fŒ\"ð>Y/µ2çÃŸô9V];Å:~½c‹WO<Ã#ïMûØgf2zW“Ê•¬}£×CÐ§¼ŠÖ–âE†(Ô³;©&¹íê__Éª˜ü½9We’KÙ®é²y\nÃF\0“Ãyãh¾\'øÖÆ9<áý22»\\]j¿j1àSìã	#ƒŒg\"ÿ\0ü#?çÒ!Ó“ÄÞÓp©C§Ï4Û=BI&ÝÃÔ“Û4Ò²µÀë¼añ7ÂþF‡WÖ¬ío0\nX‰CÜÈO@®]‰ÁÆ¯–5û/x£Å^-ñ“­6IF‘í©ÿ\0C´fùcHÐ|¤¨RÄÄœÆ+êŸü5Ó<hv¼Ú¦§+™®µmE¼Û«™HÆösÓŽ®G\0bºsî.+¿Šú•_m¦üÏšâ•gø9`gVTâÿ\0–ßuåt|Oö¥À¤Û‡ðyñ\\g5³¡øS]ñ;ãNÒ.æOùé,fÏ¡.}yöX³Š}È§ÁÀoÈWÑK‰qVŒ}÷?(ÃøE–R©Í_9.ÖKñÔùïJýžµûµ\r¨êZr‘œB­pÇØŒ ™®šÇöhÒPæûXÕ¯åI	øyj«©¯bÛ€9ÅI^=lßY¾jÑh~…à~ÀÅ*xH¶º½_õò8‚Óái|Èsæ_/ÚŸ\\¹5ÚÛ[-´B(cX¢E\n‘ Â¨ •`ó@¯&¤åUÞm³í(Ð¥‡‚§F*1]HEùiw\nÍ&ß­I°ãE´\0‡¥5”šqéE\0&Þ(Ú)ÔÑJÈÚ3šuŽÆ˜5“u;¸ P|¼ý;ŠP½i{\nZ\0@)3N=(£`#ò²~ñÅ(*JJw\0üiii)\0”¦–“½\0bÒ–€?ÿÙ','2016-05-15 04:20:11','2016-05-15 09:25:10'),(2,2,'',NULL,'','xxxxxxxxx','','','','','','','ÿØÿà\0JFIF\0\0\0\0\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v90), quality = 90\nÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0\0ª\0ª\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýOÁ¥Ï4ê(tÅ&\r;4b€p*Î­agpOyÈ2‘É\"«7n95v¼÷â¿Á_üaÒ$²×ì7L‹}Fòîm[ûÑ¸ä}:{Rw¶¥õ;ÍêÝÁÌ|Lø¡ü*ðV§â]}›KÓÓ{”Øœ**÷fb\0¦¿=®¾3|Sýˆ>)\nx‹QŸÅ¾r&·[ÒXÏlN7Ã!?+ŽA^™ŽA­OÛ÷ãÎ‘ñKá¿Ãø<-|·º>¥$—óÈuuP‚7î²î`AõúWœñQQ’ûK¡èG	\'(7ð¾§Ô²ÿ\0íY¢þÒðE™Ñµ-:`Éa4¡¤’Ù¾ä¹r»Ç¨\'ß®:Ž\r~b|›Â±×…­üyã	\'Ô~$jÖÄéž¶œ£[Û:ðÓÂ—X\0¸¯7ø“ûsüXøw;E¯\riÍþ®ÃDHQØ4‡.ÇÎN3Ð\nÏëÐ§M{O‹²5x	Ô¨ý—ÃÝŸ®Z·‰tjZ¦ž½ss:ÇüÍdCñWÁ—2G^)Ñä’C„U¾,:ü5×<Gªø–çÏÕµ½JlçÌº™¥ ÿ\0À‰ÇáY¡\0…³ŸÇÖ¹%š®‘:ã”¾²? {¨náA*M}×ƒøŠU#$ñ_†^øÍã¯‡ò¬žñ^«¦ãþYÃrÛ±RH#ÛõŸÁ_ø)v¯¦Íñ\'LT²ÈQ¬i¨#¬‘ý×ú®Óìz×UÆ•K){¯ð9+eµ©ëy~\'èè ô9§s~øáïˆ¾·Ö¼9©Á©é×vX;[º°ê¬;‚®\\0È¯Y5%tyr\\®Ìu4u§š)ˆCÈ RÑ@h¢Š\0(¢Š\0(Q@\0¯(øåûHx;à—^$½g¾¸ÈµÒ­û›Œu!{(îÇ\0tÎHÔå—ÉGc€ª2I¯ÈÁþ$ý¸¿hÝnáo\r2K‡žmA”¼vvJÛbU Ü–=k‹VTâ”¯c³\rJ5s~êÜÚý©¿l]öˆð”ZZx\"KË9üë-F[µi\"ìÀázÛ=@ô¯štdèšÎŸ¨˜VôYÎ·iqóBì¤0½13ê+êOÚ÷ÃŸ~éöÿ\0<áè5ÉOªk—ÎfžÝ	;QNp±¸€8\\z×ÊVp¬Ò1ŽÜrz}+ç1sœjûÎìú<!*^â´K\ZÖ¹âM^ïTÕ/f¿Ô.¤2Ïq;nyõ$ÿ\0/J¢=*gHcr¤º‘Æü)7B\"Fü@ÿ\0\ZóÜœÙéF**È¥  ý=ÅKçD\0\"”u,Ù?¥(œ‘&=ÆjJ!Ï?ýj2~†¤3¦5?N)KÄßòÈ§û­HÜ|!øÝâß‚>&‹Uð¾¥%¶â>Ñdäµ½Â÷]:cÐŒž\r~¹þÏ_´/ž‡YÒÙ!¿ˆùwúqoÞZËÜýÓÔâ¿<´q•}b½?ösøÓª|ø›§ëöîßÙ“2ÛjVÛ¾IíÉç>ëËõõ¯_‹•9rÉèyÜjÇš+SöÃ#ê¥¥ßÅªiÖ·vÌ$·ž%–7þò°È?‘«µõkT™ò]XQEÆfŠ9ô Š( Š)\r\0W¼·[¸e‚A˜åBB0kÉ¾|Ð?fÏ†Òil³šK«ÝA—\r63‚}•@ö5ì<C^ñæýtÏƒ8»ßåù:=Ëû³YÉ+6ÊÞ‹­Åÿ\0‰¾,ŸÇ<G¯Ï9¸“Q¿š0œ‚œ~vÿ\0*ÁoÝÙ æ”çè*Ô»€Ÿ|ð>µ-Ü¥\"?õj ÿ\0ë×ÁÎ\\òmŸ}òÅAtHÄ«–”ÿ\0:qŸùièTÔsÅ%¢#OÛ	PIN…)èÃ=A­;].÷G—Ä0_®‘}Iö«²Œ –BÃS8#¦Aš§)lÊ1voR ·þ{/â¤R‹\\îÛ4Mö±üëØãý›dñV’ukðkv•K¸ÚÚCí’1Ÿ®ß­y—‰¼âNcÖ4››DÊ£ƒø\Z†­¹vvº1¤¶–!–±ýìd~b¢Èû¿®iÉ#Äw#> â¥[…aûÕÕ‡\rF€B:qô£$ÁëOx†ÝèÛ£ÏÞ#}ED	ç4;­PZûŸ¯_°_ÄWøû:hKq1šûF’M&rO8ŒƒþChùîA¯£kàOø%v·¿KñîÌÄ$Ö×HOºêßû-}ökíð²s£Ï†ÅEB´¢ƒ½\n+¬å\nZJOÎ€4f’ƒ@õõ¬/ø¯Oð~‘6§¨ÊRÚ Ê73± *¨I${ÖÃão¶y¯•>6üP>5Ö_Jµ¼ŸNÐ¬Îø®‡ÝÜÄä¶HçjíSß1çsb+ªægf\r<UEóô=ëÁ_´_\ZÜIkjf¶¾@\\ÚÝ&ÆÚ1ÊóƒÔtõ¬ßÚI›_øã½:Óæ¸¹Ñ®c@9äÆÕòÆ™uâk«/Y²¸ƒF–Ø™!C½Û‘Á`1ÁÃâ9ëšúCYøžÏðjÓW¼µŠKýQM‚Ú£|’Jw£œöP©#ŸeÇZãÃbþ±JNjÍ†3.–¬c\rSz‹°Ê±+8?Ýè=MO¤é—ZÞ«g§YDÓÜÜÌ°Ç³1nßç¦kÑ¾<|%ƒáVµ§-µÓ\\Ùê¼vìua¹~˜eÇÿ\0ªºßØóÃ‘_xÃTÖ&Œ1Óí‚BÎ3µÜHô;Wð#_&Ò»å>¦)«&µ=CâÇÀ(<gàhz6œ·ž(Óãútq(ýö2)Ïll“Æ?\nõoƒŸ²Ÿ‡>9~Ìš2k÷wé¯Åo%”2°éSÁ#ÄÊÀÉùx|’:â½ö{ðú_øZÖåXÙE©aÊËÌGÔ@ôÃz×ºØi–ºoÚ\rµ´6æâS<¾Jó$ ÍŽ¤àsí_K‚ÃBTÔÞìù¼Ë8×tã¥ÆmwHø…û$|B›L¾­ÏÞ\nùkKèó÷—×ðÁÕôÃ¿ŒþøÃ§e\\ìµ)P¬º}Ãrüså·ñ~ŠûŸâ¯ÃüXðÕÖ‘âm\"ÓSƒc´-rƒt´ñ¿„g¨\"¿2|Qû%ÝÙ\\ÃwáMbH§y’(mnI%.º{‘Î8Î{W›ŒÂû®N»¦_•h>hü;›þ<ýü3¯ÛðÉ¿Óu”C\"Â’Ír²÷%Ôe‡?Ä8íÍ|«âjž×n4­N;›;è$¶¸S‘è~o˜Û5úåû0øâwÃ{Y´OÙh7öìK®½§]³]HF0’¡ŒÇ\0ƒÆ:sX_·_Ám7âW€tÛÿ\0*uË+±\r­ÐC¸ù€€„’»¶žxâºåµ6ÝþGöŒjâ#\r;Ÿ”1JÐÿ\0´­Á¡O‰(Ã+ô§^YË§ÝËm:§ÌouR8 ûƒškÌLH˜i8Ïa^­ÙžÞ¶Ðûëþ	]i™|rJü¢Ö,gæä¹ééò×èM~[~ÊÚ¶£ðrßLÖ/¢“M•®>Ömü¢ÒÞÚHd?î¢!|pAÇ0Ýú’kì0R¢¢º˜Òtë¶ú‡z?•\'J3^‘æ\nhÍ&qFGù\0½é¥šÊ—© µ‘c`%e;28Î8Í|)âë:Aÿ\0„cTµf»¼‘ÏŸ: |—guÝÊàƒÊ‚:‘÷£ aƒY\Zï†tÏXµ–¥gõ³`ì™w`úCî1ŠâÅPöñ×u·ù–õI9Z÷ÑŸx“_“áõ¦±¬_^OvcK[f!RGÛœí\\\02Øc×}« ð¿Æ·ñßÂÿ\0\néú¦˜4ÙôÍHÆ. F\\£J<âX¹f`A<³q\\Gí!àMJçãüÞ\Z³°¾²ÐáH…„—eÞ1‰iUÛ;ðÅ—’NWèv:E®™¥Ã§C°Æ!XÈÏÊ+ï²þÂ<{IßW[­¢º.Í÷¾§ã|oâ…l‹7£GKš1ÕÅöêï¿¦§Œ~Ø^}CÁzn¨‹¸Ø]“8I?˜ZÃýŒC2ø–N©ºÓŒó^Óâ-ÛXðýï‡ubÏ¤ÞÆaŠãø¡br Ÿc§ÛÆ|ð¡ð~ÛÄvzãÂ©=Ú5­ÌlgPÎ:Œz{×ä8üº¾YZXzªÍlû®çïü=Ä*ÃSÌ²éÞ2W’ëÕ]~ÏšÜV:¶µ¦ÌU$¼Xî!Rqæ2Y?<¾>¾•îb`ëÆ?:øÖÎðHb¹¶¸d‘|sFûY[ÔÆºÈ¾/øêQk©a&Ñq=ŽéˆúŸ|í]X<Â:jMÑYŽUZµwVŽÏ¸ïÛ/‰‘ê¿õ/ø’\rÃö×ò¦³§³•“PÞ€$`\0w(Q!=1×µy¶©}®xsPðkxsH]wQ\\°‹ì’d~ä¾Ùdã¦ÔÜÙíŽ†ºMKS¿Ön¾Ù©ßÏ©Þ·Ì™‡ÑU@Uú(ëÉæ¤ðÖ²Ú.¹§êMÉi0”§ÞÊò1ßâ±«Œ|E=}Ø³¢†[<>¢kß’ü®‘ŽÜœW“~Ñú—•á}*Á3Ýê1Æ8DË»ôàc>¤z×Dÿ\0\Zü\rof“?Šô˜ÙÐºÛ5Ò	ÛTDNòÙãnÜçµx?‹üi/ÄMsûj[ilàŽ/³ÙÛLFøã,K3Ñ›\nHìGýlv\"è´å«ìxn¤ñ\néò­ÏÏOÚD\ZÅ½~5\0Gq(ºP£þz(cú“Yß¼ªø“Ä¶š;êöv×Q	`\nÅerw,.O!X“ƒÔr+­øÉm}ñ#ãî§¥iQ‡I’Õv•*ïf=•X°\'ÛÜWèGì‹ð\nÃáÇ…mµ\'€´Ò!6ï*áÛwß˜WÀÆz(\0c\'<¹nTÿ\0hÄE:omlïò#:ÍêañÀ`šu^¯ªŠ]üö²;_þÏº}´¶Z—ˆ§‹[¸‰VH,¾ÏäÁ`uRÌXŽœ?Ùí5[(;rØüªÍ{0„)®X+}J³­+Ô•Ø„f€1KGJÐÌB2hÙïKF(\0ïE\'ZZ\0L\ndˆ	É©æ£”‘ÐZ7Ü==øÍà©<_á½öQ‡Ô¬[í\'üôÃÆ=Èéî|Ö­N8û¬0G±µ}ª2HãµxÆ/†’YÝÜxƒJ†I •‹ÝÛªòÞ@P{l××ä9”pÓú­Gî½¼Â<Já)f´k„_¼¦­%ÝtÐòK›h® xe@ð¸ÚÊzjŒž[í[›™µkÉû,Ï¼ÞÄ9-À>bŒå?‹¨çƒ£÷‡‚)6–e`Å]X2ºœaÐƒê\r}Fo”QÍèòÉ.e³ë÷ö?à®5Ì8/«Q~ã~ü5·fíµíåsœð¥ûGv‘ÆÛâ”uõ­vDœ‘Î=ûÓ´ýûmîõ\r>Ñ_W‡çº±‡§SÖâõþúŽø#®7®|Aðï‡/\"µÔµH­.æÈX¥\r¼`€w|Ÿð +ù÷•bhbe…äm­tOôGúC–q.[žàéf8z‰BKfÖýz÷¹³}¦Á¨¤K8ßåH%L1R¬>”Øt¸¢Õ%¿+O2*iX ÝW ¥„‹è’æÍðÈ7FÐí*ÊyÎpsVUN1¼32x¯§Ô•ŸT{éû¼ÉéÜÌÕ<A„»JùÓ¨þÂ«ÏâÛx4‹›Ö|H„œ³¶8U÷\'\0}k‘Ô$5)m#îµÄ´H:sÕ›¢Öºï‡Ÿ\ru_kÛ¦ËOÝ•sŒdãyîÇƒƒÔà€\0É¯©Êò:øåík{”Öíöùî~{Äüi—d)`°¾ÆÏàŒlýç·5¯dµzÙhTý‘?fùnîï5ÿ\0E×W3›Is‘#±Þ¶ùè@Îçõ\':ýÛm\nÇŒ:b°<á;?èšMŠÉäÂ‡2H>yœ»±õbIüx®‘WÐÔ”£I{«åø–á*aé¹âeÍZošrþóè¼–ÈjFÎiÔQY¸QHi\0;½¢ŒPÞŠBhÍ\0-™ö¤/Š\0uW”omÊžõ\'šx<P¼ŒôÍ³·P~güQø;>Ÿ$Ú¶ƒoæZ6^{8Ç1ú´c¸õ_ËÒ¼Ž6¹S‘Ôú×ÚÒ©hØ`ö5ã¿~\r¶£$úÎ„‹Ñæ³	ªö\rüþ½~Ï)Ï%FÔq.ë¿cùóü:†1O2Ê£j›¸.¯¹áªÎ²Ç42Éo<GrM”t> ŽEqþ7øicã‹¯¶ÞÝÞ6§¿m–v–FèÛÉÈ€àvØ°(ÌŒ\nº’¥HäpA¦Zý\nšŒj,E=û¥©üáK1Ì0ÂÂ¬ “»Wi&º[×sÁ´sWø=â	4]B{Ë>HÙ¬aµ„K¹À$R3ÎÓžp½O4žñ·~\"øºÝbžâÛHIÕ¥‚ØíA>`ò($äŒÚºŸŽ÷ZF ê–2k¸/(ç\\n_2	Q†}$W{á}2\'ÃÚu¥¼k\ZÇ/8\'Üžÿ\0Î¼w”a:®>¶ö‰$ú¦·n;kÜýÊ·‰9´xgB=G(½{hié:9ó­tí.ÍMÕË„†”ì{ý;–=&¾¬øiàh<£}?}u/ïnnYd?È€zWðÁ0ÚxvËÄ—«j:¤<!ÇúˆYAUöb\'òç>·í}Ýˆé_›æYŸ°¥¤#Û©ú/ð¯ö=íkçÄÖWr“»Iô\'ŠMÔn¯œ?[RnÅ4HÎ âŠŒÎ Ð³+€M+­<À“ÑŠh|öÅýé€»hÛKHÇ€\rµ^âAeˆT%˜à\n˜Àzüðý³þ7_ø¿âÞ\ZÒïîm´]yc†FD¹œòå‚Ÿ˜Ç÷¯{%É«ç¸Å„¡.W»}<¬Ë0§–Ñuª&úY¡ÝÇ,{ãe‘}PäU¤”QšüÉý–~!ëžñUÈ°¼–K(<ºt’€0ÜžˆÈ\rÇ8ÎGúC£k‘kš]®¡i*Éms\ZÉCê1ÁíZ×<ÈëäX§‡­%.ÍF{†ÍùéÒÒpÝ7®»\Z®™SÚ£a¹1œ`Ó7Éß‘ëš7àyëŒWÍÝ;ŸD¯ºGÍtx´¯ÊÐ .­£¸`>rÎ¬€ýI®o½vuèõÿ\0ˆW‚H, ŽÇrò«;±ÏÖLcýšã	Å~Å“¹}FŸ6öýYü%Ç.ƒâ<_ÕÚåºÛkò«þ7<óãuäš„àž$ŠGK‘4bEù¢‘:óópk¯ðÝÒ]øwL¸L•’Þ28ÿ\0dW#ñÂâKCx¶ð^Eo¨[I5´ù*y€H#Öµ~j)¨øH• H¼¢«Ð%qúW¢¢¥ÌÕ+k¬º?/‘ËZ-pö¬%¬g;|íú£ì‚:ºjßô˜ƒ7OO°È¹äyc\nO¹]§ñ¯B¾Mø}ãéþë¿i;¤Ò§aô e”Šuî:•é’{äŸ|!kiÄ¾$Ó¶8È`[îŽGå_“æx\n¸|L’Ó»Vó?­ø?‰°™ÎSN¤ª(Î	FWij–ú½ŽãmkÈµÚ;E·ŽA¥XÞê“/1ùîÎ3uS\\E÷íâË¶)4ý>6å|¨ZFObÎpß÷È¨£”ãkë\Zoç¡¶eÇ<?•¾Zø”åÚ7“ü?ÌúSms¾1ñU§ƒ¼;{«^e¡·Aò/&G$*¨÷,@ZùúŽ~8¶Ùu ØÛÕˆÚ¿Š5ã/kþ?ŠÞßVšÙlmå[HZ5’Eû¦L³´ò\0=pOJï§cyÒœU½OšÅøŸGR¦«ç·ºœZÕìx¿Ä¿Ú«â~•ñRúãMñ$–\Ze¹AŒm ’Ü\r IMíœã;óé€q_iþÏß­þ5xÛ[XÒÛPŒýžþÑDS€m=Ôä}8ê\r~füHs/ŽµÆ~X\\¸P=3_PÁ:uÙ?µüi£|¾G“ox9äÌ½=+ôN&áÌ!§ÃC–qµß{<-cqµ¡TïÌ¯óÿ\0#î”í‚‘:švM~*~°šy§R7OÆ“µµ­ü†9¤P2ˆÌ3êE~9ø‹P›Wñ©rKOuu$Ï“žY‰?Î¿c52ÙÎƒ«£/æ+ñÇ^µk-{T¶a†‚êXˆô*äå_µxb¡õ¬K{òÆßyùÇ\Zs<=+mwÿ\0\0ô€*ÇÄ×ÄtÇõ?ýjö/kZ‡RêE‰T‘ˆ,{œÞøÅyìõ§»]j×˜;¤ ýN ®âOÃc]Öìµÿ\0ßÁ«h /c˜988<ôÆµ}ÉWRn*Vî4bêR©Äq2£•åÖ¾vhí´=oN”‰tMX,‡Úuó#Å5Ó?|^m·ü&\Z·ØÈÚaNâ¾žiÍüwƒï_^x\'ÄMâ;GÔtÛu¼Ôob¶Î]‘‡’@»ƒ\rÀ®[<zWÑúì_ñsKh#Ñn´¤¶Ž$¢³Ö®só9VŒ(Ï 5ó¸ì>U†b\'Êjú­öø>ÎêáçˆÊ3\Z’ƒ}ïÿ\0·i¡Ô“\r•¾ï1`…Y¤n\0êI$þdþuÅëß\Z|9£Ç ·¸mR`p#¶RWþûà~DÖ~³û&|]›B6—^ºÖup$?ÛÐIn6å|Û¹Ívÿ\0¿bÏëZ+i^4Ôaðî€÷åôÛR—R8rã(ƒ±lûwç©šåô({eR2Qš*vm4twô²×©x+Ollå&Ómô¿kžomãOÚ7ÆPxsK…]÷‰dCj€ó,Í×ƒÆ}xšè-u«ïÙïV¹ð§‰l§–áGÚ^\\IfBÖ#Ç9ïœ~…ü3øKáÏ„úög‡´å´Gù¦¸\'t×\rýçsËåž\0§xûá§ƒþ$Amgâ\ZÏT`X@n%CŒ·–ëó/@5âVâ¾|O, þ®ŸÃ{7Ñ6í¿[ªË²úÙ_Ô%lïmŸõÔøsNø×áù–#yî•æ‚Ñý®Ù‚¸ÉR3‘yæ´âgƒàÌ5{¥aƒ,Šc8ô,@¯{ñì?àr+p×ZÜÛ/•\n‹âê‘ä 08&¼¿ö…ý|ðá…ÂxnÓVÔuÝ^h­,í$ÔJ7)|°Xã\"º©ñ´csÊV³Z%{^ççø¿0¸wR¯·té(Ý¾móØå.¾-øN/ö´r7EÆï“Û)¬iþ>xj7*‘ßNûËý+Çt¿…ž:·»†æÂÇR´»·`é1žÊ°ÇBXgð­{ÙïÅzƒ«jvÐå÷]3>{’@?÷Õ}÷Õ°°®áR¢pKFŸV¶·üóßìÃRæ­‰»íÍú­~Gy¬|w:ZÃ^Ä·‰á7,±‡Cœ0êpqV|ñ¾×Å\ZôZ-Õ˜°¾œ1VO00<Žàz{æ²,f1ü—Ö5GRh×bF“²,j3…˜œrx¯Ið·ôÛ´:.\rŽð7º¨Þþå»ý?A^\\]«û5å¯½»Oø\'‹šÖáªTe%)[~‰ù6ßä|ëñ>Í¬¼}­G÷wMæcýå?}5ÿ\0è±®øÒõvü–ÖÐžK0ý+Â¿h$Øøª×R\'d7–ûK“ÿ\0-óŸª”ÿ\0¾M}‰ûø\nü%—Zº‰¡¸ñÿ\0kX`›ublµó7Ñ…iÅy\'ÃQ ¤œÛŠµõÐýÛ€Ô±Nuw\rÿ\0N›K/z}1{Ó³_€Ÿº…#t¥ ŒÒjú =s_™µOÂKÁ?uY¡Óî%ÒõiMÝœÂÌŒ_“ }àÙã©¯Ó¦BqÒ«ÜZ$¬»•[€@#>µô¹{_‡ñOF<×Viÿ\0]5Ë)æ”U)É«;¦µ?>~è7ðd^Ú]YÝÎí<«=»Ç°“…*?„Î»•†á¶ì²¼u#†KY¡_e½ª°ù”7ÕA¡-‚ð°½jÜUZ´åQÓWzïÜüsá>ˆz˜¹{ÎírŸÝü;×¼OlŸ`ÒnÅÜ3GqmpÖøò¦FŒCc€Ê28ÈÍ}ðçâ,šëI¤ø–Þ×Ãþ1µ;.4•º	ªË	!LˆÃ¸ƒÒ»Õ$È÷¬Ïø/Bñm¿ÙõÍOÖ­Çü±Ômc?\'WÌæ…LÆq•X¥m¬~‘Ã<1C†(ÎŽ\Z¬¤¤ïimµ´V/-äÝKl“F×(i#WÐí$u\0àãèjUn@ïÞ¼þoÙ÷Áïçè:,Ô€;u/¢é÷=¸fŒ\"ð>Y/µ2çÃŸô9V];Å:~½c‹WO<Ã#ïMûØgf2zW“Ê•¬}£×CÐ§¼ŠÖ–âE†(Ô³;©&¹íê__Éª˜ü½9We’KÙ®é²y\nÃF\0“Ãyãh¾\'øÖÆ9<áý22»\\]j¿j1àSìã	#ƒŒg\"ÿ\0ü#?çÒ!Ó“ÄÞÓp©C§Ï4Û=BI&ÝÃÔ“Û4Ò²µÀë¼añ7ÂþF‡WÖ¬ío0\nX‰CÜÈO@®]‰ÁÆ¯–5û/x£Å^-ñ“­6IF‘í©ÿ\0C´fùcHÐ|¤¨RÄÄœÆ+êŸü5Ó<hv¼Ú¦§+™®µmE¼Û«™HÆösÓŽ®G\0bºsî.+¿Šú•_m¦üÏšâ•gø9`gVTâÿ\0–ßuåt|Oö¥À¤Û‡ðyñ\\g5³¡øS]ñ;ãNÒ.æOùé,fÏ¡.}yöX³Š}È§ÁÀoÈWÑK‰qVŒ}÷?(ÃøE–R©Í_9.ÖKñÔùïJýžµûµ\r¨êZr‘œB­pÇØŒ ™®šÇöhÒPæûXÕ¯åI	øyj«©¯bÛ€9ÅI^=lßY¾jÑh~…à~ÀÅ*xH¶º½_õò8‚Óái|Èsæ_/ÚŸ\\¹5ÚÛ[-´B(cX¢E\n‘ Â¨ •`ó@¯&¤åUÞm³í(Ð¥‡‚§F*1]HEùiw\nÍ&ß­I°ãE´\0‡¥5”šqéE\0&Þ(Ú)ÔÑJÈÚ3šuŽÆ˜5“u;¸ P|¼ý;ŠP½i{\nZ\0@)3N=(£`#ò²~ñÅ(*JJw\0üiii)\0”¦–“½\0bÒ–€?ÿÙ','2016-05-15 07:26:02','2016-05-17 03:34:58'),(19,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 01:54:39','2016-05-17 01:54:39'),(20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:14:52','2016-05-17 19:14:52'),(21,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:15:55','2016-05-17 19:15:55'),(22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:07','2016-05-17 19:16:07'),(23,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:22','2016-05-17 19:16:22'),(24,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:33','2016-05-17 19:16:33'),(25,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:44','2016-05-17 19:16:44'),(26,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:51','2016-05-17 19:16:51'),(27,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:01','2016-05-17 19:17:01'),(28,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:09','2016-05-17 19:17:09'),(29,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:20','2016-05-17 19:17:20'),(30,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:35','2016-05-17 19:17:35'),(31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:43','2016-05-17 19:17:43'),(32,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:57','2016-05-17 19:17:57');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','$2y$10$zJDYlN6wk7k4S4K4XfNFteYL7fBTo/yaoTB4M7U2Nb5WVvWJzC9Om',NULL,1,0,NULL,NULL,'2016-05-19 06:22:13','$2y$10$m0tgYPl.rlS8DTakbzg20O6ulYdSooHyWy7uKvqWAfRN3CdDARlEC',NULL,0,'2016-05-15 04:20:11','2016-05-19 06:22:13'),(2,'hvct@gmail.com','$2y$10$gUERn43C4o/nUw/WIC2vLOZsmQsHuUPeO98GANG5Kohh63fTxl69W','',1,0,NULL,NULL,'2016-05-18 08:35:04','$2y$10$17WOTCYI2lchEIkYwqtcwuMb6QiMjxpf7Rl.IUBMA6VfVJNWUxt52',NULL,0,'2016-05-15 07:26:02','2016-05-18 08:35:04'),(19,'cb@gmail.com','$2y$10$dDJ3Q91wESU84xLpBgri3ubaFHniErh1Vg8S2EupgVzkCdBWfQj/m',NULL,1,0,NULL,NULL,'2016-05-17 01:58:33','$2y$10$bIvBUA0TgWGxNDCHQe3leuBv76EIfA7QJ8KSSP2lDqANncfbyTRCq',NULL,0,'2016-05-17 01:54:39','2016-05-17 01:58:33'),(20,'aaaa@gmail.com','$2y$10$./EECkEKE003ODfqQMgWoOqDSk22LXYZlqadp3IpequL7oU/2Fm5C',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:14:52','2016-05-17 19:14:52'),(21,'3afasdf@gmail.com','$2y$10$IrwluJL0lNlUf0E3OihXSe8EV8b774D.UD52FFKKiECoMQA1.MmT.',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:15:55','2016-05-17 19:15:55'),(22,'adfasd@gmail.com','$2y$10$WZ4XXlYn2FOw2f.lkPfAi.UVs01b3n.PxolUBIQEEsy1W3IrS9ZdK',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:16:07','2016-05-17 19:16:07'),(23,'asdfadf@gmail.com','$2y$10$DGz3TgT9daY0GLxRbHQ44ufdLse146zTSHCcv/bfSbQcdr.WLVQNi',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:16:22','2016-05-17 19:16:22'),(24,'asdfadf@gmail.comasdf','$2y$10$2P5BMeZrx7qRH5aPxcEG0.oW7lyumgVK7jzShTypycjM7SV/VHQJm',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:16:33','2016-05-17 19:16:33'),(25,'asdfadf@gmail.comasdfasdf','$2y$10$QPI4dX.8DLw0d47jpLAUc.DK0dHQxkRLGByVYbeL7aUfPq75k1da6',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:16:44','2016-05-17 19:16:44'),(26,'asdfadf@gmail.comasdfasdfasdf','$2y$10$Utz2kmwQr1Wux/vIdTjopOcUfXaEckM7PN4uqgYVLMU65/AyZOaj2',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:16:51','2016-05-17 19:16:51'),(27,'asdfasd@gadsf.com','$2y$10$KmslzjIqy4TYCW022EZfAuOypd13cIeNmCudOTAcZzXnhr1A5C84.',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:17:01','2016-05-17 19:17:01'),(28,'asdfasd@gadsf.comsdf','$2y$10$SsqoLkld/qQF9wHfyoEG3.dyPFuTVp2IPgogIrMFJtwrnbUkbsYl2',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:17:09','2016-05-17 19:17:09'),(29,'asdfasd@gadsf.comasdfasdf','$2y$10$rqrqVr9AIS7jNtyFLSP5uuVI75vNUVomm16qETF.pnOUQjCujggmK',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:17:20','2016-05-17 19:17:20'),(30,'asdfasd@gadsf.comsdfadsf','$2y$10$EVUpVgJdfhkXcx/hcM2JK.ZNPx0dDSZclCQ6nnqZWEBInUaHDKKvS',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:17:35','2016-05-17 19:17:35'),(31,'asdfasd@gadsf.comsdfadsfasdf','$2y$10$MWJIKstohOaq8cS92UB/2OAuDpuWULHhNanrvoVz06Qy6uSxFBOiS',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:17:43','2016-05-17 19:17:43'),(32,'asdfasdfa@gad.com','$2y$10$n8y3x.tCW4TK6sasdFyQq.rIZlrjVrmOtNafDyyliCxdU75efQsji',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,'2016-05-17 19:17:57','2016-05-17 19:17:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1),(2,6),(19,7);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-19 21:24:18
