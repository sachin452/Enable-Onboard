-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2019 at 02:05 PM
-- Server version: 10.1.23-MariaDB-9+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enable_v2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
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
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add access_ types', 7, 'add_access_types'),
(20, 'Can change access_ types', 7, 'change_access_types'),
(21, 'Can delete access_ types', 7, 'delete_access_types'),
(22, 'Can add consumer_ identification_ config', 8, 'add_consumer_identification_config'),
(23, 'Can change consumer_ identification_ config', 8, 'change_consumer_identification_config'),
(24, 'Can delete consumer_ identification_ config', 8, 'delete_consumer_identification_config'),
(25, 'Can add consumers', 9, 'add_consumers'),
(26, 'Can change consumers', 9, 'change_consumers'),
(27, 'Can delete consumers', 9, 'delete_consumers'),
(28, 'Can add corporates', 10, 'add_corporates'),
(29, 'Can change corporates', 10, 'change_corporates'),
(30, 'Can delete corporates', 10, 'delete_corporates'),
(31, 'Can add enable_ config', 11, 'add_enable_config'),
(32, 'Can change enable_ config', 11, 'change_enable_config'),
(33, 'Can delete enable_ config', 11, 'delete_enable_config'),
(34, 'Can add hardware_ devices', 12, 'add_hardware_devices'),
(35, 'Can change hardware_ devices', 12, 'change_hardware_devices'),
(36, 'Can delete hardware_ devices', 12, 'delete_hardware_devices'),
(37, 'Can add hybrid_ config', 13, 'add_hybrid_config'),
(38, 'Can change hybrid_ config', 13, 'change_hybrid_config'),
(39, 'Can delete hybrid_ config', 13, 'delete_hybrid_config'),
(40, 'Can add lane_ access_ type', 14, 'add_lane_access_type'),
(41, 'Can change lane_ access_ type', 14, 'change_lane_access_type'),
(42, 'Can delete lane_ access_ type', 14, 'delete_lane_access_type'),
(43, 'Can add lanes', 15, 'add_lanes'),
(44, 'Can change lanes', 15, 'change_lanes'),
(45, 'Can delete lanes', 15, 'delete_lanes'),
(46, 'Can add online_ config', 16, 'add_online_config'),
(47, 'Can change online_ config', 16, 'change_online_config'),
(48, 'Can delete online_ config', 16, 'delete_online_config'),
(49, 'Can add parking_ lots', 17, 'add_parking_lots'),
(50, 'Can change parking_ lots', 17, 'change_parking_lots'),
(51, 'Can delete parking_ lots', 17, 'delete_parking_lots'),
(52, 'Can add parking_ lots_ config', 18, 'add_parking_lots_config'),
(53, 'Can change parking_ lots_ config', 18, 'change_parking_lots_config'),
(54, 'Can delete parking_ lots_ config', 18, 'delete_parking_lots_config'),
(55, 'Can add parking_ session', 19, 'add_parking_session'),
(56, 'Can change parking_ session', 19, 'change_parking_session'),
(57, 'Can delete parking_ session', 19, 'delete_parking_session'),
(58, 'Can add parking_ session_ events', 20, 'add_parking_session_events'),
(59, 'Can change parking_ session_ events', 20, 'change_parking_session_events'),
(60, 'Can delete parking_ session_ events', 20, 'delete_parking_session_events'),
(61, 'Can add pass_ access_ time_ slots', 21, 'add_pass_access_time_slots'),
(62, 'Can change pass_ access_ time_ slots', 21, 'change_pass_access_time_slots'),
(63, 'Can delete pass_ access_ time_ slots', 21, 'delete_pass_access_time_slots'),
(64, 'Can add pass_ allocation', 22, 'add_pass_allocation'),
(65, 'Can change pass_ allocation', 22, 'change_pass_allocation'),
(66, 'Can delete pass_ allocation', 22, 'delete_pass_allocation'),
(67, 'Can add pass_ master', 23, 'add_pass_master'),
(68, 'Can change pass_ master', 23, 'change_pass_master'),
(69, 'Can delete pass_ master', 23, 'delete_pass_master'),
(70, 'Can add pass_ master_ access', 24, 'add_pass_master_access'),
(71, 'Can change pass_ master_ access', 24, 'change_pass_master_access'),
(72, 'Can delete pass_ master_ access', 24, 'delete_pass_master_access'),
(73, 'Can add sync_ event_ log', 25, 'add_sync_event_log'),
(74, 'Can change sync_ event_ log', 25, 'change_sync_event_log'),
(75, 'Can delete sync_ event_ log', 25, 'delete_sync_event_log'),
(76, 'Can add controllers', 26, 'add_controllers'),
(77, 'Can change controllers', 26, 'change_controllers'),
(78, 'Can delete controllers', 26, 'delete_controllers'),
(79, 'Can add parking_ session_ eventttt', 27, 'add_parking_session_eventttt'),
(80, 'Can change parking_ session_ eventttt', 27, 'change_parking_session_eventttt'),
(81, 'Can delete parking_ session_ eventttt', 27, 'delete_parking_session_eventttt');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_types`
--

CREATE TABLE `backend_access_types` (
  `id` int(11) NOT NULL,
  `access_type_name` varchar(255) NOT NULL,
  `access_type_partner` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_access_types`
