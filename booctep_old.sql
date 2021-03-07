/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.4.10-MariaDB : Database - booctop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`booctop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `booctop`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_group` */

insert  into `auth_group`(`id`,`name`) values 
(1,'admin'),
(2,'student'),
(3,'teacher');

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add User',1,'add_user'),
(2,'Can change User',1,'change_user'),
(3,'Can delete User',1,'delete_user'),
(4,'Can view User',1,'view_user'),
(5,'Can add user_activation',2,'add_user_activation'),
(6,'Can change user_activation',2,'change_user_activation'),
(7,'Can delete user_activation',2,'delete_user_activation'),
(8,'Can view user_activation',2,'view_user_activation'),
(9,'Can add log entry',3,'add_logentry'),
(10,'Can change log entry',3,'change_logentry'),
(11,'Can delete log entry',3,'delete_logentry'),
(12,'Can view log entry',3,'view_logentry'),
(13,'Can add permission',4,'add_permission'),
(14,'Can change permission',4,'change_permission'),
(15,'Can delete permission',4,'delete_permission'),
(16,'Can view permission',4,'view_permission'),
(17,'Can add group',5,'add_group'),
(18,'Can change group',5,'change_group'),
(19,'Can delete group',5,'delete_group'),
(20,'Can view group',5,'view_group'),
(21,'Can add content type',6,'add_contenttype'),
(22,'Can change content type',6,'change_contenttype'),
(23,'Can delete content type',6,'delete_contenttype'),
(24,'Can view content type',6,'view_contenttype'),
(25,'Can add session',7,'add_session'),
(26,'Can change session',7,'change_session'),
(27,'Can delete session',7,'delete_session'),
(28,'Can view session',7,'view_session'),
(29,'Can add categories',8,'add_categories'),
(30,'Can change categories',8,'change_categories'),
(31,'Can delete categories',8,'delete_categories'),
(32,'Can view categories',8,'view_categories'),
(33,'Can add subcategories',9,'add_subcategories'),
(34,'Can change subcategories',9,'change_subcategories'),
(35,'Can delete subcategories',9,'delete_subcategories'),
(36,'Can view subcategories',9,'view_subcategories'),
(37,'Can add user_otherinfo',10,'add_user_otherinfo'),
(38,'Can change user_otherinfo',10,'change_user_otherinfo'),
(39,'Can delete user_otherinfo',10,'delete_user_otherinfo'),
(40,'Can view user_otherinfo',10,'view_user_otherinfo'),
(41,'Can add user_categories',11,'add_user_categories'),
(42,'Can change user_categories',11,'change_user_categories'),
(43,'Can delete user_categories',11,'delete_user_categories'),
(44,'Can view user_categories',11,'view_user_categories'),
(45,'Can add ddd',12,'add_ddd'),
(46,'Can change ddd',12,'change_ddd'),
(47,'Can delete ddd',12,'delete_ddd'),
(48,'Can view ddd',12,'view_ddd'),
(49,'Can add courses',13,'add_courses'),
(50,'Can change courses',13,'change_courses'),
(51,'Can delete courses',13,'delete_courses'),
(52,'Can view courses',13,'view_courses'),
(53,'Can add sections',14,'add_sections'),
(54,'Can change sections',14,'change_sections'),
(55,'Can delete sections',14,'delete_sections'),
(56,'Can view sections',14,'view_sections'),
(57,'Can add video uploads',15,'add_videouploads'),
(58,'Can change video uploads',15,'change_videouploads'),
(59,'Can delete video uploads',15,'delete_videouploads'),
(60,'Can view video uploads',15,'view_videouploads'),
(61,'Can add todo',16,'add_todo'),
(62,'Can change todo',16,'change_todo'),
(63,'Can delete todo',16,'delete_todo'),
(64,'Can view todo',16,'view_todo'),
(65,'Can add questions',17,'add_questions'),
(66,'Can change questions',17,'change_questions'),
(67,'Can delete questions',17,'delete_questions'),
(68,'Can view questions',17,'view_questions'),
(69,'Can add user_profile',18,'add_user_profile'),
(70,'Can change user_profile',18,'change_user_profile'),
(71,'Can delete user_profile',18,'delete_user_profile'),
(72,'Can view user_profile',18,'view_user_profile'),
(73,'Can add user_become',19,'add_user_become'),
(74,'Can change user_become',19,'change_user_become'),
(75,'Can delete user_become',19,'delete_user_become'),
(76,'Can view user_become',19,'view_user_become'),
(77,'Can add notifications',20,'add_notifications'),
(78,'Can change notifications',20,'change_notifications'),
(79,'Can delete notifications',20,'delete_notifications'),
(80,'Can view notifications',20,'view_notifications'),
(81,'Can add questions1',21,'add_questions1'),
(82,'Can change questions1',21,'change_questions1'),
(83,'Can delete questions1',21,'delete_questions1'),
(84,'Can view questions1',21,'view_questions1'),
(85,'Can add answers',22,'add_answers'),
(86,'Can change answers',22,'change_answers'),
(87,'Can delete answers',22,'delete_answers'),
(88,'Can view answers',22,'view_answers'),
(89,'Can add student_mark',23,'add_student_mark'),
(90,'Can change student_mark',23,'change_student_mark'),
(91,'Can delete student_mark',23,'delete_student_mark'),
(92,'Can view student_mark',23,'view_student_mark'),
(93,'Can add transactions',24,'add_transactions'),
(94,'Can change transactions',24,'change_transactions'),
(95,'Can delete transactions',24,'delete_transactions'),
(96,'Can view transactions',24,'view_transactions'),
(97,'Can add association',25,'add_association'),
(98,'Can change association',25,'change_association'),
(99,'Can delete association',25,'delete_association'),
(100,'Can view association',25,'view_association'),
(101,'Can add code',26,'add_code'),
(102,'Can change code',26,'change_code'),
(103,'Can delete code',26,'delete_code'),
(104,'Can view code',26,'view_code'),
(105,'Can add nonce',27,'add_nonce'),
(106,'Can change nonce',27,'change_nonce'),
(107,'Can delete nonce',27,'delete_nonce'),
(108,'Can view nonce',27,'view_nonce'),
(109,'Can add user social auth',28,'add_usersocialauth'),
(110,'Can change user social auth',28,'change_usersocialauth'),
(111,'Can delete user social auth',28,'delete_usersocialauth'),
(112,'Can view user social auth',28,'view_usersocialauth'),
(113,'Can add partial',29,'add_partial'),
(114,'Can change partial',29,'change_partial'),
(115,'Can delete partial',29,'delete_partial'),
(116,'Can view partial',29,'view_partial'),
(117,'Can add course_comments',30,'add_course_comments'),
(118,'Can change course_comments',30,'change_course_comments'),
(119,'Can delete course_comments',30,'delete_course_comments'),
(120,'Can view course_comments',30,'view_course_comments'),
(121,'Can add student_cart_courses',31,'add_student_cart_courses'),
(122,'Can change student_cart_courses',31,'change_student_cart_courses'),
(123,'Can delete student_cart_courses',31,'delete_student_cart_courses'),
(124,'Can view student_cart_courses',31,'view_student_cart_courses'),
(125,'Can add student_favourite_courses',32,'add_student_favourite_courses'),
(126,'Can change student_favourite_courses',32,'change_student_favourite_courses'),
(127,'Can delete student_favourite_courses',32,'delete_student_favourite_courses'),
(128,'Can view student_favourite_courses',32,'view_student_favourite_courses'),
(129,'Can add student_register_courses',33,'add_student_register_courses'),
(130,'Can change student_register_courses',33,'change_student_register_courses'),
(131,'Can delete student_register_courses',33,'delete_student_register_courses'),
(132,'Can view student_register_courses',33,'view_student_register_courses'),
(133,'Can add student_rating_courses',34,'add_student_rating_courses'),
(134,'Can change student_rating_courses',34,'change_student_rating_courses'),
(135,'Can delete student_rating_courses',34,'delete_student_rating_courses'),
(136,'Can view student_rating_courses',34,'view_student_rating_courses'),
(137,'Can add student_certificate',35,'add_student_certificate'),
(138,'Can change student_certificate',35,'change_student_certificate'),
(139,'Can delete student_certificate',35,'delete_student_certificate'),
(140,'Can view student_certificate',35,'view_student_certificate'),
(141,'Can add student_performance',36,'add_student_performance'),
(142,'Can change student_performance',36,'change_student_performance'),
(143,'Can delete student_performance',36,'delete_student_performance'),
(144,'Can view student_performance',36,'view_student_performance'),
(145,'Can add payment',37,'add_payment'),
(146,'Can change payment',37,'change_payment'),
(147,'Can delete payment',37,'delete_payment'),
(148,'Can view payment',37,'view_payment');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$180000$AwRwyL49zgg1$Lv2u9hPbaKkaqxh5ccdeQrAPnVEfxL8AmbHCh6kQEAI=','2020-06-11 10:02:11.000000',1,'admin','admin','admin','admin@gmail.com',1,1,'2020-06-10 10:02:16.000000');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_home_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2020-06-15 04:45:36.252408','1','categories object (1)',1,'[{\"added\": {}}]',8,1),
(2,'2020-06-15 04:46:04.278119','2','categories object (2)',1,'[{\"added\": {}}]',8,1),
(3,'2020-06-15 04:48:03.236455','1','categories object (1)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),
(4,'2020-06-15 04:48:28.185883','3','categories object (3)',1,'[{\"added\": {}}]',8,1),
(5,'2020-06-15 04:48:37.473266','4','categories object (4)',1,'[{\"added\": {}}]',8,1),
(6,'2020-06-15 04:48:51.191840','5','categories object (5)',1,'[{\"added\": {}}]',8,1),
(7,'2020-06-15 04:49:16.268544','2','categories object (2)',2,'[]',8,1),
(8,'2020-06-15 04:49:31.915225','6','categories object (6)',1,'[{\"added\": {}}]',8,1),
(9,'2020-06-15 04:49:42.567260','7','categories object (7)',1,'[{\"added\": {}}]',8,1),
(10,'2020-06-15 04:50:02.293927','8','categories object (8)',1,'[{\"added\": {}}]',8,1),
(11,'2020-06-15 04:50:19.273622','9','categories object (9)',1,'[{\"added\": {}}]',8,1),
(12,'2020-06-15 04:50:39.514773','10','categories object (10)',1,'[{\"added\": {}}]',8,1),
(13,'2020-06-15 04:51:18.458565','11','categories object (11)',1,'[{\"added\": {}}]',8,1),
(14,'2020-06-15 04:51:33.476023','12','categories object (12)',1,'[{\"added\": {}}]',8,1),
(15,'2020-06-15 04:51:55.008432','13','categories object (13)',1,'[{\"added\": {}}]',8,1),
(16,'2020-06-15 04:52:12.511821','14','categories object (14)',1,'[{\"added\": {}}]',8,1),
(17,'2020-06-15 04:53:34.055444','1','subcategories object (1)',1,'[{\"added\": {}}]',9,1),
(18,'2020-06-15 04:54:01.956777','2','subcategories object (2)',1,'[{\"added\": {}}]',9,1),
(19,'2020-06-15 06:03:47.403273','3','subcategories object (3)',1,'[{\"added\": {}}]',9,1),
(20,'2020-06-15 06:04:24.159184','4','subcategories object (4)',1,'[{\"added\": {}}]',9,1),
(21,'2020-06-15 06:05:07.682409','5','subcategories object (5)',1,'[{\"added\": {}}]',9,1),
(22,'2020-06-15 06:05:32.976828','6','subcategories object (6)',1,'[{\"added\": {}}]',9,1),
(23,'2020-06-15 06:05:48.468988','7','subcategories object (7)',1,'[{\"added\": {}}]',9,1),
(24,'2020-06-15 06:06:07.293666','8','subcategories object (8)',1,'[{\"added\": {}}]',9,1),
(25,'2020-06-15 06:06:29.193679','9','subcategories object (9)',1,'[{\"added\": {}}]',9,1),
(26,'2020-06-15 06:06:42.986895','10','subcategories object (10)',1,'[{\"added\": {}}]',9,1),
(27,'2020-06-15 06:06:54.469606','11','subcategories object (11)',1,'[{\"added\": {}}]',9,1),
(28,'2020-06-15 06:07:05.964482','12','subcategories object (12)',1,'[{\"added\": {}}]',9,1),
(29,'2020-06-15 06:07:17.967031','13','subcategories object (13)',1,'[{\"added\": {}}]',9,1),
(30,'2020-06-15 06:07:35.282239','14','subcategories object (14)',1,'[{\"added\": {}}]',9,1),
(31,'2020-06-15 06:07:49.042304','15','subcategories object (15)',1,'[{\"added\": {}}]',9,1),
(32,'2020-06-15 06:08:05.322106','16','subcategories object (16)',1,'[{\"added\": {}}]',9,1),
(33,'2020-06-15 06:08:16.973127','17','subcategories object (17)',1,'[{\"added\": {}}]',9,1),
(34,'2020-06-15 06:08:32.489373','18','subcategories object (18)',1,'[{\"added\": {}}]',9,1),
(35,'2020-06-15 06:08:42.712180','19','subcategories object (19)',1,'[{\"added\": {}}]',9,1),
(36,'2020-06-15 06:08:53.391272','20','subcategories object (20)',1,'[{\"added\": {}}]',9,1),
(37,'2020-06-15 06:09:04.309442','21','subcategories object (21)',1,'[{\"added\": {}}]',9,1),
(38,'2020-06-15 06:09:13.959528','22','subcategories object (22)',1,'[{\"added\": {}}]',9,1),
(39,'2020-06-15 06:09:24.221678','23','subcategories object (23)',1,'[{\"added\": {}}]',9,1),
(40,'2020-06-15 06:09:34.876219','24','subcategories object (24)',1,'[{\"added\": {}}]',9,1),
(41,'2020-06-15 06:09:44.934810','25','subcategories object (25)',1,'[{\"added\": {}}]',9,1),
(42,'2020-06-15 06:09:55.591025','26','subcategories object (26)',1,'[{\"added\": {}}]',9,1),
(43,'2020-06-15 06:10:14.455748','27','subcategories object (27)',1,'[{\"added\": {}}]',9,1),
(44,'2020-06-15 06:10:32.013035','28','subcategories object (28)',1,'[{\"added\": {}}]',9,1),
(45,'2020-06-15 06:10:46.752269','29','subcategories object (29)',1,'[{\"added\": {}}]',9,1),
(46,'2020-06-15 06:11:02.129070','30','subcategories object (30)',1,'[{\"added\": {}}]',9,1),
(47,'2020-06-15 06:11:16.459385','31','subcategories object (31)',1,'[{\"added\": {}}]',9,1),
(48,'2020-06-15 06:11:28.910729','32','subcategories object (32)',1,'[{\"added\": {}}]',9,1),
(49,'2020-06-15 06:11:52.954593','33','subcategories object (33)',1,'[{\"added\": {}}]',9,1),
(50,'2020-06-15 06:12:15.967683','34','subcategories object (34)',1,'[{\"added\": {}}]',9,1),
(51,'2020-06-15 06:12:28.439384','35','subcategories object (35)',1,'[{\"added\": {}}]',9,1),
(52,'2020-06-15 06:45:37.932172','2','categories object (2)',3,'',8,1),
(53,'2020-06-15 06:46:18.304968','35','subcategories object (35)',3,'',9,1),
(54,'2020-06-15 06:46:18.458992','34','subcategories object (34)',3,'',9,1),
(55,'2020-06-15 06:46:18.500114','3','subcategories object (3)',3,'',9,1),
(56,'2020-06-15 06:48:29.751126','2','categories object (2)',3,'',8,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(3,'admin','logentry'),
(5,'auth','group'),
(4,'auth','permission'),
(6,'contenttypes','contenttype'),
(20,'home','notifications'),
(1,'home','user'),
(2,'home','user_activation'),
(19,'home','user_become'),
(11,'home','user_categories'),
(10,'home','user_otherinfo'),
(18,'home','user_profile'),
(7,'sessions','session'),
(25,'social_django','association'),
(26,'social_django','code'),
(27,'social_django','nonce'),
(29,'social_django','partial'),
(28,'social_django','usersocialauth'),
(30,'student','course_comments'),
(37,'student','payment'),
(31,'student','student_cart_courses'),
(35,'student','student_certificate'),
(32,'student','student_favourite_courses'),
(36,'student','student_performance'),
(34,'student','student_rating_courses'),
(33,'student','student_register_courses'),
(22,'teacher','answers'),
(8,'teacher','categories'),
(13,'teacher','courses'),
(12,'teacher','ddd'),
(17,'teacher','questions'),
(21,'teacher','questions1'),
(14,'teacher','sections'),
(23,'teacher','student_mark'),
(9,'teacher','subcategories'),
(16,'teacher','todo'),
(24,'teacher','transactions'),
(15,'teacher','videouploads');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'home','0001_initial','2020-06-15 04:37:33.648715'),
(2,'contenttypes','0001_initial','2020-06-15 04:37:34.856217'),
(3,'admin','0001_initial','2020-06-15 04:37:34.940435'),
(4,'admin','0002_logentry_remove_auto_add','2020-06-15 04:37:35.618353'),
(5,'admin','0003_logentry_add_action_flag_choices','2020-06-15 04:37:35.643370'),
(6,'contenttypes','0002_remove_content_type_name','2020-06-15 04:37:37.291303'),
(7,'auth','0001_initial','2020-06-15 04:37:37.758490'),
(8,'auth','0002_alter_permission_name_max_length','2020-06-15 04:37:38.975443'),
(9,'auth','0003_alter_user_email_max_length','2020-06-15 04:37:38.995236'),
(10,'auth','0004_alter_user_username_opts','2020-06-15 04:37:39.040509'),
(11,'auth','0005_alter_user_last_login_null','2020-06-15 04:37:39.076262'),
(12,'auth','0006_require_contenttypes_0002','2020-06-15 04:37:39.085795'),
(13,'auth','0007_alter_validators_add_error_messages','2020-06-15 04:37:39.110956'),
(14,'auth','0008_alter_user_username_max_length','2020-06-15 04:37:39.134324'),
(15,'auth','0009_alter_user_last_name_max_length','2020-06-15 04:37:39.150879'),
(16,'auth','0010_alter_group_name_max_length','2020-06-15 04:37:39.309360'),
(17,'auth','0011_update_proxy_permissions','2020-06-15 04:37:39.328210'),
(18,'home','0002_auto_20200612_0504','2020-06-15 04:37:39.384821'),
(19,'home','0003_auto_20200612_0506','2020-06-15 04:37:39.914259'),
(20,'home','0004_auto_20200612_0644','2020-06-15 04:37:40.123985'),
(21,'home','0005_auto_20200615_0420','2020-06-15 04:37:40.788387'),
(22,'home','0006_auto_20200615_0426','2020-06-15 04:37:41.013000'),
(23,'home','0007_auto_20200615_0429','2020-06-15 04:37:41.209392'),
(24,'home','0008_auto_20200615_0430','2020-06-15 04:37:41.222759'),
(25,'home','0009_auto_20200615_0430','2020-06-15 04:37:41.239287'),
(26,'home','0010_auto_20200615_0432','2020-06-15 04:37:41.263546'),
(27,'home','0011_auto_20200615_0437','2020-06-15 04:37:41.284509'),
(28,'sessions','0001_initial','2020-06-15 04:37:41.314613'),
(29,'teacher','0001_initial','2020-06-15 04:37:41.411426'),
(30,'home','0012_auto_20200615_0444','2020-06-15 04:44:15.010284'),
(31,'home','0013_auto_20200615_0500','2020-06-15 05:00:19.717998'),
(32,'teacher','0002_auto_20200615_0812','2020-06-15 08:12:33.024411'),
(33,'home','0014_auto_20200615_0812','2020-06-15 08:12:33.847271'),
(34,'home','0015_auto_20200618_1148','2020-06-18 01:49:09.025739'),
(35,'teacher','0003_ddd','2020-06-18 01:49:09.342919'),
(36,'home','0016_auto_20200618_1149','2020-06-18 01:50:07.630632'),
(37,'teacher','0004_delete_ddd','2020-06-18 01:50:07.668807'),
(38,'home','0017_auto_20200620_0520','2020-06-19 19:20:20.428681'),
(39,'teacher','0005_courses_sections_videouploads','2020-06-19 19:20:21.416011'),
(40,'home','0018_auto_20200620_1605','2020-06-20 06:05:45.187676'),
(41,'teacher','0006_todo','2020-06-20 06:05:45.560811'),
(42,'home','0019_auto_20200620_1627','2020-06-20 06:27:39.374170'),
(43,'home','0020_auto_20200620_1627','2020-06-20 06:28:12.542477'),
(44,'home','0021_auto_20200620_1628','2020-06-20 06:28:12.606626'),
(45,'home','0022_auto_20200620_1628','2020-06-20 06:28:49.775743'),
(46,'home','0023_auto_20200620_1633','2020-06-20 06:33:14.009566'),
(47,'home','0024_auto_20200623_0243','2020-06-22 16:44:23.211973'),
(48,'teacher','0007_questions','2020-06-22 16:44:23.491767'),
(49,'home','0025_auto_20200623_0253','2020-06-22 16:53:37.304033'),
(50,'teacher','0008_delete_questions','2020-06-22 16:53:37.351936'),
(51,'home','0026_auto_20200623_0254','2020-06-22 16:54:54.356877'),
(52,'home','0027_auto_20200623_0256','2020-06-22 16:56:06.902133'),
(53,'teacher','0009_questions','2020-06-22 16:56:07.018998'),
(54,'home','0028_auto_20200624_1827','2020-06-24 08:28:00.125574'),
(55,'home','0029_auto_20200624_1829','2020-06-24 08:29:10.322748'),
(56,'home','0030_auto_20200624_1830','2020-06-24 08:30:31.344796'),
(57,'home','0031_auto_20200702_0118','2020-07-01 15:19:13.276335'),
(58,'home','0032_auto_20200702_0123','2020-07-01 15:23:40.711782'),
(59,'default','0001_initial','2020-11-25 14:56:17.690552'),
(60,'social_auth','0001_initial','2020-11-25 14:56:17.695753'),
(61,'default','0002_add_related_name','2020-11-25 14:56:17.749978'),
(62,'social_auth','0002_add_related_name','2020-11-25 14:56:17.754788'),
(63,'default','0003_alter_email_max_length','2020-11-25 14:56:17.791016'),
(64,'social_auth','0003_alter_email_max_length','2020-11-25 14:56:17.796445'),
(65,'default','0004_auto_20160423_0400','2020-11-25 14:56:17.807804'),
(66,'social_auth','0004_auto_20160423_0400','2020-11-25 14:56:17.812500'),
(67,'social_auth','0005_auto_20160727_2333','2020-11-25 14:56:17.840465'),
(68,'social_django','0006_partial','2020-11-25 14:56:17.889855'),
(69,'social_django','0007_code_timestamp','2020-11-25 14:56:17.954424'),
(70,'social_django','0008_partial_timestamp','2020-11-25 14:56:18.017500'),
(71,'social_django','0009_auto_20191118_0520','2020-11-25 14:56:18.108860'),
(72,'social_django','0010_uid_db_index','2020-11-25 14:56:18.136821'),
(73,'student','0001_initial','2020-11-25 14:56:25.420613'),
(74,'student','0002_auto_20201109_0617','2020-11-25 14:56:25.427065'),
(75,'student','0003_auto_20201125_0726','2020-11-25 14:56:25.431744'),
(76,'social_django','0005_auto_20160727_2333','2020-11-25 14:56:25.441579'),
(77,'social_django','0004_auto_20160423_0400','2020-11-25 14:56:25.446970'),
(78,'social_django','0003_alter_email_max_length','2020-11-25 14:56:25.451933'),
(79,'social_django','0001_initial','2020-11-25 14:56:25.457627'),
(80,'social_django','0002_add_related_name','2020-11-25 14:56:25.462293');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('0p1l1yrs5i2rxpcoxqt4tpcfeh97gxrm','OTM4NTgxODFjMjY3NzdiNjRiMzYxODFkZmMxOWJkNjI2MWIxZGEzYjp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGY3Y2I5M2QyZThhYWEwYTBkMDQ1ZWVmNGI3OGUxZWQ5ZmQ4Y2I3NCIsInVzZXJfaWQiOiIyMSIsInVzZXJfdHlwZSI6InRlYWNoZXIifQ==','2020-11-14 08:40:43.578471'),
('31kykew981qgd9fnz59qrm4xzkz0x86a','YTdmNDRiMTFkYmZjNjkxYTdmNTA4MGZkYWQ5NzFmYjBiY2ZiMjRlYzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-11-23 01:51:36.332024'),
('3hixzhkhtev3czerb31wq76d2je096jb','ZTY1MjAyNzg3MmJmY2EzZDM1OWRjZTI0ODViNGMxMDViNTQxODIxNDp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2ZmYjQ0ZWIwMmJlYWJlMzUyYzIzZDNkOTIyNzllMGEzODhjYTIyNSIsInVzZXJfaWQiOiIyMiIsInVzZXJfdHlwZSI6InN0dWRlbnQiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-16 00:30:29.760466'),
('3r4iabfjj1my56lhx04df3pkuemcdn92','ZjlhYzIxMWJmOWFlM2M0MGQ4MTJiZDYwZjA4NTc1NTEwNGI5OTZjYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImhvbWUuYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOCIsInBhc3N3b3JkIjoiRWx6dWJhaXIiLCJfYXV0aF91c2VyX2hhc2giOiJmN2FhNGNlZDkxNDk1ZjY4YWIxMWVkZDQ4ZDIyMzQ1ZWVjYmU1MmU4IiwidXNlcl9pZCI6IjM4IiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-12-07 10:07:55.723100'),
('4ec6mh5r8wwq7gsc1lhk4p9e695uoedb','M2Y2YjRlMmZkNjI0MWRlZGQ5OGNkNTZkNjNjMGI4ZDg3ZTdiNzNhNzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInVzZXJfdHlwZSI6InN0dWRlbnQiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-21 12:47:03.062395'),
('4sk7rvyao0xemqljipsmqj7afdg6l8hz','NGIxOTQyOTVkZGQxOWY1ZDlkNzQ1ZjE1YjAxZDMzYzAwNDMwMWM3MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImhvbWUuYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNCIsInBhc3N3b3JkIjoiMTIzMTIzIiwidXNlcl9pZCI6IjM0IiwidXNlcl90eXBlIjoidGVhY2hlciIsInJlbWVtYmVyIjoidHJ1ZSIsIl9hdXRoX3VzZXJfaGFzaCI6ImVlOGM5NTJiY2U1Yjk3N2ZmNGFkODgxNTY2NzhiNWVlMGM5OGU2MzUifQ==','2020-12-07 09:01:00.840266'),
('4tcfh0oqjwu1rye8wive4mvdvql77a2v','OTM4NTgxODFjMjY3NzdiNjRiMzYxODFkZmMxOWJkNjI2MWIxZGEzYjp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGY3Y2I5M2QyZThhYWEwYTBkMDQ1ZWVmNGI3OGUxZWQ5ZmQ4Y2I3NCIsInVzZXJfaWQiOiIyMSIsInVzZXJfdHlwZSI6InRlYWNoZXIifQ==','2020-11-14 22:55:31.010670'),
('6btymj3uyqd67n2pdrqz90wwqp0lxf9k','NjhjNzlhODI1OThhMzRhMTk5ZTlkZWMyNTYyYTQ5MDVlYTkzYjcxYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEzNmQyNWFmMTNmOGI1ZTgzN2I4NmU5YTM0Yzc0Yzk0OTU0YWFmNTkiLCJ1c2VyX2lkIjoiMjQiLCJfYXV0aF91c2VyX2lkIjoiMjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJob21lLmJhY2tlbmRzLkVtYWlsQXV0aEJhY2tlbmQiLCJwYXNzd29yZCI6IjEyMzEyMyIsInJlbWVtYmVyIjoidHJ1ZSIsInVzZXJfdHlwZSI6InN0dWRlbnQifQ==','2020-12-08 18:58:25.270272'),
('6hbtjgowtmbn4g3b0nv6p14hyp1dgkdz','NGU5MTliYzNkOTdlYjA5MDY1ZmJiOWM2YTQxNjUxOGJiMTJlYjFkODp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWJhNDEwMDZlYzAwZTk5ODI1NmRiNmQxZjk2MWE3MmQwN2U0Y2RmNiIsInVzZXJfaWQiOiIyMyIsInVzZXJfdHlwZSI6InRlYWNoZXIiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-19 18:11:47.160757'),
('6mznx9tp6uanxtg5w1ox8l4t8ikqdu4h','NmFhMmI5YWEzYjQ0YWY5MzVjMDU0NTgwYTMwMjlkZjE0MTRlYTUwZDp7InVzZXJfdHlwZSI6InN0dWRlbnQiLCJfYXV0aF91c2VyX2lkIjoiMjQiLCJ1c2VyX2lkIjoiMjQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzZkMjVhZjEzZjhiNWU4MzdiODZlOWEzNGM3NGM5NDk1NGFhZjU5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiaG9tZS5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwicGFzc3dvcmQiOiIxMjMxMjMifQ==','2020-12-06 08:56:14.032720'),
('7gvwc6vmcmlaaz22u2oyy3fj6pqlwtqz','MThhZDdmOTQxNTYxYzM3YTg3ZmZkNTczZDFjMTU2YTUyMGY2ZDhjMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzgzZTE1MGFlNDJhYjU4OWFhMDJhNDAxMTI5YTk1Yjc5NWY1MzY3In0=','2020-07-15 14:26:12.879722'),
('88ybjr69bt29uzfj28tpevto5dbsx8ra','YTdmNDRiMTFkYmZjNjkxYTdmNTA4MGZkYWQ5NzFmYjBiY2ZiMjRlYzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-12-01 07:50:39.395085'),
('970uxs4m4x4numckkiek6z2bgd5qhg4h','OTYyZGI3ODIxYTgzMjI0MmQwNTNlYTM5YWE4NTA3N2YyNGFjOTNiMTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTBhYWI5NDZmZmVmYjNlYWVjNzllYWQxZjJmOTM4MzQ2NzliNzkwIn0=','2020-06-29 12:18:13.491288'),
('9ezpi7s2hnhkkip0vf48t1ygrkj5eax9','MmE2ZWQ5OTQwYWEwNjA1ZWRlZjAyYWNjNWE4ZGY3OWQ2MmRmOTQ2OTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzgzZTE1MGFlNDJhYjU4OWFhMDJhNDAxMTI5YTk1Yjc5NWY1MzY3In0=','2020-07-03 00:52:18.295290'),
('9twfeppzcy2xrvg7lldw1gu21sipqvzl','ZGQzYzJkMmMxOGZjNzNjZTZjYmNlY2QwZWM1NzVmMjQ5MjdiOTNlYzp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWJhNDEwMDZlYzAwZTk5ODI1NmRiNmQxZjk2MWE3MmQwN2U0Y2RmNiIsInVzZXJfaWQiOiIyMyIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoidGVhY2hlciJ9','2020-11-27 09:15:15.406907'),
('b06w3k7byjoex0nx3imkjnbou75ig1vj','ZGQzYzJkMmMxOGZjNzNjZTZjYmNlY2QwZWM1NzVmMjQ5MjdiOTNlYzp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWJhNDEwMDZlYzAwZTk5ODI1NmRiNmQxZjk2MWE3MmQwN2U0Y2RmNiIsInVzZXJfaWQiOiIyMyIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoidGVhY2hlciJ9','2020-12-04 00:03:47.805479'),
('b3ewkdp18qjtbmeyeafku9muktxknbun','MjBkMWRkYTI1ZmYwMmNhOTU3YjhhYjUyYzdlOGRiZTViNGFhMThiOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0N2M5MTQ0YTEyOTY1MzQxNjQ5NWUyNDEyNzY5ZTNlMjk0M2E5YTBkIn0=','2020-07-02 06:28:20.118313'),
('ee2pzft06zk1xfwvc1fm0fnys2nc6svd','NzRjZDA1YzViMGQ1OGU3YTkyOWU2NTYxMzhjMDE1Y2U5MmFmMjBhNjp7Il9hdXRoX3VzZXJfaWQiOiI0MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDQ0OWY2NzcyYWJhZTgwMTNjYjg2NDc4ZDc1ODViM2Q4MWFmODc4MCIsInVzZXJfaWQiOiI0MyIsInBhc3N3b3JkIjoiRWx6dWJhaXIxIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-12-19 22:47:21.620819'),
('etuohclimhsf3hhqib873meu1iwzvn4s','ZGQzYzJkMmMxOGZjNzNjZTZjYmNlY2QwZWM1NzVmMjQ5MjdiOTNlYzp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWJhNDEwMDZlYzAwZTk5ODI1NmRiNmQxZjk2MWE3MmQwN2U0Y2RmNiIsInVzZXJfaWQiOiIyMyIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoidGVhY2hlciJ9','2020-12-03 12:53:21.963204'),
('eytyo0ih0sdnpyfy1g4qgv556ppq65l7','MTE3NDlhYjM5YTNkMTg0MWI1MTFhNWEyN2MwNGMyYjJlYzU3ODM1Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImhvbWUuYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsInBhc3N3b3JkIjoiRWx6dWJhaXIxIiwidXNlcl90eXBlIjoic3R1ZGVudCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg3YTRiYmRjMDhiMzJhMzNlNDljYTEzM2U5Mzc1ZTBhMTZkMGU2ZGMiLCJfYXV0aF91c2VyX2lkIjoiNDAiLCJyZW1lbWJlciI6InRydWUiLCJ1c2VyX2lkIjoiNDAifQ==','2020-12-08 17:30:27.579165'),
('f4wtcyurmu6wjlvlbpwea8a0n9xamu3p','NjcwMzJiNThlODQzMjI3NDMzOTZhNDUwZTQ4MDA1MTc1OTJkZTg3ZTp7IjEyNy4wLjAuMSI6ImFyLWxpZ2h0In0=','2026-01-15 17:33:12.144906'),
('hry734zadqggkpnvpvfkk0uktdj87r8r','MThhZDdmOTQxNTYxYzM3YTg3ZmZkNTczZDFjMTU2YTUyMGY2ZDhjMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzgzZTE1MGFlNDJhYjU4OWFhMDJhNDAxMTI5YTk1Yjc5NWY1MzY3In0=','2020-07-13 08:51:28.959137'),
('i6iq2tjhtmb3ukas1zyeuw5h5hkmk0xr','YTdmNDRiMTFkYmZjNjkxYTdmNTA4MGZkYWQ5NzFmYjBiY2ZiMjRlYzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-11-22 04:22:24.472315'),
('i6mzf84mkef10643bosvbce6uvpjor49','NzFlODg4Yjk3MDIyOWIxMWFmN2RjMzJkZDRmZGY2NzMyNmY0OGFlODp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQxMmVhOTdhOTM3NWQ0ZWZjMTE0NTJiZDg1YjY2YjU1OTkxMmZiMCIsInVzZXJfaWQiOiIyMiIsInVzZXJfdHlwZSI6InN0dWRlbnQifQ==','2020-11-14 23:47:16.389473'),
('i7z2hau7376n3h5dl1c99gide2d6cl5k','MThhZDdmOTQxNTYxYzM3YTg3ZmZkNTczZDFjMTU2YTUyMGY2ZDhjMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzgzZTE1MGFlNDJhYjU4OWFhMDJhNDAxMTI5YTk1Yjc5NWY1MzY3In0=','2020-07-02 07:16:09.806961'),
('ilk8wxdazfhc8wwisd7gyrbchvvrh6vc','MWQ0YTk1NmFjYTYwZTgwODQwMWViODBkNDRmZTA3NTQ1Yzk3NzM3MDp7InVzZXJfaWQiOiIyMyIsInVzZXJfdHlwZSI6InRlYWNoZXIiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjNlYjYyZWJhYzA5Y2Q1ODgwYzg3NWFjMzZiNjg1M2MyNTliODQ2IiwiX2F1dGhfdXNlcl9pZCI6IjIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiaG9tZS5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwicGFzc3dvcmQiOiIxMjMxMjMifQ==','2020-12-08 20:22:10.964207'),
('ivecbumkzp42ne3jtquw91tu8brornkm','YzhiYmUyZDZhYzUyZDIyNTUzYTU0OWQyMDY4NTM3YzlmM2QxYjYyZTp7InVzZXJfdHlwZSI6InN0dWRlbnQiLCJfYXV0aF91c2VyX2lkIjoiMjQiLCJ1c2VyX2lkIjoiMjQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzZkMjVhZjEzZjhiNWU4MzdiODZlOWEzNGM3NGM5NDk1NGFhZjU5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiaG9tZS5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwicGFzc3dvcmQiOiIxMjMxMjMiLCJyZW1lbWJlciI6InRydWUifQ==','2020-12-05 10:20:17.663046'),
('kvl2ly8eyg8j7phrgdqt7u4tv1cgyb4m','NGU5MTliYzNkOTdlYjA5MDY1ZmJiOWM2YTQxNjUxOGJiMTJlYjFkODp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWJhNDEwMDZlYzAwZTk5ODI1NmRiNmQxZjk2MWE3MmQwN2U0Y2RmNiIsInVzZXJfaWQiOiIyMyIsInVzZXJfdHlwZSI6InRlYWNoZXIiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-21 00:08:00.524244'),
('lk0n09d0unsdpxw18klyz2mb0hh8g7yl','NjQ5NWM0ODhiNGViMzU2ZGE2NjExYWM2YmZlOWExMjNjNjBjNGRjZjp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfaGFzaCI6IjVmM2ViNjJlYmFjMDljZDU4ODBjODc1YWMzNmI2ODUzYzI1OWI4NDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2020-12-09 09:33:11.167540'),
('m0cz44pqpy99j6u6ryr1z4qki08t75bu','NjRhODk4MGI5ZWFlN2I0ZDA2M2IzZDM0YmU3MWU0M2E5Yjg4NjI5OTp7InVzZXJfdHlwZSI6InRlYWNoZXIiLCJfYXV0aF91c2VyX2lkIjoiMjciLCJ1c2VyX2lkIjoiMjciLCJfYXV0aF91c2VyX2hhc2giOiIxZDViZmFkMmU5ZWRhOWM5MzlhYjA5YTQxMTRmMmMwMTIyNWM3MTI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiaG9tZS5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwicGFzc3dvcmQiOiIxMjMxMjMifQ==','2020-12-06 03:40:42.400671'),
('pgpxaqazwddezcdkaaykb7yc70n7fl13','MzQyMzhkNzMyN2NkMzVhMDc3ZDVjNjlmZTdhMmVkMzRkNmQzNjIwMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzgzZTE1MGFlNDJhYjU4OWFhMDJhNDAxMTI5YTk1Yjc5NWY1MzY3In0=','2020-07-02 03:13:01.214786'),
('qu3vtumkcjmphxjezzpjhawz7bczwpxc','MmE2ZWQ5OTQwYWEwNjA1ZWRlZjAyYWNjNWE4ZGY3OWQ2MmRmOTQ2OTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzgzZTE1MGFlNDJhYjU4OWFhMDJhNDAxMTI5YTk1Yjc5NWY1MzY3In0=','2020-07-08 07:18:33.231500'),
('ruwcyu00uf4p1qsb1td0haimrq6r4pb8','ZTY1MjAyNzg3MmJmY2EzZDM1OWRjZTI0ODViNGMxMDViNTQxODIxNDp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2ZmYjQ0ZWIwMmJlYWJlMzUyYzIzZDNkOTIyNzllMGEzODhjYTIyNSIsInVzZXJfaWQiOiIyMiIsInVzZXJfdHlwZSI6InN0dWRlbnQiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-16 08:18:16.907610'),
('s326ln6owcooos06sgpx3ymrop1x8lvu','YTdmNDRiMTFkYmZjNjkxYTdmNTA4MGZkYWQ5NzFmYjBiY2ZiMjRlYzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-12-04 03:08:22.941752'),
('shhbojvm1x8paj0u0msckphbtdxymhrj','YTdmNDRiMTFkYmZjNjkxYTdmNTA4MGZkYWQ5NzFmYjBiY2ZiMjRlYzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInBhc3N3b3JkIjoiMTIzMTIzIiwicmVtZW1iZXIiOiJ0cnVlIiwidXNlcl90eXBlIjoic3R1ZGVudCJ9','2020-11-21 18:41:18.335255'),
('sobxjyrfw55foqsrjll7u5568qgh8i1n','NGU5MTliYzNkOTdlYjA5MDY1ZmJiOWM2YTQxNjUxOGJiMTJlYjFkODp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWJhNDEwMDZlYzAwZTk5ODI1NmRiNmQxZjk2MWE3MmQwN2U0Y2RmNiIsInVzZXJfaWQiOiIyMyIsInVzZXJfdHlwZSI6InRlYWNoZXIiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-18 16:09:04.263441'),
('tyx2jb6txefnktk7pehom58c4ba19koq','OTkxNTZhOTkyYWFiNjMxNGE1MjRmNzg2MGQ1OGMyNTEwOTk5YjM0Yjp7InVzZXJfdHlwZSI6InN0dWRlbnQiLCJ1c2VyX2lkIjoiNDAiLCJwYXNzd29yZCI6IkVsenViYWlyMSIsInJlbWVtYmVyIjoidHJ1ZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImhvbWUuYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg3YTRiYmRjMDhiMzJhMzNlNDljYTEzM2U5Mzc1ZTBhMTZkMGU2ZGMiLCJfYXV0aF91c2VyX2lkIjoiNDAifQ==','2020-12-09 08:31:06.766343'),
('vxajs5ag128d92mdmv1sjebwqufst4ph','YWI5NzE2NTQ2NTMwMmNkN2M4MmJjNDA3NTQ2N2JiYmE0ZDVhMTY5NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYmUyNzZiMmJhYTMxZGM2ZDI3NjdhMmI0ZTRjMjgwYTc3ZDdhMDI5In0=','2020-06-30 09:15:05.462199'),
('we7lt4howv0dhy1qihynm7qrx7a4afvp','YmI0YmYyMjRmNGU4ZGU3ZTgxYjJiOTcxYzc5NjkxNDA5MjczYmQwNDp7IjEyNy4wLjAuMSI6ImVuLWxpZ2h0IiwiX2F1dGhfdXNlcl9pZCI6IjM1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk0MjE4YzlhMjFjYTc1OWI5NGE4NmM4MGIxMzZkZTY1NjBmNzk2IiwidXNlcl9pZCI6IjM1IiwicGFzc3dvcmQiOiIxMjMxMjMiLCJyZW1lbWJlciI6InRydWUiLCJ1c2VyX3R5cGUiOiJzdHVkZW50In0=','2026-01-15 13:41:03.667534'),
('wqsszu64fh1f0w7zqtblv6jeswn2q2hz','M2Y2YjRlMmZkNjI0MWRlZGQ5OGNkNTZkNjNjMGI4ZDg3ZTdiNzNhNzp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmIxY2U3MTYyZmYwMTBhNDNmYTdjMDgwY2JmZTRiNWIwZTI3NzI2NiIsInVzZXJfaWQiOiIyNCIsInVzZXJfdHlwZSI6InN0dWRlbnQiLCJwYXNzd29yZCI6IjEyMzEyMyJ9','2020-11-19 05:16:44.240227');

/*Table structure for table `home_notifications` */

DROP TABLE IF EXISTS `home_notifications`;

CREATE TABLE `home_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0: not read, 1: read',
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `home_notifications` */

insert  into `home_notifications`(`id`,`user_id`,`title`,`text`,`is_read`,`sender_id`) values 
(3,40,'','Thanks for register',1,23),
(5,40,'hi','iiiiii',1,3),
(6,40,'Hello','H',1,3),
(7,43,'Hellooooooooooooo thanks','Thanks for',1,3);

/*Table structure for table `home_user` */

DROP TABLE IF EXISTS `home_user`;

CREATE TABLE `home_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(75) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `image` longtext COLLATE utf8_bin DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `home_user_group_id_ab9cda55_fk_auth_group_id` (`group_id`),
  CONSTRAINT `home_user_group_id_ab9cda55_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `home_user` */

insert  into `home_user`(`id`,`password`,`last_login`,`email`,`is_staff`,`is_active`,`is_superuser`,`is_confirmed`,`date_joined`,`first_name`,`last_name`,`phone_number`,`image`,`group_id`) values 
(1,'pbkdf2_sha256$180000$TQIuJ334DmKB$R3GV0TDGkapXVgylleSa2O08PR1YG/PC4jAuu2YwSco=','2020-06-30 08:28:16.773854','admin@gmail.com',1,1,1,1,'2020-06-15 04:44:35.052800','Parshotam','Kumar',NULL,'/user_images/349b34ad-d01e-4b37-a225-80bb95b78e66.png',1),
(2,'pbkdf2_sha256$180000$TQIuJ334DmKB$R3GV0TDGkapXVgylleSa2O08PR1YG/PC4jAuu2YwSco=','2020-07-01 14:26:12.780363','test@test.com',1,1,0,1,'2020-06-15 08:21:13.245323','test','test','09781804565','/user_images/fcd69c8b-15f0-4ad4-8a74-c8b0da22a512.png',3),
(4,'pbkdf2_sha256$180000$TQIuJ334DmKB$R3GV0TDGkapXVgylleSa2O08PR1YG/PC4jAuu2YwSco=','2020-06-26 02:45:22.414900','student@test.com',0,1,0,0,'2020-06-15 12:13:43.888853','student','test','09781804565','/user_images/03cf48ae-eab3-48f0-b82c-5c40be57eb97.jpg',2),
(5,'pbkdf2_sha256$180000$TQIuJ334DmKB$R3GV0TDGkapXVgylleSa2O08PR1YG/PC4jAuu2YwSco=',NULL,'test@1.com',0,0,0,0,'2020-06-18 02:53:19.925709','test','test','+123456789','/user_images/cabe52a5-ef8e-402e-b5ab-e0252e6539a2.png',2),
(6,'pbkdf2_sha256$180000$hn5kRgVplXPu$TyBFRx0by9aS/Kyi64CNpoRDC4EFIbNG4M5DU3htx8Q=',NULL,'test@2.com',0,0,0,0,'2020-06-18 02:53:19.925709','test','test','+12456789','/user_images/71f4b0da-2a22-422d-9f35-609a6433c57d.png',2),
(7,'pbkdf2_sha256$180000$KHEMwIaGWOTf$jdVoDRu9FI4c0oJsOz42OwFOeqHn513euG4ha31LxVU=',NULL,'test@gmail.com',0,0,0,0,'2020-06-18 05:54:53.496232','test','test','123456789','/user_images/9b027baa-4760-480f-9881-f22550ba2d51.png',2),
(8,'pbkdf2_sha256$180000$S6pHn7DeAuHw$OXbTtzry9iDqsShTmsFzPj1ohgsDxacd0ud0zfvr5GI=',NULL,'test@tt.com',0,0,0,0,'2020-06-18 05:57:01.752994','test','test','123456','/user_images/a4104da7-0ddb-4978-bb56-3c03ba6a7268.png',2),
(9,'pbkdf2_sha256$180000$QIb4uvqEL63t$ssUeXPn6rRXpmEqx/r3DjXiiRoFynXfGYz0n2FaUY2A=',NULL,'test@11.com',0,0,0,0,'2020-06-18 05:57:01.752994','test','test','123456','/assets/img/man.jpg',3),
(10,'pbkdf2_sha256$180000$cXGc6sDLFcWU$wqQi4QvmU8op3vSHoYUz9UxKcRDPRBQLX4dQ1+a2Z5E=',NULL,'test@3.com',0,0,0,0,'2020-06-18 09:27:25.940813','testing','test','123456789','/user_images/809a2a33-84ea-47db-846f-2a10e53f8fe7.png',3),
(11,'pbkdf2_sha256$180000$QpyaLwkKQ748$j3xvWlpd91yi1/IHvxXsx6Zl/+WVMZrV6fuZhvJzl+Q=',NULL,'test@4.com',0,0,0,0,'2020-06-18 09:27:25.940813','test','test','123456789','/user_images/065dc4c9-42bb-450e-91fa-300de55a6715.png',2),
(12,'pbkdf2_sha256$180000$6icxdCZr8xsd$sJyAd0wj4tFzauFxiT5geL+ajBH3LObATyGYqLsdnHA=',NULL,'jackson@test.com',0,0,0,0,'2020-06-18 09:48:00.364321','jackson','v','123456789','/user_images/9a070c69-f885-4314-96aa-2bbb3402de5a.png',3),
(13,'pbkdf2_sha256$180000$gD41Xn1JVTaP$pMl67J0SqX1Lpz1v+aKiakzd4BqheN5+e7vNHxSEw5g=','2020-06-23 06:42:42.031176','jackey@test.com',0,1,0,1,'2020-06-23 06:11:59.139771','Jackey','jenis','123456789','/user_images/5d7941a6-ee87-49bc-9b6b-92e64b32882a.jpg',3),
(14,'pbkdf2_sha256$180000$GS5zLYDNd28P$+kaXaizyHE8g0sdR/TCDVha8RUVwhyI71CTyV830/UI=','2020-06-23 07:28:02.162262','test123@gmail.com',0,1,0,1,'2020-06-23 07:14:48.212016','Jackey','John','12345678911','/user_images/ceb9c481-e878-41b7-929d-ebde889dfb89.jpg',3),
(15,'pbkdf2_sha256$180000$SM3z3s7Qed87$y87jz67MkIVGN3HjyW+ZPIOzlpB2A6sF041pZJH1J2Q=',NULL,'jjj@1.com',0,0,0,0,'2020-06-25 15:49:42.038890','jackey','jjj','none','/assets/img/man.jpg',3),
(17,'pbkdf2_sha256$180000$4bI9DgAyjh9k$G/xFiniiCfKxcIWQF8x2cfMnWi0b/XBglpgDG59ggaA=',NULL,'jjj@3.com',0,0,0,0,'2020-06-25 15:49:42.038890','jjjj','jjjj','123456789','/assets/img/man.jpg',3),
(18,'pbkdf2_sha256$180000$XCdOUqYqq3Pp$JBB+LTv2LXOaEg/g4+R9wIemHvo541ZHEJGYnvM/JSU=',NULL,'jjj@5.com',0,0,0,0,'2020-06-25 15:49:42.038890','jjj','jjj','none','/assets/img/man.jpg',3),
(19,'pbkdf2_sha256$180000$7HVKlSaQe68u$3MyQAaQceK9w0JNXh7BJgSG5ZNXm5n+5COam3MzYVD4=',NULL,'jjj@6.com',0,0,0,0,'2020-06-25 15:49:42.038890','jjj','jjj','none','/assets/img/man.jpg',2),
(20,'pbkdf2_sha256$180000$YefXCPdOKvfX$5yPqQWS3C4YEMC/NXgJ99Y755GVYb6NgN7lYK4pMC4I=',NULL,'Hello@dd.com',0,1,0,1,'2020-06-30 08:32:53.339761','sdf','sdf','none','/user_images/7c586b74-138a-4018-86c6-9ca1edab4486.png',3),
(23,'pbkdf2_sha256$36000$zU6WgSQLYEIW$+xjFxSrkUqzUIagaooSemSBbTcE3tv97eIYNZkBjwZA=','2020-11-25 09:33:11.163138','john@bool.com',1,1,1,0,'2020-11-04 15:07:01.049878','john','bool','none','/assets/img/man.jpg',2),
(24,'pbkdf2_sha256$36000$AAe956O4nDYH$1/vPjnxq/7NriDVXRNUqPjLq9RlaAt+TSjWU0K6FT8w=','2020-11-25 08:17:04.610541','1@1.com',0,1,0,0,'2020-11-04 15:09:47.111527','Elzubair','Mohammed','none','/user_images/74ae6e69-715d-4fab-8303-d88c8a90f34b.png',1),
(35,'pbkdf2_sha256$180000$ruEfZu5LVNUH$tYx3k+xdC+wrpnzUs6xk+Hb/W/NZ6gBA21kg2edX5U8=','2021-01-16 13:41:03.636759','yarxalo@gmail.com',0,1,0,0,'2020-11-23 08:45:55.229224','Tachiyana','Olga','none','/assets/img/man.jpg',1),
(36,'pbkdf2_sha256$36000$bVjb9lZls3fS$6RhlEuEHlc7aXxG3MWeJHk9byJOKcQJHk/kixEhIHWI=','2020-11-23 10:44:35.035160','booctepdotcom2030@gmail.com',0,1,0,0,'2020-11-23 09:50:59.713614','Elzubair','Mohammed','none','/user_images/74f15e43-e4e6-483f-94fb-466706008871.png',2),
(38,'pbkdf2_sha256$36000$aanahtfvQ36e$jxekwAfZ0+HnZ8VCvdHn7pYcb+vwlCsrKbN6q85+fqk=','2020-11-23 10:07:55.718606','mkaaaaani@gmail.com',0,1,0,0,'2020-11-23 10:07:14.991897','Elzubair ','Mohamed','none','/user_images/41060b11-43a4-493d-9f6b-336541aece2a.png',1),
(39,'pbkdf2_sha256$36000$7duLgheJarp1$l8xVfmDfWT0Qg/ZdbD3Sb06iXsvmMNfc6jhgj3YnAhc=','2020-11-24 20:42:17.328926','mkaaaani@gmail.com',0,1,0,0,'2020-11-23 10:46:46.632032','Bandar','Emad','none','/user_images/2a521e24-b318-4932-97bb-7b191e353966.png',1),
(40,'pbkdf2_sha256$120000$gz8XDloPuhHP$r+FBC8ft52egXguFLjRWn6pt2mwYSXzsW6wqTyzIXps=','2020-12-05 20:20:28.290954','officialcontactservices@gmail.com',0,1,0,0,'2020-11-23 12:25:29.324248','Khaled','Saleh','none','/user_images/5dcbb6cf-2efd-4778-a112-f7cefcce9fad.png',2),
(43,'pbkdf2_sha256$120000$ODw3NJ2xGDnw$VFibbEiFii2+mt0OTzyXmuNSgBbYelSVX3SCGzdFaQA=','2020-12-05 22:47:21.600571','alzober1414@gmail.com',0,1,0,0,'2020-11-29 11:36:44.934900','Elzubair','Mohammed','none','/user_images/3f2c0b2e-bf52-4ae5-a526-d179886c726a.png',1),
(45,'pbkdf2_sha256$180000$gl3EF2UhtVGn$pwpXw+e1kmMktgQZPtHYW9xUDl54XX2Mh6A3ByTsHwQ=','2021-01-16 13:44:57.302180','hello@gmail.com',0,1,0,0,'2021-01-16 05:44:15.261946','hello','love','none','/user_images/3689cb65-0a4d-4ad2-ae14-8a70050f0155.jpg',2);

/*Table structure for table `home_user_activation` */

DROP TABLE IF EXISTS `home_user_activation`;

CREATE TABLE `home_user_activation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(70) COLLATE utf8_bin NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_user_activation_user_id_eb286180_fk_home_user_id` (`user_id`),
  CONSTRAINT `home_user_activation_user_id_eb286180_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `home_user_activation` */

insert  into `home_user_activation`(`id`,`code`,`updated_at`,`created_at`,`user_id`) values 
(1,'0ed5bc6b-9c0c-4bf9-bd9f-b96f57ba3521','2020-06-15 08:22:55.262948','2020-06-15 08:22:55.263008',2),
(3,'6a02ed30-7687-43c2-8929-98e1d5771983','2020-06-15 12:17:30.910789','2020-06-15 12:15:26.767434',4),
(4,'6519f11f-338c-4314-91eb-b2758c81a3a0','2020-06-18 02:58:22.080473','2020-06-18 02:58:22.080473',5),
(5,'a47e6f99-dc04-433c-876c-9a22268b224d','2020-06-18 03:34:35.476094','2020-06-18 03:34:35.476094',6),
(6,'497847f5-b774-4362-a7db-80be33938c53','2020-06-18 05:55:56.402675','2020-06-18 05:55:56.402675',7),
(7,'5e19049e-f111-4fa0-b447-6cbfc4494da9','2020-06-18 05:57:28.160966','2020-06-18 05:57:28.160966',8),
(8,'61e1ddc6-dcbb-47a1-b417-5039d6c8284f','2020-06-18 05:58:28.488558','2020-06-18 05:58:28.488558',9),
(9,'fdeae4b5-8b4f-4c72-a796-9d2aca4d6d3d','2020-06-18 09:29:14.726907','2020-06-18 09:29:14.726907',10),
(10,'38f067c1-6174-42e0-9353-6316a548e978','2020-06-18 09:30:42.403362','2020-06-18 09:30:42.403362',11),
(11,'0bd8bdd1-d55c-4632-acd7-55a00e60f06a','2020-06-18 10:00:24.081245','2020-06-18 10:00:24.081245',12),
(12,'55e09932-79c5-4939-a768-9a0d9b9fdc5f','2020-06-23 06:39:50.316507','2020-06-23 06:39:50.316507',13),
(13,'49e612ce-e895-46d3-a2a0-704dfcdab6eb','2020-06-23 07:25:15.530899','2020-06-23 07:25:15.530899',14),
(14,'564c41ac-8547-44da-9280-6e7916ee6c43','2020-06-25 16:00:49.427755','2020-06-25 16:00:49.427755',15),
(16,'ebf95753-bb0d-40cb-93bd-5944aa2ce786','2020-06-25 16:02:21.208823','2020-06-25 16:02:21.208823',17),
(17,'f92449bc-b79a-4493-a72a-8059011877c0','2020-06-25 16:03:23.786296','2020-06-25 16:03:23.786296',18),
(18,'6a00f9af-f72a-4769-adb0-ac3dcb2a44f2','2020-06-25 16:04:18.375247','2020-06-25 16:04:18.375247',19),
(19,'59c199b4-4a1e-4e09-abe4-6448db58213d','2020-06-30 10:01:52.805918','2020-06-30 10:01:52.805918',20),
(22,'b08823d3-1ac4-4eca-a7ec-15c1f081eff4','2020-11-04 12:07:01.316418','2020-11-04 12:07:01.316418',23),
(23,'87d4df60-a637-4902-a7c9-6652a4abdd9a','2020-11-04 12:09:47.281401','2020-11-04 12:09:47.281401',24),
(34,'eadec692-4857-4faf-88b1-c485296e9cee','2020-11-23 08:46:49.191199','2020-11-23 08:45:55.271230',35),
(35,'b01f5b90-b815-4c97-ac49-dbc88b7e9676','2020-11-23 09:52:03.937733','2020-11-23 09:50:59.757005',36),
(37,'eacebb87-ee7b-4be3-8d02-0b4c541e515e','2020-11-23 10:11:23.582564','2020-11-23 10:07:15.044036',38),
(38,'7ff316b4-1007-424a-ba9c-b47721b4ef01','2020-11-23 10:46:46.674346','2020-11-23 10:46:46.674379',39),
(39,'ec964748-a422-4880-8a20-46ef8a7719d1','2020-11-23 12:26:19.874807','2020-11-23 12:25:29.366042',40),
(42,'170ee7e3-11fc-4cb2-974e-c2589a67ec21','2020-11-29 11:36:45.118970','2020-11-29 11:36:45.119004',43),
(44,'86cc85b8-d9d0-45f6-9117-1915e8631b56','2021-01-16 13:44:15.608944','2021-01-16 13:44:15.608944',45);

/*Table structure for table `home_user_become` */

DROP TABLE IF EXISTS `home_user_become`;

CREATE TABLE `home_user_become` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_catid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permit` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `home_user_become` */

insert  into `home_user_become`(`id`,`user_id`,`cat_id`,`sub_catid`,`permit`) values 
(4,40,6,'11,12,13,',0);

/*Table structure for table `home_user_categories` */

DROP TABLE IF EXISTS `home_user_categories`;

CREATE TABLE `home_user_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_user_categories_user_id_1fff0465_fk_home_user_id` (`user_id`),
  KEY `home_user_categories_category_id_fa0b8c7f_fk_teacher_s` (`category_id`),
  CONSTRAINT `home_user_categories_category_id_fa0b8c7f_fk_teacher_s` FOREIGN KEY (`category_id`) REFERENCES `teacher_subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `home_user_categories_user_id_1fff0465_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `home_user_categories` */

insert  into `home_user_categories`(`id`,`category_id`,`user_id`) values 
(1,2,2),
(2,2,1),
(3,2,4),
(4,4,10),
(5,8,12),
(6,12,13),
(7,15,14),
(8,5,18),
(9,8,20),
(11,2,23),
(17,5,36),
(19,10,45);

/*Table structure for table `home_user_profile` */

DROP TABLE IF EXISTS `home_user_profile`;

CREATE TABLE `home_user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bio` longtext DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_ids` varchar(200) NOT NULL,
  `facebook_url` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `website_url` varchar(200) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `home_user_profile` */

insert  into `home_user_profile`(`id`,`bio`,`cat_id`,`subcat_ids`,`facebook_url`,`instagram_url`,`twitter_url`,`website_url`,`notification`,`updated_at`,`created_at`,`user_id`) values 
(1,'',1,'','www.facebook.com/','www.instagram.com/','www.twitter.com/','','true','2020-06-25 15:15:45.245451','2020-06-25 12:16:11.000000',1),
(2,'Hello, everyone',12,',26,27','www.facebook.com/','dxsdfsdf','sdfsdfsdf','sdfsdf','false','2020-06-29 09:50:21.964090','2020-06-25 15:16:07.793119',2),
(3,'I am web expert especially python, Django',5,'9,10,','www.myfacebook.com','www.myinstagram.com','www.mytwitter.com','www.mywebsite.com','false','2020-11-24 09:31:53.741057','2020-11-24 09:31:53.741093',23),
(4,'',1,'1,2,','aaa','','aaa','','false','2020-11-24 19:45:41.562456','2020-11-24 10:13:07.095251',37),
(5,'',1,'','','','','','false','2020-11-25 18:01:49.008661','2020-11-25 18:01:49.008701',42);

/*Table structure for table `social_auth_association` */

DROP TABLE IF EXISTS `social_auth_association`;

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `social_auth_association` */

/*Table structure for table `social_auth_code` */

DROP TABLE IF EXISTS `social_auth_code`;

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `social_auth_code` */

/*Table structure for table `social_auth_nonce` */

DROP TABLE IF EXISTS `social_auth_nonce`;

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `social_auth_nonce` */

/*Table structure for table `social_auth_partial` */

DROP TABLE IF EXISTS `social_auth_partial`;

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `social_auth_partial` */

/*Table structure for table `social_auth_usersocialauth` */

DROP TABLE IF EXISTS `social_auth_usersocialauth`;

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_home_user_id` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `social_auth_usersocialauth` */

/*Table structure for table `student_course_comments` */

DROP TABLE IF EXISTS `student_course_comments`;

CREATE TABLE `student_course_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `rating` float NOT NULL,
  `comment` longtext DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `User comment` (`user_id`),
  CONSTRAINT `User comment` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_course_comments` */

insert  into `student_course_comments`(`id`,`user_id`,`course_id_id`,`rating`,`comment`,`reply`,`date`,`date_updated`) values 
(13,40,41,3.7,'',NULL,'2020-11-29 11:22:25.065543','2020-11-29 11:22:25.065588');

/*Table structure for table `student_payment` */

DROP TABLE IF EXISTS `student_payment`;

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `card_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_contact` (`student_id`),
  CONSTRAINT `payment_contact` FOREIGN KEY (`student_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `student_payment` */

insert  into `student_payment`(`id`,`student_id`,`card_no`,`cvv`,`month`,`year`) values 
(2,24,'1223333333333333333333','123',3,2021),
(3,40,'','',1,2020);

/*Table structure for table `student_student_cart_courses` */

DROP TABLE IF EXISTS `student_student_cart_courses`;

CREATE TABLE `student_student_cart_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_student_cart_courses` */

/*Table structure for table `student_student_certificate` */

DROP TABLE IF EXISTS `student_student_certificate`;

CREATE TABLE `student_student_certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_student_certificate` */

insert  into `student_student_certificate`(`id`,`student_id`,`course_id`,`url`) values 
(12,40,38,'/certificates/40_38.pdf'),
(13,40,37,'/certificates/40_37.pdf'),
(14,40,32,'/certificates/40_32.pdf');

/*Table structure for table `student_student_favourite_courses` */

DROP TABLE IF EXISTS `student_student_favourite_courses`;

CREATE TABLE `student_student_favourite_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_student_favourite_courses` */

/*Table structure for table `student_student_rating_courses` */

DROP TABLE IF EXISTS `student_student_rating_courses`;

CREATE TABLE `student_student_rating_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id_id` int(11) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  `rating` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_student_rating_courses` */

/*Table structure for table `student_student_register_courses` */

DROP TABLE IF EXISTS `student_student_register_courses`;

CREATE TABLE `student_student_register_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_student_register_courses` */

/*Table structure for table `teacher_answer` */

DROP TABLE IF EXISTS `teacher_answer`;

CREATE TABLE `teacher_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `teacher_answer` */

/*Table structure for table `teacher_answers` */

DROP TABLE IF EXISTS `teacher_answers`;

CREATE TABLE `teacher_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending` int(3) NOT NULL,
  `result` int(3) NOT NULL DEFAULT 1 COMMENT '0:wrong, 1: right',
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `teacher_answers` */

insert  into `teacher_answers`(`id`,`course_id`,`question_id`,`answer`,`pending`,`result`,`student_id`) values 
(21,31,46,'true,',1,1,40),
(22,32,47,'true,',1,0,40),
(23,38,51,'true,',1,1,40),
(24,38,52,'true,',1,0,40),
(25,37,50,'true,',1,1,40);

/*Table structure for table `teacher_categories` */

DROP TABLE IF EXISTS `teacher_categories`;

CREATE TABLE `teacher_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `image` longtext COLLATE utf8_bin DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `teacher_categories` */

insert  into `teacher_categories`(`id`,`name`,`image`,`updated_at`,`created_at`) values 
(1,'Web Development','assets/img/categories/single_categories/p-languages.svg','2020-06-15 04:48:03.233279','2020-06-15 04:45:36.220035'),
(3,'Design','assets/img/categories/single_categories/design.svg','2020-06-15 04:48:28.184719','2020-06-15 04:48:28.184776'),
(4,'Drama & Cinema','assets/img/categories/single_categories/drama.svg','2020-06-15 04:48:37.472006','2020-06-15 04:48:37.472109'),
(5,'Mathmatics','assets/img/categories/single_categories/math.svg','2020-06-15 04:48:51.188720','2020-06-15 04:48:51.188797'),
(6,'Aviation','assets/img/categories/single_categories/aviation.svg','2020-06-15 04:49:31.913913','2020-06-15 04:49:31.913959'),
(7,'Engineering','assets/img/categories/single_categories/Engineer.svg','2020-06-15 04:49:42.566084','2020-06-15 04:49:42.566132'),
(8,'Art','assets/img/categories/single_categories/art.svg','2020-06-15 04:50:02.291568','2020-06-15 04:50:02.291674'),
(9,'Food','assets/img/categories/single_categories/food.svg\r\n','2020-06-15 04:50:19.272292','2020-06-15 04:50:19.272474'),
(10,'softwares Programming','assets/img/categories/single_categories/softwares.svg\r\n','2020-06-15 04:50:39.513182','2020-06-15 04:50:39.513246'),
(11,'skills','assets/img/categories/single_categories/skills.svg\r\n','2020-06-15 04:51:18.457590','2020-06-15 04:51:18.457636'),
(12,'sewiing','assets/img/categories/single_categories/sewiing.svg\r\n','2020-06-15 04:51:33.474797','2020-06-15 04:51:33.474892'),
(13,'Self Development','assets/img/categories/single_categories/self-dev.svg\r\n','2020-06-15 04:51:55.006838','2020-06-15 04:51:55.006895'),
(14,'Information Technology','assets/img/categories/single_categories/robot.svg\r\n','2020-06-15 04:52:12.510722','2020-06-15 04:52:12.510774');

/*Table structure for table `teacher_courses` */

DROP TABLE IF EXISTS `teacher_courses`;

CREATE TABLE `teacher_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `gains` longtext DEFAULT NULL,
  `includes` varchar(200) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `user_id` int(111) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '1: free 0: paid',
  `students` int(10) DEFAULT NULL,
  `fav` tinyint(1) DEFAULT 0 COMMENT '0: not fav 1: fav',
  `header_img` varchar(255) DEFAULT NULL,
  `cover_img` varchar(255) DEFAULT NULL,
  `course_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `pending` int(3) DEFAULT NULL COMMENT 'pending step of add course',
  PRIMARY KEY (`id`),
  KEY `course teacher relate` (`user_id`),
  CONSTRAINT `course teacher relate` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_courses` */

insert  into `teacher_courses`(`id`,`name`,`description`,`requirements`,`gains`,`includes`,`scat_id`,`price`,`user_id`,`type`,`students`,`fav`,`header_img`,`cover_img`,`course_url`,`created_at`,`pending`) values 
(47,'123','123\n','123\n','123\n','123,',1,24,45,0,NULL,0,'/user_images/144c73d4-13a8-4016-991b-b6e10fc1b19b.jpg','/user_images/883c7e24-5feb-44c6-b70e-95082a01cadc.jpg','hello love_0001',NULL,0),
(48,'test','sdasda\n','asdasd\n','asfasdasd\n','asdasd,',1,24,45,0,NULL,0,'/user_images/f5a5d472-be04-4ec3-ad3c-027f04dc0f0f.jpg','/user_images/b02d5d76-50df-4b53-905f-8fc73ca641bc.jpg','hello love_0002',NULL,2);

/*Table structure for table `teacher_questions` */

DROP TABLE IF EXISTS `teacher_questions`;

CREATE TABLE `teacher_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(100) NOT NULL COMMENT '0:single,1:multi,2:dragula',
  `content` longtext DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `nos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

/*Data for the table `teacher_questions` */

insert  into `teacher_questions`(`id`,`section_id`,`title`,`type`,`content`,`answer`,`nos`) values 
(46,70,'sdfsdfsdf','aw-single','sdfsdf,','true,',1),
(47,72,'asdasdasd','aw-single','asdsadas,','false,',1),
(48,74,'123123','aw-single','123123,','true,',1),
(49,76,'32423423','aw-single','2r23e2,','false,',1),
(50,80,'What is the output of <h8>Hi</h8> ?','aw-single','Error,','true,',1),
(51,82,'what is test test test test test test test test test test ?','aw-single','IDK :),','true,',1),
(52,82,'what is blah blah blah?','aw-single','keep learn?,','false,',2),
(53,104,'dfsdgsfsf','aw-single','','',1),
(54,104,'','aw-multi','sdfdgsfsdf,','true,',2);

/*Table structure for table `teacher_questions1` */

DROP TABLE IF EXISTS `teacher_questions1`;

CREATE TABLE `teacher_questions1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL,
  `type` varchar(200) NOT NULL,
  `section_id` int(11) NOT NULL,
  `aw_1_type` varchar(200) NOT NULL,
  `aw_1_result` varchar(200) NOT NULL,
  `aw_1_data` longtext DEFAULT NULL,
  `aw_2_type` varchar(200) NOT NULL,
  `aw_2_result` varchar(200) NOT NULL,
  `aw_2_data` longtext DEFAULT NULL,
  `aw_3_type` varchar(200) NOT NULL,
  `aw_3_result` varchar(200) NOT NULL,
  `aw_3_data` longtext DEFAULT NULL,
  `aw_4_type` varchar(200) NOT NULL,
  `aw_4_result` varchar(200) NOT NULL,
  `aw_4_data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_questions1` */

insert  into `teacher_questions1`(`id`,`title`,`type`,`section_id`,`aw_1_type`,`aw_1_result`,`aw_1_data`,`aw_2_type`,`aw_2_result`,`aw_2_data`,`aw_3_type`,`aw_3_result`,`aw_3_data`,`aw_4_type`,`aw_4_result`,`aw_4_data`) values 
(1,'who can help me?','aw-single',4,'1','true','sdfsdfsd','2','true','sdfsdf','3','true','sdfsdf','4','true','sdfsdf'),
(2,'who can help me?','aw-single',5,'1','true','sdfsdfsd','2','true','sdfsdf','3','true','sdfsdf','4','true','sdfsdf'),
(3,'sdsdfsd','aw-dragula',6,'2','true','fsdfsdfsdf','1','true','sdfsdf','1','true','sdfsdf','1','true','sdfsdf'),
(4,'How long do you have experience in the English skill?','aw-multi',8,'3','false','Hello, everyone.\n\nMy name is Jackey and I am teaching English for 8 years over.\n\nI offer you to learn business english.','1','true','Hello, everyone.\n\nMy name is Jackey and I am teaching English for 8 years over.\n\nI offer you to learn business english.','4','true','Hello, everyone.\n\nMy name is Jackey and I am teaching English for 8 years over.\n\nI offer you to learn business english.','2','false','Hello, everyone.\n\nMy name is Jackey and I am teaching English for 8 years over.\n\nI offer you to learn business english.'),
(5,'Do you have a bit experience in the HTML?','aw-single',11,'1','false','I have rich experience for 8 years over.','2','true','Yes, I have a bit experience in the html. ','4','false','I would like to learn','1','false','I will study hard'),
(6,'How long do you have experience in the Graphic design?','aw-multi',12,'1','true','testtest','1','true','testest','1','true','test','1','true','test'),
(7,'do you know what\'s the HTML language?','aw-single',15,'1','true','Yes, I know, it is hyper text Marqup Language for the frontend.','2','true','Yes I know, that\'s using on side of the frontend .','1','true','testtest','1','true','test'),
(8,'Do you have experience in the PHP?','aw-multi',16,'4','true','testtest','1','true','tes','1','true','test','1','true','test');

/*Table structure for table `teacher_sections` */

DROP TABLE IF EXISTS `teacher_sections`;

CREATE TABLE `teacher_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `nos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_sections` */

insert  into `teacher_sections`(`id`,`name`,`course_id`,`type`,`nos`) values 
(69,'video sec1',31,'video',1),
(70,'New Section',31,'question',2),
(71,'New Section',32,'video',1),
(72,'New Section',32,'question',2),
(73,'video sec 1',33,'video',1),
(74,'New Section',33,'question',2),
(75,'video sec 2',34,'video',1),
(76,'New Section',34,'question',2),
(77,'Section1',37,'video',1),
(78,'section2',37,'video',2),
(79,'New Section',37,'video',3),
(80,'New Section',37,'question',4),
(81,'test test test test test test test test test test ',38,'video',1),
(82,'New Section',38,'question',2),
(83,'New Section',39,'video',1),
(84,'New Section',39,'video',1),
(85,'New Section',39,'video',1),
(86,'New Section',39,'video',1),
(87,'New Section',39,'video',1),
(88,'New Section',39,'video',1),
(89,'New Section',39,'video',1),
(90,'New Section',39,'video',1),
(91,'New Section',40,'video',1),
(92,'New Section',40,'video',1),
(93,'New Section',40,'video',1),
(94,'New Section',40,'video',1),
(95,'OK',42,'video',1),
(96,'OK',42,'video',1),
(97,'OK',42,'video',1),
(98,'test section 1',43,'video',1),
(99,'test section 1',43,'video',1),
(100,'test',44,'video',1),
(101,'123',44,'video',1),
(102,'tewt',45,'video',1),
(103,'tewt',45,'video',1),
(104,'wqwqweqeqw',45,'question',3),
(105,'testtest',48,'video',1),
(106,'New Section',48,'video',1),
(107,'New Section',48,'video',1),
(108,'New Section',48,'video',1),
(109,'New Section',48,'video',1),
(110,'New Section',48,'video',1);

/*Table structure for table `teacher_student_answers` */

DROP TABLE IF EXISTS `teacher_student_answers`;

CREATE TABLE `teacher_student_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `is_end` int(3) NOT NULL DEFAULT 0 COMMENT '0: not end, 1: end',
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher_student_answers` */

/*Table structure for table `teacher_student_mark` */

DROP TABLE IF EXISTS `teacher_student_mark`;

CREATE TABLE `teacher_student_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mark` decimal(4,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `teacher_student_mark` */

insert  into `teacher_student_mark`(`id`,`course_id`,`student_id`,`mark`) values 
(8,31,40,1.00),
(9,32,40,1.00),
(10,32,24,1.00),
(11,38,40,0.50),
(12,37,40,1.00);

/*Table structure for table `teacher_subcategories` */

DROP TABLE IF EXISTS `teacher_subcategories`;

CREATE TABLE `teacher_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `image` longtext COLLATE utf8_bin DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_subcategorie_categories_id_36e8aa60_fk_teacher_c` (`categories_id`),
  CONSTRAINT `teacher_subcategorie_categories_id_36e8aa60_fk_teacher_c` FOREIGN KEY (`categories_id`) REFERENCES `teacher_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `teacher_subcategories` */

insert  into `teacher_subcategories`(`id`,`name`,`image`,`updated_at`,`created_at`,`categories_id`) values 
(1,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 04:53:34.033123','2020-06-15 04:53:34.033196',1),
(2,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 04:54:01.954997','2020-06-15 04:54:01.955099',1),
(4,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:04:24.133294','2020-06-15 06:04:24.133341',3),
(5,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:05:07.612448','2020-06-15 06:05:07.612495',3),
(6,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:05:32.872232','2020-06-15 06:05:32.872287',4),
(7,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:05:48.467563','2020-06-15 06:05:48.467613',4),
(8,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:06:07.292197','2020-06-15 06:06:07.292249',4),
(9,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:06:29.103482','2020-06-15 06:06:29.103566',5),
(10,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:06:42.985701','2020-06-15 06:06:42.985749',5),
(11,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:06:54.468098','2020-06-15 06:06:54.468189',6),
(12,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:07:05.942984','2020-06-15 06:07:05.943037',6),
(13,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:07:17.965425','2020-06-15 06:07:17.965484',6),
(14,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:07:35.279371','2020-06-15 06:07:35.279450',7),
(15,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:07:49.035951','2020-06-15 06:07:49.036038',7),
(16,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:08:05.320043','2020-06-15 06:08:05.320134',8),
(17,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:08:16.924817','2020-06-15 06:08:16.924915',8),
(18,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:08:32.277649','2020-06-15 06:08:32.277705',8),
(19,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:08:42.709775','2020-06-15 06:08:42.709996',9),
(20,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:08:53.389245','2020-06-15 06:08:53.389363',9),
(21,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:09:04.308025','2020-06-15 06:09:04.308080',10),
(22,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:09:13.934983','2020-06-15 06:09:13.935090',10),
(23,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:09:24.220757','2020-06-15 06:09:24.220807',11),
(24,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:09:34.875003','2020-06-15 06:09:34.875052',11),
(25,'HTML Language','assets/img/categories/p-language.svg','2020-06-15 06:09:44.929468','2020-06-15 06:09:44.929631',11),
(26,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:09:55.590051','2020-06-15 06:09:55.590096',12),
(27,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:10:14.454531','2020-06-15 06:10:14.454581',12),
(28,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:10:31.983094','2020-06-15 06:10:31.983196',13),
(29,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:10:46.728059','2020-06-15 06:10:46.728115',13),
(30,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:11:02.110872','2020-06-15 06:11:02.110934',14),
(31,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:11:16.458510','2020-06-15 06:11:16.458558',14),
(32,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:11:28.909687','2020-06-15 06:11:28.909750',14),
(33,'HTML Language','assets/img/Categories/p-language.svg','2020-06-15 06:11:52.952747','2020-06-15 06:11:52.952828',10);

/*Table structure for table `teacher_videouploads` */

DROP TABLE IF EXISTS `teacher_videouploads`;

CREATE TABLE `teacher_videouploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `section_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `promo` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0:not 1:single_promo 2:home_promo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_videouploads` */

insert  into `teacher_videouploads`(`id`,`name`,`section_id`,`url`,`promo`) values 
(53,'rabbit.mp4',110,'/uploads/courses/videos/cd6aa0a0-fffa-4d23-88a0-d7819bb8d2c2.mp4',2),
(52,'IMG_3125.mp4',110,'/uploads/courses/videos/1e7e2188-193e-4e38-85f9-d648ed8a5731.mp4',1),
(51,'IMG_3125.mp4',109,'/uploads/courses/videos/116662d3-cb4a-4336-820b-a9d3b4c1d757.mp4',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
