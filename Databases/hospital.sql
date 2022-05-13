-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 11:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add department', 8, 'add_department'),
(26, 'Can change department', 8, 'change_department'),
(27, 'Can delete department', 8, 'delete_department'),
(28, 'Can view department', 8, 'view_department'),
(29, 'Can add doctor', 7, 'add_doctor'),
(30, 'Can change doctor', 7, 'change_doctor'),
(31, 'Can delete doctor', 7, 'delete_doctor'),
(32, 'Can view doctor', 7, 'view_doctor'),
(33, 'Can add hospital', 9, 'add_hospital'),
(34, 'Can change hospital', 9, 'change_hospital'),
(35, 'Can delete hospital', 9, 'delete_hospital'),
(36, 'Can view hospital', 9, 'view_hospital'),
(37, 'Can add speciality', 10, 'add_speciality'),
(38, 'Can change speciality', 10, 'change_speciality'),
(39, 'Can delete speciality', 10, 'delete_speciality'),
(40, 'Can view speciality', 10, 'view_speciality'),
(41, 'Can add employee', 11, 'add_employee'),
(42, 'Can change employee', 11, 'change_employee'),
(43, 'Can delete employee', 11, 'delete_employee'),
(44, 'Can view employee', 11, 'view_employee'),
(45, 'Can add patient', 12, 'add_patient'),
(46, 'Can change patient', 12, 'change_patient'),
(47, 'Can delete patient', 12, 'delete_patient'),
(48, 'Can view patient', 12, 'view_patient'),
(49, 'Can add patients applications', 13, 'add_patientsapplications'),
(50, 'Can change patients applications', 13, 'change_patientsapplications'),
(51, 'Can delete patients applications', 13, 'delete_patientsapplications'),
(52, 'Can view patients applications', 13, 'view_patientsapplications'),
(53, 'Can add diagnostic methods', 14, 'add_diagnosticmethods'),
(54, 'Can change diagnostic methods', 14, 'change_diagnosticmethods'),
(55, 'Can delete diagnostic methods', 14, 'delete_diagnosticmethods'),
(56, 'Can view diagnostic methods', 14, 'view_diagnosticmethods'),
(57, 'Can add diagnostics', 15, 'add_diagnostics'),
(58, 'Can change diagnostics', 15, 'change_diagnostics'),
(59, 'Can delete diagnostics', 15, 'delete_diagnostics'),
(60, 'Can view diagnostics', 15, 'view_diagnostics'),
(61, 'Can add diagnostic types', 16, 'add_diagnostictypes'),
(62, 'Can change diagnostic types', 16, 'change_diagnostictypes'),
(63, 'Can delete diagnostic types', 16, 'delete_diagnostictypes'),
(64, 'Can view diagnostic types', 16, 'view_diagnostictypes'),
(65, 'Can add examinations', 17, 'add_examinations'),
(66, 'Can change examinations', 17, 'change_examinations'),
(67, 'Can delete examinations', 17, 'delete_examinations'),
(68, 'Can view examinations', 17, 'view_examinations'),
(69, 'Can add examination types', 18, 'add_examinationtypes'),
(70, 'Can change examination types', 18, 'change_examinationtypes'),
(71, 'Can delete examination types', 18, 'delete_examinationtypes'),
(72, 'Can view examination types', 18, 'view_examinationtypes'),
(73, 'Can add surveys', 19, 'add_surveys'),
(74, 'Can change surveys', 19, 'change_surveys'),
(75, 'Can delete surveys', 19, 'delete_surveys'),
(76, 'Can view surveys', 19, 'view_surveys'),
(77, 'Can add survey types', 20, 'add_surveytypes'),
(78, 'Can change survey types', 20, 'change_surveytypes'),
(79, 'Can delete survey types', 20, 'delete_surveytypes'),
(80, 'Can view survey types', 20, 'view_surveytypes'),
(81, 'Can add diagnostic', 21, 'add_diagnostic'),
(82, 'Can change diagnostic', 21, 'change_diagnostic'),
(83, 'Can delete diagnostic', 21, 'delete_diagnostic'),
(84, 'Can view diagnostic', 21, 'view_diagnostic'),
(85, 'Can add diagnostic method', 22, 'add_diagnosticmethod'),
(86, 'Can change diagnostic method', 22, 'change_diagnosticmethod'),
(87, 'Can delete diagnostic method', 22, 'delete_diagnosticmethod'),
(88, 'Can view diagnostic method', 22, 'view_diagnosticmethod'),
(89, 'Can add diagnostic type', 23, 'add_diagnostictype'),
(90, 'Can change diagnostic type', 23, 'change_diagnostictype'),
(91, 'Can delete diagnostic type', 23, 'delete_diagnostictype'),
(92, 'Can view diagnostic type', 23, 'view_diagnostictype'),
(93, 'Can add examination', 24, 'add_examination'),
(94, 'Can change examination', 24, 'change_examination'),
(95, 'Can delete examination', 24, 'delete_examination'),
(96, 'Can view examination', 24, 'view_examination'),
(97, 'Can add examination type', 25, 'add_examinationtype'),
(98, 'Can change examination type', 25, 'change_examinationtype'),
(99, 'Can delete examination type', 25, 'delete_examinationtype'),
(100, 'Can view examination type', 25, 'view_examinationtype'),
(101, 'Can add survey', 26, 'add_survey'),
(102, 'Can change survey', 26, 'change_survey'),
(103, 'Can delete survey', 26, 'delete_survey'),
(104, 'Can view survey', 26, 'view_survey'),
(105, 'Can add survey type', 27, 'add_surveytype'),
(106, 'Can change survey type', 27, 'change_surveytype'),
(107, 'Can delete survey type', 27, 'delete_surveytype'),
(108, 'Can view survey type', 27, 'view_surveytype');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$FRnkjUjgQV6ngrWnf6DDY3$jBrdd3+HZ/9MWbfGs1+MXq+1GNTDwUAou/RoOPdssk4=', '2022-05-13 21:37:06.686357', 1, 'Bega', '', '', 'bega2207.bb@gmail.com', 1, 1, '2022-05-01 10:16:10.655890'),
(2, 'pbkdf2_sha256$320000$y1Hm25X6vBpc2Ve3paxhoX$cmWWNfart1eTdzOGae/DA0cx1z7ynGL2ogsZaLGGy68=', '2022-05-13 21:55:30.576763', 0, 'Muhammet', '', '', 'muhammet@gmail.com', 0, 1, '2022-05-10 15:23:01.000000'),
(3, 'pbkdf2_sha256$320000$4VwNnT1vByb0XF2UgU0ROB$NoX3E5uDyjb3rAbVPw9M7VXo95GyokIDbC838VE7A/c=', '2022-05-13 19:04:03.037005', 0, 'Patient', '', '', '', 0, 1, '2022-05-12 08:58:37.000000'),
(4, 'pbkdf2_sha256$320000$BUE0vPe5d0ixUd54RTkNGm$1iRZwFwXM+BMj1evNRuH5vw1NikIivp5SLBsbcAafyI=', '2022-05-13 18:47:49.559843', 0, 'Doctor', '', '', '', 0, 1, '2022-05-12 13:13:32.814658'),
(11, 'pbkdf2_sha256$320000$SmhuEHR4bU0hI8ZO309Plp$ntSuhqKQZoRI/KYzv4YapznTrjW4J+1W8AxMkhhM/t0=', NULL, 0, 'Berdi', '', '', 'berdi@gmail.com', 0, 1, '2022-05-12 17:02:13.601679'),
(15, 'pbkdf2_sha256$320000$vJxYdS24C1oF7MTe34A3MY$oLNZNeaXpBm0SPt0ZlVz5zJtZlNqtVrUQ83+o3e8yEc=', NULL, 0, 'Patient1', '', '', 'patient1@gmail.com', 0, 1, '2022-05-13 10:13:00.263495');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-08 17:00:29.780544', '1', 'Bega', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(2, '2022-05-10 13:23:54.064739', '1', 'Hospital object (1)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2022-05-10 13:24:18.284793', '1', 'Hospital object (1)', 2, '[]', 9, 1),
(4, '2022-05-10 13:24:25.449118', '1', 'Hospital object (1)', 2, '[]', 9, 1),
(5, '2022-05-10 13:28:39.858290', '1', 'Department object (1)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-05-10 13:31:20.170515', '1', 'Speciality object (1)', 1, '[{\"added\": {}}]', 10, 1),
(7, '2022-05-10 13:33:51.959658', '1', 'Doctor object (1)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-05-10 13:40:57.007511', '1', 'Doctor object (1)', 2, '[{\"changed\": {\"fields\": [\"Login\", \"Password\"]}}]', 7, 1),
(9, '2022-05-10 15:23:01.666822', '2', 'Muhammet', 1, '[{\"added\": {}}]', 4, 1),
(10, '2022-05-10 15:23:15.124908', '2', 'Muhammet', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(11, '2022-05-12 08:45:33.791358', '1', 'Hospital object (1)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2022-05-12 08:49:28.705742', '1', 'Department object (1)', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-05-12 08:49:48.777841', '1', 'Speciality object (1)', 1, '[{\"added\": {}}]', 10, 1),
(14, '2022-05-12 08:54:54.916133', '1', 'Doctor object (1)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2022-05-12 08:58:37.368762', '3', 'Nazar', 1, '[{\"added\": {}}]', 4, 1),
(16, '2022-05-12 09:02:03.436867', '1', 'Patient object (1)', 1, '[{\"added\": {}}]', 12, 1),
(17, '2022-05-12 09:03:13.314150', '2', 'Muhammet', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(18, '2022-05-12 09:44:23.151593', '3', 'Patient', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(19, '2022-05-12 11:46:41.602842', '1', 'Patient object (1)', 1, '[{\"added\": {}}]', 12, 1),
(20, '2022-05-12 11:46:46.064456', '1', 'Patient object (1)', 2, '[]', 12, 1),
(21, '2022-05-13 09:48:41.757490', '1', 'Speciality object (1)', 1, '[{\"added\": {}}]', 10, 1),
(22, '2022-05-13 09:49:16.505754', '1', 'Department object (1)', 1, '[{\"added\": {}}]', 8, 1),
(23, '2022-05-13 09:49:44.443844', '1', 'Doctor object (1)', 1, '[{\"added\": {}}]', 7, 1),
(24, '2022-05-13 09:50:38.886248', '1', 'Patient object (1)', 1, '[{\"added\": {}}]', 12, 1),
(25, '2022-05-13 13:23:28.271620', '1', 'PatientsApplications object (1)', 1, '[{\"added\": {}}]', 13, 1),
(26, '2022-05-13 16:08:57.295401', '2', 'Hospital object (2)', 1, '[{\"added\": {}}]', 9, 1),
(27, '2022-05-13 16:13:24.380061', '2', 'Doctor object (2)', 1, '[{\"added\": {}}]', 7, 1),
(28, '2022-05-13 16:14:24.861216', '4', 'Doctor', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(29, '2022-05-13 19:56:14.290067', '5', 'PatientsApplications object (5)', 1, '[{\"added\": {}}]', 13, 1),
(30, '2022-05-13 21:38:17.464487', '1', 'SurveyType object (1)', 1, '[{\"added\": {}}]', 27, 1),
(31, '2022-05-13 21:39:18.144322', '1', 'Survey object (1)', 1, '[{\"added\": {}}]', 26, 1),
(32, '2022-05-13 21:46:06.183263', '2', 'Survey object (2)', 1, '[{\"added\": {}}]', 26, 1),
(33, '2022-05-13 21:47:02.904199', '1', 'ExaminationType object (1)', 1, '[{\"added\": {}}]', 25, 1),
(34, '2022-05-13 21:47:33.432624', '1', 'Examination object (1)', 1, '[{\"added\": {}}]', 24, 1),
(35, '2022-05-13 21:47:49.336486', '1', 'DiagnosticMethod object (1)', 1, '[{\"added\": {}}]', 22, 1),
(36, '2022-05-13 21:48:05.559789', '1', 'DiagnosticType object (1)', 1, '[{\"added\": {}}]', 23, 1),
(37, '2022-05-13 21:48:30.016470', '1', 'Diagnostic object (1)', 1, '[{\"added\": {}}]', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'doctorsApp', 'department'),
(21, 'doctorsApp', 'diagnostic'),
(22, 'doctorsApp', 'diagnosticmethod'),
(14, 'doctorsApp', 'diagnosticmethods'),
(15, 'doctorsApp', 'diagnostics'),
(23, 'doctorsApp', 'diagnostictype'),
(16, 'doctorsApp', 'diagnostictypes'),
(7, 'doctorsApp', 'doctor'),
(11, 'doctorsApp', 'employee'),
(24, 'doctorsApp', 'examination'),
(17, 'doctorsApp', 'examinations'),
(25, 'doctorsApp', 'examinationtype'),
(18, 'doctorsApp', 'examinationtypes'),
(9, 'doctorsApp', 'hospital'),
(10, 'doctorsApp', 'speciality'),
(26, 'doctorsApp', 'survey'),
(19, 'doctorsApp', 'surveys'),
(27, 'doctorsApp', 'surveytype'),
(20, 'doctorsApp', 'surveytypes'),
(12, 'patientsApp', 'patient'),
(13, 'patientsApp', 'patientsapplications'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-01 08:56:34.850724'),
(2, 'auth', '0001_initial', '2022-05-01 08:56:35.312636'),
(3, 'admin', '0001_initial', '2022-05-01 08:56:35.425597'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-01 08:56:35.436103'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-01 08:56:35.446044'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-01 08:56:35.501894'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-01 08:56:35.550107'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-01 08:56:35.568109'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-01 08:56:35.579117'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-01 08:56:35.623480'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-01 08:56:35.626628'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-01 08:56:35.635572'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-01 08:56:35.651558'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-01 08:56:35.668477'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-01 08:56:35.684339'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-01 08:56:35.695313'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-01 08:56:35.711895'),
(18, 'sessions', '0001_initial', '2022-05-01 08:56:35.738938'),
(19, 'doctorsApp', '0001_initial', '2022-05-10 15:31:12.028246'),
(20, 'doctorsApp', '0002_employee', '2022-05-10 15:34:57.392429'),
(21, 'patientsApp', '0001_initial', '2022-05-10 15:36:46.015218'),
(22, 'doctorsApp', '0003_delete_employee', '2022-05-12 07:34:28.696184'),
(23, 'doctorsApp', '0004_employee', '2022-05-12 07:37:19.823507'),
(24, 'doctorsApp', '0005_delete_employee', '2022-05-12 07:37:19.839497'),
(25, 'doctorsApp', '0006_delete_doctor', '2022-05-12 07:37:19.839497'),
(26, 'doctorsApp', '0007_doctor', '2022-05-12 07:37:31.882282'),
(27, 'doctorsApp', '0008_delete_doctor', '2022-05-12 07:41:32.084052'),
(28, 'doctorsApp', '0009_doctor', '2022-05-12 07:41:46.739912'),
(29, 'doctorsApp', '0010_delete_doctor', '2022-05-12 07:42:49.864861'),
(30, 'doctorsApp', '0011_doctor', '2022-05-12 07:43:04.478272'),
(31, 'doctorsApp', '0012_alter_doctor_options', '2022-05-12 07:49:22.940306'),
(32, 'doctorsApp', '0013_alter_doctor_table', '2022-05-12 07:54:01.187468'),
(33, 'doctorsApp', '0014_delete_doctor', '2022-05-12 07:54:01.195422'),
(34, 'doctorsApp', '0015_doctor', '2022-05-12 07:54:16.935599'),
(35, 'doctorsApp', '0016_delete_department_delete_hospital_delete_speciality', '2022-05-12 07:56:06.781840'),
(36, 'doctorsApp', '0017_department_hospital_speciality', '2022-05-12 07:56:34.246895'),
(37, 'doctorsApp', '0018_delete_department_delete_hospital_delete_speciality', '2022-05-12 07:56:56.668828'),
(38, 'doctorsApp', '0019_hospital_speciality_delete_doctor', '2022-05-12 08:04:32.778366'),
(39, 'doctorsApp', '0020_department', '2022-05-12 08:05:20.728552'),
(40, 'doctorsApp', '0021_doctor', '2022-05-12 08:06:13.498757'),
(41, 'patientsApp', '0002_delete_patient', '2022-05-12 08:08:23.559892'),
(42, 'patientsApp', '0003_initial', '2022-05-12 08:14:09.601355'),
(43, 'doctorsApp', '0022_remove_doctor_login_remove_doctor_name_and_more', '2022-05-12 08:34:18.048799'),
(44, 'patientsApp', '0004_remove_patient_login_remove_patient_name_and_more', '2022-05-12 08:55:45.318226'),
(45, 'patientsApp', '0005_delete_patient', '2022-05-12 11:43:25.916360'),
(46, 'patientsApp', '0006_initial', '2022-05-12 11:43:36.547267'),
(47, 'patientsApp', '0007_remove_patient_email', '2022-05-12 11:46:34.507637'),
(48, 'patientsApp', '0008_alter_patient_doctor_alter_patient_hospital', '2022-05-12 17:22:59.128580'),
(49, 'patientsApp', '0008_delete_patient', '2022-05-13 09:16:55.286295'),
(50, 'doctorsApp', '0023_remove_doctor_department_remove_doctor_hospital_and_more', '2022-05-13 09:16:55.933781'),
(51, 'doctorsApp', '0024_initial', '2022-05-13 09:16:55.964177'),
(52, 'doctorsApp', '0025_department_hospital_doctor_department_hospital', '2022-05-13 09:16:56.248169'),
(53, 'patientsApp', '0009_initial', '2022-05-13 09:16:56.613968'),
(54, 'patientsApp', '0010_alter_patientsapplications_doctor_and_more', '2022-05-13 09:16:56.859512'),
(55, 'patientsApp', '0011_merge_20220513_1223', '2022-05-13 09:16:56.872760'),
(56, 'patientsApp', '0012_alter_patientsapplications_options', '2022-05-13 09:39:24.093237'),
(57, 'patientsApp', '0013_alter_patientsapplications_options', '2022-05-13 09:39:24.107173'),
(58, 'patientsApp', '0012_delete_patientsapplications', '2022-05-13 13:21:18.486674'),
(59, 'patientsApp', '0013_patientsapplications', '2022-05-13 13:21:18.660753'),
(60, 'patientsApp', '0014_merge_20220513_1511', '2022-05-13 13:21:18.668838'),
(61, 'patientsApp', '0015_alter_patientsapplications_doctor_and_more', '2022-05-13 13:21:18.697622'),
(62, 'patientsApp', '0016_alter_patientsapplications_user', '2022-05-13 13:21:18.829122'),
(63, 'patientsApp', '0017_patientsapplications_family_doctor_and_more', '2022-05-13 19:05:04.038841'),
(64, 'patientsApp', '0018_remove_patientsapplications_user_and_more', '2022-05-13 19:53:18.345915'),
(65, 'doctorsApp', '0026_diagnosticmethods_diagnostics_diagnostictypes_and_more', '2022-05-13 20:24:48.723148'),
(66, 'doctorsApp', '0027_delete_diagnosticmethods_delete_diagnostics_and_more', '2022-05-13 20:25:30.924772'),
(67, 'doctorsApp', '0028_diagnostic_diagnosticmethod_diagnostictype_and_more', '2022-05-13 20:26:12.393722'),
(68, 'doctorsApp', '0029_delete_diagnostic_delete_diagnosticmethod_and_more', '2022-05-13 20:35:34.344147'),
(69, 'doctorsApp', '0030_surveytype', '2022-05-13 20:39:07.368854'),
(70, 'doctorsApp', '0031_delete_surveytype', '2022-05-13 20:49:50.463264'),
(71, 'doctorsApp', '0032_surveytype_survey', '2022-05-13 20:49:50.585261'),
(72, 'doctorsApp', '0033_examinationtype', '2022-05-13 20:50:13.197435'),
(73, 'doctorsApp', '0034_examination', '2022-05-13 20:51:00.133973'),
(74, 'doctorsApp', '0035_diagnosticmethod', '2022-05-13 20:51:33.352500'),
(75, 'doctorsApp', '0036_diagnostic_diagnostictype', '2022-05-13 20:52:01.202018'),
(76, 'doctorsApp', '0037_delete_diagnostic_delete_diagnostictype', '2022-05-13 20:52:15.467256'),
(77, 'doctorsApp', '0038_diagnostictype', '2022-05-13 20:52:40.027738'),
(78, 'doctorsApp', '0039_diagnostic', '2022-05-13 20:53:35.489343'),
(79, 'doctorsApp', '0040_rename_diagnostic_type_id_diagnostic_diagnostic_type_and_more', '2022-05-13 21:28:24.687631'),
(80, 'doctorsApp', '0041_diagnostic_created_at_examination_created_at_and_more', '2022-05-13 21:43:41.580490'),
(81, 'doctorsApp', '0042_survey_survey_type', '2022-05-13 21:45:23.355684');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7m7ewkjvyyj339o1z7jkrjjokgj9sgha', '.eJxVjDsOAiEUAO9CbQh_iKW9ZyCPx0NWDSTLbrXx7oZkC21nJnOwCPtW4z5ojUtmV6bY5ZclwBe1KfIT2qNz7G1bl8Rnwk87-L1net_O9m9QYdS5RUMB0KBICCSyDdqFpKSxWhl0haTzKMhC0egCFFO8SspDRokCSmafL_qLONk:1npdFy:njoqt5nJ5FD_ySGRn-MTMkkRiM_V5tNLPtnADHa2kXs', '2022-05-27 21:55:30.585002'),
('c9bza8whzal00szvbj79i9h0qjh6vsey', '.eJxVjDsOAiEUAO9CbQh_iKW9ZyCPx0NWDSTLbrXx7oZkC21nJnOwCPtW4z5ojUtmV6bY5ZclwBe1KfIT2qNz7G1bl8Rnwk87-L1net_O9m9QYdS5RUMB0KBICCSyDdqFpKSxWhl0haTzKMhC0egCFFO8SspDRokCSmafL_qLONk:1np5yh:K_wHcLT2m2WkdiDB2Xt9sAQ09Ys2CqLeRqnVpWYFZzY', '2022-05-26 10:23:27.183407'),
('fib4g1ucw7946plp2rnab44x6y8vm0xt', '.eJxVjDsOAiEUAO9CbQh_iKW9ZyCPx0NWDSTLbrXx7oZkC21nJnOwCPtW4z5ojUtmV6bY5ZclwBe1KfIT2qNz7G1bl8Rnwk87-L1net_O9m9QYdS5RUMB0KBICCSyDdqFpKSxWhl0haTzKMhC0egCFFO8SspDRokCSmafL_qLONk:1np5mx:ME2sVOK2XHR9_N_tvP2ycS6T7OJq1PULOOgs0crZi1Y', '2022-05-26 10:11:19.290912'),
('ft5fcu8bjtjigldnr0k0bw2bk8na56a0', '.eJxVjE0OwiAYBe_C2pBSoAWX7j0D-f6QqqFJaVfGu2uTLnT7Zua9VIJtLWlrsqSJ1VkZdfrdEOghdQd8h3qbNc11XSbUu6IP2vR1ZnleDvfvoEAr3xqJMxkKILHLzpEV8pgtRZvFSsyCHEOP6I3zg5eRuMcAAfKIA0oH6v0BM_M56Q:1np4j3:LZKYcjX2g_dLK0Yy_mLaUKJ1BeZ6ikaAX0TlwDHUcxA', '2022-05-26 09:03:13.337765'),
('gnl28y07hi57iuti8fufs3yin5pqzdum', '.eJxVjDsOAiEUAO9CbQh_iKW9ZyCPx0NWDSTLbrXx7oZkC21nJnOwCPtW4z5ojUtmV6bY5ZclwBe1KfIT2qNz7G1bl8Rnwk87-L1net_O9m9QYdS5RUMB0KBICCSyDdqFpKSxWhl0haTzKMhC0egCFFO8SspDRokCSmafL_qLONk:1np5ti:u8DMZ8r4MDZDSRhaez1KtBaWNkifrMSFLPpXnRdVV9Q', '2022-05-26 10:18:18.275768'),
('vi6ebgy0nwt8obyedqeup7i8pp1xjims', '.eJxVjE0OwiAYBe_C2pBSoAWX7j0D-f6QqqFJaVfGu2uTLnT7Zua9VIJtLWlrsqSJ1VkZdfrdEOghdQd8h3qbNc11XSbUu6IP2vR1ZnleDvfvoEAr3xqJMxkKILHLzpEV8pgtRZvFSsyCHEOP6I3zg5eRuMcAAfKIA0oH6v0BM_M56Q:1np7FI:5KimvVySbx8ZrWVoI7HTeOL8tm6dnwKI8UC_C3eiQaA', '2022-05-26 11:44:40.096198');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_department`
--

CREATE TABLE `doctorsapp_department` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `hospital_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_department`
--

INSERT INTO `doctorsapp_department` (`id`, `name`, `hospital_id`) VALUES
(1, 'Anyklaýyş bölümi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_diagnostic`
--

CREATE TABLE `doctorsapp_diagnostic` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `content` longtext NOT NULL,
  `diagnostic_type_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_diagnostic`
--

INSERT INTO `doctorsapp_diagnostic` (`id`, `name`, `content`, `diagnostic_type_id`, `doctor_id`, `patient_id`, `created_at`) VALUES
(1, 'Gan tabşyrdy', 'Gan tabşyrdy norm eken', 1, 1, 3, '2022-05-13 21:48:29.000000');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_diagnosticmethod`
--

CREATE TABLE `doctorsapp_diagnosticmethod` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_diagnosticmethod`
--

INSERT INTO `doctorsapp_diagnosticmethod` (`id`, `name`) VALUES
(1, 'Labaratoriýa');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_diagnostictype`
--

CREATE TABLE `doctorsapp_diagnostictype` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `diagnostic_method_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_diagnostictype`
--

INSERT INTO `doctorsapp_diagnostictype` (`id`, `name`, `diagnostic_method_id`) VALUES
(1, 'Gan tabşyrmak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_doctor`
--

CREATE TABLE `doctorsapp_doctor` (
  `id` bigint(20) NOT NULL,
  `position_at_work` longtext NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) NOT NULL,
  `speciality_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_doctor`
--

INSERT INTO `doctorsapp_doctor` (`id`, `position_at_work`, `department_id`, `hospital_id`, `speciality_id`, `user_id`) VALUES
(1, 'Bölüm hünärmeni', 1, 1, 1, 2),
(2, 'Bölüm hünärmeni', 1, 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_examination`
--

CREATE TABLE `doctorsapp_examination` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `content` longtext NOT NULL,
  `Examination_type_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_examination`
--

INSERT INTO `doctorsapp_examination` (`id`, `name`, `content`, `Examination_type_id`, `doctor_id`, `patient_id`, `created_at`) VALUES
(1, 'Gözden geçirdim', 'Gözden geçirdim aýagy norm ýagdaýda', 1, 1, 3, '2022-05-13 21:47:32.000000');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_examinationtype`
--

CREATE TABLE `doctorsapp_examinationtype` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_examinationtype`
--

INSERT INTO `doctorsapp_examinationtype` (`id`, `name`) VALUES
(1, 'Gözden geçirmek');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_hospital`
--

CREATE TABLE `doctorsapp_hospital` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `country` longtext NOT NULL,
  `city` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_hospital`
--

INSERT INTO `doctorsapp_hospital` (`id`, `name`, `country`, `city`) VALUES
(1, 'Halkara hirurgiýa we endokrinologiýa merkezi', 'Türkmenistan', 'Aşgabat'),
(2, 'Aşgabat şäher lukmançylyk hassahanasy', 'Türkmenistan', 'Aşgabat');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_speciality`
--

CREATE TABLE `doctorsapp_speciality` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_speciality`
--

INSERT INTO `doctorsapp_speciality` (`id`, `name`) VALUES
(1, 'Endokrinolog');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_survey`
--

CREATE TABLE `doctorsapp_survey` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `content` longtext NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `survey_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_survey`
--

INSERT INTO `doctorsapp_survey` (`id`, `name`, `content`, `doctor_id`, `patient_id`, `created_at`, `survey_type_id`) VALUES
(2, 'Ayagy agyryar', 'Ayagy agyryar norm yoreyar 3 gun maz calsa gutular nesip bolsa', 1, 3, '2022-05-13 21:46:05.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorsapp_surveytype`
--

CREATE TABLE `doctorsapp_surveytype` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsapp_surveytype`
--

INSERT INTO `doctorsapp_surveytype` (`id`, `name`) VALUES
(1, 'Patient complaints');

-- --------------------------------------------------------

--
-- Table structure for table `in_hospital_times`
--

CREATE TABLE `in_hospital_times` (
  `id` int(11) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patientsapp_patient`
--

CREATE TABLE `patientsapp_patient` (
  `id` bigint(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `country` longtext NOT NULL,
  `city` longtext NOT NULL,
  `etrap` longtext NOT NULL,
  `work_address` longtext NOT NULL,
  `work` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientsapp_patient`
--

INSERT INTO `patientsapp_patient` (`id`, `date_of_birth`, `country`, `city`, `etrap`, `work_address`, `work`, `phone`, `doctor_id`, `hospital_id`, `user_id`) VALUES
(3, '2000-06-14', 'Türkmenistan', 'Aşgabat', 'Köpetdag', 'Kärhana HK', 'Menejment bölüminiň hünärmeni', '+99365123456', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `patientsapp_patientsapplications`
--

CREATE TABLE `patientsapp_patientsapplications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `is_opened` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  `family_doctor_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientsapp_patientsapplications`
--

INSERT INTO `patientsapp_patientsapplications` (`id`, `title`, `message`, `is_opened`, `created_at`, `doctor_id`, `hospital_id`, `family_doctor_id`, `patient_id`) VALUES
(5, 'Aýak agyrysy', 'Aýagym agyrýar, bir-iki günlikde çekdirden ýaly', 1, '2022-05-13 19:55:33.000000', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `diagnostic_type_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `header` text NOT NULL,
  `content` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `responded_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `doctorsapp_department`
--
ALTER TABLE `doctorsapp_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorsApp_departmen_hospital_id_c01d4fa0_fk_doctorsAp` (`hospital_id`);

--
-- Indexes for table `doctorsapp_diagnostic`
--
ALTER TABLE `doctorsapp_diagnostic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorsApp_diagnosti_diagnostic_type_id_05c821c5_fk_doctorsAp` (`diagnostic_type_id`),
  ADD KEY `doctorsApp_diagnostic_doctor_id_b3c1464d_fk_doctorsApp_doctor_id` (`doctor_id`),
  ADD KEY `doctorsApp_diagnosti_patient_id_951eddce_fk_patientsA` (`patient_id`);

--
-- Indexes for table `doctorsapp_diagnosticmethod`
--
ALTER TABLE `doctorsapp_diagnosticmethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorsapp_diagnostictype`
--
ALTER TABLE `doctorsapp_diagnostictype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorsApp_diagnosti_diagnostic_method_id_f7c9c9da_fk_doctorsAp` (`diagnostic_method_id`);

--
-- Indexes for table `doctorsapp_doctor`
--
ALTER TABLE `doctorsapp_doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `doctorsApp_doctor_department_id_7b0304fa_fk_doctorsAp` (`department_id`),
  ADD KEY `doctorsApp_doctor_hospital_id_36343cac_fk_doctorsApp_hospital_id` (`hospital_id`),
  ADD KEY `doctorsApp_doctor_speciality_id_12a91ff6_fk_doctorsAp` (`speciality_id`);

--
-- Indexes for table `doctorsapp_examination`
--
ALTER TABLE `doctorsapp_examination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorsApp_examinati_Examination_type_id_4dbc06da_fk_doctorsAp` (`Examination_type_id`),
  ADD KEY `doctorsApp_examinati_doctor_id_6c9bdb19_fk_doctorsAp` (`doctor_id`),
  ADD KEY `doctorsApp_examinati_patient_id_01be6289_fk_patientsA` (`patient_id`);

--
-- Indexes for table `doctorsapp_examinationtype`
--
ALTER TABLE `doctorsapp_examinationtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorsapp_hospital`
--
ALTER TABLE `doctorsapp_hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorsapp_speciality`
--
ALTER TABLE `doctorsapp_speciality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorsapp_survey`
--
ALTER TABLE `doctorsapp_survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorsApp_survey_doctor_id_da8d84fe_fk_doctorsApp_doctor_id` (`doctor_id`),
  ADD KEY `doctorsApp_survey_patient_id_95333124_fk_patientsApp_patient_id` (`patient_id`),
  ADD KEY `doctorsApp_survey_survey_type_id_2cdd329d_fk_doctorsAp` (`survey_type_id`);

--
-- Indexes for table `doctorsapp_surveytype`
--
ALTER TABLE `doctorsapp_surveytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_hospital_times`
--
ALTER TABLE `in_hospital_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientsapp_patient`
--
ALTER TABLE `patientsapp_patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `patientsApp_patient_doctor_id_029b013d_fk_doctorsApp_doctor_id` (`doctor_id`),
  ADD KEY `patientsApp_patient_hospital_id_a89ce579_fk_doctorsAp` (`hospital_id`);

--
-- Indexes for table `patientsapp_patientsapplications`
--
ALTER TABLE `patientsapp_patientsapplications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientsApp_patients_doctor_id_3eace8d3_fk_doctorsAp` (`doctor_id`),
  ADD KEY `patientsApp_patients_hospital_id_a42cd2ab_fk_doctorsAp` (`hospital_id`),
  ADD KEY `patientsApp_patients_family_doctor_id_5b31bc21_fk_doctorsAp` (`family_doctor_id`),
  ADD KEY `patientsApp_patients_patient_id_1af32ba2_fk_patientsA` (`patient_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `doctorsapp_department`
--
ALTER TABLE `doctorsapp_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_diagnostic`
--
ALTER TABLE `doctorsapp_diagnostic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_diagnosticmethod`
--
ALTER TABLE `doctorsapp_diagnosticmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_diagnostictype`
--
ALTER TABLE `doctorsapp_diagnostictype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_doctor`
--
ALTER TABLE `doctorsapp_doctor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctorsapp_examination`
--
ALTER TABLE `doctorsapp_examination`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_examinationtype`
--
ALTER TABLE `doctorsapp_examinationtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_hospital`
--
ALTER TABLE `doctorsapp_hospital`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctorsapp_speciality`
--
ALTER TABLE `doctorsapp_speciality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorsapp_survey`
--
ALTER TABLE `doctorsapp_survey`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctorsapp_surveytype`
--
ALTER TABLE `doctorsapp_surveytype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `in_hospital_times`
--
ALTER TABLE `in_hospital_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patientsapp_patient`
--
ALTER TABLE `patientsapp_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patientsapp_patientsapplications`
--
ALTER TABLE `patientsapp_patientsapplications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorsapp_department`
--
ALTER TABLE `doctorsapp_department`
  ADD CONSTRAINT `doctorsApp_departmen_hospital_id_c01d4fa0_fk_doctorsAp` FOREIGN KEY (`hospital_id`) REFERENCES `doctorsapp_hospital` (`id`);

--
-- Constraints for table `doctorsapp_diagnostic`
--
ALTER TABLE `doctorsapp_diagnostic`
  ADD CONSTRAINT `doctorsApp_diagnosti_diagnostic_type_id_05c821c5_fk_doctorsAp` FOREIGN KEY (`diagnostic_type_id`) REFERENCES `doctorsapp_diagnostictype` (`id`),
  ADD CONSTRAINT `doctorsApp_diagnosti_patient_id_951eddce_fk_patientsA` FOREIGN KEY (`patient_id`) REFERENCES `patientsapp_patient` (`id`),
  ADD CONSTRAINT `doctorsApp_diagnostic_doctor_id_b3c1464d_fk_doctorsApp_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctorsapp_doctor` (`id`);

--
-- Constraints for table `doctorsapp_diagnostictype`
--
ALTER TABLE `doctorsapp_diagnostictype`
  ADD CONSTRAINT `doctorsApp_diagnosti_diagnostic_method_id_f7c9c9da_fk_doctorsAp` FOREIGN KEY (`diagnostic_method_id`) REFERENCES `doctorsapp_diagnosticmethod` (`id`);

--
-- Constraints for table `doctorsapp_doctor`
--
ALTER TABLE `doctorsapp_doctor`
  ADD CONSTRAINT `doctorsApp_doctor_department_id_7b0304fa_fk_doctorsAp` FOREIGN KEY (`department_id`) REFERENCES `doctorsapp_department` (`id`),
  ADD CONSTRAINT `doctorsApp_doctor_hospital_id_36343cac_fk_doctorsApp_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `doctorsapp_hospital` (`id`),
  ADD CONSTRAINT `doctorsApp_doctor_speciality_id_12a91ff6_fk_doctorsAp` FOREIGN KEY (`speciality_id`) REFERENCES `doctorsapp_speciality` (`id`),
  ADD CONSTRAINT `doctorsApp_doctor_user_id_56545f91_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorsapp_examination`
--
ALTER TABLE `doctorsapp_examination`
  ADD CONSTRAINT `doctorsApp_examinati_Examination_type_id_4dbc06da_fk_doctorsAp` FOREIGN KEY (`Examination_type_id`) REFERENCES `doctorsapp_examinationtype` (`id`),
  ADD CONSTRAINT `doctorsApp_examinati_doctor_id_6c9bdb19_fk_doctorsAp` FOREIGN KEY (`doctor_id`) REFERENCES `doctorsapp_doctor` (`id`),
  ADD CONSTRAINT `doctorsApp_examinati_patient_id_01be6289_fk_patientsA` FOREIGN KEY (`patient_id`) REFERENCES `patientsapp_patient` (`id`);

--
-- Constraints for table `doctorsapp_survey`
--
ALTER TABLE `doctorsapp_survey`
  ADD CONSTRAINT `doctorsApp_survey_doctor_id_da8d84fe_fk_doctorsApp_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctorsapp_doctor` (`id`),
  ADD CONSTRAINT `doctorsApp_survey_patient_id_95333124_fk_patientsApp_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patientsapp_patient` (`id`),
  ADD CONSTRAINT `doctorsApp_survey_survey_type_id_2cdd329d_fk_doctorsAp` FOREIGN KEY (`survey_type_id`) REFERENCES `doctorsapp_surveytype` (`id`);

--
-- Constraints for table `patientsapp_patient`
--
ALTER TABLE `patientsapp_patient`
  ADD CONSTRAINT `patientsApp_patient_doctor_id_029b013d_fk_doctorsApp_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctorsapp_doctor` (`id`),
  ADD CONSTRAINT `patientsApp_patient_hospital_id_a89ce579_fk_doctorsAp` FOREIGN KEY (`hospital_id`) REFERENCES `doctorsapp_hospital` (`id`),
  ADD CONSTRAINT `patientsApp_patient_user_id_37fe8ba5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patientsapp_patientsapplications`
--
ALTER TABLE `patientsapp_patientsapplications`
  ADD CONSTRAINT `patientsApp_patients_doctor_id_3eace8d3_fk_doctorsAp` FOREIGN KEY (`doctor_id`) REFERENCES `doctorsapp_doctor` (`id`),
  ADD CONSTRAINT `patientsApp_patients_family_doctor_id_5b31bc21_fk_doctorsAp` FOREIGN KEY (`family_doctor_id`) REFERENCES `doctorsapp_doctor` (`id`),
  ADD CONSTRAINT `patientsApp_patients_hospital_id_a42cd2ab_fk_doctorsAp` FOREIGN KEY (`hospital_id`) REFERENCES `doctorsapp_hospital` (`id`),
  ADD CONSTRAINT `patientsApp_patients_patient_id_1af32ba2_fk_patientsA` FOREIGN KEY (`patient_id`) REFERENCES `patientsapp_patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
