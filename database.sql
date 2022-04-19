-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2022 at 08:13 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `craft_basket`
--
CREATE DATABASE IF NOT EXISTS `craft_basket` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `craft_basket`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add craft_arts', 7, 'add_craft_arts'),
(26, 'Can change craft_arts', 7, 'change_craft_arts'),
(27, 'Can delete craft_arts', 7, 'delete_craft_arts'),
(28, 'Can view craft_arts', 7, 'view_craft_arts'),
(29, 'Can add userclass', 8, 'add_userclass'),
(30, 'Can change userclass', 8, 'change_userclass'),
(31, 'Can delete userclass', 8, 'delete_userclass'),
(32, 'Can view userclass', 8, 'view_userclass'),
(33, 'Can add craft_arts', 9, 'add_craft_arts'),
(34, 'Can change craft_arts', 9, 'change_craft_arts'),
(35, 'Can delete craft_arts', 9, 'delete_craft_arts'),
(36, 'Can view craft_arts', 9, 'view_craft_arts'),
(37, 'Can add tutor reg model', 10, 'add_tutorregmodel'),
(38, 'Can change tutor reg model', 10, 'change_tutorregmodel'),
(39, 'Can delete tutor reg model', 10, 'delete_tutorregmodel'),
(40, 'Can view tutor reg model', 10, 'view_tutorregmodel'),
(41, 'Can add user reg model', 11, 'add_userregmodel'),
(42, 'Can change user reg model', 11, 'change_userregmodel'),
(43, 'Can delete user reg model', 11, 'delete_userregmodel'),
(44, 'Can view user reg model', 11, 'view_userregmodel'),
(45, 'Can add tutor courses model', 12, 'add_tutorcoursesmodel'),
(46, 'Can change tutor courses model', 12, 'change_tutorcoursesmodel'),
(47, 'Can delete tutor courses model', 12, 'delete_tutorcoursesmodel'),
(48, 'Can view tutor courses model', 12, 'view_tutorcoursesmodel'),
(49, 'Can add userfeedbackmodel', 13, 'add_userfeedbackmodel'),
(50, 'Can change userfeedbackmodel', 13, 'change_userfeedbackmodel'),
(51, 'Can delete userfeedbackmodel', 13, 'delete_userfeedbackmodel'),
(52, 'Can view userfeedbackmodel', 13, 'view_userfeedbackmodel'),
(53, 'Can add contact model', 14, 'add_contactmodel'),
(54, 'Can change contact model', 14, 'change_contactmodel'),
(55, 'Can delete contact model', 14, 'delete_contactmodel'),
(56, 'Can view contact model', 14, 'view_contactmodel'),
(57, 'Can add order details model', 15, 'add_orderdetailsmodel'),
(58, 'Can change order details model', 15, 'change_orderdetailsmodel'),
(59, 'Can delete order details model', 15, 'delete_orderdetailsmodel'),
(60, 'Can view order details model', 15, 'view_orderdetailsmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$7EDSLFJosVzS9qErcuSlnO$rLdTjKCkQMCfnjOT+DJHqIY+tbxk2kYzrWFA8FziZfk=', '2022-01-27 10:21:25.664054', 1, 'mamatha', '', '', 'mamathaboyapally3375@gmail.com', 1, 1, '2022-01-27 10:19:11.576054'),
(2, 'pbkdf2_sha256$320000$9mFfsfwXqxZYYqNbuaQpln$Hz1xF24+83LYFlK1FBl/HmLUn/cc9N+iPbQRdD0znY0=', NULL, 1, 'codebook', '', '', 'mamathaboyapally3375@gmail.com', 1, 1, '2022-02-05 08:05:56.361571');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE IF NOT EXISTS `contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craftbasketapp_craft_arts`
--

