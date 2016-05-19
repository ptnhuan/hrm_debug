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
INSERT INTO `hrm_payrolls` VALUES (1,'Test 1 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 01:32:17','2016-05-18 01:32:17'),(2,'Test 2 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:36','2016-05-18 02:02:36'),(3,'Test 3 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:46','2016-05-18 02:02:46'),(4,'Test 4 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(5,'Test 5 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(6,'Test 6 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(8,'Test 7 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(9,'Test 8 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(10,'Test 9 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(11,'Test 10 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(12,'Test 11 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(13,'Test 12 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(14,'Test 13 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(15,'Test 15 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57'),(16,'Test 16 bảng lương tháng 1','Test 1 bảng lương tháng 1',12,0,'2016-05-18 02:02:57','2016-05-18 02:02:57');
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
INSERT INTO `user_profile` VALUES (1,1,'',NULL,'','','','','','','','','����\0JFIF\0\0\0\0\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v90), quality = 90\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�O���4�(t�&\r;4b�p*�έagp�Oy�2��\"�7n95v����_�a�$���7L�}F��m[�Ѹ�}:{Rw����;�����|L����*�V��]}�K��{��؜**�fb\0��=��3|S��>)\nx�Q�žr&�[�X�lN7�!?+�A^��A�O���Α�K���<-|��>�$���uuP�7��`A��W��QQ��K��G	\'(7����\0�Y����E�ѵ-:`�a4���پ�r�Ǩ\'��:�\r~b|���ׅ��y�	\'�~$j������[�:�ӁX\0��7���s�X��w;E�\ri����DHQ�4�.��N3�\n��ЧM{O��5x	Ԩ���ݟ�Z��t�jZ����ss:���dC�W��2G^)��C�U��,:�5�<G�����յ�Jl�̺�� �\0����Y�\0����ֹ%���:㔾�?�{�n�A*M}׍���U#$�_�^��㯇��^����Y�r��RH#����_�)v�����\'L�T��Q�i�#���������z�UƕK){��9+e���y~\'�� �9�s~����ּ9�����vX;[���;���\\0ȯY5%tyr\\��u4u��)�CȠR�@h��\0(��\0(Q@\0�(���Hx;���^$�g��ȵҭ���u!{(��\0t�H���Gc��2I�ȍ��$���h�n�o\r2K��mA��vvJ�bU ܖ=k�VT��c�\rJ5s~������l]���ZZx\"K�9��-F[�i\"���z�=@���td�Ο��V�Yηiq�B�0�1�3�+�O��ß~���\0<��5�O�k��f��	;QNp���8\\z��Vp��1��rz}+�1s�j����<!*^�K\Zֹ�M^�T�/f��.�2�q;ny�$�\0/J�=*gHcr�����)7B\"F�@�\0\Z�ܜ���F**ȏ�  �=�K�D\0\"�u,�?�(��&=�jJ!�?�j2~��3�5?N)K���ȧ��H�|!���߂>&�U�%��>�d䵽��]:cЌ�\r~���_�/���Y��!���w�qo�Z������<�q��}b�?�s�Ӫ|�������ٓ2�jV۾I���>�����_��9r��y�jǚ+S��#ꥥ�Ūiַv�$��%�7���?����kT��]XQE�f�9���(��)\r\0W��[�e�A��B��B0kɾ|�?fφ�il��K��A�\r63�}�@�5�<C^���tσ8����:=���Y�+6ʍދ����\0��,��<G��9��Q��0���~v�\0*�o�٠���*Ի��|�>�-܁�\"?�j���\0����\\�m�}��AtH�ī���\0:q��i��T�s�%�#O�	PIN�)��=A�;].�G��0_��}I������B�S8#�A��)l��1voR����{/�R�\\��4M���������d�V�uk�kv�K���C�1��߭y����Nc�4��D����\Z���vv�1���!�����d~b�����i�#�w#>��[�a��Շ\rF�B:q��$��Ox���ۣ��#}ED	�4;�PZ���_�_�W���:hKq1��F�M&rO8���Ch��A��k�O�%v��K����$��HO����-}�k��s�φ�EB����\n+��\nZJO΀4f��@���/��O�~�6���R� �73� *�I${���o�y��>6�P>5�_J���NЬ��������H�j�S��1�sb+��gf\r<UE��=��_�_\Z�Ikjf��@\\��&��1���t����I�_��:�渹Ѯc@9����ƙu�k��/Y���F�ؙ!C�ۑ�`1�Ï�9��CY����j�W���K�QM�ڣ|�Jw���P�#�e�Z��b��JNj��3.��c\rSz��ʱ+8?��=MO��Zޫg�YD���̰��1n��kѾ<|%��V��-��\\�����v�ua�~�e��\0�����Ñ_x�T�&�1��B�3�ܐH�;W�#_&һ�>�)�&�=C���(<g��hz6���(���tq(��2)�ll��?\n�o�����>9~̚2k�w��o%�2��S�#�����x|�:⽏�{��_��Z��X�E��a���G�@��z׺�i��o�\r��6��S<�J�$ ͎��s�_K��BT������8�t㥏�mwH���$|B�L�����\n�kK���������ÿ���çe\\�)P��}�r�s��~������X��֑�m\"�S�c�-r�t����g�\"�2|Q�%��\\�w�MbH�y�(mnI%.�{��8�{W�����N��_��h>h�;��<���3���ɿ�u�C\"�r��%�e�?�8��|��j��n4�N;�;�$��S��~o��5���0��w�{Y�O�h7��K���]�]HF0����\0��:sX_�_�m7�W�t��\0*u�+�\r��C����������x�偵6��G��j�#\r;��1J��\0����O��(�+��^Y˧��m:���ouR8 ���k�LH�i8�a^�ٞ޶����	]i�|rJ���,g�������M~[~�ڶ��r�L�/��M��>�m�����Hd?�!|pA�0���k�0R�����t���z?�\'J3^��\nh�&qFG�\0����ʗ� ��c`%e;28�8�|)��:A�\0�cT�f���ϟ: |�gu����ʂ:����a�Y\Z�t�X���g��`�w`��C�1���P���u����I9Z�џx�_������_^OvcK[f!RGۜ�\\\02�c�}���Ʒ����\0\n����4���H�. F\\�J<�X��f`A<�q\\G�!�MJ����\Z������H���e�1�iU�;�ŗ�NW�v:E���çC��!X���+���<�{I�W[���.�����|o�l�7�GK�1����￦��~�^}C�zn����]�8I?�Z���C2��N��ӌ�^��-�X���ubϤ��a����br��c����|���~��vz�©=�5��lgP�:�z{��8���YZXz��l�����=�*�S̲��2W���]~Ϛ�V:����U$�X�!Rq�2Y?<�>���b`��?:����Hb���d�|sF�Y[�ƺȾ/��Qk�a&сq=����|�]X<:j�M�Y�UZ�wV�ϸ��/����/��\r���򦳧���Pހ$`\0w(Q!=1׵y��}�xsP�kxsH]wQ�\\���d~��d����펆�MKS��n�٩�ϩ��̙��U@U�(����ֲ�.���M�i0�����1�Ⱬ��|E=}س��[<>�kߒ�����ܜW�~�����}*�3��1�8D˻��c>�z�D�\0\Z�\rof�?����к�5�	�TDN���n��x?��i/�Ms�j[il��/���LF��,K3ћ\nH�G�lv\"���xn��\n����O�D\ZŽ~5\0Gq(�P��z(c��Y�����Ķ�;��v�Q	`\n�erw,.O!X����r+���m}�#�iQ�I��v�*�f=�X�\'��W�G��\n��ǅm�\'���!6�*��wߘ�W��z(\0c\'<�nT�\0h�E:oml��#:��a��`�u^���]���;_�Ϻ}��Z����[��VH,����`uR�X���?��5[(;r����{0�)�X+}J��+ԕ؄f�1KGJ��B2h��KF(\0�E\'ZZ\0L\nd�	��棔��Z7�==���<_��Q�Ԭ[�\'����=���|֭�N8��0G���}�2H�x�/��Y��x�J�I ���۪��@P{�l���9�p���G��<J�)f�k�_���%�t��K�h��xe@���zj��[�[���k��,ϼ��9-�>b��?��烣���)6�e`�]X2��aЃ�\r}Fo�Q����.e����?�5�8/�Q~�~�5�f���s���Gv����u��vD���=�Ӵ��m��\r>�_W�纱��S�������#�7�|A��/\"�ԵH�.��X�\r�`�w|�� +���bhbe��m�tO�G�C�q.[���f8z�BKf��z���}����K8��H%L1R�>��t���%�+O2*iX��W���������7F��*�y�psVUN1�32x��ԕ�T{��������<A��J�Ө�«���x4���|H����8U�\'\0}k��$�5)m#��ĴH:s՛��ֺ\ru_kۦˍOݕs�d�y�ǃ����\0ɯ���:���k{������~{��i�d)`������l��5�d�z�hT��?f�n��5�\0E�W3��Is�#�޶��@���\':��m\n��:b�<�;?��M���2H>y����bI�x��W�Ԕ�I{�����*a��e�Zo�r��輖�jF�i�QY�QHi\0;���PފBh�\0-���/�\0uW�omʞ�\'�x<P������P~g��Q�;>�$ڶ�o�Z6^{8�1��c��_�Ҽ�6�S�����ҩh�`�5�~\r��$�΄���	���\r���~�)�%F�q.�c���:�1O2ʣj��.���β�42�o<GrM�t>��Eq�7�ic㋯����6���m�v�F������vذ(̌\n���H�pA�Z�\n��j,E=�����K1�0�¬���Wi&�[�s���sW�=�	4]B{˝>H٬a��K��$R3�Ӟp�O4��~\"���b���HIե���A>`�($�ں���ZF���2k�/(�\\n_2	Q�}$W{�}2\'��u��k\Z�/8\'ܞ�\0μw�a:�>���$���n;k��ʷ�9�xgB=G(�{hi�:9�t�.�M�˄���{�;�=�&���i�h<�}�?}u/�nn�Yd?��zW��0�xv�ė�j:�<!���YAU�b\'��>��}݈�_��Y����#۩�/��=�k���Wr��I�\'�M�n��?[Rn�4H��⊌Πг+�M+�<��ъh|���逻h�KH��\r�^�Ae�T%��\n��z�����7_����\Z���m�]yc�FD���傟����{%ɫ�ń�.W�}<��0���u�&�Y���,{�e�}P�U��Q�����~!��UȰ��K(<�t��0����\r�8�G�C�k�k�]��i*�ms\Z��C�1��Z�<���X���%.�F{������p�7��\Z��Sڣa�1�`�7�ߑ�7�y�W��;�D��G�tx���� �.���`>rά��I�o�vu���\0�W��H,���r��;���Lc���	�~œ�}F�6��Y�%�.��<_����k��7<��u����$�GK��4bE���:��pk����]�wL�L���28�\0dW#���KCx��^Eo�[I5��*y�H#ֵ~j)��H� H����%q�W�����+k��?/��Z-p��%�g;|�����:�j����7OO�ȹ�yc\nO�]��B�M�}����i;�ҧa� e��u�:��{�|!kiľ$Ӷ8�`[�G�_��x\n�|L��ӻV�?��?����SN��(�	FWij�����mkȵ�;E��A�X��/1���3�uS\\E���˶)4�>6�|�ZFOb�p��Ȩ���k�\Zo硶e�<?��Z����7��?��Sms�1�U���;{�^e��A�/&G$*��,@Z���~8���u���Ոڿ�5��/k�?���V��lm�[HZ5�E��L���\0=pOJ類cyҜU�O�����GR��緺�Z��x�Ŀګ�~��R��M�$�\Ze�A�m���\r��IM��;��q_i�����5x�[X��P�����DS�m=��}8�\r~f�Hs/���~X\\�P=3_P�:u�?��i�|�G�ox9�̽=+�N&��!���C�q��{�<-�cq��T�̯��\0#��킑:�vM~*~��y�R7OƓ�����9�P2��3�E~9��P�W��rKOuu$ϓ�Y�?οc52�΃��/�+��^�k-{T�a���X��*��_�xb���K{���y��\Zs<=+mw�\0\0��*����t��?�j�/kZ�R�E��T��,{����y����]jט;� �N����OÝc]���\0���h�/c�988<���}�WRn*V�4b�R��q2���־vh�=oN��tMX,���u�#�5�?�|^m���&\Z����aN⾞i���w��_^x\'�M�;G�t�u��ob���]���@��\r��[<zW����_�sKh#�n����$���֮s��9V�(Ϡ5��>U��b\'�j����>�����3\Z��}��\0�i�ԓ\r���1`�Y�n\0�I$�d�u���\Z|9�� ��mR`p#�RW���~D�~��&|]�B6�^��up$?��I�n6�|۹�v�\0�b��Z+i^4�a������R�R8r�(��l�w穚��({eR2Q��*vm4tw��שx+Oll�&�m��k�om�O�7�PxsK�]��dCj��,�׃�}x��-u����V��l���G�^\\IfB�#�9�~��3�K�τ��g���G���\'t�\r��s��\0�x�ᧃ�$Amg�\Z�T`X@n%C�����/@5�V�|O, ����{7�6�[�ˁ���_�%l�m����sN�����#y�����ق��R3��y��g���5{�a�,�c8�,@�{��?�r+p�Z��/�\n���䝠08&������|����xn�V�u�^h�,�$�J7)|�X�\"����cs�V�Z%{^����0�wR��t�(ݾm���.�-�N/��r7E���)�i�>xj7*��N���+�t���:������R���`�1�ʰ�BXg�{���z��jv���]3>{�@?��}�հ���R�pKF�V�������R歉�����~Gy�|w:ZÏ^ķ��7,��C�0�pqV|���\Z�Z-՘���1�VO00<��z{�,f�1���5�GRh�bF��,j3���rx�I��۴:.�\r��7������?A^\\]��5寽�O�\'����Te%)[~��6��|��>ͬ�}�G�wM�c��?�}5�\0�����v�����K0�+¿h$����R\'d7��K��\0-󟪔�\0�M}���\n�%�Z������\0k�X`�ubl��7хi�y�\'�Q���ۊ����ۀԱN�uw\r�\0N�K/z}1{ӳ_����#t����j���=s_��OK�?uY���%��iMݜ��̌_� }��㩯ӦBqҫ�Z$���[�@#>���{_��OF<�Vi�\0]5�)�U)ɫ;��?>~�7�d^�]Y���<�=�ǰ��*?�λ���첼u#�KY�_e�����7�A�-����j�UZ��Q�Wz���s�>��z��{��r���;׼Ol�`�n��3Gqmp���F�Cc��28��}���,��I�������1�;.4��	��	!L�ø�һՏ$�����/B�m����O֭����mc�?\'W���L�q�X�m�~��<1C�(Ύ\Z����im��V/-��Kl�F�(i#W��$u\0���jUn@�޼�o������:,Ԁ;u/���=�f�\"�>Y/�2�ß�9V];�:~�c�WO<�#�M��gf2zW�ʕ�}��CЧ�����E�(Գ;�&���__ɪ���9We�K���y\n�F\0���y�h�\'���9<��22�\\]j�j1��S��	#��g\"�\0�#?��!ӓ��ӝp��C��4�=BI&��ԓ�4Ҳ���a�7��F�W֬�o0\nX�C��O@��]�����5�/x��^-����6IF���\0C�f�cH�|��RčĜ�+��5�<hv�ڦ�+���mE�۫�H��sӎ�G\0b�s�.+����_m��Ϛ��g�9`gVT��\0�ߏu�t|O����ۇ�y�\\g5���S]�;�N�.�O��,fϡ.}y�X���}ȧ��o�W�K�qV�}�?(��E�R��_9.�K����J�����\r��Zr��B�p�،������h�P��Xկ��I	�yj���bۀ9�I^=l�Y�j��h~���~��*xH���_��8����i|�s�_/��\\�5��[-�B(cX�E\n��¨��`�@�&��U�m��(Х���F*1]HE�iw\n�&߭I��E�\0��5��q�E\0&�(�)��J��3�u�Ƙ5�u;��P|��;�P�i{\nZ\0@)3N=(�`#�~��(�*JJw\0�iii)\0�����\0b�Җ�?��','2016-05-15 04:20:11','2016-05-15 09:25:10'),(2,2,'',NULL,'','xxxxxxxxx','','','','','','','����\0JFIF\0\0\0\0\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v90), quality = 90\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�O���4�(t�&\r;4b�p*�έagp�Oy�2��\"�7n95v����_�a�$���7L�}F��m[�Ѹ�}:{Rw����;�����|L����*�V��]}�K��{��؜**�fb\0��=��3|S��>)\nx�Q�žr&�[�X�lN7�!?+�A^��A�O���Α�K���<-|��>�$���uuP�7��`A��W��QQ��K��G	\'(7����\0�Y����E�ѵ-:`�a4���پ�r�Ǩ\'��:�\r~b|���ׅ��y�	\'�~$j������[�:�ӁX\0��7���s�X��w;E�\ri����DHQ�4�.��N3�\n��ЧM{O��5x	Ԩ���ݟ�Z��t�jZ����ss:���dC�W��2G^)��C�U��,:�5�<G�����յ�Jl�̺�� �\0����Y�\0����ֹ%���:㔾�?�{�n�A*M}׍���U#$�_�^��㯇��^����Y�r��RH#����_�)v�����\'L�T��Q�i�#���������z�UƕK){��9+e���y~\'�� �9�s~����ּ9�����vX;[���;���\\0ȯY5%tyr\\��u4u��)�CȠR�@h��\0(��\0(Q@\0�(���Hx;���^$�g��ȵҭ���u!{(��\0t�H���Gc��2I�ȍ��$���h�n�o\r2K��mA��vvJ�bU ܖ=k�VT��c�\rJ5s~������l]���ZZx\"K�9��-F[�i\"���z�=@���td�Ο��V�Yηiq�B�0�1�3�+�O��ß~���\0<��5�O�k��f��	;QNp���8\\z��Vp��1��rz}+�1s�j����<!*^�K\Zֹ�M^�T�/f��.�2�q;ny�$�\0/J�=*gHcr�����)7B\"F�@�\0\Z�ܜ���F**ȏ�  �=�K�D\0\"�u,�?�(��&=�jJ!�?�j2~��3�5?N)K���ȧ��H�|!���߂>&�U�%��>�d䵽��]:cЌ�\r~���_�/���Y��!���w�qo�Z������<�q��}b�?�s�Ӫ|�������ٓ2�jV۾I���>�����_��9r��y�jǚ+S��#ꥥ�Ūiַv�$��%�7���?����kT��]XQE�f�9���(��)\r\0W��[�e�A��B��B0kɾ|�?fφ�il��K��A�\r63�}�@�5�<C^���tσ8����:=���Y�+6ʍދ����\0��,��<G��9��Q��0���~v�\0*�o�٠���*Ի��|�>�-܁�\"?�j���\0����\\�m�}��AtH�ī���\0:q��i��T�s�%�#O�	PIN�)��=A�;].�G��0_��}I������B�S8#�A��)l��1voR����{/�R�\\��4M���������d�V�uk�kv�K���C�1��߭y����Nc�4��D����\Z���vv�1���!�����d~b�����i�#�w#>��[�a��Շ\rF�B:q��$��Ox���ۣ��#}ED	�4;�PZ���_�_�W���:hKq1��F�M&rO8���Ch��A��k�O�%v��K����$��HO����-}�k��s�φ�EB����\n+��\nZJO΀4f��@���/��O�~�6���R� �73� *�I${���o�y��>6�P>5�_J���NЬ��������H�j�S��1�sb+��gf\r<UE��=��_�_\Z�Ikjf��@\\��&��1���t����I�_��:�渹Ѯc@9����ƙu�k��/Y���F�ؙ!C�ۑ�`1�Ï�9��CY����j�W���K�QM�ڣ|�Jw���P�#�e�Z��b��JNj��3.��c\rSz��ʱ+8?��=MO��Zޫg�YD���̰��1n��kѾ<|%��V��-��\\�����v�ua�~�e��\0�����Ñ_x�T�&�1��B�3�ܐH�;W�#_&һ�>�)�&�=C���(<g��hz6���(���tq(��2)�ll��?\n�o�����>9~̚2k�w��o%�2��S�#�����x|�:⽏�{��_��Z��X�E��a���G�@��z׺�i��o�\r��6��S<�J�$ ͎��s�_K��BT������8�t㥏�mwH���$|B�L�����\n�kK���������ÿ���çe\\�)P��}�r�s��~������X��֑�m\"�S�c�-r�t����g�\"�2|Q�%��\\�w�MbH�y�(mnI%.�{��8�{W�����N��_��h>h�;��<���3���ɿ�u�C\"�r��%�e�?�8��|��j��n4�N;�;�$��S��~o��5���0��w�{Y�O�h7��K���]�]HF0����\0��:sX_�_�m7�W�t��\0*u�+�\r��C����������x�偵6��G��j�#\r;��1J��\0����O��(�+��^Y˧��m:���ouR8 ���k�LH�i8�a^�ٞ޶����	]i�|rJ���,g�������M~[~�ڶ��r�L�/��M��>�m�����Hd?�!|pA�0���k�0R�����t���z?�\'J3^��\nh�&qFG�\0����ʗ� ��c`%e;28�8�|)��:A�\0�cT�f���ϟ: |�gu����ʂ:����a�Y\Z�t�X���g��`�w`��C�1���P���u����I9Z�џx�_������_^OvcK[f!RGۜ�\\\02�c�}���Ʒ����\0\n����4���H�. F\\�J<�X��f`A<�q\\G�!�MJ����\Z������H���e�1�iU�;�ŗ�NW�v:E���çC��!X���+���<�{I�W[���.�����|o�l�7�GK�1����￦��~�^}C�zn����]�8I?�Z���C2��N��ӌ�^��-�X���ubϤ��a����br��c����|���~��vz�©=�5��lgP�:�z{��8���YZXz��l�����=�*�S̲��2W���]~Ϛ�V:����U$�X�!Rq�2Y?<�>���b`��?:����Hb���d�|sF�Y[�ƺȾ/��Qk�a&сq=����|�]X<:j�M�Y�UZ�wV�ϸ��/����/��\r���򦳧���Pހ$`\0w(Q!=1׵y��}�xsP�kxsH]wQ�\\���d~��d����펆�MKS��n�٩�ϩ��̙��U@U�(����ֲ�.���M�i0�����1�Ⱬ��|E=}س��[<>�kߒ�����ܜW�~�����}*�3��1�8D˻��c>�z�D�\0\Z�\rof�?����к�5�	�TDN���n��x?��i/�Ms�j[il��/���LF��,K3ћ\nH�G�lv\"���xn��\n����O�D\ZŽ~5\0Gq(�P��z(c��Y�����Ķ�;��v�Q	`\n�erw,.O!X����r+���m}�#�iQ�I��v�*�f=�X�\'��W�G��\n��ǅm�\'���!6�*��wߘ�W��z(\0c\'<�nT�\0h�E:oml��#:��a��`�u^���]���;_�Ϻ}��Z����[��VH,����`uR�X���?��5[(;r����{0�)�X+}J��+ԕ؄f�1KGJ��B2h��KF(\0�E\'ZZ\0L\nd�	��棔��Z7�==���<_��Q�Ԭ[�\'����=���|֭�N8��0G���}�2H�x�/��Y��x�J�I ���۪��@P{�l���9�p���G��<J�)f�k�_���%�t��K�h��xe@���zj��[�[���k��,ϼ��9-�>b��?��烣���)6�e`�]X2��aЃ�\r}Fo�Q����.e����?�5�8/�Q~�~�5�f���s���Gv����u��vD���=�Ӵ��m��\r>�_W�纱��S�������#�7�|A��/\"�ԵH�.��X�\r�`�w|�� +���bhbe��m�tO�G�C�q.[���f8z�BKf��z���}����K8��H%L1R�>��t���%�+O2*iX��W���������7F��*�y�psVUN1�32x��ԕ�T{��������<A��J�Ө�«���x4���|H����8U�\'\0}k��$�5)m#��ĴH:s՛��ֺ\ru_kۦˍOݕs�d�y�ǃ����\0ɯ���:���k{������~{��i�d)`������l��5�d�z�hT��?f�n��5�\0E�W3��Is�#�޶��@���\':��m\n��:b�<�;?��M���2H>y����bI�x��W�Ԕ�I{�����*a��e�Zo�r��輖�jF�i�QY�QHi\0;���PފBh�\0-���/�\0uW�omʞ�\'�x<P������P~g��Q�;>�$ڶ�o�Z6^{8�1��c��_�Ҽ�6�S�����ҩh�`�5�~\r��$�΄���	���\r���~�)�%F�q.�c���:�1O2ʣj��.���β�42�o<GrM�t>��Eq�7�ic㋯����6���m�v�F������vذ(̌\n���H�pA�Z�\n��j,E=�����K1�0�¬���Wi&�[�s���sW�=�	4]B{˝>H٬a��K��$R3�Ӟp�O4��~\"���b���HIե���A>`�($�ں���ZF���2k�/(�\\n_2	Q�}$W{�}2\'��u��k\Z�/8\'ܞ�\0μw�a:�>���$���n;k��ʷ�9�xgB=G(�{hi�:9�t�.�M�˄���{�;�=�&���i�h<�}�?}u/�nn�Yd?��zW��0�xv�ė�j:�<!���YAU�b\'��>��}݈�_��Y����#۩�/��=�k���Wr��I�\'�M�n��?[Rn�4H��⊌Πг+�M+�<��ъh|���逻h�KH��\r�^�Ae�T%��\n��z�����7_����\Z���m�]yc�FD���傟����{%ɫ�ń�.W�}<��0���u�&�Y���,{�e�}P�U��Q�����~!��UȰ��K(<�t��0����\r�8�G�C�k�k�]��i*�ms\Z��C�1��Z�<���X���%.�F{������p�7��\Z��Sڣa�1�`�7�ߑ�7�y�W��;�D��G�tx���� �.���`>rά��I�o�vu���\0�W��H,���r��;���Lc���	�~œ�}F�6��Y�%�.��<_����k��7<��u����$�GK��4bE���:��pk����]�wL�L���28�\0dW#���KCx��^Eo�[I5��*y�H#ֵ~j)��H� H����%q�W�����+k��?/��Z-p��%�g;|�����:�j����7OO�ȹ�yc\nO�]��B�M�}����i;�ҧa� e��u�:��{�|!kiľ$Ӷ8�`[�G�_��x\n�|L��ӻV�?��?����SN��(�	FWij�����mkȵ�;E��A�X��/1���3�uS\\E���˶)4�>6�|�ZFOb�p��Ȩ���k�\Zo硶e�<?��Z����7��?��Sms�1�U���;{�^e��A�/&G$*��,@Z���~8���u���Ոڿ�5��/k�?���V��lm�[HZ5�E��L���\0=pOJ類cyҜU�O�����GR��緺�Z��x�Ŀګ�~��R��M�$�\Ze�A�m���\r��IM��;��q_i�����5x�[X��P�����DS�m=��}8�\r~f�Hs/���~X\\�P=3_P�:u�?��i�|�G�ox9�̽=+�N&��!���C�q��{�<-�cq��T�̯��\0#��킑:�vM~*~��y�R7OƓ�����9�P2��3�E~9��P�W��rKOuu$ϓ�Y�?οc52�΃��/�+��^�k-{T�a���X��*��_�xb���K{���y��\Zs<=+mw�\0\0��*����t��?�j�/kZ�R�E��T��,{����y����]jט;� �N����OÝc]���\0���h�/c�988<���}�WRn*V�4b�R��q2���־vh�=oN��tMX,���u�#�5�?�|^m���&\Z����aN⾞i���w��_^x\'�M�;G�t�u��ob���]���@��\r��[<zW����_�sKh#�n����$���֮s��9V�(Ϡ5��>U��b\'�j����>�����3\Z��}��\0�i�ԓ\r���1`�Y�n\0�I$�d�u���\Z|9�� ��mR`p#�RW���~D�~��&|]�B6�^��up$?��I�n6�|۹�v�\0�b��Z+i^4�a������R�R8r�(��l�w穚��({eR2Q��*vm4tw��שx+Oll�&�m��k�om�O�7�PxsK�]��dCj��,�׃�}x��-u����V��l���G�^\\IfB�#�9�~��3�K�τ��g���G���\'t�\r��s��\0�x�ᧃ�$Amg�\Z�T`X@n%C�����/@5�V�|O, ����{7�6�[�ˁ���_�%l�m����sN�����#y�����ق��R3��y��g���5{�a�,�c8�,@�{��?�r+p�Z��/�\n���䝠08&������|����xn�V�u�^h�,�$�J7)|�X�\"����cs�V�Z%{^����0�wR��t�(ݾm���.�-�N/��r7E���)�i�>xj7*��N���+�t���:������R���`�1�ʰ�BXg�{���z��jv���]3>{�@?��}�հ���R�pKF�V�������R歉�����~Gy�|w:ZÏ^ķ��7,��C�0�pqV|���\Z�Z-՘���1�VO00<��z{�,f�1���5�GRh�bF��,j3���rx�I��۴:.�\r��7������?A^\\]��5寽�O�\'����Te%)[~��6��|��>ͬ�}�G�wM�c��?�}5�\0�����v�����K0�+¿h$����R\'d7��K��\0-󟪔�\0�M}���\n�%�Z������\0k�X`�ubl��7хi�y�\'�Q���ۊ����ۀԱN�uw\r�\0N�K/z}1{ӳ_����#t����j���=s_��OK�?uY���%��iMݜ��̌_� }��㩯ӦBqҫ�Z$���[�@#>���{_��OF<�Vi�\0]5�)�U)ɫ;��?>~�7�d^�]Y���<�=�ǰ��*?�λ���첼u#�KY�_e�����7�A�-����j�UZ��Q�Wz���s�>��z��{��r���;׼Ol�`�n��3Gqmp���F�Cc��28��}���,��I�������1�;.4��	��	!L�ø�һՏ$�����/B�m����O֭����mc�?\'W���L�q�X�m�~��<1C�(Ύ\Z����im��V/-��Kl�F�(i#W��$u\0���jUn@�޼�o������:,Ԁ;u/���=�f�\"�>Y/�2�ß�9V];�:~�c�WO<�#�M��gf2zW�ʕ�}��CЧ�����E�(Գ;�&���__ɪ���9We�K���y\n�F\0���y�h�\'���9<��22�\\]j�j1��S��	#��g\"�\0�#?��!ӓ��ӝp��C��4�=BI&��ԓ�4Ҳ���a�7��F�W֬�o0\nX�C��O@��]�����5�/x��^-����6IF���\0C�f�cH�|��RčĜ�+��5�<hv�ڦ�+���mE�۫�H��sӎ�G\0b�s�.+����_m��Ϛ��g�9`gVT��\0�ߏu�t|O����ۇ�y�\\g5���S]�;�N�.�O��,fϡ.}y�X���}ȧ��o�W�K�qV�}�?(��E�R��_9.�K����J�����\r��Zr��B�p�،������h�P��Xկ��I	�yj���bۀ9�I^=l�Y�j��h~���~��*xH���_��8����i|�s�_/��\\�5��[-�B(cX�E\n��¨��`�@�&��U�m��(Х���F*1]HE�iw\n�&߭I��E�\0��5��q�E\0&�(�)��J��3�u�Ƙ5�u;��P|��;�P�i{\nZ\0@)3N=(�`#�~��(�*JJw\0�iii)\0�����\0b�Җ�?��','2016-05-15 07:26:02','2016-05-17 03:34:58'),(19,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 01:54:39','2016-05-17 01:54:39'),(20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:14:52','2016-05-17 19:14:52'),(21,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:15:55','2016-05-17 19:15:55'),(22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:07','2016-05-17 19:16:07'),(23,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:22','2016-05-17 19:16:22'),(24,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:33','2016-05-17 19:16:33'),(25,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:44','2016-05-17 19:16:44'),(26,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:16:51','2016-05-17 19:16:51'),(27,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:01','2016-05-17 19:17:01'),(28,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:09','2016-05-17 19:17:09'),(29,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:20','2016-05-17 19:17:20'),(30,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:35','2016-05-17 19:17:35'),(31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:43','2016-05-17 19:17:43'),(32,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-17 19:17:57','2016-05-17 19:17:57');
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
