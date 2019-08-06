-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 10:40 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boilereight`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '[]', '[]', 'http://localhost/carsler-2/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-05 10:24:02', '2019-08-05 10:24:02'),
(2, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null}', '{\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2019-08-05 16:24:02\",\"last_login_ip\":\"::1\"}', 'http://localhost/carsler-2/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-05 10:24:03', '2019-08-05 10:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `head` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transmission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `door` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cylinder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drive_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_fuel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `user_id`, `head`, `body_type`, `condition`, `make`, `model`, `edition`, `transmission`, `mileage`, `out_color`, `in_color`, `door`, `Cylinder`, `drive_type`, `fuel`, `alt_fuel`, `price`, `active`, `description`, `state`, `city`, `thana`, `road`, `created_at`, `updated_at`) VALUES
(1, 3, '2019 Toyota Highlander Benz', 'suv', 'used', '4', '37', 'rewt', 'Automanual', '40000', 'Blue', 'Gold', '4', '4', 'fwd', 'petrol', 'diesel', 4444, 1, 'wtt rtt  rtt rtgret  rt trtrtt sbdfht vagevre scfbfde', NULL, NULL, NULL, NULL, '2019-06-02 05:11:56', '2019-08-04 01:19:08'),
(2, 3, '2019 Toyota Highlander lambo', 'suv', 'used', '4', '37', 'rewt', 'Automanual', '40000', 'Blue', 'Gold', '4', '4', 'fwd', 'petrol', 'diesel', 4444, 1, 'wtt rtt  rtt rtgret  rt trtrtt hs h dfhth he er eretge ', NULL, NULL, NULL, NULL, '2019-06-02 05:12:40', '2019-08-04 00:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `car_attributes`
--

CREATE TABLE `car_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL,
  `ac_front` tinyint(1) NOT NULL DEFAULT '0',
  `ac_rear` tinyint(1) NOT NULL DEFAULT '0',
  `cruise_control` tinyint(1) NOT NULL DEFAULT '0',
  `navigation` tinyint(1) NOT NULL DEFAULT '0',
  `power_locks` tinyint(1) NOT NULL DEFAULT '0',
  `power_steering` tinyint(1) NOT NULL DEFAULT '0',
  `keyless_entry` tinyint(1) NOT NULL DEFAULT '0',
  `integrated_phone` tinyint(1) NOT NULL DEFAULT '0',
  `bucket_seats` tinyint(1) NOT NULL DEFAULT '0',
  `leather_interior` tinyint(1) NOT NULL DEFAULT '0',
  `memory_seat` tinyint(1) NOT NULL DEFAULT '0',
  `power_seat` tinyint(1) NOT NULL DEFAULT '0',
  `airbag_driver` tinyint(1) NOT NULL DEFAULT '0',
  `airbag_passenger` tinyint(1) NOT NULL DEFAULT '0',
  `airbag_side` tinyint(1) NOT NULL DEFAULT '0',
  `antilock_brakes` tinyint(1) NOT NULL DEFAULT '0',
  `fog_light` tinyint(1) NOT NULL DEFAULT '0',
  `power_window` tinyint(1) NOT NULL DEFAULT '0',
  `r_w_defroster` tinyint(1) NOT NULL DEFAULT '0',
  `r_w_wiper` tinyint(1) NOT NULL DEFAULT '0',
  `tinted_glass` tinyint(1) NOT NULL DEFAULT '0',
  `am_fm` tinyint(1) NOT NULL DEFAULT '0',
  `cassette_player` tinyint(1) NOT NULL DEFAULT '0',
  `cd_single` tinyint(1) NOT NULL DEFAULT '0',
  `cd_multi` tinyint(1) NOT NULL DEFAULT '0',
  `premium_sound` tinyint(1) NOT NULL DEFAULT '0',
  `dvd` tinyint(1) NOT NULL DEFAULT '0',
  `alloy_wheel` tinyint(1) NOT NULL DEFAULT '0',
  `moon_sunroof` tinyint(1) NOT NULL DEFAULT '0',
  `third_row_seat` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_attributes`
--

INSERT INTO `car_attributes` (`id`, `car_id`, `ac_front`, `ac_rear`, `cruise_control`, `navigation`, `power_locks`, `power_steering`, `keyless_entry`, `integrated_phone`, `bucket_seats`, `leather_interior`, `memory_seat`, `power_seat`, `airbag_driver`, `airbag_passenger`, `airbag_side`, `antilock_brakes`, `fog_light`, `power_window`, `r_w_defroster`, `r_w_wiper`, `tinted_glass`, `am_fm`, `cassette_player`, `cd_single`, `cd_multi`, `premium_sound`, `dvd`, `alloy_wheel`, `moon_sunroof`, `third_row_seat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, '2019-06-02 05:11:56', '2019-06-02 05:11:56'),
(2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, '2019-06-02 05:12:40', '2019-06-02 05:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogura', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barishal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chattogram', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachhari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Moulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jashore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`) VALUES
(1, 'Barishal', 'বরিশাল'),
(2, 'Chattogram', 'চট্টগ্রাম'),
(3, 'Dhaka', 'ঢাকা'),
(4, 'Khulna', 'খুলনা'),
(5, 'Rajshahi', 'রাজশাহী'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Sylhet', 'সিলেট'),
(8, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `id` int(10) NOT NULL,
  `code` varchar(55) NOT NULL DEFAULT '',
  `title` varchar(55) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`id`, `code`, `title`) VALUES
(1, 'ACURA', 'Acura'),
(2, 'ALFA', 'Alfa Romeo'),
(3, 'AMC', 'AMC'),
(4, 'ASTON', 'Aston Martin'),
(5, 'AUDI', 'Audi'),
(6, 'AVANTI', 'Avanti'),
(7, 'BENTL', 'Bentley'),
(8, 'BMW', 'BMW'),
(9, 'BUICK', 'Buick'),
(10, 'CAD', 'Cadillac'),
(11, 'CHEV', 'Chevrolet'),
(12, 'CHRY', 'Chrysler'),
(13, 'DAEW', 'Daewoo'),
(14, 'DAIHAT', 'Daihatsu'),
(15, 'DATSUN', 'Datsun'),
(16, 'DELOREAN', 'DeLorean'),
(17, 'DODGE', 'Dodge'),
(18, 'EAGLE', 'Eagle'),
(19, 'FER', 'Ferrari'),
(20, 'FIAT', 'FIAT'),
(21, 'FISK', 'Fisker'),
(22, 'FORD', 'Ford'),
(23, 'FREIGHT', 'Freightliner'),
(24, 'GEO', 'Geo'),
(25, 'GMC', 'GMC'),
(26, 'HONDA', 'Honda'),
(27, 'AMGEN', 'HUMMER'),
(28, 'HYUND', 'Hyundai'),
(29, 'INFIN', 'Infiniti'),
(30, 'ISU', 'Isuzu'),
(31, 'JAG', 'Jaguar'),
(32, 'JEEP', 'Jeep'),
(33, 'KIA', 'Kia'),
(34, 'LAM', 'Lamborghini'),
(35, 'LAN', 'Lancia'),
(36, 'ROV', 'Land Rover'),
(37, 'LEXUS', 'Lexus'),
(38, 'LINC', 'Lincoln'),
(39, 'LOTUS', 'Lotus'),
(40, 'MAS', 'Maserati'),
(41, 'MAYBACH', 'Maybach'),
(42, 'MAZDA', 'Mazda'),
(43, 'MCLAREN', 'McLaren'),
(44, 'MB', 'Mercedes-Benz'),
(45, 'MERC', 'Mercury'),
(46, 'MERKUR', 'Merkur'),
(47, 'MINI', 'MINI'),
(48, 'MIT', 'Mitsubishi'),
(49, 'NISSAN', 'Nissan'),
(50, 'OLDS', 'Oldsmobile'),
(51, 'PEUG', 'Peugeot'),
(52, 'PLYM', 'Plymouth'),
(53, 'PONT', 'Pontiac'),
(54, 'POR', 'Porsche'),
(55, 'RAM', 'RAM'),
(56, 'REN', 'Renault'),
(57, 'RR', 'Rolls-Royce'),
(58, 'SAAB', 'Saab'),
(59, 'SATURN', 'Saturn'),
(60, 'SCION', 'Scion'),
(61, 'SMART', 'smart'),
(62, 'SRT', 'SRT'),
(63, 'STERL', 'Sterling'),
(64, 'SUB', 'Subaru'),
(65, 'SUZUKI', 'Suzuki'),
(66, 'TESLA', 'Tesla'),
(67, 'TOYOTA', 'Toyota'),
(68, 'TRI', 'Triumph'),
(69, 'VOLKS', 'Volkswagen'),
(70, 'VOLVO', 'Volvo'),
(71, 'YUGO', 'Yugo');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_03_144628_create_permission_tables', 1),
(4, '2017_09_11_174816_create_social_accounts_table', 1),
(5, '2017_09_26_140332_create_cache_table', 1),
(6, '2017_09_26_140528_create_sessions_table', 1),
(7, '2017_09_26_140609_create_jobs_table', 1),
(8, '2018_04_08_033256_create_password_histories_table', 1),
(9, '2019_03_26_000344_create_audits_table', 1),
(10, '2019_05_31_235313_create_cars_table', 1),
(11, '2019_06_01_002633_create_car_attributes_table', 1),
(12, '2019_08_05_153600_create_photos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) NOT NULL,
  `make_id` int(10) NOT NULL DEFAULT '0',
  `code` varchar(125) NOT NULL DEFAULT '',
  `title` varchar(125) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `make_id`, `code`, `title`) VALUES
(1, 1, 'CL_MODELS', 'CL Models (4)'),
(2, 1, '2.2CL', ' - 2.2CL'),
(3, 1, '2.3CL', ' - 2.3CL'),
(4, 1, '3.0CL', ' - 3.0CL'),
(5, 1, '3.2CL', ' - 3.2CL'),
(6, 1, 'ILX', 'ILX'),
(7, 1, 'INTEG', 'Integra'),
(8, 1, 'LEGEND', 'Legend'),
(9, 1, 'MDX', 'MDX'),
(10, 1, 'NSX', 'NSX'),
(11, 1, 'RDX', 'RDX'),
(12, 1, 'RL_MODELS', 'RL Models (2)'),
(13, 1, '3.5RL', ' - 3.5 RL'),
(14, 1, 'RL', ' - RL'),
(15, 1, 'RSX', 'RSX'),
(16, 1, 'SLX', 'SLX'),
(17, 1, 'TL_MODELS', 'TL Models (3)'),
(18, 1, '2.5TL', ' - 2.5TL'),
(19, 1, '3.2TL', ' - 3.2TL'),
(20, 1, 'TL', ' - TL'),
(21, 1, 'TSX', 'TSX'),
(22, 1, 'VIGOR', 'Vigor'),
(23, 1, 'ZDX', 'ZDX'),
(24, 1, 'ACUOTH', 'Other Acura Models'),
(25, 2, 'ALFA164', '164'),
(26, 2, 'ALFA8C', '8C Competizione'),
(27, 2, 'ALFAGT', 'GTV-6'),
(28, 2, 'MIL', 'Milano'),
(29, 2, 'SPID', 'Spider'),
(30, 2, 'ALFAOTH', 'Other Alfa Romeo Models'),
(31, 3, 'AMCALLIAN', 'Alliance'),
(32, 3, 'CON', 'Concord'),
(33, 3, 'EAGLE', 'Eagle'),
(34, 3, 'AMCENC', 'Encore'),
(35, 3, 'AMCSPIRIT', 'Spirit'),
(36, 3, 'AMCOTH', 'Other AMC Models'),
(37, 4, 'DB7', 'DB7'),
(38, 4, 'DB9', 'DB9'),
(39, 4, 'DBS', 'DBS'),
(40, 4, 'LAGONDA', 'Lagonda'),
(41, 4, 'RAPIDE', 'Rapide'),
(42, 4, 'V12VANT', 'V12 Vantage'),
(43, 4, 'VANTAGE', 'V8 Vantage'),
(44, 4, 'VANQUISH', 'Vanquish'),
(45, 4, 'VIRAGE', 'Virage'),
(46, 4, 'UNAVAILAST', 'Other Aston Martin Models'),
(47, 5, 'AUDI100', '100'),
(48, 5, 'AUDI200', '200'),
(49, 5, '4000', '4000'),
(50, 5, '5000', '5000'),
(51, 5, '80', '80'),
(52, 5, '90', '90'),
(53, 5, 'A3', 'A3'),
(54, 5, 'A4', 'A4'),
(55, 5, 'A5', 'A5'),
(56, 5, 'A6', 'A6'),
(57, 5, 'A7', 'A7'),
(58, 5, 'A8', 'A8'),
(59, 5, 'ALLRDQUA', 'allroad'),
(60, 5, 'AUDICABRI', 'Cabriolet'),
(61, 5, 'AUDICOUPE', 'Coupe'),
(62, 5, 'Q3', 'Q3'),
(63, 5, 'Q5', 'Q5'),
(64, 5, 'Q7', 'Q7'),
(65, 5, 'QUATTR', 'Quattro'),
(66, 5, 'R8', 'R8'),
(67, 5, 'RS4', 'RS 4'),
(68, 5, 'RS5', 'RS 5'),
(69, 5, 'RS6', 'RS 6'),
(70, 5, 'S4', 'S4'),
(71, 5, 'S5', 'S5'),
(72, 5, 'S6', 'S6'),
(73, 5, 'S7', 'S7'),
(74, 5, 'S8', 'S8'),
(75, 5, 'TT', 'TT'),
(76, 5, 'TTRS', 'TT RS'),
(77, 5, 'TTS', 'TTS'),
(78, 5, 'V8', 'V8 Quattro'),
(79, 5, 'AUDOTH', 'Other Audi Models'),
(80, 6, 'CONVERT', 'Convertible'),
(81, 6, 'COUPEAVANT', 'Coupe'),
(82, 6, 'SEDAN', 'Sedan'),
(83, 6, 'UNAVAILAVA', 'Other Avanti Models'),
(84, 7, 'ARNAGE', 'Arnage'),
(85, 7, 'AZURE', 'Azure'),
(86, 7, 'BROOKLANDS', 'Brooklands'),
(87, 7, 'BENCONT', 'Continental'),
(88, 7, 'CORNICHE', 'Corniche'),
(89, 7, 'BENEIGHT', 'Eight'),
(90, 7, 'BENMUL', 'Mulsanne'),
(91, 7, 'BENTURBO', 'Turbo R'),
(92, 7, 'UNAVAILBEN', 'Other Bentley Models'),
(93, 8, '1_SERIES', '1 Series (3)'),
(94, 8, '128I', ' - 128i'),
(95, 8, '135I', ' - 135i'),
(96, 8, '135IS', ' - 135is'),
(97, 8, '3_SERIES', '3 Series (29)'),
(98, 8, '318I', ' - 318i'),
(99, 8, '318IC', ' - 318iC'),
(100, 8, '318IS', ' - 318iS'),
(101, 8, '318TI', ' - 318ti'),
(102, 8, '320I', ' - 320i'),
(103, 8, '323CI', ' - 323ci'),
(104, 8, '323I', ' - 323i'),
(105, 8, '323IS', ' - 323is'),
(106, 8, '323IT', ' - 323iT'),
(107, 8, '325CI', ' - 325Ci'),
(108, 8, '325E', ' - 325e'),
(109, 8, '325ES', ' - 325es'),
(110, 8, '325I', ' - 325i'),
(111, 8, '325IS', ' - 325is'),
(112, 8, '325IX', ' - 325iX'),
(113, 8, '325XI', ' - 325xi'),
(114, 8, '328CI', ' - 328Ci'),
(115, 8, '328I', ' - 328i'),
(116, 8, '328IS', ' - 328iS'),
(117, 8, '328XI', ' - 328xi'),
(118, 8, '330CI', ' - 330Ci'),
(119, 8, '330I', ' - 330i'),
(120, 8, '330XI', ' - 330xi'),
(121, 8, '335D', ' - 335d'),
(122, 8, '335I', ' - 335i'),
(123, 8, '335IS', ' - 335is'),
(124, 8, '335XI', ' - 335xi'),
(125, 8, 'ACTIVE3', ' - ActiveHybrid 3'),
(126, 8, 'BMW325', ' - 325'),
(127, 8, '5_SERIES', '5 Series (19)'),
(128, 8, '524TD', ' - 524td'),
(129, 8, '525I', ' - 525i'),
(130, 8, '525XI', ' - 525xi'),
(131, 8, '528E', ' - 528e'),
(132, 8, '528I', ' - 528i'),
(133, 8, '528IT', ' - 528iT'),
(134, 8, '528XI', ' - 528xi'),
(135, 8, '530I', ' - 530i'),
(136, 8, '530IT', ' - 530iT'),
(137, 8, '530XI', ' - 530xi'),
(138, 8, '533I', ' - 533i'),
(139, 8, '535I', ' - 535i'),
(140, 8, '535IGT', ' - 535i Gran Turismo'),
(141, 8, '535XI', ' - 535xi'),
(142, 8, '540I', ' - 540i'),
(143, 8, '545I', ' - 545i'),
(144, 8, '550I', ' - 550i'),
(145, 8, '550IGT', ' - 550i Gran Turismo'),
(146, 8, 'ACTIVE5', ' - ActiveHybrid 5'),
(147, 8, '6_SERIES', '6 Series (8)'),
(148, 8, '633CSI', ' - 633CSi'),
(149, 8, '635CSI', ' - 635CSi'),
(150, 8, '640I', ' - 640i'),
(151, 8, '640IGC', ' - 640i Gran Coupe'),
(152, 8, '645CI', ' - 645Ci'),
(153, 8, '650I', ' - 650i'),
(154, 8, '650IGC', ' - 650i Gran Coupe'),
(155, 8, 'L6', ' - L6'),
(156, 8, '7_SERIES', '7 Series (15)'),
(157, 8, '733I', ' - 733i'),
(158, 8, '735I', ' - 735i'),
(159, 8, '735IL', ' - 735iL'),
(160, 8, '740I', ' - 740i'),
(161, 8, '740IL', ' - 740iL'),
(162, 8, '740LI', ' - 740Li'),
(163, 8, '745I', ' - 745i'),
(164, 8, '745LI', ' - 745Li'),
(165, 8, '750I', ' - 750i'),
(166, 8, '750IL', ' - 750iL'),
(167, 8, '750LI', ' - 750Li'),
(168, 8, '760I', ' - 760i'),
(169, 8, '760LI', ' - 760Li'),
(170, 8, 'ACTIVE7', ' - ActiveHybrid 7'),
(171, 8, 'ALPINAB7', ' - Alpina B7'),
(172, 8, '8_SERIES', '8 Series (4)'),
(173, 8, '840CI', ' - 840Ci'),
(174, 8, '850CI', ' - 850Ci'),
(175, 8, '850CSI', ' - 850CSi'),
(176, 8, '850I', ' - 850i'),
(177, 8, 'L_SERIES', 'L Series (1)'),
(178, 8, 'L7', ' - L7'),
(179, 8, 'M_SERIES', 'M Series (8)'),
(180, 8, '1SERIESM', ' - 1 Series M'),
(181, 8, 'BMWMCOUPE', ' - M Coupe'),
(182, 8, 'BMWROAD', ' - M Roadster'),
(183, 8, 'M3', ' - M3'),
(184, 8, 'M5', ' - M5'),
(185, 8, 'M6', ' - M6'),
(186, 8, 'X5M', ' - X5 M'),
(187, 8, 'X6M', ' - X6 M'),
(188, 8, 'X_SERIES', 'X Series (5)'),
(189, 8, 'ACTIVEX6', ' - ActiveHybrid X6'),
(190, 8, 'X1', ' - X1'),
(191, 8, 'X3', ' - X3'),
(192, 8, 'X5', ' - X5'),
(193, 8, 'X6', ' - X6'),
(194, 8, 'Z_SERIES', 'Z Series (3)'),
(195, 8, 'Z3', ' - Z3'),
(196, 8, 'Z4', ' - Z4'),
(197, 8, 'Z8', ' - Z8'),
(198, 8, 'BMWOTH', 'Other BMW Models'),
(199, 9, 'CENT', 'Century'),
(200, 9, 'ELEC', 'Electra'),
(201, 9, 'ENCLAVE', 'Enclave'),
(202, 9, 'BUIENC', 'Encore'),
(203, 9, 'LACROSSE', 'LaCrosse'),
(204, 9, 'LESA', 'Le Sabre'),
(205, 9, 'LUCERNE', 'Lucerne'),
(206, 9, 'PARK', 'Park Avenue'),
(207, 9, 'RAINIER', 'Rainier'),
(208, 9, 'REATTA', 'Reatta'),
(209, 9, 'REG', 'Regal'),
(210, 9, 'RENDEZVOUS', 'Rendezvous'),
(211, 9, 'RIV', 'Riviera'),
(212, 9, 'BUICKROAD', 'Roadmaster'),
(213, 9, 'SKYH', 'Skyhawk'),
(214, 9, 'SKYL', 'Skylark'),
(215, 9, 'SOMER', 'Somerset'),
(216, 9, 'TERRAZA', 'Terraza'),
(217, 9, 'BUVERANO', 'Verano'),
(218, 9, 'BUOTH', 'Other Buick Models'),
(219, 10, 'ALLANT', 'Allante'),
(220, 10, 'ATS', 'ATS'),
(221, 10, 'BROUGH', 'Brougham'),
(222, 10, 'CATERA', 'Catera'),
(223, 10, 'CIMA', 'Cimarron'),
(224, 10, 'CTS', 'CTS'),
(225, 10, 'DEV', 'De Ville'),
(226, 10, 'DTS', 'DTS'),
(227, 10, 'ELDO', 'Eldorado'),
(228, 10, 'ESCALA', 'Escalade'),
(229, 10, 'ESCALAESV', 'Escalade ESV'),
(230, 10, 'EXT', 'Escalade EXT'),
(231, 10, 'FLEE', 'Fleetwood'),
(232, 10, 'SEV', 'Seville'),
(233, 10, 'SRX', 'SRX'),
(234, 10, 'STS', 'STS'),
(235, 10, 'XLR', 'XLR'),
(236, 10, 'XTS', 'XTS'),
(237, 10, 'CADOTH', 'Other Cadillac Models'),
(238, 11, 'ASTRO', 'Astro'),
(239, 11, 'AVALNCH', 'Avalanche'),
(240, 11, 'AVEO', 'Aveo'),
(241, 11, 'AVEO5', 'Aveo5'),
(242, 11, 'BERETT', 'Beretta'),
(243, 11, 'BLAZER', 'Blazer'),
(244, 11, 'CAM', 'Camaro'),
(245, 11, 'CAP', 'Caprice'),
(246, 11, 'CHECAPS', 'Captiva Sport'),
(247, 11, 'CAV', 'Cavalier'),
(248, 11, 'CELE', 'Celebrity'),
(249, 11, 'CHEVETTE', 'Chevette'),
(250, 11, 'CITATION', 'Citation'),
(251, 11, 'COBALT', 'Cobalt'),
(252, 11, 'COLORADO', 'Colorado'),
(253, 11, 'CORSI', 'Corsica'),
(254, 11, 'CORV', 'Corvette'),
(255, 11, 'CRUZE', 'Cruze'),
(256, 11, 'ELCAM', 'El Camino'),
(257, 11, 'EQUINOX', 'Equinox'),
(258, 11, 'G15EXP', 'Express Van'),
(259, 11, 'G10', 'G Van'),
(260, 11, 'HHR', 'HHR'),
(261, 11, 'CHEVIMP', 'Impala'),
(262, 11, 'KODC4500', 'Kodiak C4500'),
(263, 11, 'LUMINA', 'Lumina'),
(264, 11, 'LAPV', 'Lumina APV'),
(265, 11, 'LUV', 'LUV'),
(266, 11, 'MALI', 'Malibu'),
(267, 11, 'CHVMETR', 'Metro'),
(268, 11, 'CHEVMONT', 'Monte Carlo'),
(269, 11, 'NOVA', 'Nova'),
(270, 11, 'CHEVPRIZM', 'Prizm'),
(271, 11, 'CHVST', 'S10 Blazer'),
(272, 11, 'S10PICKUP', 'S10 Pickup'),
(273, 11, 'CHEV150', 'Silverado and other C/K1500'),
(274, 11, 'CHEVC25', 'Silverado and other C/K2500'),
(275, 11, 'CH3500PU', 'Silverado and other C/K3500'),
(276, 11, 'SONIC', 'Sonic'),
(277, 11, 'SPARK', 'Spark'),
(278, 11, 'CHEVSPEC', 'Spectrum'),
(279, 11, 'CHSPRINT', 'Sprint'),
(280, 11, 'SSR', 'SSR'),
(281, 11, 'CHEVSUB', 'Suburban'),
(282, 11, 'TAHOE', 'Tahoe'),
(283, 11, 'TRACKE', 'Tracker'),
(284, 11, 'TRAILBLZ', 'TrailBlazer'),
(285, 11, 'TRAILBZEXT', 'TrailBlazer EXT'),
(286, 11, 'TRAVERSE', 'Traverse'),
(287, 11, 'UPLANDER', 'Uplander'),
(288, 11, 'VENTUR', 'Venture'),
(289, 11, 'VOLT', 'Volt'),
(290, 11, 'CHEOTH', 'Other Chevrolet Models'),
(291, 12, 'CHRYS200', '200'),
(292, 12, '300', '300'),
(293, 12, 'CHRY300', '300M'),
(294, 12, 'ASPEN', 'Aspen'),
(295, 12, 'CARAVAN', 'Caravan'),
(296, 12, 'CIRRUS', 'Cirrus'),
(297, 12, 'CONC', 'Concorde'),
(298, 12, 'CHRYCONQ', 'Conquest'),
(299, 12, 'CORDOBA', 'Cordoba'),
(300, 12, 'CROSSFIRE', 'Crossfire'),
(301, 12, 'ECLASS', 'E Class'),
(302, 12, 'FIFTH', 'Fifth Avenue'),
(303, 12, 'CHRYGRANDV', 'Grand Voyager'),
(304, 12, 'IMPE', 'Imperial'),
(305, 12, 'INTREPID', 'Intrepid'),
(306, 12, 'CHRYLAS', 'Laser'),
(307, 12, 'LEBA', 'LeBaron'),
(308, 12, 'LHS', 'LHS'),
(309, 12, 'CHRYNEON', 'Neon'),
(310, 12, 'NY', 'New Yorker'),
(311, 12, 'NEWPORT', 'Newport'),
(312, 12, 'PACIFICA', 'Pacifica'),
(313, 12, 'CHPROWLE', 'Prowler'),
(314, 12, 'PTCRUIS', 'PT Cruiser'),
(315, 12, 'CHRYSEB', 'Sebring'),
(316, 12, 'CHRYTC', 'TC by Maserati'),
(317, 12, 'TANDC', 'Town & Country'),
(318, 12, 'VOYAGER', 'Voyager'),
(319, 12, 'CHOTH', 'Other Chrysler Models'),
(320, 13, 'LANOS', 'Lanos'),
(321, 13, 'LEGANZA', 'Leganza'),
(322, 13, 'NUBIRA', 'Nubira'),
(323, 13, 'DAEOTH', 'Other Daewoo Models'),
(324, 14, 'CHAR', 'Charade'),
(325, 14, 'ROCKY', 'Rocky'),
(326, 14, 'DAIHOTH', 'Other Daihatsu Models'),
(327, 15, 'DAT200SX', '200SX'),
(328, 15, 'DAT210', '210'),
(329, 15, '280Z', '280ZX'),
(330, 15, '300ZX', '300ZX'),
(331, 15, '310', '310'),
(332, 15, '510', '510'),
(333, 15, '720', '720'),
(334, 15, '810', '810'),
(335, 15, 'DATMAX', 'Maxima'),
(336, 15, 'DATPU', 'Pickup'),
(337, 15, 'PUL', 'Pulsar'),
(338, 15, 'DATSENT', 'Sentra'),
(339, 15, 'STAN', 'Stanza'),
(340, 15, 'DATOTH', 'Other Datsun Models'),
(341, 16, 'DMC12', 'DMC-12'),
(342, 17, '400', '400'),
(343, 17, 'DOD600', '600'),
(344, 17, 'ARI', 'Aries'),
(345, 17, 'AVENGR', 'Avenger'),
(346, 17, 'CALIBER', 'Caliber'),
(347, 17, 'DODCARA', 'Caravan'),
(348, 17, 'CHALLENGER', 'Challenger'),
(349, 17, 'DODCHAR', 'Charger'),
(350, 17, 'DODCOLT', 'Colt'),
(351, 17, 'DODCONQ', 'Conquest'),
(352, 17, 'DODDW', 'D/W Truck'),
(353, 17, 'DAKOTA', 'Dakota'),
(354, 17, 'DODDART', 'Dart'),
(355, 17, 'DAY', 'Daytona'),
(356, 17, 'DIPLOMA', 'Diplomat'),
(357, 17, 'DURANG', 'Durango'),
(358, 17, 'DODDYNA', 'Dynasty'),
(359, 17, 'GRANDCARAV', 'Grand Caravan'),
(360, 17, 'INTRE', 'Intrepid'),
(361, 17, 'JOURNEY', 'Journey'),
(362, 17, 'LANCERDODG', 'Lancer'),
(363, 17, 'MAGNUM', 'Magnum'),
(364, 17, 'MIRADA', 'Mirada'),
(365, 17, 'MONACO', 'Monaco'),
(366, 17, 'DODNEON', 'Neon'),
(367, 17, 'NITRO', 'Nitro'),
(368, 17, 'OMNI', 'Omni'),
(369, 17, 'RAIDER', 'Raider'),
(370, 17, 'RAM1504WD', 'Ram 1500 Truck'),
(371, 17, 'RAM25002WD', 'Ram 2500 Truck'),
(372, 17, 'RAM3502WD', 'Ram 3500 Truck'),
(373, 17, 'RAM4500', 'Ram 4500 Truck'),
(374, 17, 'DODD50', 'Ram 50 Truck'),
(375, 17, 'CV', 'RAM C/V'),
(376, 17, 'RAMSRT10', 'Ram SRT-10'),
(377, 17, 'RAMVANV8', 'Ram Van'),
(378, 17, 'RAMWAGON', 'Ram Wagon'),
(379, 17, 'RAMCGR', 'Ramcharger'),
(380, 17, 'RAMPAGE', 'Rampage'),
(381, 17, 'DODSHAD', 'Shadow'),
(382, 17, 'DODSPIR', 'Spirit'),
(383, 17, 'SPRINTER', 'Sprinter'),
(384, 17, 'SRT4', 'SRT-4'),
(385, 17, 'STREGIS', 'St. Regis'),
(386, 17, 'STEAL', 'Stealth'),
(387, 17, 'STRATU', 'Stratus'),
(388, 17, 'VIPER', 'Viper'),
(389, 17, 'DOOTH', 'Other Dodge Models'),
(390, 18, 'EAGLEMED', 'Medallion'),
(391, 18, 'EAGLEPREM', 'Premier'),
(392, 18, 'SUMMIT', 'Summit'),
(393, 18, 'TALON', 'Talon'),
(394, 18, 'VISION', 'Vision'),
(395, 18, 'EAGOTH', 'Other Eagle Models'),
(396, 19, '308GTB', '308 GTB Quattrovalvole'),
(397, 19, '308TBI', '308 GTBI'),
(398, 19, '308GTS', '308 GTS Quattrovalvole'),
(399, 19, '308TSI', '308 GTSI'),
(400, 19, '328GTB', '328 GTB'),
(401, 19, '328GTS', '328 GTS'),
(402, 19, '348GTB', '348 GTB'),
(403, 19, '348GTS', '348 GTS'),
(404, 19, '348SPI', '348 Spider'),
(405, 19, '348TB', '348 TB'),
(406, 19, '348TS', '348 TS'),
(407, 19, '360', '360'),
(408, 19, '456GT', '456 GT'),
(409, 19, '456MGT', '456M GT'),
(410, 19, '458ITALIA', '458 Italia'),
(411, 19, '512BBI', '512 BBi'),
(412, 19, '512M', '512M'),
(413, 19, '512TR', '512TR'),
(414, 19, '550M', '550 Maranello'),
(415, 19, '575M', '575M Maranello'),
(416, 19, '599GTB', '599 GTB Fiorano'),
(417, 19, '599GTO', '599 GTO'),
(418, 19, '612SCAGLIE', '612 Scaglietti'),
(419, 19, 'FERCALIF', 'California'),
(420, 19, 'ENZO', 'Enzo'),
(421, 19, 'F355', 'F355'),
(422, 19, 'F40', 'F40'),
(423, 19, 'F430', 'F430'),
(424, 19, 'F50', 'F50'),
(425, 19, 'FERFF', 'FF'),
(426, 19, 'MOND', 'Mondial'),
(427, 19, 'TEST', 'Testarossa'),
(428, 19, 'UNAVAILFER', 'Other Ferrari Models'),
(429, 20, '2000', '2000 Spider'),
(430, 20, 'FIAT500', '500'),
(431, 20, 'BERTON', 'Bertone X1/9'),
(432, 20, 'BRAVA', 'Brava'),
(433, 20, 'PININ', 'Pininfarina Spider'),
(434, 20, 'STRADA', 'Strada'),
(435, 20, 'FIATX19', 'X1/9'),
(436, 20, 'UNAVAILFIA', 'Other Fiat Models'),
(437, 21, 'KARMA', 'Karma'),
(438, 22, 'AERO', 'Aerostar'),
(439, 22, 'ASPIRE', 'Aspire'),
(440, 22, 'BRON', 'Bronco'),
(441, 22, 'B2', 'Bronco II'),
(442, 22, 'FOCMAX', 'C-MAX'),
(443, 22, 'FORDCLUB', 'Club Wagon'),
(444, 22, 'CONTOUR', 'Contour'),
(445, 22, 'COURIER', 'Courier'),
(446, 22, 'CROWNVIC', 'Crown Victoria'),
(447, 22, 'E150ECON', 'E-150 and Econoline 150'),
(448, 22, 'E250ECON', 'E-250 and Econoline 250'),
(449, 22, 'E350ECON', 'E-350 and Econoline 350'),
(450, 22, 'EDGE', 'Edge'),
(451, 22, 'ESCAPE', 'Escape'),
(452, 22, 'ESCO', 'Escort'),
(453, 22, 'EXCURSION', 'Excursion'),
(454, 22, 'EXP', 'EXP'),
(455, 22, 'EXPEDI', 'Expedition'),
(456, 22, 'EXPEDIEL', 'Expedition EL'),
(457, 22, 'EXPLOR', 'Explorer'),
(458, 22, 'SPORTTRAC', 'Explorer Sport Trac'),
(459, 22, 'F100', 'F100'),
(460, 22, 'F150PICKUP', 'F150'),
(461, 22, 'F250', 'F250'),
(462, 22, 'F350', 'F350'),
(463, 22, 'F450', 'F450'),
(464, 22, 'FAIRM', 'Fairmont'),
(465, 22, 'FESTIV', 'Festiva'),
(466, 22, 'FIESTA', 'Fiesta'),
(467, 22, 'FIVEHUNDRE', 'Five Hundred'),
(468, 22, 'FLEX', 'Flex'),
(469, 22, 'FOCUS', 'Focus'),
(470, 22, 'FREESTAR', 'Freestar'),
(471, 22, 'FREESTYLE', 'Freestyle'),
(472, 22, 'FUSION', 'Fusion'),
(473, 22, 'GRANADA', 'Granada'),
(474, 22, 'GT', 'GT'),
(475, 22, 'LTD', 'LTD'),
(476, 22, 'MUST', 'Mustang'),
(477, 22, 'PROBE', 'Probe'),
(478, 22, 'RANGER', 'Ranger'),
(479, 22, 'TAURUS', 'Taurus'),
(480, 22, 'TAURUSX', 'Taurus X'),
(481, 22, 'TEMPO', 'Tempo'),
(482, 22, 'TBIRD', 'Thunderbird'),
(483, 22, 'TRANSCONN', 'Transit Connect'),
(484, 22, 'WINDST', 'Windstar'),
(485, 22, 'FORDZX2', 'ZX2 Escort'),
(486, 22, 'FOOTH', 'Other Ford Models'),
(487, 23, 'FRESPRINT', 'Sprinter'),
(488, 24, 'GEOMETRO', 'Metro'),
(489, 24, 'GEOPRIZM', 'Prizm'),
(490, 24, 'SPECT', 'Spectrum'),
(491, 24, 'STORM', 'Storm'),
(492, 24, 'GEOTRACK', 'Tracker'),
(493, 24, 'GEOOTH', 'Other Geo Models'),
(494, 25, 'ACADIA', 'Acadia'),
(495, 25, 'CABALLERO', 'Caballero'),
(496, 25, 'CANYON', 'Canyon'),
(497, 25, 'ENVOY', 'Envoy'),
(498, 25, 'ENVOYXL', 'Envoy XL'),
(499, 25, 'ENVOYXUV', 'Envoy XUV'),
(500, 25, 'JIM', 'Jimmy'),
(501, 25, 'RALLYWAG', 'Rally Wagon'),
(502, 25, 'GMCS15', 'S15 Jimmy'),
(503, 25, 'S15', 'S15 Pickup'),
(504, 25, 'SAFARIGMC', 'Safari'),
(505, 25, 'GMCSAVANA', 'Savana'),
(506, 25, '15SIPU4WD', 'Sierra C/K1500'),
(507, 25, 'GMCC25PU', 'Sierra C/K2500'),
(508, 25, 'GMC3500PU', 'Sierra C/K3500'),
(509, 25, 'SONOMA', 'Sonoma'),
(510, 25, 'SUB', 'Suburban'),
(511, 25, 'GMCSYCLON', 'Syclone'),
(512, 25, 'TERRAIN', 'Terrain'),
(513, 25, 'TOPC4500', 'TopKick C4500'),
(514, 25, 'TYPH', 'Typhoon'),
(515, 25, 'GMCVANDUR', 'Vandura'),
(516, 25, 'YUKON', 'Yukon'),
(517, 25, 'YUKONXL', 'Yukon XL'),
(518, 25, 'GMCOTH', 'Other GMC Models'),
(519, 26, 'ACCORD', 'Accord'),
(520, 26, 'CIVIC', 'Civic'),
(521, 26, 'CRV', 'CR-V'),
(522, 26, 'CRZ', 'CR-Z'),
(523, 26, 'CRX', 'CRX'),
(524, 26, 'CROSSTOUR_MODELS', 'Crosstour and Accord Crosstour Models (2)'),
(525, 26, 'CROSSTOUR', ' - Accord Crosstour'),
(526, 26, 'HONCROSS', ' - Crosstour'),
(527, 26, 'HONDELSOL', 'Del Sol'),
(528, 26, 'ELEMENT', 'Element'),
(529, 26, 'FIT', 'Fit'),
(530, 26, 'INSIGHT', 'Insight'),
(531, 26, 'ODYSSEY', 'Odyssey'),
(532, 26, 'PASSPO', 'Passport'),
(533, 26, 'PILOT', 'Pilot'),
(534, 26, 'PRE', 'Prelude'),
(535, 26, 'RIDGELINE', 'Ridgeline'),
(536, 26, 'S2000', 'S2000'),
(537, 26, 'HONOTH', 'Other Honda Models'),
(538, 27, 'HUMMER', 'H1'),
(539, 27, 'H2', 'H2'),
(540, 27, 'H3', 'H3'),
(541, 27, 'H3T', 'H3T'),
(542, 27, 'AMGOTH', 'Other Hummer Models'),
(543, 28, 'ACCENT', 'Accent'),
(544, 28, 'AZERA', 'Azera'),
(545, 28, 'ELANTR', 'Elantra'),
(546, 28, 'HYUELANCPE', 'Elantra Coupe'),
(547, 28, 'ELANTOUR', 'Elantra Touring'),
(548, 28, 'ENTOURAGE', 'Entourage'),
(549, 28, 'EQUUS', 'Equus'),
(550, 28, 'HYUEXCEL', 'Excel'),
(551, 28, 'GENESIS', 'Genesis'),
(552, 28, 'GENESISCPE', 'Genesis Coupe'),
(553, 28, 'SANTAFE', 'Santa Fe'),
(554, 28, 'SCOUPE', 'Scoupe'),
(555, 28, 'SONATA', 'Sonata'),
(556, 28, 'TIBURO', 'Tiburon'),
(557, 28, 'TUCSON', 'Tucson'),
(558, 28, 'VELOSTER', 'Veloster'),
(559, 28, 'VERACRUZ', 'Veracruz'),
(560, 28, 'XG300', 'XG300'),
(561, 28, 'XG350', 'XG350'),
(562, 28, 'HYUOTH', 'Other Hyundai Models'),
(563, 29, 'EX_MODELS', 'EX Models (2)'),
(564, 29, 'EX35', ' - EX35'),
(565, 29, 'EX37', ' - EX37'),
(566, 29, 'FX_MODELS', 'FX Models (4)'),
(567, 29, 'FX35', ' - FX35'),
(568, 29, 'FX37', ' - FX37'),
(569, 29, 'FX45', ' - FX45'),
(570, 29, 'FX50', ' - FX50'),
(571, 29, 'G_MODELS', 'G Models (4)'),
(572, 29, 'G20', ' - G20'),
(573, 29, 'G25', ' - G25'),
(574, 29, 'G35', ' - G35'),
(575, 29, 'G37', ' - G37'),
(576, 29, 'I_MODELS', 'I Models (2)'),
(577, 29, 'I30', ' - I30'),
(578, 29, 'I35', ' - I35'),
(579, 29, 'J_MODELS', 'J Models (1)'),
(580, 29, 'J30', ' - J30'),
(581, 29, 'JX_MODELS', 'JX Models (1)'),
(582, 29, 'JX35', ' - JX35'),
(583, 29, 'M_MODELS', 'M Models (6)'),
(584, 29, 'M30', ' - M30'),
(585, 29, 'M35', ' - M35'),
(586, 29, 'M35HYBRID', ' - M35h'),
(587, 29, 'M37', ' - M37'),
(588, 29, 'M45', ' - M45'),
(589, 29, 'M56', ' - M56'),
(590, 29, 'Q_MODELS', 'Q Models (1)'),
(591, 29, 'Q45', ' - Q45'),
(592, 29, 'QX_MODELS', 'QX Models (2)'),
(593, 29, 'QX4', ' - QX4'),
(594, 29, 'QX56', ' - QX56'),
(595, 29, 'INFOTH', 'Other Infiniti Models'),
(596, 30, 'AMIGO', 'Amigo'),
(597, 30, 'ASCENDER', 'Ascender'),
(598, 30, 'AXIOM', 'Axiom'),
(599, 30, 'HOMBRE', 'Hombre'),
(600, 30, 'I280', 'i-280'),
(601, 30, 'I290', 'i-290'),
(602, 30, 'I350', 'i-350'),
(603, 30, 'I370', 'i-370'),
(604, 30, 'ISUMARK', 'I-Mark'),
(605, 30, 'ISUIMP', 'Impulse'),
(606, 30, 'OASIS', 'Oasis'),
(607, 30, 'ISUPU', 'Pickup'),
(608, 30, 'RODEO', 'Rodeo'),
(609, 30, 'STYLUS', 'Stylus'),
(610, 30, 'TROOP', 'Trooper'),
(611, 30, 'TRP2', 'Trooper II'),
(612, 30, 'VEHICROSS', 'VehiCROSS'),
(613, 30, 'ISUOTH', 'Other Isuzu Models'),
(614, 31, 'STYPE', 'S-Type'),
(615, 31, 'XTYPE', 'X-Type'),
(616, 31, 'XF', 'XF'),
(617, 31, 'XJ_SERIES', 'XJ Series (10)'),
(618, 31, 'JAGXJ12', ' - XJ12'),
(619, 31, 'JAGXJ6', ' - XJ6'),
(620, 31, 'JAGXJR', ' - XJR'),
(621, 31, 'JAGXJRS', ' - XJR-S'),
(622, 31, 'JAGXJS', ' - XJS'),
(623, 31, 'VANDEN', ' - XJ Vanden Plas'),
(624, 31, 'XJ', ' - XJ'),
(625, 31, 'XJ8', ' - XJ8'),
(626, 31, 'XJ8L', ' - XJ8 L'),
(627, 31, 'XJSPORT', ' - XJ Sport'),
(628, 31, 'XK_SERIES', 'XK Series (3)'),
(629, 31, 'JAGXK8', ' - XK8'),
(630, 31, 'XK', ' - XK'),
(631, 31, 'XKR', ' - XKR'),
(632, 31, 'JAGOTH', 'Other Jaguar Models'),
(633, 32, 'CHER', 'Cherokee'),
(634, 32, 'JEEPCJ', 'CJ'),
(635, 32, 'COMANC', 'Comanche'),
(636, 32, 'COMMANDER', 'Commander'),
(637, 32, 'COMPASS', 'Compass'),
(638, 32, 'JEEPGRAND', 'Grand Cherokee'),
(639, 32, 'GRWAG', 'Grand Wagoneer'),
(640, 32, 'LIBERTY', 'Liberty'),
(641, 32, 'PATRIOT', 'Patriot'),
(642, 32, 'JEEPPU', 'Pickup'),
(643, 32, 'SCRAMBLE', 'Scrambler'),
(644, 32, 'WAGONE', 'Wagoneer'),
(645, 32, 'WRANGLER', 'Wrangler'),
(646, 32, 'JEOTH', 'Other Jeep Models'),
(647, 33, 'AMANTI', 'Amanti'),
(648, 33, 'BORREGO', 'Borrego'),
(649, 33, 'FORTE', 'Forte'),
(650, 33, 'FORTEKOUP', 'Forte Koup'),
(651, 33, 'OPTIMA', 'Optima'),
(652, 33, 'RIO', 'Rio'),
(653, 33, 'RIO5', 'Rio5'),
(654, 33, 'RONDO', 'Rondo'),
(655, 33, 'SEDONA', 'Sedona'),
(656, 33, 'SEPHIA', 'Sephia'),
(657, 33, 'SORENTO', 'Sorento'),
(658, 33, 'SOUL', 'Soul'),
(659, 33, 'SPECTRA', 'Spectra'),
(660, 33, 'SPECTRA5', 'Spectra5'),
(661, 33, 'SPORTA', 'Sportage'),
(662, 33, 'KIAOTH', 'Other Kia Models'),
(663, 34, 'AVENT', 'Aventador'),
(664, 34, 'COUNT', 'Countach'),
(665, 34, 'DIABLO', 'Diablo'),
(666, 34, 'GALLARDO', 'Gallardo'),
(667, 34, 'JALPA', 'Jalpa'),
(668, 34, 'LM002', 'LM002'),
(669, 34, 'MURCIELAGO', 'Murcielago'),
(670, 34, 'UNAVAILLAM', 'Other Lamborghini Models'),
(671, 35, 'BETA', 'Beta'),
(672, 35, 'ZAGATO', 'Zagato'),
(673, 35, 'UNAVAILLAN', 'Other Lancia Models'),
(674, 36, 'DEFEND', 'Defender'),
(675, 36, 'DISCOV', 'Discovery'),
(676, 36, 'FRELNDR', 'Freelander'),
(677, 36, 'LR2', 'LR2'),
(678, 36, 'LR3', 'LR3'),
(679, 36, 'LR4', 'LR4'),
(680, 36, 'RANGE', 'Range Rover'),
(681, 36, 'EVOQUE', 'Range Rover Evoque'),
(682, 36, 'RANGESPORT', 'Range Rover Sport'),
(683, 36, 'ROVOTH', 'Other Land Rover Models'),
(684, 37, 'CT_MODELS', 'CT Models (1)'),
(685, 37, 'CT200H', ' - CT 200h'),
(686, 37, 'ES_MODELS', 'ES Models (5)'),
(687, 37, 'ES250', ' - ES 250'),
(688, 37, 'ES300', ' - ES 300'),
(689, 37, 'ES300H', ' - ES 300h'),
(690, 37, 'ES330', ' - ES 330'),
(691, 37, 'ES350', ' - ES 350'),
(692, 37, 'GS_MODELS', 'GS Models (6)'),
(693, 37, 'GS300', ' - GS 300'),
(694, 37, 'GS350', ' - GS 350'),
(695, 37, 'GS400', ' - GS 400'),
(696, 37, 'GS430', ' - GS 430'),
(697, 37, 'GS450H', ' - GS 450h'),
(698, 37, 'GS460', ' - GS 460'),
(699, 37, 'GX_MODELS', 'GX Models (2)'),
(700, 37, 'GX460', ' - GX 460'),
(701, 37, 'GX470', ' - GX 470'),
(702, 37, 'HS_MODELS', 'HS Models (1)'),
(703, 37, 'HS250H', ' - HS 250h'),
(704, 37, 'IS_MODELS', 'IS Models (6)'),
(705, 37, 'IS250', ' - IS 250'),
(706, 37, 'IS250C', ' - IS 250C'),
(707, 37, 'IS300', ' - IS 300'),
(708, 37, 'IS350', ' - IS 350'),
(709, 37, 'IS350C', ' - IS 350C'),
(710, 37, 'ISF', ' - IS F'),
(711, 37, 'LEXLFA', 'LFA'),
(712, 37, 'LS_MODELS', 'LS Models (4)'),
(713, 37, 'LS400', ' - LS 400'),
(714, 37, 'LS430', ' - LS 430'),
(715, 37, 'LS460', ' - LS 460'),
(716, 37, 'LS600H', ' - LS 600h'),
(717, 37, 'LX_MODELS', 'LX Models (3)'),
(718, 37, 'LX450', ' - LX 450'),
(719, 37, 'LX470', ' - LX 470'),
(720, 37, 'LX570', ' - LX 570'),
(721, 37, 'RX_MODELS', 'RX Models (5)'),
(722, 37, 'RX300', ' - RX 300'),
(723, 37, 'RX330', ' - RX 330'),
(724, 37, 'RX350', ' - RX 350'),
(725, 37, 'RX400H', ' - RX 400h'),
(726, 37, 'RX450H', ' - RX 450h'),
(727, 37, 'SC_MODELS', 'SC Models (3)'),
(728, 37, 'SC300', ' - SC 300'),
(729, 37, 'SC400', ' - SC 400'),
(730, 37, 'SC430', ' - SC 430'),
(731, 37, 'LEXOTH', 'Other Lexus Models'),
(732, 38, 'AVIATOR', 'Aviator'),
(733, 38, 'BLKWOOD', 'Blackwood'),
(734, 38, 'CONT', 'Continental'),
(735, 38, 'LSLINCOLN', 'LS'),
(736, 38, 'MARKLT', 'Mark LT'),
(737, 38, 'MARK6', 'Mark VI'),
(738, 38, 'MARK7', 'Mark VII'),
(739, 38, 'MARK8', 'Mark VIII'),
(740, 38, 'MKS', 'MKS'),
(741, 38, 'MKT', 'MKT'),
(742, 38, 'MKX', 'MKX'),
(743, 38, 'MKZ', 'MKZ'),
(744, 38, 'NAVIGA', 'Navigator'),
(745, 38, 'NAVIGAL', 'Navigator L'),
(746, 38, 'LINCTC', 'Town Car'),
(747, 38, 'ZEPHYR', 'Zephyr'),
(748, 38, 'LINOTH', 'Other Lincoln Models'),
(749, 39, 'ELAN', 'Elan'),
(750, 39, 'LOTELISE', 'Elise'),
(751, 39, 'ESPRIT', 'Esprit'),
(752, 39, 'EVORA', 'Evora'),
(753, 39, 'EXIGE', 'Exige'),
(754, 39, 'UNAVAILLOT', 'Other Lotus Models'),
(755, 40, '430', '430'),
(756, 40, 'BITRBO', 'Biturbo'),
(757, 40, 'COUPEMAS', 'Coupe'),
(758, 40, 'GRANSPORT', 'GranSport'),
(759, 40, 'GRANTURISM', 'GranTurismo'),
(760, 40, 'QP', 'Quattroporte'),
(761, 40, 'SPYDER', 'Spyder'),
(762, 40, 'UNAVAILMAS', 'Other Maserati Models'),
(763, 41, '57MAYBACH', '57'),
(764, 41, '62MAYBACH', '62'),
(765, 41, 'UNAVAILMAY', 'Other Maybach Models'),
(766, 42, 'MAZDA323', '323'),
(767, 42, 'MAZDA626', '626'),
(768, 42, '929', '929'),
(769, 42, 'B-SERIES', 'B-Series Pickup'),
(770, 42, 'CX-5', 'CX-5'),
(771, 42, 'CX-7', 'CX-7'),
(772, 42, 'CX-9', 'CX-9'),
(773, 42, 'GLC', 'GLC'),
(774, 42, 'MAZDA2', 'MAZDA2'),
(775, 42, 'MAZDA3', 'MAZDA3'),
(776, 42, 'MAZDA5', 'MAZDA5'),
(777, 42, 'MAZDA6', 'MAZDA6'),
(778, 42, 'MAZDASPD3', 'MAZDASPEED3'),
(779, 42, 'MAZDASPD6', 'MAZDASPEED6'),
(780, 42, 'MIATA', 'Miata MX5'),
(781, 42, 'MILL', 'Millenia'),
(782, 42, 'MPV', 'MPV'),
(783, 42, 'MX3', 'MX3'),
(784, 42, 'MX6', 'MX6'),
(785, 42, 'NAVAJO', 'Navajo'),
(786, 42, 'PROTE', 'Protege'),
(787, 42, 'PROTE5', 'Protege5'),
(788, 42, 'RX7', 'RX-7'),
(789, 42, 'RX8', 'RX-8'),
(790, 42, 'TRIBUTE', 'Tribute'),
(791, 42, 'MAZOTH', 'Other Mazda Models'),
(792, 43, 'MP4', 'MP4-12C'),
(793, 44, '190_CLASS', '190 Class (2)'),
(794, 44, '190D', ' - 190D'),
(795, 44, '190E', ' - 190E'),
(796, 44, '240_CLASS', '240 Class (1)'),
(797, 44, '240D', ' - 240D'),
(798, 44, '300_CLASS_E_CLASS', '300 Class / E Class (6)'),
(799, 44, '300CD', ' - 300CD'),
(800, 44, '300CE', ' - 300CE'),
(801, 44, '300D', ' - 300D'),
(802, 44, '300E', ' - 300E'),
(803, 44, '300TD', ' - 300TD'),
(804, 44, '300TE', ' - 300TE'),
(805, 44, 'C_CLASS', 'C Class (13)'),
(806, 44, 'C220', ' - C220'),
(807, 44, 'C230', ' - C230'),
(808, 44, 'C240', ' - C240'),
(809, 44, 'C250', ' - C250'),
(810, 44, 'C280', ' - C280'),
(811, 44, 'C300', ' - C300'),
(812, 44, 'C320', ' - C320'),
(813, 44, 'C32AMG', ' - C32 AMG'),
(814, 44, 'C350', ' - C350'),
(815, 44, 'C36AMG', ' - C36 AMG'),
(816, 44, 'C43AMG', ' - C43 AMG'),
(817, 44, 'C55AMG', ' - C55 AMG'),
(818, 44, 'C63AMG', ' - C63 AMG'),
(819, 44, 'CL_CLASS', 'CL Class (6)'),
(820, 44, 'CL500', ' - CL500'),
(821, 44, 'CL550', ' - CL550'),
(822, 44, 'CL55AMG', ' - CL55 AMG'),
(823, 44, 'CL600', ' - CL600'),
(824, 44, 'CL63AMG', ' - CL63 AMG'),
(825, 44, 'CL65AMG', ' - CL65 AMG'),
(826, 44, 'CLK_CLASS', 'CLK Class (7)'),
(827, 44, 'CLK320', ' - CLK320'),
(828, 44, 'CLK350', ' - CLK350'),
(829, 44, 'CLK430', ' - CLK430'),
(830, 44, 'CLK500', ' - CLK500'),
(831, 44, 'CLK550', ' - CLK550'),
(832, 44, 'CLK55AMG', ' - CLK55 AMG'),
(833, 44, 'CLK63AMG', ' - CLK63 AMG'),
(834, 44, 'CLS_CLASS', 'CLS Class (4)'),
(835, 44, 'CLS500', ' - CLS500'),
(836, 44, 'CLS550', ' - CLS550'),
(837, 44, 'CLS55AMG', ' - CLS55 AMG'),
(838, 44, 'CLS63AMG', ' - CLS63 AMG'),
(839, 44, 'E_CLASS', 'E Class (18)'),
(840, 44, '260E', ' - 260E'),
(841, 44, '280CE', ' - 280CE'),
(842, 44, '280E', ' - 280E'),
(843, 44, '400E', ' - 400E'),
(844, 44, '500E', ' - 500E'),
(845, 44, 'E300', ' - E300'),
(846, 44, 'E320', ' - E320'),
(847, 44, 'E320BLUE', ' - E320 Bluetec'),
(848, 44, 'E320CDI', ' - E320 CDI'),
(849, 44, 'E350', ' - E350'),
(850, 44, 'E350BLUE', ' - E350 Bluetec'),
(851, 44, 'E400', ' - E400 Hybrid'),
(852, 44, 'E420', ' - E420'),
(853, 44, 'E430', ' - E430'),
(854, 44, 'E500', ' - E500'),
(855, 44, 'E550', ' - E550'),
(856, 44, 'E55AMG', ' - E55 AMG'),
(857, 44, 'E63AMG', ' - E63 AMG'),
(858, 44, 'G_CLASS', 'G Class (4)'),
(859, 44, 'G500', ' - G500'),
(860, 44, 'G550', ' - G550'),
(861, 44, 'G55AMG', ' - G55 AMG'),
(862, 44, 'G63AMG', ' - G63 AMG'),
(863, 44, 'GL_CLASS', 'GL Class (5)'),
(864, 44, 'GL320BLUE', ' - GL320 Bluetec'),
(865, 44, 'GL320CDI', ' - GL320 CDI'),
(866, 44, 'GL350BLUE', ' - GL350 Bluetec'),
(867, 44, 'GL450', ' - GL450'),
(868, 44, 'GL550', ' - GL550'),
(869, 44, 'GLK_CLASS', 'GLK Class (1)'),
(870, 44, 'GLK350', ' - GLK350'),
(871, 44, 'M_CLASS', 'M Class (11)'),
(872, 44, 'ML320', ' - ML320'),
(873, 44, 'ML320BLUE', ' - ML320 Bluetec'),
(874, 44, 'ML320CDI', ' - ML320 CDI'),
(875, 44, 'ML350', ' - ML350'),
(876, 44, 'ML350BLUE', ' - ML350 Bluetec'),
(877, 44, 'ML430', ' - ML430'),
(878, 44, 'ML450HY', ' - ML450 Hybrid'),
(879, 44, 'ML500', ' - ML500'),
(880, 44, 'ML550', ' - ML550'),
(881, 44, 'ML55AMG', ' - ML55 AMG'),
(882, 44, 'ML63AMG', ' - ML63 AMG'),
(883, 44, 'R_CLASS', 'R Class (6)'),
(884, 44, 'R320BLUE', ' - R320 Bluetec'),
(885, 44, 'R320CDI', ' - R320 CDI'),
(886, 44, 'R350', ' - R350'),
(887, 44, 'R350BLUE', ' - R350 Bluetec'),
(888, 44, 'R500', ' - R500'),
(889, 44, 'R63AMG', ' - R63 AMG'),
(890, 44, 'S_CLASS', 'S Class (30)'),
(891, 44, '300SD', ' - 300SD'),
(892, 44, '300SDL', ' - 300SDL'),
(893, 44, '300SE', ' - 300SE'),
(894, 44, '300SEL', ' - 300SEL'),
(895, 44, '350SD', ' - 350SD'),
(896, 44, '350SDL', ' - 350SDL'),
(897, 44, '380SE', ' - 380SE'),
(898, 44, '380SEC', ' - 380SEC'),
(899, 44, '380SEL', ' - 380SEL'),
(900, 44, '400SE', ' - 400SE'),
(901, 44, '400SEL', ' - 400SEL'),
(902, 44, '420SEL', ' - 420SEL'),
(903, 44, '500SEC', ' - 500SEC'),
(904, 44, '500SEL', ' - 500SEL'),
(905, 44, '560SEC', ' - 560SEC'),
(906, 44, '560SEL', ' - 560SEL'),
(907, 44, '600SEC', ' - 600SEC'),
(908, 44, '600SEL', ' - 600SEL'),
(909, 44, 'S320', ' - S320'),
(910, 44, 'S350', ' - S350'),
(911, 44, 'S350BLUE', ' - S350 Bluetec'),
(912, 44, 'S400HY', ' - S400 Hybrid'),
(913, 44, 'S420', ' - S420'),
(914, 44, 'S430', ' - S430'),
(915, 44, 'S500', ' - S500'),
(916, 44, 'S550', ' - S550'),
(917, 44, 'S55AMG', ' - S55 AMG'),
(918, 44, 'S600', ' - S600'),
(919, 44, 'S63AMG', ' - S63 AMG'),
(920, 44, 'S65AMG', ' - S65 AMG'),
(921, 44, 'SL_CLASS', 'SL Class (13)'),
(922, 44, '300SL', ' - 300SL'),
(923, 44, '380SL', ' - 380SL'),
(924, 44, '380SLC', ' - 380SLC'),
(925, 44, '500SL', ' - 500SL'),
(926, 44, '560SL', ' - 560SL'),
(927, 44, '600SL', ' - 600SL'),
(928, 44, 'SL320', ' - SL320'),
(929, 44, 'SL500', ' - SL500'),
(930, 44, 'SL550', ' - SL550'),
(931, 44, 'SL55AMG', ' - SL55 AMG'),
(932, 44, 'SL600', ' - SL600'),
(933, 44, 'SL63AMG', ' - SL63 AMG'),
(934, 44, 'SL65AMG', ' - SL65 AMG'),
(935, 44, 'SLK_CLASS', 'SLK Class (8)'),
(936, 44, 'SLK230', ' - SLK230'),
(937, 44, 'SLK250', ' - SLK250'),
(938, 44, 'SLK280', ' - SLK280'),
(939, 44, 'SLK300', ' - SLK300'),
(940, 44, 'SLK320', ' - SLK320'),
(941, 44, 'SLK32AMG', ' - SLK32 AMG'),
(942, 44, 'SLK350', ' - SLK350'),
(943, 44, 'SLK55AMG', ' - SLK55 AMG'),
(944, 44, 'SLR_CLASS', 'SLR Class (1)'),
(945, 44, 'SLR', ' - SLR'),
(946, 44, 'SLS_CLASS', 'SLS Class (1)'),
(947, 44, 'SLSAMG', ' - SLS AMG'),
(948, 44, 'SPRINTER_CLASS', 'Sprinter Class (1)'),
(949, 44, 'MBSPRINTER', ' - Sprinter'),
(950, 44, 'MBOTH', 'Other Mercedes-Benz Models'),
(951, 45, 'CAPRI', 'Capri'),
(952, 45, 'COUGAR', 'Cougar'),
(953, 45, 'MERCGRAND', 'Grand Marquis'),
(954, 45, 'LYNX', 'Lynx'),
(955, 45, 'MARAUDER', 'Marauder'),
(956, 45, 'MARINER', 'Mariner'),
(957, 45, 'MARQ', 'Marquis'),
(958, 45, 'MILAN', 'Milan'),
(959, 45, 'MONTEGO', 'Montego'),
(960, 45, 'MONTEREY', 'Monterey'),
(961, 45, 'MOUNTA', 'Mountaineer'),
(962, 45, 'MYSTIQ', 'Mystique'),
(963, 45, 'SABLE', 'Sable'),
(964, 45, 'TOPAZ', 'Topaz'),
(965, 45, 'TRACER', 'Tracer'),
(966, 45, 'VILLA', 'Villager'),
(967, 45, 'MERCZEP', 'Zephyr'),
(968, 45, 'MEOTH', 'Other Mercury Models'),
(969, 46, 'SCORP', 'Scorpio'),
(970, 46, 'XR4TI', 'XR4Ti'),
(971, 46, 'MEROTH', 'Other Merkur Models'),
(972, 47, 'COOPRCLUB_MODELS', 'Cooper Clubman Models (2)'),
(973, 47, 'COOPERCLUB', ' - Cooper Clubman'),
(974, 47, 'COOPRCLUBS', ' - Cooper S Clubman'),
(975, 47, 'COOPCOUNTRY_MODELS', 'Cooper Countryman Models (2)'),
(976, 47, 'COUNTRYMAN', ' - Cooper Countryman'),
(977, 47, 'COUNTRYMNS', ' - Cooper S Countryman'),
(978, 47, 'COOPCOUP_MODELS', 'Cooper Coupe Models (2)'),
(979, 47, 'MINICOUPE', ' - Cooper Coupe'),
(980, 47, 'MINISCOUPE', ' - Cooper S Coupe'),
(981, 47, 'COOPER_MODELS', 'Cooper Models (2)'),
(982, 47, 'COOPER', ' - Cooper'),
(983, 47, 'COOPERS', ' - Cooper S'),
(984, 47, 'COOPRROAD_MODELS', 'Cooper Roadster Models (2)'),
(985, 47, 'COOPERROAD', ' - Cooper Roadster'),
(986, 47, 'COOPERSRD', ' - Cooper S Roadster'),
(987, 48, '3000GT', '3000GT'),
(988, 48, 'CORD', 'Cordia'),
(989, 48, 'DIAMAN', 'Diamante'),
(990, 48, 'ECLIP', 'Eclipse'),
(991, 48, 'ENDEAVOR', 'Endeavor'),
(992, 48, 'MITEXP', 'Expo'),
(993, 48, 'GALANT', 'Galant'),
(994, 48, 'MITI', 'i'),
(995, 48, 'LANCERMITS', 'Lancer'),
(996, 48, 'LANCEREVO', 'Lancer Evolution'),
(997, 48, 'MITPU', 'Mighty Max'),
(998, 48, 'MIRAGE', 'Mirage'),
(999, 48, 'MONT', 'Montero'),
(1000, 48, 'MONTSPORT', 'Montero Sport'),
(1001, 48, 'OUTLANDER', 'Outlander'),
(1002, 48, 'OUTLANDSPT', 'Outlander Sport'),
(1003, 48, 'PRECIS', 'Precis'),
(1004, 48, 'RAIDERMITS', 'Raider'),
(1005, 48, 'SIGMA', 'Sigma'),
(1006, 48, 'MITSTAR', 'Starion'),
(1007, 48, 'TRED', 'Tredia'),
(1008, 48, 'MITVAN', 'Van'),
(1009, 48, 'MITOTH', 'Other Mitsubishi Models'),
(1010, 49, 'NIS200SX', '200SX'),
(1011, 49, '240SX', '240SX'),
(1012, 49, '300ZXTURBO', '300ZX'),
(1013, 49, '350Z', '350Z'),
(1014, 49, '370Z', '370Z'),
(1015, 49, 'ALTIMA', 'Altima'),
(1016, 49, 'PATHARMADA', 'Armada'),
(1017, 49, 'AXXESS', 'Axxess'),
(1018, 49, 'CUBE', 'Cube'),
(1019, 49, 'FRONTI', 'Frontier'),
(1020, 49, 'GT-R', 'GT-R'),
(1021, 49, 'JUKE', 'Juke'),
(1022, 49, 'LEAF', 'Leaf'),
(1023, 49, 'MAX', 'Maxima'),
(1024, 49, 'MURANO', 'Murano'),
(1025, 49, 'MURANOCROS', 'Murano CrossCabriolet'),
(1026, 49, 'NV', 'NV'),
(1027, 49, 'NX', 'NX'),
(1028, 49, 'PATH', 'Pathfinder'),
(1029, 49, 'NISPU', 'Pickup'),
(1030, 49, 'PULSAR', 'Pulsar'),
(1031, 49, 'QUEST', 'Quest'),
(1032, 49, 'ROGUE', 'Rogue'),
(1033, 49, 'SENTRA', 'Sentra'),
(1034, 49, 'STANZA', 'Stanza'),
(1035, 49, 'TITAN', 'Titan'),
(1036, 49, 'NISVAN', 'Van'),
(1037, 49, 'VERSA', 'Versa'),
(1038, 49, 'XTERRA', 'Xterra'),
(1039, 49, 'NISSOTH', 'Other Nissan Models'),
(1040, 50, '88', '88'),
(1041, 50, 'ACHIEV', 'Achieva'),
(1042, 50, 'ALERO', 'Alero'),
(1043, 50, 'AURORA', 'Aurora'),
(1044, 50, 'BRAV', 'Bravada'),
(1045, 50, 'CUCR', 'Custom Cruiser'),
(1046, 50, 'OLDCUS', 'Cutlass'),
(1047, 50, 'OLDCALAIS', 'Cutlass Calais'),
(1048, 50, 'CIERA', 'Cutlass Ciera'),
(1049, 50, 'CSUPR', 'Cutlass Supreme'),
(1050, 50, 'OLDSFIR', 'Firenza'),
(1051, 50, 'INTRIG', 'Intrigue'),
(1052, 50, '98', 'Ninety-Eight'),
(1053, 50, 'OMEG', 'Omega'),
(1054, 50, 'REGEN', 'Regency'),
(1055, 50, 'SILHO', 'Silhouette'),
(1056, 50, 'TORO', 'Toronado'),
(1057, 50, 'OLDOTH', 'Other Oldsmobile Models'),
(1058, 51, '405', '405'),
(1059, 51, '504', '504'),
(1060, 51, '505', '505'),
(1061, 51, '604', '604'),
(1062, 51, 'UNAVAILPEU', 'Other Peugeot Models'),
(1063, 52, 'ACC', 'Acclaim'),
(1064, 52, 'ARROW', 'Arrow'),
(1065, 52, 'BREEZE', 'Breeze'),
(1066, 52, 'CARAVE', 'Caravelle'),
(1067, 52, 'CHAMP', 'Champ'),
(1068, 52, 'COLT', 'Colt'),
(1069, 52, 'PLYMCONQ', 'Conquest'),
(1070, 52, 'GRANFURY', 'Gran Fury'),
(1071, 52, 'PLYMGRANV', 'Grand Voyager'),
(1072, 52, 'HORI', 'Horizon'),
(1073, 52, 'LASER', 'Laser'),
(1074, 52, 'NEON', 'Neon'),
(1075, 52, 'PROWLE', 'Prowler'),
(1076, 52, 'RELI', 'Reliant'),
(1077, 52, 'SAPPOROPLY', 'Sapporo'),
(1078, 52, 'SCAMP', 'Scamp'),
(1079, 52, 'SUNDAN', 'Sundance'),
(1080, 52, 'TRAILDUST', 'Trailduster'),
(1081, 52, 'VOYA', 'Voyager'),
(1082, 52, 'PLYOTH', 'Other Plymouth Models'),
(1083, 53, 'T-1000', '1000'),
(1084, 53, '6000', '6000'),
(1085, 53, 'AZTEK', 'Aztek'),
(1086, 53, 'BON', 'Bonneville'),
(1087, 53, 'CATALINA', 'Catalina'),
(1088, 53, 'FIERO', 'Fiero'),
(1089, 53, 'FBIRD', 'Firebird'),
(1090, 53, 'G3', 'G3'),
(1091, 53, 'G5', 'G5'),
(1092, 53, 'G6', 'G6'),
(1093, 53, 'G8', 'G8'),
(1094, 53, 'GRNDAM', 'Grand Am'),
(1095, 53, 'GP', 'Grand Prix'),
(1096, 53, 'GTO', 'GTO'),
(1097, 53, 'J2000', 'J2000'),
(1098, 53, 'LEMANS', 'Le Mans'),
(1099, 53, 'MONTANA', 'Montana'),
(1100, 53, 'PARISI', 'Parisienne'),
(1101, 53, 'PHOENIX', 'Phoenix'),
(1102, 53, 'SAFARIPONT', 'Safari'),
(1103, 53, 'SOLSTICE', 'Solstice'),
(1104, 53, 'SUNBIR', 'Sunbird'),
(1105, 53, 'SUNFIR', 'Sunfire'),
(1106, 53, 'TORRENT', 'Torrent'),
(1107, 53, 'TS', 'Trans Sport'),
(1108, 53, 'VIBE', 'Vibe'),
(1109, 53, 'PONOTH', 'Other Pontiac Models'),
(1110, 54, '911', '911'),
(1111, 54, '924', '924'),
(1112, 54, '928', '928'),
(1113, 54, '944', '944'),
(1114, 54, '968', '968'),
(1115, 54, 'BOXSTE', 'Boxster'),
(1116, 54, 'CARRERAGT', 'Carrera GT'),
(1117, 54, 'CAYENNE', 'Cayenne'),
(1118, 54, 'CAYMAN', 'Cayman'),
(1119, 54, 'PANAMERA', 'Panamera'),
(1120, 54, 'POROTH', 'Other Porsche Models'),
(1121, 55, 'RAM1504WD', '1500'),
(1122, 55, 'RAM25002WD', '2500'),
(1123, 55, 'RAM3502WD', '3500'),
(1124, 55, 'RAM4500', '4500'),
(1125, 56, '18I', '18i'),
(1126, 56, 'FU', 'Fuego'),
(1127, 56, 'LECAR', 'Le Car'),
(1128, 56, 'R18', 'R18'),
(1129, 56, 'RENSPORT', 'Sportwagon'),
(1130, 56, 'UNAVAILREN', 'Other Renault Models'),
(1131, 57, 'CAMAR', 'Camargue'),
(1132, 57, 'CORN', 'Corniche'),
(1133, 57, 'GHOST', 'Ghost'),
(1134, 57, 'PARKWARD', 'Park Ward'),
(1135, 57, 'PHANT', 'Phantom'),
(1136, 57, 'DAWN', 'Silver Dawn'),
(1137, 57, 'SILSERAPH', 'Silver Seraph'),
(1138, 57, 'RRSPIR', 'Silver Spirit'),
(1139, 57, 'SPUR', 'Silver Spur'),
(1140, 57, 'UNAVAILRR', 'Other Rolls-Royce Models'),
(1141, 58, '9-2X', '9-2X'),
(1142, 58, '9-3', '9-3'),
(1143, 58, '9-4X', '9-4X'),
(1144, 58, '9-5', '9-5'),
(1145, 58, '97X', '9-7X'),
(1146, 58, '900', '900'),
(1147, 58, '9000', '9000'),
(1148, 58, 'SAOTH', 'Other Saab Models'),
(1149, 59, 'ASTRA', 'Astra'),
(1150, 59, 'AURA', 'Aura'),
(1151, 59, 'ION', 'ION'),
(1152, 59, 'L_SERIES', 'L Series (3)'),
(1153, 59, 'L100', ' - L100'),
(1154, 59, 'L200', ' - L200'),
(1155, 59, 'L300', ' - L300'),
(1156, 59, 'LSSATURN', 'LS'),
(1157, 59, 'LW_SERIES', 'LW Series (4)'),
(1158, 59, 'LW', ' - LW1'),
(1159, 59, 'LW2', ' - LW2'),
(1160, 59, 'LW200', ' - LW200'),
(1161, 59, 'LW300', ' - LW300'),
(1162, 59, 'OUTLOOK', 'Outlook'),
(1163, 59, 'RELAY', 'Relay'),
(1164, 59, 'SC_SERIES', 'SC Series (2)'),
(1165, 59, 'SC1', ' - SC1'),
(1166, 59, 'SC2', ' - SC2'),
(1167, 59, 'SKY', 'Sky'),
(1168, 59, 'SL_SERIES', 'SL Series (3)'),
(1169, 59, 'SL', ' - SL'),
(1170, 59, 'SL1', ' - SL1'),
(1171, 59, 'SL2', ' - SL2'),
(1172, 59, 'SW_SERIES', 'SW Series (2)'),
(1173, 59, 'SW1', ' - SW1'),
(1174, 59, 'SW2', ' - SW2'),
(1175, 59, 'VUE', 'Vue'),
(1176, 59, 'SATOTH', 'Other Saturn Models'),
(1177, 60, 'SCIFRS', 'FR-S'),
(1178, 60, 'IQ', 'iQ'),
(1179, 60, 'TC', 'tC'),
(1180, 60, 'XA', 'xA'),
(1181, 60, 'XB', 'xB'),
(1182, 60, 'XD', 'xD'),
(1183, 61, 'FORTWO', 'fortwo'),
(1184, 61, 'SMOTH', 'Other smart Models'),
(1185, 62, 'SRTVIPER', 'Viper'),
(1186, 63, '825', '825'),
(1187, 63, '827', '827'),
(1188, 63, 'UNAVAILSTE', 'Other Sterling Models'),
(1189, 64, 'BAJA', 'Baja'),
(1190, 64, 'BRAT', 'Brat'),
(1191, 64, 'SUBBRZ', 'BRZ'),
(1192, 64, 'FOREST', 'Forester'),
(1193, 64, 'IMPREZ', 'Impreza'),
(1194, 64, 'IMPWRX', 'Impreza WRX'),
(1195, 64, 'JUSTY', 'Justy'),
(1196, 64, 'SUBL', 'L Series'),
(1197, 64, 'LEGACY', 'Legacy'),
(1198, 64, 'LOYALE', 'Loyale'),
(1199, 64, 'SUBOUTBK', 'Outback'),
(1200, 64, 'SVX', 'SVX'),
(1201, 64, 'B9TRIBECA', 'Tribeca'),
(1202, 64, 'XT', 'XT'),
(1203, 64, 'XVCRSSTREK', 'XV Crosstrek'),
(1204, 64, 'SUBOTH', 'Other Subaru Models'),
(1205, 65, 'AERIO', 'Aerio'),
(1206, 65, 'EQUATOR', 'Equator'),
(1207, 65, 'ESTEEM', 'Esteem'),
(1208, 65, 'FORENZA', 'Forenza'),
(1209, 65, 'GRANDV', 'Grand Vitara'),
(1210, 65, 'KIZASHI', 'Kizashi'),
(1211, 65, 'RENO', 'Reno'),
(1212, 65, 'SAMUR', 'Samurai'),
(1213, 65, 'SIDE', 'Sidekick'),
(1214, 65, 'SWIFT', 'Swift'),
(1215, 65, 'SX4', 'SX4'),
(1216, 65, 'VERONA', 'Verona'),
(1217, 65, 'VITARA', 'Vitara'),
(1218, 65, 'X90', 'X-90'),
(1219, 65, 'XL7', 'XL7'),
(1220, 65, 'SUZOTH', 'Other Suzuki Models'),
(1221, 66, 'ROADSTER', 'Roadster'),
(1222, 67, '4RUN', '4Runner'),
(1223, 67, 'AVALON', 'Avalon'),
(1224, 67, 'CAMRY', 'Camry'),
(1225, 67, 'CELICA', 'Celica'),
(1226, 67, 'COROL', 'Corolla'),
(1227, 67, 'CORONA', 'Corona'),
(1228, 67, 'CRESS', 'Cressida'),
(1229, 67, 'ECHO', 'Echo'),
(1230, 67, 'FJCRUIS', 'FJ Cruiser'),
(1231, 67, 'HIGHLANDER', 'Highlander'),
(1232, 67, 'LC', 'Land Cruiser'),
(1233, 67, 'MATRIX', 'Matrix'),
(1234, 67, 'MR2', 'MR2'),
(1235, 67, 'MR2SPYDR', 'MR2 Spyder'),
(1236, 67, 'PASEO', 'Paseo'),
(1237, 67, 'PICKUP', 'Pickup'),
(1238, 67, 'PREVIA', 'Previa'),
(1239, 67, 'PRIUS', 'Prius'),
(1240, 67, 'PRIUSC', 'Prius C'),
(1241, 67, 'PRIUSV', 'Prius V'),
(1242, 67, 'RAV4', 'RAV4'),
(1243, 67, 'SEQUOIA', 'Sequoia'),
(1244, 67, 'SIENNA', 'Sienna'),
(1245, 67, 'SOLARA', 'Solara'),
(1246, 67, 'STARLET', 'Starlet'),
(1247, 67, 'SUPRA', 'Supra'),
(1248, 67, 'T100', 'T100'),
(1249, 67, 'TACOMA', 'Tacoma'),
(1250, 67, 'TERCEL', 'Tercel'),
(1251, 67, 'TUNDRA', 'Tundra'),
(1252, 67, 'TOYVAN', 'Van'),
(1253, 67, 'VENZA', 'Venza'),
(1254, 67, 'YARIS', 'Yaris'),
(1255, 67, 'TOYOTH', 'Other Toyota Models'),
(1256, 68, 'TR7', 'TR7'),
(1257, 68, 'TR8', 'TR8'),
(1258, 68, 'TRIOTH', 'Other Triumph Models'),
(1259, 69, 'BEETLE', 'Beetle'),
(1260, 69, 'VOLKSCAB', 'Cabrio'),
(1261, 69, 'CAB', 'Cabriolet'),
(1262, 69, 'CC', 'CC'),
(1263, 69, 'CORR', 'Corrado'),
(1264, 69, 'DASHER', 'Dasher'),
(1265, 69, 'EOS', 'Eos'),
(1266, 69, 'EUROVAN', 'Eurovan'),
(1267, 69, 'VOLKSFOX', 'Fox'),
(1268, 69, 'GLI', 'GLI'),
(1269, 69, 'GOLFR', 'Golf R'),
(1270, 69, 'GTI', 'GTI'),
(1271, 69, 'GOLFANDRABBITMODELS', 'Golf and Rabbit Models (2)'),
(1272, 69, 'GOLF', ' - Golf'),
(1273, 69, 'RABBIT', ' - Rabbit'),
(1274, 69, 'JET', 'Jetta'),
(1275, 69, 'PASS', 'Passat'),
(1276, 69, 'PHAETON', 'Phaeton'),
(1277, 69, 'RABBITPU', 'Pickup'),
(1278, 69, 'QUAN', 'Quantum'),
(1279, 69, 'R32', 'R32'),
(1280, 69, 'ROUTAN', 'Routan'),
(1281, 69, 'SCIR', 'Scirocco'),
(1282, 69, 'TIGUAN', 'Tiguan'),
(1283, 69, 'TOUAREG', 'Touareg'),
(1284, 69, 'VANAG', 'Vanagon'),
(1285, 69, 'VWOTH', 'Other Volkswagen Models'),
(1286, 70, '240', '240'),
(1287, 70, '260', '260'),
(1288, 70, '740', '740'),
(1289, 70, '760', '760'),
(1290, 70, '780', '780'),
(1291, 70, '850', '850'),
(1292, 70, '940', '940'),
(1293, 70, '960', '960'),
(1294, 70, 'C30', 'C30'),
(1295, 70, 'C70', 'C70'),
(1296, 70, 'S40', 'S40'),
(1297, 70, 'S60', 'S60'),
(1298, 70, 'S70', 'S70'),
(1299, 70, 'S80', 'S80'),
(1300, 70, 'S90', 'S90'),
(1301, 70, 'V40', 'V40'),
(1302, 70, 'V50', 'V50'),
(1303, 70, 'V70', 'V70'),
(1304, 70, 'V90', 'V90'),
(1305, 70, 'XC60', 'XC60'),
(1306, 70, 'XC', 'XC70'),
(1307, 70, 'XC90', 'XC90'),
(1308, 70, 'VOLOTH', 'Other Volvo Models'),
(1309, 71, 'GV', 'GV'),
(1310, 71, 'GVC', 'GVC'),
(1311, 71, 'GVL', 'GVL'),
(1312, 71, 'GVS', 'GVS'),
(1313, 71, 'GVX', 'GVX'),
(1314, 71, 'YUOTH', 'Other Yugo Models');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Auth\\User', 1),
(2, 'App\\Models\\Auth\\User', 2),
(3, 'App\\Models\\Auth\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

CREATE TABLE `password_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$A0ls0e.e/2nDmIhhPnq0h.wK2jLZzzHfH/q1Z5H1kdDNyZ2tNz65a', '2019-08-05 10:23:05', '2019-08-05 10:23:05'),
(2, 2, '$2y$10$G2hsq1lEbdKE5jGhhvMi1OJAZdij2P3AugU9b1DWVREUo7vpL7gpy', '2019-08-05 10:23:05', '2019-08-05 10:23:05'),
(3, 3, '$2y$10$TKVaw6tUfHxkmQkvq8Q5LOmXi9fqwyeb3.j0gn/UrUWjjy/7wI72u', '2019-08-05 10:23:05', '2019-08-05 10:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view backend', 'web', '2019-08-05 10:23:05', '2019-08-05 10:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2019-08-05 10:23:05', '2019-08-05 10:23:05'),
(2, 'executive', 'web', '2019-08-05 10:23:05', '2019-08-05 10:23:05'),
(3, 'user', 'web', '2019-08-05 10:23:05', '2019-08-05 10:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gravatar',
  `avatar_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_be_logged_out` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `first_name`, `last_name`, `email`, `avatar_type`, `avatar_location`, `password`, `password_changed_at`, `active`, `confirmation_code`, `confirmed`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2aa06e1a-c17e-441f-a8d3-27b345536b0a', 'Admin', 'Istrator', 'admin@admin.com', 'gravatar', NULL, '$2y$10$A0ls0e.e/2nDmIhhPnq0h.wK2jLZzzHfH/q1Z5H1kdDNyZ2tNz65a', NULL, 1, '7360f235501c5a893cbfd603872d1931', 1, NULL, NULL, NULL, 0, NULL, '2019-08-05 10:23:05', '2019-08-05 10:23:05', NULL),
(2, '6ef4f1e6-4466-4ce0-9925-87da9a6613cb', 'Backend', 'User', 'executive@executive.com', 'gravatar', NULL, '$2y$10$G2hsq1lEbdKE5jGhhvMi1OJAZdij2P3AugU9b1DWVREUo7vpL7gpy', NULL, 1, '5f93f7931fcf8e71c38374265ea52687', 1, NULL, NULL, NULL, 0, NULL, '2019-08-05 10:23:05', '2019-08-05 10:23:05', NULL),
(3, 'd53b4923-23bc-4315-b8ef-3bbf2e85ba5f', 'Default', 'User', 'user@user.com', 'gravatar', NULL, '$2y$10$TKVaw6tUfHxkmQkvq8Q5LOmXi9fqwyeb3.j0gn/UrUWjjy/7wI72u', NULL, 1, '134f3d7d50034179a654c465e0d3b629', 1, 'America/New_York', '2019-08-05 10:24:02', '::1', 0, 'kwnb0XM5KYIzE2VEqO6hbsTLPHojlMZtTqHOgrLqobhGZo3AMIYFYqA44G5x', '2019-08-05 10:23:05', '2019-08-05 10:24:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_attributes`
--
ALTER TABLE `car_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_name_index` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_attributes`
--
ALTER TABLE `car_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `password_histories`
--
ALTER TABLE `password_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD CONSTRAINT `password_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