CREATE TABLE IF NOT EXISTS `craftbasketapp_craft_arts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tutor_id` int(11) NOT NULL,
  `Tutor_Name` longtext NOT NULL,
  `Course_Category` varchar(100) NOT NULL,
  `Course_Name` varchar(100) NOT NULL,
  `course_Durtaion` varchar(100) NOT NULL,
  `course_Description` varchar(100) NOT NULL,
  `Course_Fees` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-27 10:24:14.965908', '1', 'drawing  (arts ) ', 1, '[{"added": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'craftbasketapp', 'contactmodel'),
(7, 'craftbasketapp', 'craft_arts'),
(6, 'sessions', 'session'),
(9, 'tutorapp', 'craft_arts'),
(12, 'tutorapp', 'tutorcoursesmodel'),
(10, 'tutorapp', 'tutorregmodel'),
(15, 'userapp', 'orderdetailsmodel'),
(8, 'userapp', 'userclass'),
(13, 'userapp', 'userfeedbackmodel'),
(11, 'userapp', 'userregmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-25 11:29:15.809358'),
(2, 'auth', '0001_initial', '2022-01-25 11:29:25.066703'),
(3, 'admin', '0001_initial', '2022-01-25 11:29:27.345025'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-25 11:29:27.401901'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-25 11:29:27.442530'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-25 11:29:28.687654'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-25 11:29:29.387130'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-25 11:29:30.055572'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-25 11:29:30.107108'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-25 11:29:30.696022'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-25 11:29:30.739469'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-25 11:29:30.782439'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-25 11:29:31.531445'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-25 11:29:32.273916'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-25 11:29:33.023637'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-25 11:29:33.122609'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-25 11:29:33.990792'),
(18, 'sessions', '0001_initial', '2022-01-25 11:29:34.693148'),
(19, 'craftbasketapp', '0001_initial', '2022-01-25 12:27:21.813038'),
(20, 'craftbasketapp', '0002_alter_craft_arts_course_fees_and_more', '2022-01-27 07:58:53.875645'),
(21, 'tutorapp', '0001_initial', '2022-01-28 08:20:20.574917'),
(23, 'tutorapp', '0002_remove_tutorregmodel_category', '2022-01-28 08:24:56.846909'),
(24, 'userapp', '0002_userregmodel_delete_userclass', '2022-01-29 06:08:58.986840'),
(25, 'tutorapp', '0003_tutorcoursesmodel_alter_tutorregmodel_password_and_more', '2022-02-05 07:51:16.499814'),
(26, 'tutorapp', '0004_alter_tutorcoursesmodel_table', '2022-02-05 09:57:51.958325'),
(27, 'tutorapp', '0005_tutorcoursesmodel_tutor_id', '2022-02-05 10:47:39.290471'),
(28, 'tutorapp', '0006_tutorcoursesmodel_status', '2022-02-05 11:32:14.841182'),
(29, 'tutorapp', '0007_tutorcoursesmodel_description_and_more', '2022-02-08 05:40:11.918447'),
(30, 'tutorapp', '0008_alter_tutorcoursesmodel_description', '2022-02-08 05:54:36.203551'),
(31, 'tutorapp', '0009_alter_tutorcoursesmodel_description', '2022-02-08 06:25:08.845430'),
(32, 'userapp', '0003_userregmodel_category', '2022-02-08 10:59:54.673667'),
(33, 'userapp', '0004_userfeedbackmodel', '2022-02-11 05:36:59.553054'),
(34, 'userapp', '0005_alter_userfeedbackmodel_email_and_more', '2022-02-11 06:03:28.161669'),
(35, 'userapp', '0006_alter_userfeedbackmodel_email', '2022-02-11 06:16:18.911241'),
(36, 'userapp', '0007_alter_userfeedbackmodel_email', '2022-02-11 06:19:46.756268'),
(37, 'tutorapp', '0010_tutorregmodel_category', '2022-02-11 10:15:48.958316'),
(38, 'tutorapp', '0011_tutorregmodel_tutor_status', '2022-02-12 05:58:14.154023'),
(39, 'tutorapp', '0012_remove_tutorregmodel_city_and_more', '2022-03-24 10:09:24.583086'),
(40, 'userapp', '0008_remove_userregmodel_city_and_more', '2022-03-25 11:25:39.846356'),
(41, 'tutorapp', '0013_tutorregmodel_image', '2022-03-26 11:26:26.809712'),
(42, 'userapp', '0009_userregmodel_image_alter_userregmodel_phone_number', '2022-03-26 12:01:20.615237'),
(43, 'userapp', '0010_alter_userregmodel_email_alter_userregmodel_password_and_more', '2022-03-28 06:35:29.859357'),
(44, 'tutorapp', '0014_alter_tutorregmodel_category', '2022-03-28 06:50:43.229299'),
(45, 'tutorapp', '0015_alter_tutorregmodel_category_and_more', '2022-03-28 07:11:12.676053'),
(46, 'userapp', '0011_alter_userfeedbackmodel_phonenumber', '2022-03-29 11:58:47.961033'),
(47, 'craftbasketapp', '0003_contactmodel', '2022-03-31 12:56:19.025244'),
(48, 'userapp', '0012_orderdetailsmodel', '2022-04-04 12:22:20.857682'),
(49, 'userapp', '0013_remove_orderdetailsmodel_tutor_id_and_more', '2022-04-05 07:10:06.033213'),
(50, 'userapp', '0014_rename_course_id_orderdetailsmodel_course_and_more', '2022-04-06 06:52:12.447555'),
(51, 'userapp', '0015_alter_orderdetailsmodel_status', '2022-04-07 13:12:04.126195'),
(52, 'userapp', '0016_userfeedbackmodel_tutor', '2022-04-08 05:24:16.738066'),
(53, 'userapp', '0001_initial', '2022-04-08 07:08:40.657638');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('26jzwn9py8mn0svdn104rswt0fk12fes', '.eJxVjkEOwiAURO_CuiEfCgVcuvcMBP6ntmpKUujKeHclIUaXM_NmMk_mw1EXf5S0-5XYiQk2_Hox4D1tLaBb2K6ZY97qvkbeEN7Twi-Z0uPc2b-BJZSltWcdp6iUAdDGoh5FRBdlsIAKESwROYekUSNNKIxwhCBHABKzJJs-o9-PwgysHjV3JV9vVFVAxw:1nKajy:Vy9x5ms9RUrKkaO4oCOrwi_N7GBs6CahwhP4LTw8xtU', '2022-03-03 06:58:10.771592'),
('2otkws8vac79t9oxu4772n5abrfi5ths', 'eyJ0dXRvcl9pZCI6MTksInVzZXJfaWQiOjIxfQ:1nZXip:_MjARE0WXxcn6a1fSvdtfGM04xEjv_0d8AyS3YcW3dw', '2022-04-13 12:46:47.067317'),
('arzhu47v572pskt1qk05yfwjxsywdrka', 'eyJ0dXRvcl9pZCI6MTksInVzZXJfaWQiOjIxfQ:1nZWI4:GIHfEuLqt5QbsPXfGBWmXjuOaV_5XEll5aQ1dvw7_hs', '2022-04-13 11:15:04.936253'),
('fv8rbw6bkhl6wsudb8npy8pd6mgr4xwk', 'eyJ1c2VyX2lkIjoyMSwidHV0b3JfaWQiOjE5fQ:1nc1vi:NQkExYHEhQith4qM8oa25Ez3qTxfUd3QZZtYKZ_jtR0', '2022-04-20 09:26:22.706738'),
('w0327rhbb6tdt6sablro7ik29711r0gp', 'eyJ1c2VyX2lkIjoxLCJ0dXRvcl9pZCI6MTl9:1ncjaz:b6NJ2emUg6lM1FWwJ3LqD1MO-YdeoMPxNPibYLNiVXE', '2022-04-22 08:03:53.549622');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_users`
--

CREATE TABLE IF NOT EXISTS `feedback_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` bigint(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_users_tutor_id_4ea3d674_fk_Tutor_details_Tutor_id` (`tutor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback_users`
--

INSERT INTO `feedback_users` (`id`, `name`, `email`, `phonenumber`, `description`, `tutor_id`) VALUES
(1, 'mamatha', 'mamathaboyapally3375@gmail.com', 9391701134, 'teaching is good\r\n', NULL),
(2, 'mamatha', 'mamathaboyapally3375@gmail.com', 9391701134, 'tutors are solving every problem\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` date DEFAULT NULL,
  `time_added` time(6) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_details_course_id_bf450417_fk_TutorCour` (`course_id`),
  KEY `order_details_tutor_id_9e9b6303_fk_Tutor_details_Tutor_id` (`tutor_id`),
  KEY `order_details_user_id_599732a6_fk_user_details_User_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `date_added`, `time_added`, `status`, `course_id`, `tutor_id`, `user_id`) VALUES
(1, '2022-04-08', '12:47:13.624224', 'paid', 27, 8, 1),
(2, '2022-04-08', '12:47:28.713764', 'paid', 28, 8, 1),
(3, '2022-04-08', '12:47:34.529663', 'paid', 29, 8, 1),
(4, '2022-04-08', '13:03:09.974288', 'paid', 27, 8, 2),
(5, '2022-04-08', '13:20:39.861181', 'paid', 32, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tutorapp_craft_arts`
--

CREATE TABLE IF NOT EXISTS `tutorapp_craft_arts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tutor_id` int(11) NOT NULL,
  `Tutor_Name` longtext NOT NULL,
  `Course_Category` varchar(100) NOT NULL,
  `Course_Name` varchar(100) NOT NULL,
  `course_Durtaion` varchar(100) NOT NULL,
  `course_Description` varchar(100) NOT NULL,
  `Course_Fees` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tutorcoursedetails`
--

CREATE TABLE IF NOT EXISTS `tutorcoursedetails` (
  `courses_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `Email` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `Duration` varchar(50) DEFAULT NULL,
  `video_url` varchar(500) NOT NULL,
  `courses_fee` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`courses_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tutorcoursedetails`
--

INSERT INTO `tutorcoursedetails` (`courses_id`, `name`, `Email`, `category`, `Duration`, `video_url`, `courses_fee`, `image`, `tutor_id`, `status`, `description`) VALUES
(27, 'drawing', 'shirisha@gmail.com', 'Drawing', '3-6 months', 'https://youtube.com/embed/djDdY9Y1a6g', '100/-', 'images/coursesdra.3_ajQ4FfI.jpg', 8, 'pending', 'drawing classes for each and everyone who are interested'),
(28, 'drawing', 'shirisha@gmail.com', 'Drawing', '3-6 months', 'https://youtube.com/embed/1Kx4p2h77mQ', '100', 'images/coursesdra.3_BdhK6DS.jpg', 8, 'pending', 'this is drawosijwijijkjf fdfhjkfhdruejh fdjfhjhjhdfjh'),
(29, 'Craft', 'mamathaboyapally3375@gmail.com', 'Kidscraft', '6-9 months', 'https://youtube.com/embed/sLXB7EOI5MI', '100', 'images/coursespap.4.jpg', 8, 'pending', 'Craft classes for kids'),
(32, 'Scrapbooking', 'mamathaboyapally3375@gmail.com', 'Scrapbooking', '3 months', 'https://youtube.com/embed/sLXB7EOI5MI', '5000', 'images/coursesd.1_mirF9ku.jpg', 19, 'pending', 'Scrapbooking classses for all the people\r\n'),
(33, 'KidsCraft', 'mamathaboyapally3375@gmail.com', 'Kidscraft', '3 months', 'https://youtube.com/embed/LaxF9qT8uTc', '5000', 'images/carousel-55.jpg', 19, 'pending', 'If you’re looking for easy and fun craft ideas for kids – you’ve definitely come to the right place!'),
(34, 'Drawing', 'mamathaboyapally3375@gmail.com', 'Drawing', '3 months', 'https://youtube.com/embed/IAvG9CgOTrY', '2500/-', 'images/about-11.jpg', 19, 'pending', 'easy drawing for kids step by step. iron man drawing for kids. easy owl drawings for kids. draw a qu');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_details`
--

CREATE TABLE IF NOT EXISTS `tutor_details` (
  `Tutor_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_Name` longtext NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `Experience` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `category` varchar(50) NOT NULL,
  `Tutor_status` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`Tutor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tutor_details`
--

INSERT INTO `tutor_details` (`Tutor_id`, `full_Name`, `phone_number`, `Experience`, `Email`, `Password`, `category`, `Tutor_status`, `gender`, `image`) VALUES
(8, 'Ganesh', 2147483647, '4 years', 'gane@gmail.com', '#123', 'catagory', 'Accepted', 'False', 'images/about-1.jpg'),
(9, 'afreen', 2147483647, '3 years', 'afreen@gmail.com', '!!!', 'catagory', 'Accepted', 'False', 'images/about-1_MUTxAgg.jpg'),
(10, 'afreen', 2147483647, '3 years', 'afreen@gmail.com', '!!!', 'catagory', 'Accepted', 'False', 'images/about-1_bUuhBPx.jpg'),
(11, 'mamatha', 2147483647, '2years', 'mammu@gmail.com', '9848599461', 'catagory', 'Accepted', 'False', 'images/about-1_MNRw19W.jpg'),
(12, 'ganesh', 2147483647, '', 'gane@gmail.com', '6300474325', 'catagory', 'Accepted', 'False', 'images/about-1_MNRw19W.jpg'),
(13, 'ganesh', 2147483647, '2years', 'gane@gmail.com', '@123', 'catagory', 'pending', 'Female', 'images/about-1.jpg'),
(14, 'mmmmm', 2147483647, '2years', 'mamathaboyapally3375@gmail.com', '1234', 'catagory', 'Rejected', 'Female', 'images/about-1_MUTxAgg.jpg'),
(15, 'ganesh', 2147483647, '2years', 'gane@gmail.com', '@123', 'catagory', 'pending', 'Female', 'images/about-1_MUTxAgg.jpg'),
(16, 'mamatha', 2147483647, '1 year', 'mamathaboyapally3375@gmail.com', '@12345', 'catagory', 'pending', 'Female', 'images/about-1.jpg'),
(17, 'sravani', 2147483647, '2years', 'sravani@gmail.com', '#12345', 'catagory', 'Accepted', 'Female', 'images/about-1_bUuhBPx.jpg'),
(18, 'sravani', 2147483647, '2years', 'sravani@gmail.com', '#12345', 'Drawing', 'pending', 'Female', 'images/about-1_MUTxAgg.jpg'),
(19, 'manorama', 788954447, '2 year', 'mamathaboyapally3375@gmail.com', '@12345', 'Scrapbooking', 'Accepted', 'Female', 'images/about-1_7D5VBZ1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_Name` longtext,
  `phone_number` bigint(20) NOT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `category` longtext,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`User_id`, `full_Name`, `phone_number`, `gender`, `Email`, `Password`, `category`, `image`) VALUES
(1, 'mamatha boyapally', 9391701134, 'Female', 'mamathaboyapally3375@gmail.com', '123456', 'Scrapbooking', 'images/about-1_y4MSqV7.jpg'),
(2, 'ganesh', 6300474325, 'Male', 'gane@gmail.com', '@12345', 'yoga', 'images/about-2.jpg'),
(3, 'saddam', 9848599461, 'Male', 'saddam@gmail.com', '123456', 'Kidscraft', 'images/testimonial-2.jpg'),
(4, 'bhagya', 7890865743, 'Female', 'bhagya@gmail.com', '@12345', 'Drawing', 'images/drawing.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `feedback_users`
--
ALTER TABLE `feedback_users`
  ADD CONSTRAINT `feedback_users_tutor_id_4ea3d674_fk_Tutor_details_Tutor_id` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_details` (`Tutor_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_user_id_599732a6_fk_user_details_User_id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`User_id`),
  ADD CONSTRAINT `order_details_course_id_bf450417_fk_TutorCour` FOREIGN KEY (`course_id`) REFERENCES `tutorcoursedetails` (`courses_id`),
  ADD CONSTRAINT `order_details_tutor_id_9e9b6303_fk_Tutor_details_Tutor_id` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_details` (`Tutor_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
