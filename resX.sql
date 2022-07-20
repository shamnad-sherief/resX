-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2022 at 01:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resX`
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
(25, 'Can add department', 7, 'add_department'),
(26, 'Can change department', 7, 'change_department'),
(27, 'Can delete department', 7, 'delete_department'),
(28, 'Can view department', 7, 'view_department'),
(29, 'Can add faculty', 8, 'add_faculty'),
(30, 'Can change faculty', 8, 'change_faculty'),
(31, 'Can delete faculty', 8, 'delete_faculty'),
(32, 'Can view faculty', 8, 'view_faculty'),
(33, 'Can add subject', 9, 'add_subject'),
(34, 'Can change subject', 9, 'change_subject'),
(35, 'Can delete subject', 9, 'delete_subject'),
(36, 'Can view subject', 9, 'view_subject'),
(37, 'Can add student', 10, 'add_student'),
(38, 'Can change student', 10, 'change_student'),
(39, 'Can delete student', 10, 'delete_student'),
(40, 'Can view student', 10, 'view_student'),
(41, 'Can add materials', 11, 'add_materials'),
(42, 'Can change materials', 11, 'change_materials'),
(43, 'Can delete materials', 11, 'delete_materials'),
(44, 'Can view materials', 11, 'view_materials'),
(45, 'Can add hod', 12, 'add_hod'),
(46, 'Can change hod', 12, 'change_hod'),
(47, 'Can delete hod', 12, 'delete_hod'),
(48, 'Can view hod', 12, 'view_hod');

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
(1, 'pbkdf2_sha256$320000$UTi3AvOW9S02RkO2DlbfkQ$YPxSHr5ZJ4yyGwdxn6AbryZRE9SG6JkrysbOnWcll0Q=', '2022-07-19 19:09:33.835890', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-07-19 19:07:00.514949');

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
(1, '2022-07-20 11:28:19.631538', '1', 'Department object (1)', 1, '[{\"added\": {}}]', 7, 1);

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
(7, 'home', 'department'),
(8, 'home', 'faculty'),
(12, 'home', 'hod'),
(11, 'home', 'materials'),
(10, 'home', 'student'),
(9, 'home', 'subject'),
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
(1, 'contenttypes', '0001_initial', '2022-07-19 19:05:53.841883'),
(2, 'auth', '0001_initial', '2022-07-19 19:05:54.528912'),
(3, 'admin', '0001_initial', '2022-07-19 19:05:54.703905'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-19 19:05:54.718085'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-19 19:05:54.730609'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-19 19:05:54.813232'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-19 19:05:54.886754'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-19 19:05:54.903878'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-19 19:05:54.915554'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-19 19:05:54.962018'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-19 19:05:54.965840'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-19 19:05:54.975528'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-19 19:05:54.994269'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-19 19:05:55.012447'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-19 19:05:55.032446'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-19 19:05:55.043351'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-19 19:05:55.063900'),
(18, 'home', '0001_initial', '2022-07-19 19:05:55.491175'),
(19, 'sessions', '0001_initial', '2022-07-19 19:05:55.530477');

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
('ubo7c70zljzaz46mwm1e2r3dd52ttfk0', '.eJxVjDsOwjAQBe_iGlnxdzeU9JzB8mcXB5AjxUmFuDtESgHtm5n3EiFuaw1bpyVMRZyFEqffLcX8oLaDco_tNss8t3WZktwVedAur3Oh5-Vw_w5q7PVbezU48JqQUaPWENl5Y60ZMGdjRrBMGZkUsnFkC4_A0dgEDJggJS_eH7uPN5o:1oDsb7:Lq6nGDw5KdGoJIKAuLVws5O-9_DuikmYL295hFgw0_U', '2022-08-02 19:09:33.841119');

-- --------------------------------------------------------

--
-- Table structure for table `home_department`
--

CREATE TABLE `home_department` (
  `id` bigint(20) NOT NULL,
  `department_code` varchar(100) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_department`
--

INSERT INTO `home_department` (`id`, `department_code`, `department_name`) VALUES
(1, 'PMC', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `home_faculty`
--

CREATE TABLE `home_faculty` (
  `id` bigint(20) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `faculty_type` varchar(100) NOT NULL,
  `department_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_hod`
--

CREATE TABLE `home_hod` (
  `id` bigint(20) NOT NULL,
  `hod_name` varchar(100) NOT NULL,
  `department_id_id` bigint(20) NOT NULL,
  `faculty_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_materials`
--

CREATE TABLE `home_materials` (
  `id` bigint(20) NOT NULL,
  `material_name` varchar(3000) NOT NULL,
  `material_sem` int(11) NOT NULL,
  `material_batch` varchar(20) NOT NULL,
  `material_type` varchar(20) NOT NULL,
  `subject_name_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_student`
--

CREATE TABLE `home_student` (
  `student_regno` varchar(30) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `student_sem` int(11) NOT NULL,
  `student_level` int(11) NOT NULL,
  `department_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_subject`
--

CREATE TABLE `home_subject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_sem` int(11) NOT NULL
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
-- Indexes for table `home_department`
--
ALTER TABLE `home_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_faculty`
--
ALTER TABLE `home_faculty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_faculty_department_id_id_273c5582_fk_home_department_id` (`department_id_id`);

--
-- Indexes for table `home_hod`
--
ALTER TABLE `home_hod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_hod_department_id_id_d7c82f98_fk_home_department_id` (`department_id_id`),
  ADD KEY `home_hod_faculty_id_id_f895ba8a_fk_home_faculty_id` (`faculty_id_id`);

--
-- Indexes for table `home_materials`
--
ALTER TABLE `home_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_materials_subject_name_id_66f7acd5_fk_home_subject_id` (`subject_name_id`);

--
-- Indexes for table `home_student`
--
ALTER TABLE `home_student`
  ADD PRIMARY KEY (`student_regno`),
  ADD KEY `home_student_department_id_id_885ea7ef_fk_home_department_id` (`department_id_id`);

--
-- Indexes for table `home_subject`
--
ALTER TABLE `home_subject`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `home_department`
--
ALTER TABLE `home_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_faculty`
--
ALTER TABLE `home_faculty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_hod`
--
ALTER TABLE `home_hod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_materials`
--
ALTER TABLE `home_materials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_subject`
--
ALTER TABLE `home_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `home_faculty`
--
ALTER TABLE `home_faculty`
  ADD CONSTRAINT `home_faculty_department_id_id_273c5582_fk_home_department_id` FOREIGN KEY (`department_id_id`) REFERENCES `home_department` (`id`);

--
-- Constraints for table `home_hod`
--
ALTER TABLE `home_hod`
  ADD CONSTRAINT `home_hod_department_id_id_d7c82f98_fk_home_department_id` FOREIGN KEY (`department_id_id`) REFERENCES `home_department` (`id`),
  ADD CONSTRAINT `home_hod_faculty_id_id_f895ba8a_fk_home_faculty_id` FOREIGN KEY (`faculty_id_id`) REFERENCES `home_faculty` (`id`);

--
-- Constraints for table `home_materials`
--
ALTER TABLE `home_materials`
  ADD CONSTRAINT `home_materials_subject_name_id_66f7acd5_fk_home_subject_id` FOREIGN KEY (`subject_name_id`) REFERENCES `home_subject` (`id`);

--
-- Constraints for table `home_student`
--
ALTER TABLE `home_student`
  ADD CONSTRAINT `home_student_department_id_id_885ea7ef_fk_home_department_id` FOREIGN KEY (`department_id_id`) REFERENCES `home_department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