--

INSERT INTO `backend_access_types` (`id`, `access_type_name`, `access_type_partner`, `created_at`, `updated_at`) VALUES
(1, 'RFID', 'RFID', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 'LPR', 'LPR', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(5, 'RFID', 'RFID', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `backend_consumers`
--

CREATE TABLE `backend_consumers` (
  `cloud_consumer_id` int(11) NOT NULL,
  `cloud_consumer_name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_consumer_identification_config`
--

CREATE TABLE `backend_consumer_identification_config` (
  `cloud_consumer_identification_config_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `status` varchar(64) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `access_type_id` int(11) NOT NULL,
  `cloud_consumer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_controllers`
--

CREATE TABLE `backend_controllers` (
  `cloud_controller_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `header_key` varchar(255) NOT NULL,
  `response_type` varchar(6) NOT NULL,
  `DI0` varchar(2) NOT NULL,
  `DI1` varchar(2) NOT NULL,
  `DI2` varchar(2) NOT NULL,
  `DI3` varchar(2) NOT NULL,
  `ip` char(39) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_controllers`
--

INSERT INTO `backend_controllers` (`cloud_controller_id`, `name`, `header_key`, `response_type`, `DI0`, `DI1`, `DI2`, `DI3`, `ip`) VALUES
(3, 'GMP', 'cm9vdDowMDAwMDAwMA==', 'JSON', '0', '0', '0', '0', '192.168.1.250');

-- --------------------------------------------------------

--
-- Table structure for table `backend_corporates`
--

CREATE TABLE `backend_corporates` (
  `id` int(11) NOT NULL,
  `cloud_corporate_id` int(11) DEFAULT NULL,
  `corporate_name` varchar(255) NOT NULL,
  `landline_number` int(11) NOT NULL,
  `corporate_email` varchar(255) NOT NULL,
  `corporate_location` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_enable_config`
--

CREATE TABLE `backend_enable_config` (
  `id` int(11) NOT NULL,
  `cloud_parking_id` int(11) NOT NULL,
  `cloud_location_id` varchar(255) NOT NULL,
  `frontend_url` varchar(255) NOT NULL,
  `varient_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `parking_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cloud_company_id` int(11) NOT NULL,
  `kill_system` varchar(10) NOT NULL,
  `car_full_flag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_enable_config`
--

INSERT INTO `backend_enable_config` (`id`, `cloud_parking_id`, `cloud_location_id`, `frontend_url`, `varient_name`, `company_name`, `tenant_name`, `parking_name`, `created_at`, `updated_at`, `cloud_company_id`, `kill_system`, `car_full_flag`) VALUES
(1, 1, 'SPACES001', '0.0.0.0:8000/', 'ONLINE', 'Spaces Staging', 'spaces', 'Spaces, Virtual Carpark', '2019-07-12 14:54:07.033888', '2019-07-12 14:54:07.033888', 1, 'ACTIVE', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `backend_hardware_devices`
--

CREATE TABLE `backend_hardware_devices` (
  `id` int(11) NOT NULL,
  `cloud_hardware_device_id` int(11) NOT NULL,
  `device_name` varchar(255) NOT NULL,
  `device_access_url` varchar(255) NOT NULL,
  `hardware_address` varchar(255) NOT NULL,
  `bbc_relay_content` varchar(255) NOT NULL,
  `heartbeat_status` varchar(6) NOT NULL,
  `heartbeat_access_address` varchar(255) NOT NULL,
  `heartbeat_request_type` varchar(255) NOT NULL,
  `heartbeat_body` varchar(255) NOT NULL,
  `response_key_to_be_checked` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` varchar(15) NOT NULL,
  `lane_id` int(11) NOT NULL,
  `controller_id` int(11) NOT NULL,
  `post_body_or_input_name` varchar(255) NOT NULL,
  `pin_type` varchar(10) NOT NULL,
  `external_identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_hardware_devices`
--

INSERT INTO `backend_hardware_devices` (`id`, `cloud_hardware_device_id`, `device_name`, `device_access_url`, `hardware_address`, `bbc_relay_content`, `heartbeat_status`, `heartbeat_access_address`, `heartbeat_request_type`, `heartbeat_body`, `response_key_to_be_checked`, `created_at`, `updated_at`, `status`, `lane_id`, `controller_id`, `post_body_or_input_name`, `pin_type`, `external_identifier`) VALUES
(1, 1, 'LOOP1', 'http://192.168.1.254/digitalinput/0/value', '1', '1', '1', '1', '1', '1', '1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '1', 1, 3, 'DI0', 'INPUT', 'start'),
(2, 2, 'LOOP1', 'http://192.168.1.254/digitalinput/2/value', '3', '3', '1', '1', '1', '1', '1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '1', 2, 3, 'DI2', 'INPUT', 'start'),
(3, 3, 'LOOP2', 'http://192.168.1.254/digitalinput/1/value', '2', '2', '1', '2', '2', '2', '2', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '1', 1, 3, 'DI1', 'INPUT', 'start'),
(4, 4, 'BOOMBARRIER', 'http://192.168.1.254/digitaloutput/all/value', '4', '4', '1', '4', '4', '4', '4', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'CONNECTED', 1, 3, 'DO2=', 'OUTPUT', 'start'),
(5, 5, 'LOOP2', 'http://192.168.1.254/digitalinput/3/value', '5', '5', '1', '1', '5', '1', '1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '1', 2, 3, 'DI3', 'INPUT', 'start'),
(6, 6, 'BOOMBARRIER', 'http://192.168.1.254/digitaloutput/all/value', '6', '6', '6', '6', '6', '6', '6', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'CONNECTED', 2, 3, 'DO1=', 'OUTPUT', 'start'),
(7, 7, 'TICKET_DISPENSER', 'http://192.168.1.254/digitaloutput/all/value', '7', '7', '7', '7', '7', '7', '7', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NOT_CONNECTED', 1, 3, 'DO2=', 'OUTPUT', 'start'),
(8, 8, 'DOOR', 'http://192.168.1.254/digitaloutput/all/value', '8', '8', '8', '8', '8', '8', '8', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NOT_CONNECTED', 1, 3, 'DO3=', 'OUTPUT', '12345'),
(9, 9, 'CAR_FULL', 'http://192.168.1.254/digitalinput/2/value', '1', '1', '1', '1', '1', '1', '1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'CONNECTED', 1, 3, 'DI2', 'INPUT', 'start');

-- --------------------------------------------------------

--
-- Table structure for table `backend_hybrid_config`
--

CREATE TABLE `backend_hybrid_config` (
  `id` int(11) NOT NULL,
  `cloud_parking_id` int(11) NOT NULL,
  `cloud_base_url` varchar(255) NOT NULL,
  `batch_api_interval` int(11) DEFAULT NULL,
  `batch_extension_url` varchar(255) NOT NULL,
  `heartbeat_interval` int(11) DEFAULT NULL,
  `heartbeat_extension_url` varchar(255) NOT NULL,
  `sync_interval` int(11) DEFAULT NULL,
  `sync_extension_url` varchar(255) NOT NULL,
  `operator_login_extension_url` varchar(255) NOT NULL,
  `hybrid_auth_credentials` varchar(255) NOT NULL,
  `hybrid_auth_token` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `batch_currency_code` varchar(32) NOT NULL,
  `batch_parking_session_type` varchar(64) NOT NULL,
  `batch_payment_method` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_lanes`
--

CREATE TABLE `backend_lanes` (
  `id` int(11) NOT NULL,
  `cloud_lane_id` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `loop_logic` varchar(10) NOT NULL,
  `loop1_interval` int(11) NOT NULL,
  `loop2_interval` int(11) NOT NULL,
  `is_boombarrier_active` tinyint(1) NOT NULL,
  `lane_type` varchar(6) NOT NULL,
  `timer_bw_loops` double NOT NULL,
  `online_media_type` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_ticket_dispenser_active` tinyint(1) NOT NULL,
  `car_full_interval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_lanes`
--

INSERT INTO `backend_lanes` (`id`, `cloud_lane_id`, `vehicle_type`, `prefix`, `loop_logic`, `loop1_interval`, `loop2_interval`, `is_boombarrier_active`, `lane_type`, `timer_bw_loops`, `online_media_type`, `created_at`, `updated_at`, `is_ticket_dispenser_active`, `car_full_interval`) VALUES
(1, 1, 'CAR', 'entry', 'TWO_LOOPS', 20, 20, 1, 'ENTRY', 1, 'RE', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 10),
(2, 2, 'CAR', 'exit', 'TWO_LOOPS', 20, 20, 1, 'EXIT', 1, 'RE', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_lane_access_type`
--

CREATE TABLE `backend_lane_access_type` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `access_type_master_id_id` int(11) NOT NULL,
  `lane_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_online_config`
--

CREATE TABLE `backend_online_config` (
  `id` int(11) NOT NULL,
  `cloud_parking_id` int(11) NOT NULL,
  `cloud_base_url` varchar(255) NOT NULL,
  `universal_auth_url` varchar(255) NOT NULL,
  `universal_event_url` varchar(255) NOT NULL,
  `universal_transaction_url` varchar(255) NOT NULL,
  `universal_secret_key` varchar(255) NOT NULL,
  `universal_hmac_username` varchar(255) NOT NULL,
  `universal_currency` varchar(255) NOT NULL,
  `filter_interval` int(11) DEFAULT NULL,
  `filter_extension_url` varchar(255) NOT NULL,
  `reverse_secret_key` varchar(255) NOT NULL,
  `reverse_access_url` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_online_config`
--

INSERT INTO `backend_online_config` (`id`, `cloud_parking_id`, `cloud_base_url`, `universal_auth_url`, `universal_event_url`, `universal_transaction_url`, `universal_secret_key`, `universal_hmac_username`, `universal_currency`, `filter_interval`, `filter_extension_url`, `reverse_secret_key`, `reverse_access_url`, `created_at`, `updated_at`) VALUES
(1, 1, ' http://space-staging-load-balancer-918855242.us-east-1.elb.amazonaws.com', 'v1/partners/permission', 'v1/partners/events/', 'v1/partners/transactions/', 'EYPQnoiOehGcNLlYgyse4ftg', 'staging', 'USD', 0, 'v1/filter/', 'dGVzdDp0ZXN0', 'v1/partners/permission/6', '2019-07-12 14:54:07.154146', '2019-07-12 14:54:07.154146');

-- --------------------------------------------------------

--
-- Table structure for table `backend_parking_lots`
--

CREATE TABLE `backend_parking_lots` (
  `id` int(11) NOT NULL,
  `cloud_parking_lot_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `occupied_bike_capacity` int(11) NOT NULL,
  `occupied_car_capacity` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_overstay_allowed` tinyint(1) NOT NULL,
  `session_type` varchar(255) NOT NULL,
  `is_overflow_allowed_bike` tinyint(1) NOT NULL,
  `is_overflow_allowed_car` tinyint(1) NOT NULL,
  `total_bike_capacity` int(11) NOT NULL,
  `total_car_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_parking_lots`
--

INSERT INTO `backend_parking_lots` (`id`, `cloud_parking_lot_id`, `name`, `occupied_bike_capacity`, `occupied_car_capacity`, `created_at`, `updated_at`, `is_overstay_allowed`, `session_type`, `is_overflow_allowed_bike`, `is_overflow_allowed_car`, `total_bike_capacity`, `total_car_capacity`) VALUES
(1, 1, 'Spaces, Virtual Carpark', 0, 2, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'SMTP', 0, 0, 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `backend_parking_session`
--

CREATE TABLE `backend_parking_session` (
  `id` int(11) NOT NULL,
  `checkin_time` datetime(6) NOT NULL,
  `checkout_time` datetime(6) DEFAULT NULL,
  `session_status` varchar(10) NOT NULL,
  `parking_lot_id` int(11) DEFAULT NULL,
  `consumer_user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `pass_allocation_id` int(11) DEFAULT NULL,
  `entry_consumer_identification_id` varchar(255) NOT NULL,
  `exit_consumer_identification_id` varchar(255) NOT NULL,
  `cloud_pass_master_id` int(11) DEFAULT NULL,
  `entry_lane_id` int(11) NOT NULL,
  `exit_lane_id` int(11) DEFAULT NULL,
  `parking_id` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `encoded_booking_id` int(11) DEFAULT NULL,
  `tenant` varchar(255) NOT NULL,
  `overstay_time` int(11) NOT NULL,
  `cloud_session_id` int(11) NOT NULL,
  `cico_consumer_token` varchar(512) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `vehicle_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_parking_session`
--

INSERT INTO `backend_parking_session` (`id`, `checkin_time`, `checkout_time`, `session_status`, `parking_lot_id`, `consumer_user_id`, `company_id`, `pass_allocation_id`, `entry_consumer_identification_id`, `exit_consumer_identification_id`, `cloud_pass_master_id`, `entry_lane_id`, `exit_lane_id`, `parking_id`, `vehicle_type`, `special`, `encoded_booking_id`, `tenant`, `overstay_time`, `cloud_session_id`, `cico_consumer_token`, `created_at`, `updated_at`, `serial_number`, `vehicle_number`) VALUES
(2, '2019-07-12 16:10:34.708000', '2019-07-12 16:27:26.865000', 'COMPLETED', 0, 0, 1, 0, '11a41cd2-d41a-4ad1-b933-bb63c6223e94', '11a41cd2-d41a-4ad1-b933-bb63c6223e94', 0, 1, 2, 1, 'CAR', '', 0, 'spaces', 0, 0, '11a41cd2-d41a-4ad1-b933-bb63c6223e94', '2019-07-12 16:10:35.682712', '2019-07-12 16:10:35.682816', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backend_parking_session_events`
--

CREATE TABLE `backend_parking_session_events` (
  `id` int(11) NOT NULL,
  `checkin_time` datetime(6) NOT NULL,
  `checkout_time` datetime(6) DEFAULT NULL,
  `session_status` varchar(10) NOT NULL,
  `parking_lot_id` int(11) DEFAULT NULL,
  `consumer_user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `pass_allocation_id` int(11) DEFAULT NULL,
  `entry_consumer_identification_id` varchar(255) NOT NULL,
  `exit_consumer_identification_id` varchar(255) NOT NULL,
  `cloud_pass_master_id` int(11) DEFAULT NULL,
  `entry_lane_id` int(11) NOT NULL,
  `exit_lane_id` int(11) DEFAULT NULL,
  `parking_id` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `encoded_booking_id` int(11) DEFAULT NULL,
  `tenant` varchar(255) NOT NULL,
  `overstay_time` int(11) NOT NULL,
  `batch_upload` int(11) NOT NULL,
  `retry_count` int(11) NOT NULL,
  `cico_consumer_token` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `vehicle_number` varchar(255) DEFAULT NULL,
  `image_found` varchar(10) NOT NULL,
  `image_uploaded` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_pass_access_time_slots`
--

CREATE TABLE `backend_pass_access_time_slots` (
  `cloud_pass_access_time_slots_id` int(11) NOT NULL,
  `start_day` int(11) NOT NULL,
  `end_day` int(11) NOT NULL,
  `start_minute` int(11) NOT NULL,
  `end_minute` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cloud_pass_master_access_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_pass_allocation`
--

CREATE TABLE `backend_pass_allocation` (
  `pass_status` varchar(7) NOT NULL,
  `cloud_corporate_id` int(11) DEFAULT NULL,
  `payment_status` varchar(7) NOT NULL,
  `cloud_vehicle_number` varchar(255) NOT NULL,
  `cloud_pass_allocation_id` int(11) NOT NULL,
  `expire_at` datetime(6) NOT NULL,
  `start_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cloud_consumer_id` int(11) NOT NULL,
  `cloud_pass_master_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_pass_master`
--

CREATE TABLE `backend_pass_master` (
  `cloud_pass_master_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_pass_master_access`
--

CREATE TABLE `backend_pass_master_access` (
  `cloud_pass_master_access_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cloud_pass_master_id` int(11) NOT NULL,
  `cloud_parking_lot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_sync_event_log`
--

CREATE TABLE `backend_sync_event_log` (
  `id` int(11) NOT NULL,
  `sync_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(7, 'backend', 'access_types'),
(9, 'backend', 'consumers'),
(8, 'backend', 'consumer_identification_config'),
(26, 'backend', 'controllers'),
(10, 'backend', 'corporates'),
(11, 'backend', 'enable_config'),
(12, 'backend', 'hardware_devices'),
(13, 'backend', 'hybrid_config'),
(15, 'backend', 'lanes'),
(14, 'backend', 'lane_access_type'),
(16, 'backend', 'online_config'),
(17, 'backend', 'parking_lots'),
(18, 'backend', 'parking_lots_config'),
(19, 'backend', 'parking_session'),
(20, 'backend', 'parking_session_events'),
(27, 'backend', 'parking_session_eventttt'),
(21, 'backend', 'pass_access_time_slots'),
(22, 'backend', 'pass_allocation'),
(23, 'backend', 'pass_master'),
(24, 'backend', 'pass_master_access'),
(25, 'backend', 'sync_event_log'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-07 14:52:21.348253'),
(2, 'auth', '0001_initial', '2019-03-07 14:52:26.007908'),
(3, 'admin', '0001_initial', '2019-03-07 14:52:27.167661'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-07 14:52:27.225382'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-03-07 14:52:27.788246'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-03-07 14:52:28.567942'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-03-07 14:52:28.977834'),
(8, 'auth', '0004_alter_user_username_opts', '2019-03-07 14:52:29.028237'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-03-07 14:52:29.290027'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-03-07 14:52:29.313876'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-03-07 14:52:29.342699'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-03-07 14:52:29.695370'),
(13, 'backend', '0001_initial', '2019-03-07 14:52:39.425191'),
(14, 'sessions', '0001_initial', '2019-03-07 14:52:39.659026'),
(15, 'backend', '0002_auto_20190308_0748', '2019-03-08 07:48:52.919478'),
(16, 'backend', '0003_auto_20190308_0928', '2019-03-08 09:28:06.840349'),
(17, 'backend', '0002_hardware_devices_post_body', '2019-03-11 09:36:37.616039'),
(18, 'backend', '0003_hardware_devices_pin_type', '2019-03-11 11:19:30.208503'),
(19, 'backend', '0004_auto_20190312_0853', '2019-03-12 08:53:40.516293'),
(20, 'backend', '0005_auto_20190318_0824', '2019-03-18 08:24:50.850029'),
(21, 'backend', '0006_auto_20190318_0937', '2019-03-18 09:37:32.252464'),
(22, 'backend', '0007_auto_20190328_1216', '2019-03-28 12:17:11.826039'),
(23, 'backend', '0008_auto_20190328_1224', '2019-03-28 12:24:46.122861'),
(24, 'backend', '0009_auto_20190328_1324', '2019-03-28 13:29:55.887654'),
(25, 'backend', '0010_auto_20190328_1354', '2019-03-28 13:54:41.847859'),
(26, 'backend', '0011_auto_20190328_1417', '2019-03-28 14:17:41.073872'),
(27, 'backend', '0012_auto_20190328_1421', '2019-03-28 14:21:41.609879'),
(28, 'backend', '0013_auto_20190329_0440', '2019-03-29 04:40:27.301082'),
(29, 'backend', '0002_auto_20190410_1058', '2019-04-10 10:59:08.359194'),
(30, 'backend', '0003_auto_20190411_1110', '2019-04-11 11:10:54.212703'),
(31, 'backend', '0004_hybrid_config_batch_parking_session_type', '2019-04-11 12:19:36.034990'),
(32, 'backend', '0005_auto_20190412_0753', '2019-04-12 07:53:53.765293'),
(33, 'backend', '0006_auto_20190422_1437', '2019-04-22 14:38:20.176823'),
(34, 'backend', '0007_auto_20190423_1149', '2019-04-23 11:50:00.841338'),
(35, 'backend', '0008_auto_20190425_0800', '2019-04-25 08:01:09.697364'),
(36, 'backend', '0009_auto_20190425_0800', '2019-04-25 08:01:09.912390'),
(37, 'backend', '0010_lanes_is_ticket_dispensor_active', '2019-05-07 08:34:09.232906'),
(38, 'backend', '0011_auto_20190507_0848', '2019-05-07 08:48:46.772136'),
(39, 'backend', '0012_hardware_devices_external_identifier', '2019-05-09 12:22:29.001835'),
(40, 'backend', '0013_online_config_door_open_time', '2019-05-15 04:53:48.315070'),
(41, 'backend', '0014_remove_online_config_door_open_time', '2019-05-17 06:11:00.622560'),
(42, 'backend', '0015_auto_20190530_1039', '2019-05-30 10:39:52.116888'),
(43, 'backend', '0002_enable_config_kill_system', '2019-06-27 07:44:34.982563'),
(44, 'backend', '0003_remove_lanes_is_ticket_dispenser_active', '2019-06-27 07:44:35.544711'),
(45, 'backend', '0004_lanes_is_ticket_dispenser_active', '2019-06-27 07:44:36.109687'),
(46, 'backend', '0005_enable_config_car_full_flag', '2019-06-27 07:44:36.407235'),
(47, 'backend', '0006_lanes_car_full_interval', '2019-07-03 08:57:39.432001'),
(48, 'backend', '0006_auto_20190710_1210', '2019-07-10 12:10:52.637049');

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
-- Indexes for table `backend_access_types`
--
ALTER TABLE `backend_access_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_consumers`
--
ALTER TABLE `backend_consumers`
  ADD PRIMARY KEY (`cloud_consumer_id`);

--
-- Indexes for table `backend_consumer_identification_config`
--
ALTER TABLE `backend_consumer_identification_config`
  ADD PRIMARY KEY (`cloud_consumer_identification_config_id`),
  ADD UNIQUE KEY `backend_consumer_identif_cloud_consumer_identific_7f984a2f_uniq` (`cloud_consumer_identification_config_id`),
  ADD KEY `backend_consumer_ide_access_type_id_13490db1_fk_backend_a` (`access_type_id`),
  ADD KEY `backend_consumer_ide_cloud_consumer_id_5f8de787_fk_backend_c` (`cloud_consumer_id`);

--
-- Indexes for table `backend_controllers`
--
ALTER TABLE `backend_controllers`
  ADD PRIMARY KEY (`cloud_controller_id`);

--
-- Indexes for table `backend_corporates`
--
ALTER TABLE `backend_corporates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_enable_config`
--
ALTER TABLE `backend_enable_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_hardware_devices`
--
ALTER TABLE `backend_hardware_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_hardware_devices_controller_id_2f11eaa8` (`controller_id`),
  ADD KEY `backend_hardware_devices_lane_id_7bf01a62_fk_backend_lanes_id` (`lane_id`);

--
-- Indexes for table `backend_hybrid_config`
--
ALTER TABLE `backend_hybrid_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_lanes`
--
ALTER TABLE `backend_lanes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_lane_access_type`
--
ALTER TABLE `backend_lane_access_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_lane_access__access_type_master_i_6d3e448d_fk_backend_a` (`access_type_master_id_id`),
  ADD KEY `backend_lane_access_type_lane_id_id_e9e0496c_fk_backend_lanes_id` (`lane_id_id`);

--
-- Indexes for table `backend_online_config`
--
ALTER TABLE `backend_online_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_parking_lots`
--
ALTER TABLE `backend_parking_lots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_parking_session`
--
ALTER TABLE `backend_parking_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_parking_session_events`
--
ALTER TABLE `backend_parking_session_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_pass_access_time_slots`
--
ALTER TABLE `backend_pass_access_time_slots`
  ADD PRIMARY KEY (`cloud_pass_access_time_slots_id`),
  ADD KEY `backend_pass_access__cloud_pass_master_ac_2acdd729_fk_backend_p` (`cloud_pass_master_access_id`);

--
-- Indexes for table `backend_pass_allocation`
--
ALTER TABLE `backend_pass_allocation`
  ADD PRIMARY KEY (`cloud_pass_allocation_id`),
  ADD KEY `backend_pass_allocat_cloud_pass_master_id_d463636a_fk_backend_p` (`cloud_pass_master_id`),
  ADD KEY `backend_pass_allocat_cloud_consumer_id_51da8ef7_fk_backend_c` (`cloud_consumer_id`);

--
-- Indexes for table `backend_pass_master`
--
ALTER TABLE `backend_pass_master`
  ADD PRIMARY KEY (`cloud_pass_master_id`);

--
-- Indexes for table `backend_pass_master_access`
--
ALTER TABLE `backend_pass_master_access`
  ADD PRIMARY KEY (`cloud_pass_master_access_id`),
  ADD KEY `backend_pass_master__cloud_pass_master_id_f30fe8e6_fk_backend_p` (`cloud_pass_master_id`);

--
-- Indexes for table `backend_sync_event_log`
--
ALTER TABLE `backend_sync_event_log`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_access_types`
--
ALTER TABLE `backend_access_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `backend_corporates`
--
ALTER TABLE `backend_corporates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_enable_config`
--
ALTER TABLE `backend_enable_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_hardware_devices`
--
ALTER TABLE `backend_hardware_devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `backend_hybrid_config`
--
ALTER TABLE `backend_hybrid_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_lanes`
--
ALTER TABLE `backend_lanes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backend_lane_access_type`
--
ALTER TABLE `backend_lane_access_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_online_config`
--
ALTER TABLE `backend_online_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_parking_lots`
--
ALTER TABLE `backend_parking_lots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_parking_session`
--
ALTER TABLE `backend_parking_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backend_parking_session_events`
--
ALTER TABLE `backend_parking_session_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_sync_event_log`
--
ALTER TABLE `backend_sync_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
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
-- Constraints for table `backend_consumer_identification_config`
--
ALTER TABLE `backend_consumer_identification_config`
  ADD CONSTRAINT `backend_consumer_ide_access_type_id_13490db1_fk_backend_a` FOREIGN KEY (`access_type_id`) REFERENCES `backend_access_types` (`id`),
  ADD CONSTRAINT `backend_consumer_ide_cloud_consumer_id_5f8de787_fk_backend_c` FOREIGN KEY (`cloud_consumer_id`) REFERENCES `backend_consumers` (`cloud_consumer_id`);

--
-- Constraints for table `backend_hardware_devices`
--
ALTER TABLE `backend_hardware_devices`
  ADD CONSTRAINT `backend_hardware_dev_controller_id_2f11eaa8_fk_backend_c` FOREIGN KEY (`controller_id`) REFERENCES `backend_controllers` (`cloud_controller_id`),
  ADD CONSTRAINT `backend_hardware_devices_lane_id_7bf01a62_fk_backend_lanes_id` FOREIGN KEY (`lane_id`) REFERENCES `backend_lanes` (`id`);

--
-- Constraints for table `backend_lane_access_type`
--
ALTER TABLE `backend_lane_access_type`
  ADD CONSTRAINT `backend_lane_access__access_type_master_i_6d3e448d_fk_backend_a` FOREIGN KEY (`access_type_master_id_id`) REFERENCES `backend_access_types` (`id`),
  ADD CONSTRAINT `backend_lane_access_type_lane_id_id_e9e0496c_fk_backend_lanes_id` FOREIGN KEY (`lane_id_id`) REFERENCES `backend_lanes` (`id`);

--
-- Constraints for table `backend_pass_access_time_slots`
--
ALTER TABLE `backend_pass_access_time_slots`
  ADD CONSTRAINT `backend_pass_access__cloud_pass_master_ac_2acdd729_fk_backend_p` FOREIGN KEY (`cloud_pass_master_access_id`) REFERENCES `backend_pass_master_access` (`cloud_pass_master_access_id`);

--
-- Constraints for table `backend_pass_allocation`
--
ALTER TABLE `backend_pass_allocation`
  ADD CONSTRAINT `backend_pass_allocat_cloud_consumer_id_51da8ef7_fk_backend_c` FOREIGN KEY (`cloud_consumer_id`) REFERENCES `backend_consumers` (`cloud_consumer_id`),
  ADD CONSTRAINT `backend_pass_allocat_cloud_pass_master_id_d463636a_fk_backend_p` FOREIGN KEY (`cloud_pass_master_id`) REFERENCES `backend_pass_master` (`cloud_pass_master_id`);

--
-- Constraints for table `backend_pass_master_access`
--
ALTER TABLE `backend_pass_master_access`
  ADD CONSTRAINT `backend_pass_master__cloud_pass_master_id_f30fe8e6_fk_backend_p` FOREIGN KEY (`cloud_pass_master_id`) REFERENCES `backend_pass_master` (`cloud_pass_master_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
