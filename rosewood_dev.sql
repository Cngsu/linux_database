-- --------------------------------------------------------
-- Host:                         priv-reg-dev-db.cjku0zozkzj3.ap-southeast-1.rds.amazonaws.com
-- Server version:               5.7.38-log - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table privreg_dev.additional_disclosures
CREATE TABLE IF NOT EXISTS `additional_disclosures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `additional_section_id` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl6jq4noxcu9dt9pb8emwhbr7e` (`created_by`),
  KEY `FKaosidq73e3wnxddt0lkpjeimu` (`updated_by`),
  KEY `FKib9v13k6vdyoo3yacd5mwl3bl` (`additional_section_id`),
  KEY `FKse193n6apsgk9v4k4ofno03pc` (`doc_id`),
  CONSTRAINT `FKaosidq73e3wnxddt0lkpjeimu` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKib9v13k6vdyoo3yacd5mwl3bl` FOREIGN KEY (`additional_section_id`) REFERENCES `additional_section` (`id`),
  CONSTRAINT `FKl6jq4noxcu9dt9pb8emwhbr7e` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKse193n6apsgk9v4k4ofno03pc` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.additional_disclosures: ~0 rows (approximately)
/*!40000 ALTER TABLE `additional_disclosures` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_disclosures` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.additional_section
CREATE TABLE IF NOT EXISTS `additional_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.additional_section: ~8 rows (approximately)
/*!40000 ALTER TABLE `additional_section` DISABLE KEYS */;
INSERT INTO `additional_section` (`id`, `name`) VALUES
	(1, 'Recent Developments'),
	(2, 'Material Debt'),
	(3, 'Cap Table'),
	(4, 'Related Party Transactions'),
	(5, 'Environmental, Corporate Social Responsibility'),
	(6, 'Use of Proceeds'),
	(7, 'Regulations'),
	(8, '“Football Field”');
/*!40000 ALTER TABLE `additional_section` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.aimee_article
CREATE TABLE IF NOT EXISTS `aimee_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `institution` varchar(255) DEFAULT NULL,
  `path_save` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.aimee_article: ~0 rows (approximately)
/*!40000 ALTER TABLE `aimee_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `aimee_article` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.aimee_case_study
CREATE TABLE IF NOT EXISTS `aimee_case_study` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `institution` varchar(255) DEFAULT NULL,
  `path_save` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.aimee_case_study: ~0 rows (approximately)
/*!40000 ALTER TABLE `aimee_case_study` DISABLE KEYS */;
/*!40000 ALTER TABLE `aimee_case_study` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.aimee_glossary
CREATE TABLE IF NOT EXISTS `aimee_glossary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `definition` longtext,
  `institution` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.aimee_glossary: ~0 rows (approximately)
/*!40000 ALTER TABLE `aimee_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `aimee_glossary` ENABLE KEYS */;

-- Dumping structure for procedure privreg_dev.check_table_exists
DELIMITER //
CREATE PROCEDURE `check_table_exists`(table_name VARCHAR (100))
BEGIN DECLARE CONTINUE HANDLER FOR SQLSTATE '42S02' SET @err = 1; SET @err = 0; SET @table_name = table_name; SET @sql_query = CONCAT('SELECT 1 FROM ', @table_name); PREPARE stmt1 FROM @sql_query; IF (@err = 1) THEN SET @table_exists = 0; ELSE SET @table_exists = 1; DEALLOCATE PREPARE stmt1; END IF; END//
DELIMITER ;

-- Dumping structure for table privreg_dev.country
CREATE TABLE IF NOT EXISTS `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.country: ~249 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `country_code`, `name`) VALUES
	(1, 'AFG', 'Afghanistan'),
	(2, 'ALA', 'Aland Islands'),
	(3, 'ALB', 'Albania'),
	(4, 'DZA', 'Algeria'),
	(5, 'ASM', 'American Samoa'),
	(6, 'AND', 'Andorra'),
	(7, 'AGO', 'Angola'),
	(8, 'AIA', 'Anguilla'),
	(9, 'ATA', 'Antarctica'),
	(10, 'ATG', 'Antigua and Barbuda'),
	(11, 'ARG', 'Argentina'),
	(12, 'ARM', 'Armenia'),
	(13, 'ABW', 'Aruba'),
	(14, 'AUS', 'Australia'),
	(15, 'AUT', 'Austria'),
	(16, 'AZE', 'Azerbaijan'),
	(17, 'BHS', 'Bahamas'),
	(18, 'BHR', 'Bahrain'),
	(19, 'BGD', 'Bangladesh'),
	(20, 'BRB', 'Barbados'),
	(21, 'BLR', 'Belarus'),
	(22, 'BEL', 'Belgium'),
	(23, 'BLZ', 'Belize'),
	(24, 'BEN', 'Benin'),
	(25, 'BMU', 'Bermuda'),
	(26, 'BTN', 'Bhutan'),
	(27, 'BOL', 'Bolivia'),
	(28, 'BES', 'Bonaire'),
	(29, 'BIH', 'Bosnia and Herzegovina'),
	(30, 'BWA', 'Botswana'),
	(31, 'BVT', 'Bouvet Island'),
	(32, 'BRA', 'Brazil'),
	(33, 'IOT', 'British Indian Ocean Territory'),
	(34, 'BRN', 'Brunei Darussalam'),
	(35, 'BGR', 'Bulgaria'),
	(36, 'BFA', 'Burkina Faso'),
	(37, 'BDI', 'Burundi'),
	(38, 'CPV', 'Cabo Verde'),
	(39, 'KHM', 'Cambodia'),
	(40, 'CMR', 'Cameroon'),
	(41, 'CAN', 'Canada'),
	(42, 'CYM', 'Cayman Islands'),
	(43, 'CAF', 'Central African Republic'),
	(44, 'TCD', 'Chad'),
	(45, 'CHL', 'Chile'),
	(46, 'CHN', 'China'),
	(47, 'CXR', 'Christmas Island'),
	(48, 'CCK', 'Cocos Islands'),
	(49, 'COL', 'Colombia'),
	(50, 'COM', 'Comoros'),
	(51, 'COD', 'The Democratic Republic of the Congo'),
	(52, 'COG', 'Congo'),
	(53, 'COK', 'Cook Islands'),
	(54, 'CRI', 'Costa Rica'),
	(55, 'CIV', 'Côte d\'Ivoire'),
	(56, 'HRV', 'Croatia'),
	(57, 'CUB', 'Cuba'),
	(58, 'CUW', 'Curaçao'),
	(59, 'CYP', 'Cyprus'),
	(60, 'CZE', 'Czechia'),
	(61, 'DNK', 'Denmark'),
	(62, 'DJI', 'Djibouti'),
	(63, 'DMA', 'Dominica'),
	(64, 'DOM', 'Dominican Republic'),
	(65, 'ECU', 'Ecuador'),
	(66, 'EGY', 'Egypt'),
	(67, 'SLV', 'El Salvador'),
	(68, 'GNQ', 'Equatorial Guinea'),
	(69, 'ERI', 'Eritrea'),
	(70, 'EST', 'Estonia'),
	(71, 'SWZ', 'Eswatini'),
	(72, 'ETH', 'Ethiopia'),
	(73, 'FLK', 'Falkland Islands'),
	(74, 'FRO', 'Faroe Islands'),
	(75, 'FJI', 'Fiji'),
	(76, 'FIN', 'Finland'),
	(77, 'FRA', 'France'),
	(78, 'GUF', 'French Guiana'),
	(79, 'PYF', 'French Polynesia'),
	(80, 'ATF', 'French Southern Territories'),
	(81, 'GAB', 'Gabon'),
	(82, 'GMB', 'Gambia'),
	(83, 'GEO', 'Georgia'),
	(84, 'DEU', 'Germany'),
	(85, 'GHA', 'Ghana'),
	(86, 'GIB', 'Gibraltar'),
	(87, 'GRC', 'Greece'),
	(88, 'GRL', 'Greenland'),
	(89, 'GRD', 'Grenada'),
	(90, 'GLP', 'Guadeloupe'),
	(91, 'GUM', 'Guam'),
	(92, 'GTM', 'Guatemala'),
	(93, 'GGY', 'Guernsey'),
	(94, 'GIN', 'Guinea'),
	(95, 'GNB', 'Guinea-Bissau'),
	(96, 'GUY', 'Guyana'),
	(97, 'HTI', 'Haiti'),
	(98, 'HMD', 'Heard Island and McDonald Islands'),
	(99, 'VAT', 'Holy See'),
	(100, 'HND', 'Honduras'),
	(101, 'HKG', 'Hong Kong'),
	(102, 'HUN', 'Hungary'),
	(103, 'ISL', 'Iceland'),
	(104, 'IND', 'India'),
	(105, 'IDN', 'Indonesia'),
	(106, 'IRN', 'Iran'),
	(107, 'IRQ', 'Iraq'),
	(108, 'IRL', 'Ireland'),
	(109, 'IMN', 'Isle of Man'),
	(110, 'ISR', 'Israel'),
	(111, 'ITA', 'Italy'),
	(112, 'JAM', 'Jamaica'),
	(113, 'JPN', 'Japan'),
	(114, 'JEY', 'Jersey'),
	(115, 'JOR', 'Jordan'),
	(116, 'KAZ', 'Kazakhstan'),
	(117, 'KEN', 'Kenya'),
	(118, 'KIR', 'Kiribati'),
	(119, 'PRK', 'The Democratic People\'s Republic of Korea'),
	(120, 'KOR', 'Korea'),
	(121, 'KWT', 'Kuwait'),
	(122, 'KGZ', 'Kyrgyzstan'),
	(123, 'LAO', 'Lao People\'s Democratic Republic'),
	(124, 'LVA', 'Latvia'),
	(125, 'LBN', 'Lebanon'),
	(126, 'LSO', 'Lesotho'),
	(127, 'LBR', 'Liberia'),
	(128, 'LBY', 'Libya'),
	(129, 'LIE', 'Liechtenstein'),
	(130, 'LTU', 'Lithuania'),
	(131, 'LUX', 'Luxembourg'),
	(132, 'MAC', 'Macao'),
	(133, 'MKD', 'North Macedonia'),
	(134, 'MDG', 'Madagascar'),
	(135, 'MWI', 'Malawi'),
	(136, 'MYS', 'Malaysia'),
	(137, 'MDV', 'Maldives'),
	(138, 'MLI', 'Mali'),
	(139, 'MLT', 'Malta'),
	(140, 'MHL', 'Marshall Islands'),
	(141, 'MTQ', 'Martinique'),
	(142, 'MRT', 'Mauritania'),
	(143, 'MUS', 'Mauritius'),
	(144, 'MYT', 'Mayotte'),
	(145, 'MEX', 'Mexico'),
	(146, 'FSM', 'Federated States of Micronesia'),
	(147, 'MDA', 'The Republic of Moldova'),
	(148, 'MCO', 'Monaco'),
	(149, 'MNG', 'Mongolia'),
	(150, 'MNE', 'Montenegro'),
	(151, 'MSR', 'Montserrat'),
	(152, 'MAR', 'Morocco'),
	(153, 'MOZ', 'Mozambique'),
	(154, 'MMR', 'Myanmar'),
	(155, 'NAM', 'Namibia'),
	(156, 'NRU', 'Nauru'),
	(157, 'NPL', 'Nepal'),
	(158, 'NLD', 'Netherlands'),
	(159, 'NCL', 'New Caledonia'),
	(160, 'NZL', 'New Zealand'),
	(161, 'NIC', 'Nicaragua'),
	(162, 'NER', 'Niger'),
	(163, 'NGA', 'Nigeria'),
	(164, 'NIU', 'Niue'),
	(165, 'NFK', 'Norfolk Island'),
	(166, 'MNP', 'Northern Mariana Islands'),
	(167, 'NOR', 'Norway'),
	(168, 'OMN', 'Oman'),
	(169, 'PAK', 'Pakistan'),
	(170, 'PLW', 'Palau'),
	(171, 'PSE', 'The State of Palestine'),
	(172, 'PAN', 'Panama'),
	(173, 'PNG', 'Papua New Guinea'),
	(174, 'PRY', 'Paraguay'),
	(175, 'PER', 'Peru'),
	(176, 'PHL', 'Philippines'),
	(177, 'PCN', 'Pitcairn'),
	(178, 'POL', 'Poland'),
	(179, 'PRT', 'Portugal'),
	(180, 'PRI', 'Puerto Rico'),
	(181, 'QAT', 'Qatar'),
	(182, 'REU', 'Réunion'),
	(183, 'ROU', 'Romania'),
	(184, 'RUS', 'Russian Federation'),
	(185, 'RWA', 'Rwanda'),
	(186, 'BLM', 'Saint Barthélemy'),
	(187, 'SHN', 'Saint Helena'),
	(188, 'KNA', 'Saint Kitts and Nevis'),
	(189, 'LCA', 'Saint Lucia'),
	(190, 'MAF', 'Saint Martin'),
	(191, 'SPM', 'Saint Pierre and Miquelon'),
	(192, 'VCT', 'Saint Vincent and the Grenadines'),
	(193, 'WSM', 'Samoa'),
	(194, 'SMR', 'San Marino'),
	(195, 'STP', 'Sao Tome and Principe'),
	(196, 'SAU', 'Saudi Arabia'),
	(197, 'SEN', 'Senegal'),
	(198, 'SRB', 'Serbia'),
	(199, 'SYC', 'Seychelles'),
	(200, 'SLE', 'Sierra Leone'),
	(201, 'SGP', 'Singapore'),
	(202, 'SXM', 'Sint Maarten'),
	(203, 'SVK', 'Slovakia'),
	(204, 'SVN', 'Slovenia'),
	(205, 'SLB', 'Solomon Islands'),
	(206, 'SOM', 'Somalia'),
	(207, 'ZAF', 'South Africa'),
	(208, 'SGS', 'South Georgia and the South Sandwich Islands'),
	(209, 'SSD', 'South Sudan'),
	(210, 'ESP', 'Spain'),
	(211, 'LKA', 'Sri Lanka'),
	(212, 'SDN', 'Sudan'),
	(213, 'SUR', 'Suriname'),
	(214, 'SJM', 'Svalbard'),
	(215, 'SWE', 'Sweden'),
	(216, 'CHE', 'Switzerland'),
	(217, 'SYR', 'Syrian Arab Republic'),
	(218, 'TWN', 'Taiwan'),
	(219, 'TJK', 'Tajikistan'),
	(220, 'TZA', 'Tanzania,\n        the United Republic of'),
	(221, 'THA', 'Thailand'),
	(222, 'TLS', 'Timor-Leste'),
	(223, 'TGO', 'Togo'),
	(224, 'TKL', 'Tokelau'),
	(225, 'TON', 'Tonga'),
	(226, 'TTO', 'Trinidad and Tobago'),
	(227, 'TUN', 'Tunisia'),
	(228, 'TUR', 'Turkey'),
	(229, 'TKM', 'Turkmenistan'),
	(230, 'TCA', 'Turks and Caicos Islands'),
	(231, 'TUV', 'Tuvalu'),
	(232, 'UGA', 'Uganda'),
	(233, 'UKR', 'Ukraine'),
	(234, 'ARE', 'United Arab Emirates'),
	(235, 'GBR', 'United Kingdom of Great Britain and Northern Ireland'),
	(236, 'UMI', 'United States Minor Outlying Islands'),
	(237, 'USA', 'United States of America'),
	(238, 'URY', 'Uruguay'),
	(239, 'UZB', 'Uzbekistan'),
	(240, 'VUT', 'Vanuatu'),
	(241, 'VEN', 'Venezuela'),
	(242, 'VNM', 'Vietnam'),
	(243, 'VGB', 'Virgin Islands'),
	(244, 'VIR', 'The Virgin Islands of the United States'),
	(245, 'WLF', 'Wallis and Futuna'),
	(246, 'ESH', 'Western Sahara'),
	(247, 'YEM', 'Yemen'),
	(248, 'ZMB', 'Zambia'),
	(249, 'ZWE', 'Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.data_node_profile
CREATE TABLE IF NOT EXISTS `data_node_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf74hcv20cb7w09cahvg9vfn2g` (`parent_id`),
  CONSTRAINT `FKf74hcv20cb7w09cahvg9vfn2g` FOREIGN KEY (`parent_id`) REFERENCES `data_node_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.data_node_profile: ~0 rows (approximately)
/*!40000 ALTER TABLE `data_node_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_node_profile` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.data_node_user
CREATE TABLE IF NOT EXISTS `data_node_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_login` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_sustainable` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `data_node_profile_id` bigint(20) DEFAULT NULL,
  `user_session_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbgb42ua4tephix6iqf82w743t` (`country_id`),
  KEY `FKjgeygwdakrymxv5bh53pexd3c` (`data_node_profile_id`),
  KEY `FKmdch66u0eieo463g769yb6r2r` (`user_session_id`),
  CONSTRAINT `FKbgb42ua4tephix6iqf82w743t` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKjgeygwdakrymxv5bh53pexd3c` FOREIGN KEY (`data_node_profile_id`) REFERENCES `data_node_profile` (`id`),
  CONSTRAINT `FKmdch66u0eieo463g769yb6r2r` FOREIGN KEY (`user_session_id`) REFERENCES `user_session` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.data_node_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `data_node_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_node_user` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.data_node_user_send_mail_for_tableau
CREATE TABLE IF NOT EXISTS `data_node_user_send_mail_for_tableau` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `is_done` bit(1) DEFAULT NULL,
  `data_node_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiq6n0xaa808adh1x8hof270x5` (`data_node_user_id`),
  CONSTRAINT `FKiq6n0xaa808adh1x8hof270x5` FOREIGN KEY (`data_node_user_id`) REFERENCES `data_node_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.data_node_user_send_mail_for_tableau: ~0 rows (approximately)
/*!40000 ALTER TABLE `data_node_user_send_mail_for_tableau` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_node_user_send_mail_for_tableau` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.data_node_user_token_black_list
CREATE TABLE IF NOT EXISTS `data_node_user_token_black_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `token_login` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeqwun5d0iix2y9fy2wegsiipf` (`user_id`),
  CONSTRAINT `FKeqwun5d0iix2y9fy2wegsiipf` FOREIGN KEY (`user_id`) REFERENCES `data_node_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.data_node_user_token_black_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `data_node_user_token_black_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_node_user_token_black_list` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.data_node_user_verify
CREATE TABLE IF NOT EXISTS `data_node_user_verify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `data_node_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK18f0kxq8qfh8x5owojl3ao0g7` (`data_node_user_id`),
  CONSTRAINT `FK18f0kxq8qfh8x5owojl3ao0g7` FOREIGN KEY (`data_node_user_id`) REFERENCES `data_node_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.data_node_user_verify: ~0 rows (approximately)
/*!40000 ALTER TABLE `data_node_user_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_node_user_verify` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc
CREATE TABLE IF NOT EXISTS `doc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_page` int(11) DEFAULT NULL,
  `data_visualization_status` bit(1) DEFAULT b'0',
  `deleted_at` datetime DEFAULT NULL,
  `has_covenant_labels` bit(1) DEFAULT b'0',
  `has_pdf` bit(1) DEFAULT b'0',
  `has_meta_data` bit(1) DEFAULT b'0',
  `name` longtext,
  `path_save` varchar(255) DEFAULT NULL,
  `previous_status` int(11) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `step_delete` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnwg6rgtm0c82c1ns9e1l6o2st` (`created_by`),
  KEY `FKil45vcg2w3id92vl9v2959xi0` (`updated_by`),
  KEY `FKi95cd9s9rp8an22b25wl5jmcg` (`deleted_by`),
  KEY `FKd04gdgcv76kqgyo0f7emtxlaf` (`loan_id`),
  CONSTRAINT `FKd04gdgcv76kqgyo0f7emtxlaf` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FKi95cd9s9rp8an22b25wl5jmcg` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKil45vcg2w3id92vl9v2959xi0` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKnwg6rgtm0c82c1ns9e1l6o2st` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.document_doc_type
CREATE TABLE IF NOT EXISTS `document_doc_type` (
  `doc_id` bigint(20) NOT NULL,
  `doc_type_id` bigint(20) NOT NULL,
  KEY `FKndda5p5sstmlu443nm2y51dwn` (`doc_type_id`),
  KEY `FKolyi1c513o2ex2wn3m03ab3gw` (`doc_id`),
  CONSTRAINT `FKndda5p5sstmlu443nm2y51dwn` FOREIGN KEY (`doc_type_id`) REFERENCES `doc_type` (`id`),
  CONSTRAINT `FKolyi1c513o2ex2wn3m03ab3gw` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.document_doc_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `document_doc_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_doc_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.document_master_data
CREATE TABLE IF NOT EXISTS `document_master_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.document_master_data: ~96 rows (approximately)
/*!40000 ALTER TABLE `document_master_data` DISABLE KEYS */;
INSERT INTO `document_master_data` (`id`, `entity_type`, `name`, `ordering`) VALUES
	(1, 'ProgrammeType', 'Title 1', 1),
	(2, 'ProgrammeType', 'Title 2', 2),
	(3, 'ProgrammeType', 'Title 3', 3),
	(4, 'ProgrammeType', 'Title 4', 4),
	(5, 'ProgrammeType', 'Title 5', 5),
	(6, 'ProgrammeType', 'Title 6', 6),
	(7, 'ProgrammeType', 'Title 7', 7),
	(8, 'ProgrammeType', 'Title 8', 8),
	(9, 'ProgrammeType', 'Title 9', 9),
	(10, 'ProgrammeType', 'Title 10', 10),
	(11, 'BondType', 'Title 1', 1),
	(12, 'BondType', 'Title 2', 2),
	(13, 'BondType', 'Title 3', 3),
	(14, 'BondType', 'Title 4', 4),
	(15, 'BondType', 'Title 5', 5),
	(16, 'BondType', 'Title 6', 6),
	(17, 'BondType', 'Title 7', 7),
	(18, 'BondType', 'Title 8', 8),
	(19, 'BondType', 'Title 9', 9),
	(20, 'BondType', 'Title 10', 10),
	(21, 'NoteType', 'Title 1', 1),
	(22, 'NoteType', 'Title 2', 2),
	(23, 'NoteType', 'Title 3', 3),
	(24, 'NoteType', 'Title 4', 4),
	(25, 'NoteType', 'Title 5', 5),
	(26, 'NoteType', 'Title 6', 6),
	(27, 'NoteType', 'Title 7', 7),
	(28, 'NoteType', 'Title 8', 8),
	(29, 'NoteType', 'Title 9', 9),
	(30, 'NoteType', 'Title 10', 10),
	(31, 'AccrualDaysType', 'Title 1', 1),
	(32, 'AccrualDaysType', 'Title 2', 2),
	(33, 'AccrualDaysType', 'Title 3', 3),
	(34, 'AccrualDaysType', 'Title 4', 4),
	(35, 'AccrualDaysType', 'Title 5', 5),
	(36, 'AccrualDaysType', 'Title 6', 6),
	(37, 'AccrualDaysType', 'Title 7', 7),
	(38, 'AccrualDaysType', 'Title 8', 8),
	(39, 'AccrualDaysType', 'Title 9', 9),
	(40, 'AccrualDaysType', 'Title 10', 10),
	(41, 'ReductionMethod', 'Title 1', 1),
	(42, 'ReductionMethod', 'Title 2', 2),
	(43, 'ReductionMethod', 'Title 3', 3),
	(44, 'ReductionMethod', 'Title 4', 4),
	(45, 'ReductionMethod', 'Title 5', 5),
	(46, 'ReductionMethod', 'Title 6', 6),
	(47, 'ReductionMethod', 'Title 7', 7),
	(48, 'ReductionMethod', 'Title 8', 8),
	(49, 'ReductionMethod', 'Title 9', 9),
	(50, 'ReductionMethod', 'Title 10', 10),
	(51, 'InterestCurrency', 'G3', 1),
	(52, 'InterestCurrency', 'SGD', 2),
	(53, 'InterestCurrency', 'Other local currency', 3),
	(54, 'InterestCurrency', 'Onshore RMB', 4),
	(55, 'InterestCurrency', 'Multi-currency', 5),
	(56, 'InterestCurrency', 'Others', 6),
	(57, 'StandardsList', 'ASEAN Green Bond Standards', 1),
	(58, 'StandardsList', 'ASEAN Social Bond Standards', 2),
	(59, 'StandardsList', 'ASEAN Sustainability Bond Standards', 3),
	(60, 'StandardsList', 'China Green Bond Endorsed Project Catalogue of the PBoC', 4),
	(61, 'StandardsList', 'Green Bond Guidance (NDRC)', 5),
	(62, 'StandardsList', 'Green Bond Guidelines (Japan)', 6),
	(63, 'StandardsList', 'Green Bond Principles', 7),
	(64, 'StandardsList', 'Green Industries Guidance', 8),
	(65, 'StandardsList', 'Green Loan Principles', 9),
	(66, 'StandardsList', 'Guidelines for Establishing the Green Financial System', 10),
	(67, 'StandardsList', 'Social Bond Principles', 11),
	(68, 'StandardsList', 'Social Loan Principles', 12),
	(69, 'StandardsList', 'Sustainability Bond Guidelines', 13),
	(70, 'StandardsList', 'Sustainability-Linked Bond Principles', 14),
	(71, 'StandardsList', 'Sustainability-Linked Loan Principles', 15),
	(72, 'StandardsList', 'The Climate Bonds Standard', 16),
	(73, 'StandardsList', 'The EU Green Bond Standard', 17),
	(74, 'StandardsList', 'The PBoC’s Green Bond Guidelines', 18),
	(75, 'StandardsList', 'The PBoC\'s Green Bond Categories', 19),
	(76, 'StandardsList', 'Others', 20),
	(77, 'ExternalReviewProvider', 'CICERO', 1),
	(78, 'ExternalReviewProvider', 'Beijing Zhongcai Green Financing Consultant Ltd.', 2),
	(79, 'ExternalReviewProvider', 'Carbon Trust Assurance Limited', 3),
	(80, 'ExternalReviewProvider', 'CECEP Environmental Consulting Group', 4),
	(81, 'ExternalReviewProvider', 'Deloitte', 5),
	(82, 'ExternalReviewProvider', 'DNV GL', 6),
	(83, 'ExternalReviewProvider', 'Emergent Ventures India', 7),
	(84, 'ExternalReviewProvider', 'Ernst & Young', 8),
	(85, 'ExternalReviewProvider', 'Grant Thornton', 9),
	(86, 'ExternalReviewProvider', 'Hong Kong Quality Assurance Agency (HKQAA)', 10),
	(87, 'ExternalReviewProvider', 'ISS-ESG', 11),
	(88, 'ExternalReviewProvider', 'Japan Credit Rating Agency,\n        Ltd.', 12),
	(89, ' ExternalReviewProvider ', ' KPMG ', 13),
	(90, ' ExternalReviewProvider ', ' Moody’s', 14),
	(91, 'ExternalReviewProvider', 'PwC', 15),
	(92, 'ExternalReviewProvider', 'Standard & Poor’s', 16),
	(93, 'ExternalReviewProvider', 'Sustainalytics', 17),
	(94, 'ExternalReviewProvider', 'Uncertified/Self-Certified', 18),
	(95, 'ExternalReviewProvider', 'Vigeo Eiris', 19),
	(96, 'ExternalReviewProvider', 'Others', 20);
/*!40000 ALTER TABLE `document_master_data` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_chapter
CREATE TABLE IF NOT EXISTS `doc_chapter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` longtext,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `path_save` varchar(255) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKru84w44s4j8ebi17mhyp4cu1b` (`created_by`),
  KEY `FKcejj3d3iaoc3oo1utuir5gpm3` (`updated_by`),
  KEY `FK2lnitg2n2p55b79ghbbgg3ruf` (`doc_id`),
  KEY `FKnw3qe6vohlirbhpbc9dfefmty` (`section_id`),
  CONSTRAINT `FK2lnitg2n2p55b79ghbbgg3ruf` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`),
  CONSTRAINT `FKcejj3d3iaoc3oo1utuir5gpm3` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKnw3qe6vohlirbhpbc9dfefmty` FOREIGN KEY (`section_id`) REFERENCES `ui_label` (`id`),
  CONSTRAINT `FKru84w44s4j8ebi17mhyp4cu1b` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_chapter: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_chapter` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_esg
CREATE TABLE IF NOT EXISTS `doc_esg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `allocation_report_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `framework_date` datetime DEFAULT NULL,
  `placeholders` longtext,
  `sgx_sfi` bit(1) DEFAULT b'0',
  `site_url` varchar(1000) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK629fwpcgl4pawswfer0jjg757` (`doc_id`),
  CONSTRAINT `FK629fwpcgl4pawswfer0jjg757` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_esg: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_esg` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_esg` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_esg_field_data
CREATE TABLE IF NOT EXISTS `doc_esg_field_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(100) DEFAULT NULL,
  `other_value` varchar(255) DEFAULT NULL,
  `doc_esg_id` bigint(20) DEFAULT NULL,
  `document_master_id` bigint(20) DEFAULT NULL,
  `loan_esg_id` bigint(20) DEFAULT NULL,
  `loan_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg3gr2yr8uotulqvq4mhslxmy9` (`doc_esg_id`),
  KEY `FK4cj6vhhxinwsetrfpia5ragbv` (`document_master_id`),
  KEY `FKdd9pwploa00t5r3eju8sgnoq` (`loan_esg_id`),
  KEY `FKndqargy8v3j21g2xtgn7eqits` (`loan_master_id`),
  CONSTRAINT `FK4cj6vhhxinwsetrfpia5ragbv` FOREIGN KEY (`document_master_id`) REFERENCES `document_master_data` (`id`),
  CONSTRAINT `FKdd9pwploa00t5r3eju8sgnoq` FOREIGN KEY (`loan_esg_id`) REFERENCES `loan_esg` (`id`),
  CONSTRAINT `FKg3gr2yr8uotulqvq4mhslxmy9` FOREIGN KEY (`doc_esg_id`) REFERENCES `doc_esg` (`id`),
  CONSTRAINT `FKndqargy8v3j21g2xtgn7eqits` FOREIGN KEY (`loan_master_id`) REFERENCES `loan_master_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_esg_field_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_esg_field_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_esg_field_data` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_esg_report_url
CREATE TABLE IF NOT EXISTS `doc_esg_report_url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `url` varchar(10000) DEFAULT NULL,
  `doc_esg_id` bigint(20) DEFAULT NULL,
  `obligor_id` bigint(20) DEFAULT NULL,
  `loan_esg_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK118822a6fuvd0yvlbseixy2i2` (`doc_esg_id`),
  KEY `FKn99ypci8puc84dcba4w92opto` (`obligor_id`),
  KEY `FKcadlti7bihn8f2h8u4775j1cx` (`loan_esg_id`),
  CONSTRAINT `FK118822a6fuvd0yvlbseixy2i2` FOREIGN KEY (`doc_esg_id`) REFERENCES `doc_esg` (`id`),
  CONSTRAINT `FKcadlti7bihn8f2h8u4775j1cx` FOREIGN KEY (`loan_esg_id`) REFERENCES `loan_esg` (`id`),
  CONSTRAINT `FKn99ypci8puc84dcba4w92opto` FOREIGN KEY (`obligor_id`) REFERENCES `obligor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_esg_report_url: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_esg_report_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_esg_report_url` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_label_import_log
CREATE TABLE IF NOT EXISTS `doc_label_import_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `entity_type` varchar(255) NOT NULL,
  `log_file_error_name` varchar(255) DEFAULT NULL,
  `log_file_error_path_save_s3` varchar(255) DEFAULT NULL,
  `log_file_error_path_save_server` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `total_fail` int(11) DEFAULT NULL,
  `total_success` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_type_index` (`entity_type`),
  KEY `FK2y5x62oct1t8x7rws3t9bir01` (`created_by`),
  KEY `FKpy5rybl573maswfqe778qe12k` (`updated_by`),
  CONSTRAINT `FK2y5x62oct1t8x7rws3t9bir01` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKpy5rybl573maswfqe778qe12k` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_label_import_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_label_import_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_label_import_log` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_label_item
CREATE TABLE IF NOT EXISTS `doc_label_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `entity_type` varchar(255) NOT NULL,
  `extraction` longtext,
  `list_threshold` longtext,
  `ordering` int(11) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `doc_label_label_id` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_type_index` (`entity_type`),
  KEY `FKe0pp0qn6hh90fn380aw6d30hx` (`created_by`),
  KEY `FKa1vqadyxo1bx0jb4o2pql4gk5` (`doc_id`),
  KEY `FKoxi99ysnpr5cac7ix242p0hcp` (`doc_label_label_id`),
  KEY `FKdlwmpu907704i4f2b3uto42oq` (`updated_by`),
  CONSTRAINT `FKa1vqadyxo1bx0jb4o2pql4gk5` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`),
  CONSTRAINT `FKdlwmpu907704i4f2b3uto42oq` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKe0pp0qn6hh90fn380aw6d30hx` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKoxi99ysnpr5cac7ix242p0hcp` FOREIGN KEY (`doc_label_label_id`) REFERENCES `doc_label_label` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_label_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_label_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_label_item` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_label_item_label
CREATE TABLE IF NOT EXISTS `doc_label_item_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `entity_type` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `doc_label_item_id` bigint(20) DEFAULT NULL,
  `doc_label_label_id` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `loan_label_item_id` bigint(20) DEFAULT NULL,
  `loan_label_label_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_type_index` (`entity_type`),
  KEY `FKsjg3wdkokrd062buj9vk76dsi` (`created_by`),
  KEY `FKrfx91kg1qm6861eeodxcf9f2o` (`doc_id`),
  KEY `FKi22f5gb45y6nq034ci5gsx23l` (`doc_label_item_id`),
  KEY `FKmostfq4lv0auyby24t34pup6a` (`doc_label_label_id`),
  KEY `FKc8v1d0rlko88w27g9pesk6i5v` (`updated_by`),
  KEY `FK7mqyvjg81yb19w3jyqh7r9p2c` (`loan_id`),
  KEY `FKmslrfwbywummsvu9vf99fbrhi` (`loan_label_item_id`),
  KEY `FKo1lvn0t37b3viwxjriyjcuhty` (`loan_label_label_id`),
  CONSTRAINT `FK7mqyvjg81yb19w3jyqh7r9p2c` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FKc8v1d0rlko88w27g9pesk6i5v` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKi22f5gb45y6nq034ci5gsx23l` FOREIGN KEY (`doc_label_item_id`) REFERENCES `doc_label_item` (`id`),
  CONSTRAINT `FKmostfq4lv0auyby24t34pup6a` FOREIGN KEY (`doc_label_label_id`) REFERENCES `doc_label_label` (`id`),
  CONSTRAINT `FKmslrfwbywummsvu9vf99fbrhi` FOREIGN KEY (`loan_label_item_id`) REFERENCES `loan_label_item` (`id`),
  CONSTRAINT `FKo1lvn0t37b3viwxjriyjcuhty` FOREIGN KEY (`loan_label_label_id`) REFERENCES `doc_label_label` (`id`),
  CONSTRAINT `FKrfx91kg1qm6861eeodxcf9f2o` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`),
  CONSTRAINT `FKsjg3wdkokrd062buj9vk76dsi` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_label_item_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_label_item_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_label_item_label` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_label_label
CREATE TABLE IF NOT EXISTS `doc_label_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` longtext,
  `entity_type` varchar(255) NOT NULL,
  `example` longtext,
  `name` longtext NOT NULL,
  `status` int(11) DEFAULT '1',
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_type_index` (`entity_type`),
  KEY `FK6s3luodtx6wju0t19h1iq786q` (`created_by`),
  KEY `FKafmga78i053rrrrfsgd2bbu8r` (`deleted_by`),
  KEY `FKpcwcwsh0tefoiro8u50br8u9j` (`parent_id`),
  KEY `FK3x7sb2fs7rxcl40qklclyfqf9` (`updated_by`),
  CONSTRAINT `FK3x7sb2fs7rxcl40qklclyfqf9` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK6s3luodtx6wju0t19h1iq786q` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKafmga78i053rrrrfsgd2bbu8r` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKpcwcwsh0tefoiro8u50br8u9j` FOREIGN KEY (`parent_id`) REFERENCES `doc_label_label` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_label_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_label_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_label_label` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_metadata
CREATE TABLE IF NOT EXISTS `doc_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `search` longtext,
  `status` int(11) DEFAULT NULL,
  `value` longtext,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdp5jncb90vjh57gcqccm08t2e` (`created_by`),
  KEY `FK1kndup5j5n56m7f4gcgfrjmmr` (`updated_by`),
  KEY `FKponuqxfvllc2xqap3rxykym9s` (`doc_id`),
  CONSTRAINT `FK1kndup5j5n56m7f4gcgfrjmmr` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKdp5jncb90vjh57gcqccm08t2e` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKponuqxfvllc2xqap3rxykym9s` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_metadata: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_metadata` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_type
CREATE TABLE IF NOT EXISTS `doc_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK46rckxjlfi3b4o5kfaqxxt1ow` (`created_by`),
  KEY `FKni4v9941uduy7dlroeijamn3q` (`updated_by`),
  CONSTRAINT `FK46rckxjlfi3b4o5kfaqxxt1ow` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKni4v9941uduy7dlroeijamn3q` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `doc_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.doc_upload_log
CREATE TABLE IF NOT EXISTS `doc_upload_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `message` longtext,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbk8eri941nk8s189er4dhc80f` (`created_by`),
  CONSTRAINT `FKbk8eri941nk8s189er4dhc80f` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.doc_upload_log: ~5 rows (approximately)
/*!40000 ALTER TABLE `doc_upload_log` DISABLE KEYS */;
INSERT INTO `doc_upload_log` (`id`, `create_at`, `message`, `name`, `status`, `type`, `created_by`) VALUES
	(7, '2023-03-16 11:00:52', NULL, 'Get_Started_With_Smallpdf.pdf', 1, 'DOCUMENT', 3),
	(9, '2023-03-17 03:17:36', NULL, 'report.pdf', 1, 'DOCUMENT', 7),
	(15, '2023-03-20 06:42:01', NULL, '230315 MN Website Privacy Policy.pdf', 1, 'DOCUMENT', 47),
	(19, '2023-03-20 06:50:46', NULL, 'privacy-policy.pdf', 1, 'DOCUMENT', 46),
	(21, '2023-03-20 08:18:42', NULL, 'Terms of Service.pdf', 1, 'DOCUMENT', 4);
/*!40000 ALTER TABLE `doc_upload_log` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.eod_item
CREATE TABLE IF NOT EXISTS `eod_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `activity` int(11) DEFAULT NULL,
  `covenant` longtext,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `list_threshold` longtext,
  `ordering` int(11) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `eod_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn8j5hsuu3n73eyaw3j8qy1bwo` (`created_by`),
  KEY `FKp9sm8fw3c23y4k7id6uxstsdc` (`updated_by`),
  KEY `FK5gm1vg7a15qt17f8b5esjtikg` (`doc_id`),
  KEY `FKj43worr29vn9ow79brjif2kbt` (`eod_category_id`),
  CONSTRAINT `FK5gm1vg7a15qt17f8b5esjtikg` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`),
  CONSTRAINT `FKj43worr29vn9ow79brjif2kbt` FOREIGN KEY (`eod_category_id`) REFERENCES `eod_label_category` (`id`),
  CONSTRAINT `FKn8j5hsuu3n73eyaw3j8qy1bwo` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKp9sm8fw3c23y4k7id6uxstsdc` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.eod_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `eod_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eod_item` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.eod_label
CREATE TABLE IF NOT EXISTS `eod_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  `is_deleted_label` bit(1) DEFAULT b'0',
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `eod_item_id` bigint(20) DEFAULT NULL,
  `eod_label_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmjqtmy4j9d2vis4gcdgbdbb9w` (`created_by`),
  KEY `FK9hyio8hn85eht8i325gbp0iq8` (`updated_by`),
  KEY `FKodv3l29g7kpvat0awibanfpbd` (`deleted_by`),
  KEY `FK8v5oh1c83rjyuy24nser8deeg` (`doc_id`),
  KEY `FKofxple4c5qcdl8yo6rm6akwfx` (`eod_item_id`),
  KEY `FKejyk19slu3o2p9px7bsfhw19j` (`eod_label_category_id`),
  CONSTRAINT `FK8v5oh1c83rjyuy24nser8deeg` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`),
  CONSTRAINT `FK9hyio8hn85eht8i325gbp0iq8` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKejyk19slu3o2p9px7bsfhw19j` FOREIGN KEY (`eod_label_category_id`) REFERENCES `eod_label_category` (`id`),
  CONSTRAINT `FKmjqtmy4j9d2vis4gcdgbdbb9w` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKodv3l29g7kpvat0awibanfpbd` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKofxple4c5qcdl8yo6rm6akwfx` FOREIGN KEY (`eod_item_id`) REFERENCES `eod_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.eod_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `eod_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `eod_label` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.eod_label_category
CREATE TABLE IF NOT EXISTS `eod_label_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` longtext,
  `example` longtext,
  `name` longtext,
  `status` int(11) DEFAULT '1',
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5snqbon1t074xknd4l09levq0` (`created_by`),
  KEY `FKg61ope6f7jb6otnjiajpcynrn` (`updated_by`),
  KEY `FKtdl2lpl8ad2m3su2xf73yvytm` (`deleted_by`),
  KEY `FK5dc9b339w4o70l0xxyu8hi2ro` (`parent_id`),
  CONSTRAINT `FK5dc9b339w4o70l0xxyu8hi2ro` FOREIGN KEY (`parent_id`) REFERENCES `eod_label_category` (`id`),
  CONSTRAINT `FK5snqbon1t074xknd4l09levq0` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKg61ope6f7jb6otnjiajpcynrn` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKtdl2lpl8ad2m3su2xf73yvytm` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.eod_label_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `eod_label_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `eod_label_category` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.form_field
CREATE TABLE IF NOT EXISTS `form_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) DEFAULT NULL,
  `attribute_type` varchar(100) DEFAULT NULL,
  `entity_type` varchar(100) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `target_attribute` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.form_field: ~44 rows (approximately)
/*!40000 ALTER TABLE `form_field` DISABLE KEYS */;
INSERT INTO `form_field` (`id`, `attribute`, `attribute_type`, `entity_type`, `label`, `ordering`, `target_attribute`) VALUES
	(1, 'rating_other_1', 'text', 'obligor', 'Obligor Rating - Others 1', 1, 'rating_others'),
	(2, 'rating_other_2', 'text', 'obligor', 'Obligor Rating - Others 2', 2, 'rating_others'),
	(3, 'rating_other_3', 'text', 'obligor', 'Obligor Rating - Others 3', 3, 'rating_others'),
	(4, 'placeholder_1', 'text', 'obligor', 'Title 1', 4, 'placeholders'),
	(5, 'placeholder_2', 'text', 'obligor', 'Title 2', 5, 'placeholders'),
	(6, 'placeholder_3', 'text', 'obligor', 'Title 3', 6, 'placeholders'),
	(7, 'placeholder_4', 'text', 'obligor', 'Title 4', 7, 'placeholders'),
	(8, 'placeholder_5', 'text', 'obligor', 'Title 5', 8, 'placeholders'),
	(9, 'placeholder_6', 'text', 'obligor', 'Title 6', 9, 'placeholders'),
	(10, 'placeholder_7', 'text', 'obligor', 'Title 7', 10, 'placeholders'),
	(11, 'placeholder_8', 'text', 'obligor', 'Title 8', 11, 'placeholders'),
	(12, 'placeholder_9', 'text', 'obligor', 'Title 9', 12, 'placeholders'),
	(13, 'placeholder_10', 'text', 'obligor', 'Title 10', 13, 'placeholders'),
	(14, 'placeholder_11', 'text', 'obligor', 'Title 11', 14, 'placeholders'),
	(15, 'placeholder_12', 'text', 'obligor', 'Title 12', 15, 'placeholders'),
	(16, 'placeholder_13', 'text', 'obligor', 'Title 13', 16, 'placeholders'),
	(17, 'placeholder_14', 'text', 'obligor', 'Title 14', 17, 'placeholders'),
	(18, 'placeholder_15', 'text', 'obligor', 'Title 15', 18, 'placeholders'),
	(19, 'placeholder_16', 'text', 'obligor', 'Title 16', 19, 'placeholders'),
	(20, 'placeholder_17', 'text', 'obligor', 'Title 17', 20, 'placeholders'),
	(21, 'placeholder_18', 'text', 'obligor', 'Title 18', 21, 'placeholders'),
	(22, 'placeholder_19', 'text', 'obligor', 'Title 19', 22, 'placeholders'),
	(23, 'placeholder_20', 'text', 'obligor', 'Title 20', 23, 'placeholders'),
	(38, 'ratingBucket', 'text', 'obligor', 'Obligor Ratings Bucket', 38, NULL),
	(39, 'Title41', 'text', 'DOC_METADATA_ESG', 'Title 41', 1, 'placeholders'),
	(40, 'Title42', 'text', 'DOC_METADATA_ESG', 'Title 42', 2, 'placeholders'),
	(41, 'Title43', 'text', 'DOC_METADATA_ESG', 'Title 43', 3, 'placeholders'),
	(42, 'Title44', 'text', 'DOC_METADATA_ESG', 'Title 44', 4, 'placeholders'),
	(43, 'Title45', 'text', 'DOC_METADATA_ESG', 'Title 45', 5, 'placeholders'),
	(44, 'Title46', 'text', 'DOC_METADATA_ESG', 'Title 46', 6, 'placeholders'),
	(45, 'Title47', 'text', 'DOC_METADATA_ESG', 'Title 47', 7, 'placeholders'),
	(46, 'Title48', 'text', 'DOC_METADATA_ESG', 'Title 48', 8, 'placeholders'),
	(47, 'Title49', 'text', 'DOC_METADATA_ESG', 'Title 49', 9, 'placeholders'),
	(48, 'Title50', 'text', 'DOC_METADATA_ESG', 'Title 50', 10, 'placeholders'),
	(49, 'Title51', 'text', 'DOC_METADATA_ESG', 'Title 51', 11, 'placeholders'),
	(50, 'Title52', 'text', 'DOC_METADATA_ESG', 'Title 52', 12, 'placeholders'),
	(51, 'Title53', 'text', 'DOC_METADATA_ESG', 'Title 53', 13, 'placeholders'),
	(52, 'Title54', 'text', 'DOC_METADATA_ESG', 'Title 54', 14, 'placeholders'),
	(53, 'Title55', 'text', 'DOC_METADATA_ESG', 'Title 55', 15, 'placeholders'),
	(54, 'Title56', 'text', 'DOC_METADATA_ESG', 'Title 56', 16, 'placeholders'),
	(55, 'Title57', 'text', 'DOC_METADATA_ESG', 'Title 57', 17, 'placeholders'),
	(56, 'Title58', 'text', 'DOC_METADATA_ESG', 'Title 58', 18, 'placeholders'),
	(57, 'Title59', 'text', 'DOC_METADATA_ESG', 'Title 59', 19, 'placeholders'),
	(58, 'Title60', 'text', 'DOC_METADATA_ESG', 'Title 60', 20, 'placeholders');
/*!40000 ALTER TABLE `form_field` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.import_log
CREATE TABLE IF NOT EXISTS `import_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `import_file` varchar(255) DEFAULT NULL,
  `import_file_path_save` varchar(255) DEFAULT NULL,
  `log_file` varchar(255) DEFAULT NULL,
  `log_file_path_save` varchar(255) DEFAULT NULL,
  `progress` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4j06hmesva4x8cetmaywpggy` (`user_id`),
  CONSTRAINT `FKt4j06hmesva4x8cetmaywpggy` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.import_log: ~26 rows (approximately)
/*!40000 ALTER TABLE `import_log` DISABLE KEYS */;
INSERT INTO `import_log` (`id`, `create_at`, `import_file`, `import_file_path_save`, `log_file`, `log_file_path_save`, `progress`, `status`, `type`, `updated_at`, `user_id`) VALUES
	(3, '2023-03-15 16:33:46', 'Template_Obligor_Metadata.xlsx', 'uploads/mass-upload/3/Template_Obligor_Metadata.xlsx', 'uploads/mass_upload_log/obligor/3_log_doc_obligor_15032023_16-33-45.xlsx', 'uploads/mass-upload/3/3_log_doc_obligor_15032023_16-33-45.xlsx', 100, 2, 'OBLIGOR', '2023-03-15 16:33:47', 3),
	(4, '2023-03-16 02:02:46', 'Template_Obligor_Metadata (7).xlsx', 'uploads/mass-upload/4/Template_Obligor_Metadata (7).xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_16032023_02-02-45.xlsx', 'uploads/mass-upload/4/4_log_doc_obligor_16032023_02-02-45.xlsx', 100, 2, 'OBLIGOR', '2023-03-16 02:02:46', 4),
	(5, '2023-03-16 02:43:49', 'Template_Obligor_Metadata - Kay Do1.xlsx', 'uploads/mass-upload/5/Template_Obligor_Metadata - Kay Do1.xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_16032023_02-43-48.xlsx', 'uploads/mass-upload/5/4_log_doc_obligor_16032023_02-43-48.xlsx', 100, 2, 'OBLIGOR', '2023-03-16 02:43:50', 4),
	(6, '2023-03-16 02:45:48', 'Template_Obligor_Metadata - Kay Do1.xlsx', 'uploads/mass-upload/6/Template_Obligor_Metadata - Kay Do1.xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_16032023_02-45-47.xlsx', 'uploads/mass-upload/6/4_log_doc_obligor_16032023_02-45-47.xlsx', 100, 2, 'OBLIGOR', '2023-03-16 02:45:49', 4),
	(7, '2023-03-16 03:08:53', 'Template_Obligor_Metadata - Kay Do1.xlsx', 'uploads/mass-upload/7/Template_Obligor_Metadata - Kay Do1.xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_16032023_03-08-52.xlsx', 'uploads/mass-upload/7/4_log_doc_obligor_16032023_03-08-52.xlsx', 100, 2, 'OBLIGOR', '2023-03-16 03:08:55', 4),
	(8, '2023-03-16 07:05:07', 'Template_Obligor_Metadata - Kay Do2.xlsx', 'uploads/mass-upload/8/Template_Obligor_Metadata - Kay Do2.xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_16032023_07-05-06.xlsx', 'uploads/mass-upload/8/4_log_doc_obligor_16032023_07-05-06.xlsx', 100, 2, 'OBLIGOR', '2023-03-16 07:05:08', 4),
	(9, '2023-03-20 03:30:36', 'Template_borrower smoke test 203.xlsx', 'uploads/mass-upload/9/Template_borrower smoke test 203.xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_20032023_03-30-35.xlsx', 'uploads/mass-upload/9/4_log_doc_obligor_20032023_03-30-35.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 03:30:37', 4),
	(10, '2023-03-20 03:34:39', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/10/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/4_log_doc_metadata_20032023_03-34-39.xlsx', 'uploads/mass-upload/10/4_log_doc_metadata_20032023_03-34-39.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 03:34:41', 4),
	(11, '2023-03-20 03:36:15', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/11/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/4_log_doc_metadata_20032023_03-36-15.xlsx', 'uploads/mass-upload/11/4_log_doc_metadata_20032023_03-36-15.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 03:36:16', 4),
	(12, '2023-03-20 03:38:20', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/12/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/4_log_doc_metadata_20032023_03-38-19.xlsx', 'uploads/mass-upload/12/4_log_doc_metadata_20032023_03-38-19.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 03:38:22', 4),
	(13, '2023-03-20 03:39:33', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/13/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/4_log_doc_metadata_20032023_03-39-32.xlsx', 'uploads/mass-upload/13/4_log_doc_metadata_20032023_03-39-32.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 03:39:34', 4),
	(14, '2023-03-20 03:59:39', 'Template_borrower smoke test 203.xlsx', 'uploads/mass-upload/14/Template_borrower smoke test 203.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_03-59-38.xlsx', 'uploads/mass-upload/14/46_log_doc_obligor_20032023_03-59-38.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 03:59:39', 46),
	(15, '2023-03-20 03:59:39', 'Template_borrower smoke test 203.xlsx', 'uploads/mass-upload/15/Template_borrower smoke test 203.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_03-59-38.xlsx', 'uploads/mass-upload/15/46_log_doc_obligor_20032023_03-59-38.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 03:59:39', 46),
	(16, '2023-03-20 04:00:00', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/16/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/46_log_doc_metadata_20032023_03-59-59.xlsx', 'uploads/mass-upload/16/46_log_doc_metadata_20032023_03-59-59.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 04:00:05', 46),
	(17, '2023-03-20 04:00:00', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/17/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/46_log_doc_metadata_20032023_03-59-59.xlsx', 'uploads/mass-upload/17/46_log_doc_metadata_20032023_03-59-59.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 04:00:05', 46),
	(18, '2023-03-20 06:39:13', 'Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass-upload/18/Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_06-39-12.xlsx', 'uploads/mass-upload/18/46_log_doc_obligor_20032023_06-39-12.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:39:14', 46),
	(19, '2023-03-20 06:39:13', 'Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass-upload/19/Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_06-39-12.xlsx', 'uploads/mass-upload/19/46_log_doc_obligor_20032023_06-39-12.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:39:14', 46),
	(20, '2023-03-20 06:39:23', 'Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass-upload/20/Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_06-39-22.xlsx', 'uploads/mass-upload/20/46_log_doc_obligor_20032023_06-39-22.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:39:23', 46),
	(21, '2023-03-20 06:39:23', 'Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass-upload/21/Template_Borrower_Metadata-addborrowerasanobligoruser.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_06-39-22.xlsx', 'uploads/mass-upload/21/46_log_doc_obligor_20032023_06-39-22.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:39:23', 46),
	(22, '2023-03-20 06:42:06', 'Template_Borrower_Metadata.xlsx', 'uploads/mass-upload/22/Template_Borrower_Metadata.xlsx', 'uploads/mass_upload_log/obligor/3_log_doc_obligor_20032023_06-42-05.xlsx', 'uploads/mass-upload/22/3_log_doc_obligor_20032023_06-42-05.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:42:06', 3),
	(23, '2023-03-20 06:46:22', 'Template_Borrower_Metadata.xlsx', 'uploads/mass-upload/23/Template_Borrower_Metadata.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_06-46-22.xlsx', 'uploads/mass-upload/23/46_log_doc_obligor_20032023_06-46-22.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:46:23', 46),
	(24, '2023-03-20 06:47:20', 'Andrew_Borrower_Metadata.xlsx', 'uploads/mass-upload/24/Andrew_Borrower_Metadata.xlsx', 'uploads/mass_upload_log/obligor/46_log_doc_obligor_20032023_06-47-20.xlsx', 'uploads/mass-upload/24/46_log_doc_obligor_20032023_06-47-20.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 06:47:20', 46),
	(25, '2023-03-20 06:53:42', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/25/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/46_log_doc_metadata_20032023_06-53-41.xlsx', 'uploads/mass-upload/25/46_log_doc_metadata_20032023_06-53-41.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 06:53:43', 46),
	(26, '2023-03-20 06:53:42', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/26/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/46_log_doc_metadata_20032023_06-53-41.xlsx', 'uploads/mass-upload/26/46_log_doc_metadata_20032023_06-53-41.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 06:53:43', 46),
	(27, '2023-03-20 07:05:43', 'Template_borrower smoke test 203.xlsx', 'uploads/mass-upload/27/Template_borrower smoke test 203.xlsx', 'uploads/mass_upload_log/obligor/4_log_doc_obligor_20032023_07-05-42.xlsx', 'uploads/mass-upload/27/4_log_doc_obligor_20032023_07-05-42.xlsx', 100, 2, 'OBLIGOR', '2023-03-20 07:05:44', 4),
	(28, '2023-03-20 08:17:44', 'Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass-upload/28/Template_Loan_Metadata_Kay Do Smoke Test.xlsx', 'uploads/mass_upload_log/loan-metadata/4_log_doc_metadata_20032023_08-17-43.xlsx', 'uploads/mass-upload/28/4_log_doc_metadata_20032023_08-17-43.xlsx', 100, 2, 'LOAN_METADATA', '2023-03-20 08:17:45', 4);
/*!40000 ALTER TABLE `import_log` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.lib_covenant_comparison
CREATE TABLE IF NOT EXISTS `lib_covenant_comparison` (
  `lib_covenant_comparison_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `create_at` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`lib_covenant_comparison_id`),
  KEY `FKffpga253jcvr4a5v8fbs05rl8` (`created_by`),
  CONSTRAINT `FKffpga253jcvr4a5v8fbs05rl8` FOREIGN KEY (`created_by`) REFERENCES `data_node_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.lib_covenant_comparison: ~0 rows (approximately)
/*!40000 ALTER TABLE `lib_covenant_comparison` DISABLE KEYS */;
/*!40000 ALTER TABLE `lib_covenant_comparison` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.lib_covenant_comparison_template
CREATE TABLE IF NOT EXISTS `lib_covenant_comparison_template` (
  `lib_covenant_comparison_template_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`lib_covenant_comparison_template_id`),
  KEY `FK6w5a0mbvt5lruo725qb8olgb7` (`created_by`),
  CONSTRAINT `FK6w5a0mbvt5lruo725qb8olgb7` FOREIGN KEY (`created_by`) REFERENCES `data_node_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.lib_covenant_comparison_template: ~0 rows (approximately)
/*!40000 ALTER TABLE `lib_covenant_comparison_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `lib_covenant_comparison_template` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.lib_lock_user_login_fail
CREATE TABLE IF NOT EXISTS `lib_lock_user_login_fail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count_failed` int(11) NOT NULL,
  `time_unlocked` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5bupjd55cdye4p0525g3eo1g7` (`user_id`),
  CONSTRAINT `FKheu7mtpsumnpnfsfshskowspt` FOREIGN KEY (`user_id`) REFERENCES `data_node_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.lib_lock_user_login_fail: ~0 rows (approximately)
/*!40000 ALTER TABLE `lib_lock_user_login_fail` DISABLE KEYS */;
/*!40000 ALTER TABLE `lib_lock_user_login_fail` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan
CREATE TABLE IF NOT EXISTS `loan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_page` int(11) DEFAULT NULL,
  `data_visualization_status` bit(1) DEFAULT b'0',
  `deleted_at` datetime DEFAULT NULL,
  `has_covenant_labels` bit(1) DEFAULT b'0',
  `has_pdf` bit(1) DEFAULT b'0',
  `has_meta_data` bit(1) DEFAULT b'0',
  `name` longtext,
  `path_save` varchar(255) DEFAULT NULL,
  `previous_status` int(11) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `step_delete` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `obligor_id` bigint(20) DEFAULT NULL,
  `loan_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe0wowihi2xmf81i3775t9i2cv` (`created_by`),
  KEY `FKputxxss31yrj1l0vakmjjxp6r` (`updated_by`),
  KEY `FKiqnivo49okot3o388lxg21pil` (`deleted_by`),
  KEY `FKcanfbv0cb990i7bxtwdidqd5v` (`obligor_id`),
  CONSTRAINT `FKcanfbv0cb990i7bxtwdidqd5v` FOREIGN KEY (`obligor_id`) REFERENCES `obligor` (`id`),
  CONSTRAINT `FKe0wowihi2xmf81i3775t9i2cv` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKiqnivo49okot3o388lxg21pil` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKputxxss31yrj1l0vakmjjxp6r` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan: ~13 rows (approximately)
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` (`id`, `create_at`, `updated_at`, `count_page`, `data_visualization_status`, `deleted_at`, `has_covenant_labels`, `has_pdf`, `has_meta_data`, `name`, `path_save`, `previous_status`, `security_code`, `status`, `step_delete`, `url`, `created_by`, `updated_by`, `deleted_by`, `obligor_id`, `loan_id`, `title`) VALUES
	(3, '2023-03-16 07:21:37', NULL, 2, b'0', NULL, b'0', b'1', b'1', 'eSignature_plan A & B', 'uploads/loan/3/eSignature_plan A & B.pdf', NULL, NULL, 0, 0, NULL, 4, NULL, NULL, 11, NULL, NULL),
	(4, '2023-03-16 07:36:13', NULL, 1, b'0', NULL, b'0', b'1', b'1', 'RODS Feedback from MAS (1) - Test', 'uploads/loan/4/RODS Feedback from MAS (1) - Test.pdf', NULL, NULL, 0, 0, NULL, 4, NULL, NULL, 15, NULL, NULL),
	(5, '2023-03-16 11:00:36', NULL, 1, b'0', NULL, b'0', b'1', b'1', 'Get_Started_With_Smallpdf', 'uploads/loan/5/Get_Started_With_Smallpdf.pdf', NULL, NULL, 0, 0, NULL, 3, NULL, NULL, 13, NULL, NULL),
	(6, '2023-03-16 15:05:18', NULL, 12, b'0', NULL, b'0', b'1', b'1', 'Bryant Test', 'uploads/loan/6/Bryant Test.pdf', NULL, NULL, 0, 0, NULL, 7, NULL, NULL, NULL, NULL, NULL),
	(7, '2023-03-17 03:17:36', NULL, 18, b'0', NULL, b'0', b'1', b'1', 'report', 'uploads/loan/7/report.pdf', NULL, NULL, 0, 0, NULL, 7, NULL, NULL, NULL, NULL, NULL),
	(8, '2023-03-20 03:38:20', '2023-03-20 03:38:21', NULL, b'0', NULL, b'0', b'0', b'1', 'Kay Do Smoke Test', NULL, NULL, NULL, 1, 0, NULL, 4, NULL, NULL, 17, NULL, NULL),
	(9, '2023-03-20 03:39:33', '2023-03-20 03:39:33', NULL, b'0', NULL, b'0', b'0', b'1', 'Kay Do Smoke Test ABCXYZ', NULL, NULL, NULL, 1, 0, NULL, 4, NULL, NULL, 18, NULL, NULL),
	(10, '2023-03-20 06:40:58', NULL, 18, b'0', NULL, b'0', b'1', b'1', '230201 MN Platform Rules v2', 'uploads/loan/10/230201 MN Platform Rules v2.pdf', NULL, NULL, 0, 0, NULL, 47, NULL, NULL, NULL, NULL, NULL),
	(12, '2023-03-20 06:42:00', NULL, 5, b'0', NULL, b'0', b'1', b'1', '230315 MN Website Privacy Policy', 'uploads/loan/12/230315 MN Website Privacy Policy.pdf', NULL, NULL, 0, 0, NULL, 47, NULL, NULL, NULL, NULL, NULL),
	(14, '2023-03-20 06:50:31', NULL, 4, b'0', NULL, b'0', b'1', b'1', 'privacy-policy', 'uploads/loan/14/privacy-policy.pdf', NULL, NULL, 0, 0, NULL, 46, NULL, NULL, 31, NULL, NULL),
	(15, '2023-03-20 06:53:42', '2023-03-20 06:53:42', NULL, b'0', NULL, b'0', b'0', b'1', 'Obligor User Metadata', NULL, NULL, NULL, 1, 0, NULL, 46, NULL, NULL, 28, NULL, NULL),
	(16, '2023-03-20 08:17:44', '2023-03-20 08:17:45', NULL, b'0', NULL, b'0', b'0', b'1', 'LOAN NAME MONDAY DEMO', NULL, NULL, NULL, 1, 0, NULL, 4, NULL, NULL, 31, NULL, NULL),
	(17, '2023-03-20 08:18:42', NULL, 4, b'0', NULL, b'0', b'1', b'1', 'Terms of Service', 'uploads/loan/17/Terms of Service.pdf', NULL, NULL, 0, 0, NULL, 4, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_additional_disclosures
CREATE TABLE IF NOT EXISTS `loan_additional_disclosures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `additional_section_id` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKptb7dxvdjl6ojr89s5o71d7ci` (`created_by`),
  KEY `FK5ddjvwcckvdad5bnjuqkmq2hd` (`updated_by`),
  KEY `FKjql1kv3uh9aapwe11p0u52mnv` (`additional_section_id`),
  KEY `FKj3tnv98eb8y7t6jenf48a44ut` (`loan_id`),
  CONSTRAINT `FK5ddjvwcckvdad5bnjuqkmq2hd` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKj3tnv98eb8y7t6jenf48a44ut` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FKjql1kv3uh9aapwe11p0u52mnv` FOREIGN KEY (`additional_section_id`) REFERENCES `loan_additional_section` (`id`),
  CONSTRAINT `FKptb7dxvdjl6ojr89s5o71d7ci` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_additional_disclosures: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_additional_disclosures` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_additional_disclosures` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_additional_section
CREATE TABLE IF NOT EXISTS `loan_additional_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_additional_section: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_additional_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_additional_section` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_eod_item
CREATE TABLE IF NOT EXISTS `loan_eod_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `activity` int(11) DEFAULT NULL,
  `covenant` longtext,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `list_threshold` longtext,
  `ordering` int(11) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `loan_eod_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKua6lkjwq0h5vxs9ftnrscua2` (`created_by`),
  KEY `FKhg5are7jagvafbfetegkdldv8` (`updated_by`),
  KEY `FKbsemerfiov8j18kn0j18wxmp2` (`loan_id`),
  KEY `FKl02qvjpqhhojctk3o8xifrd7d` (`loan_eod_category_id`),
  CONSTRAINT `FKbsemerfiov8j18kn0j18wxmp2` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FKhg5are7jagvafbfetegkdldv8` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKl02qvjpqhhojctk3o8xifrd7d` FOREIGN KEY (`loan_eod_category_id`) REFERENCES `loan_eod_label_category` (`id`),
  CONSTRAINT `FKua6lkjwq0h5vxs9ftnrscua2` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_eod_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_eod_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_eod_item` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_eod_label
CREATE TABLE IF NOT EXISTS `loan_eod_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  `is_deleted_label` bit(1) DEFAULT b'0',
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `loan_eod_item_id` bigint(20) DEFAULT NULL,
  `loan_eod_label_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3kc8294ug0dfs52ufpea0gryd` (`created_by`),
  KEY `FKj3bc2smwgidxcr4nlss1atc6f` (`updated_by`),
  KEY `FKge7dj09a41fnkx6wnuc87kddx` (`deleted_by`),
  KEY `FKt7ex094osbkya547tlvf8g0qf` (`loan_id`),
  KEY `FK5xao7fmri3yj0p7ogjijfhpck` (`loan_eod_item_id`),
  KEY `FKpv149b04n435fkn701jqe4hon` (`loan_eod_label_category_id`),
  CONSTRAINT `FK3kc8294ug0dfs52ufpea0gryd` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK5xao7fmri3yj0p7ogjijfhpck` FOREIGN KEY (`loan_eod_item_id`) REFERENCES `loan_eod_item` (`id`),
  CONSTRAINT `FKge7dj09a41fnkx6wnuc87kddx` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKj3bc2smwgidxcr4nlss1atc6f` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKpv149b04n435fkn701jqe4hon` FOREIGN KEY (`loan_eod_label_category_id`) REFERENCES `loan_eod_label_category` (`id`),
  CONSTRAINT `FKt7ex094osbkya547tlvf8g0qf` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_eod_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_eod_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_eod_label` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_eod_label_category
CREATE TABLE IF NOT EXISTS `loan_eod_label_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` longtext,
  `example` longtext,
  `name` longtext,
  `status` int(11) DEFAULT '1',
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2n4p6q3kqcvjwmjrks5p1ap03` (`created_by`),
  KEY `FK3wwdy2edudsld48k4cv89onga` (`updated_by`),
  KEY `FK86bnrxim1ev1tgmeshnovhx0n` (`deleted_by`),
  KEY `FK8huu7gy5bpo658ctme2qxox1e` (`parent_id`),
  CONSTRAINT `FK2n4p6q3kqcvjwmjrks5p1ap03` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK3wwdy2edudsld48k4cv89onga` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK86bnrxim1ev1tgmeshnovhx0n` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK8huu7gy5bpo658ctme2qxox1e` FOREIGN KEY (`parent_id`) REFERENCES `loan_eod_label_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_eod_label_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_eod_label_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_eod_label_category` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_esg
CREATE TABLE IF NOT EXISTS `loan_esg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `allocation_report_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `framework_date` datetime DEFAULT NULL,
  `placeholders` longtext,
  `sgx_sfi` bit(1) DEFAULT b'0',
  `site_url` varchar(1000) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcivkga9ll2c2vdbrhkjixuqv8` (`loan_id`),
  CONSTRAINT `FKcivkga9ll2c2vdbrhkjixuqv8` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_esg: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_esg` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_esg` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_label_item
CREATE TABLE IF NOT EXISTS `loan_label_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `entity_type` varchar(255) NOT NULL,
  `extraction` longtext,
  `list_threshold` longtext,
  `ordering` int(11) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `loan_label_label_id` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_type_index` (`entity_type`),
  KEY `FK8572smco43in2wglwfra760b2` (`created_by`),
  KEY `FKiv5i9bvcerrjoj0396tsfyv5v` (`loan_id`),
  KEY `FKs4rrx8v4xt7ebidvcq0govsf4` (`loan_label_label_id`),
  KEY `FKresgf5cyifp8i8vtlwle2oun9` (`updated_by`),
  CONSTRAINT `FK8572smco43in2wglwfra760b2` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKiv5i9bvcerrjoj0396tsfyv5v` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FKresgf5cyifp8i8vtlwle2oun9` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKs4rrx8v4xt7ebidvcq0govsf4` FOREIGN KEY (`loan_label_label_id`) REFERENCES `doc_label_label` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_label_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_label_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_label_item` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_loan_type
CREATE TABLE IF NOT EXISTS `loan_loan_type` (
  `loan_id` bigint(20) NOT NULL,
  `loan_type_id` bigint(20) NOT NULL,
  KEY `FKj8ce8ktn5ucrbv9ljsr4dsuqt` (`loan_type_id`),
  KEY `FKflckpybvfatcr2kfyf9r8vec9` (`loan_id`),
  CONSTRAINT `FKflckpybvfatcr2kfyf9r8vec9` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FKj8ce8ktn5ucrbv9ljsr4dsuqt` FOREIGN KEY (`loan_type_id`) REFERENCES `loan_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_loan_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `loan_loan_type` DISABLE KEYS */;
INSERT INTO `loan_loan_type` (`loan_id`, `loan_type_id`) VALUES
	(8, 2),
	(9, 2),
	(15, 2),
	(16, 2);
/*!40000 ALTER TABLE `loan_loan_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_master_data
CREATE TABLE IF NOT EXISTS `loan_master_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_master_data: ~101 rows (approximately)
/*!40000 ALTER TABLE `loan_master_data` DISABLE KEYS */;
INSERT INTO `loan_master_data` (`id`, `entity_type`, `name`, `ordering`) VALUES
	(1, 'ProgrammeType', 'Title 1', 1),
	(2, 'ProgrammeType', 'Title 2', 2),
	(3, 'ProgrammeType', 'Title 3', 3),
	(4, 'ProgrammeType', 'Title 4', 4),
	(5, 'ProgrammeType', 'Title 5', 5),
	(6, 'ProgrammeType', 'Title 6', 6),
	(7, 'ProgrammeType', 'Title 7', 7),
	(8, 'ProgrammeType', 'Title 8', 8),
	(9, 'ProgrammeType', 'Title 9', 9),
	(10, 'ProgrammeType', 'Title 10', 10),
	(11, 'BondType', 'Title 1', 1),
	(12, 'BondType', 'Title 2', 2),
	(13, 'BondType', 'Title 3', 3),
	(14, 'BondType', 'Title 4', 4),
	(15, 'BondType', 'Title 5', 5),
	(16, 'BondType', 'Title 6', 6),
	(17, 'BondType', 'Title 7', 7),
	(18, 'BondType', 'Title 8', 8),
	(19, 'BondType', 'Title 9', 9),
	(20, 'BondType', 'Title 10', 10),
	(21, 'NoteType', 'Title 1', 1),
	(22, 'NoteType', 'Title 2', 2),
	(23, 'NoteType', 'Title 3', 3),
	(24, 'NoteType', 'Title 4', 4),
	(25, 'NoteType', 'Title 5', 5),
	(26, 'NoteType', 'Title 6', 6),
	(27, 'NoteType', 'Title 7', 7),
	(28, 'NoteType', 'Title 8', 8),
	(29, 'NoteType', 'Title 9', 9),
	(30, 'NoteType', 'Title 10', 10),
	(31, 'AccrualDaysType', 'Title 1', 1),
	(32, 'AccrualDaysType', 'Title 2', 2),
	(33, 'AccrualDaysType', 'Title 3', 3),
	(34, 'AccrualDaysType', 'Title 4', 4),
	(35, 'AccrualDaysType', 'Title 5', 5),
	(36, 'AccrualDaysType', 'Title 6', 6),
	(37, 'AccrualDaysType', 'Title 7', 7),
	(38, 'AccrualDaysType', 'Title 8', 8),
	(39, 'AccrualDaysType', 'Title 9', 9),
	(40, 'AccrualDaysType', 'Title 10', 10),
	(41, 'ReductionMethod', 'Title 1', 1),
	(42, 'ReductionMethod', 'Title 2', 2),
	(43, 'ReductionMethod', 'Title 3', 3),
	(44, 'ReductionMethod', 'Title 4', 4),
	(45, 'ReductionMethod', 'Title 5', 5),
	(46, 'ReductionMethod', 'Title 6', 6),
	(47, 'ReductionMethod', 'Title 7', 7),
	(48, 'ReductionMethod', 'Title 8', 8),
	(49, 'ReductionMethod', 'Title 9', 9),
	(50, 'ReductionMethod', 'Title 10', 10),
	(51, 'InterestCurrency', 'G3', 1),
	(52, 'InterestCurrency', 'SGD', 2),
	(53, 'InterestCurrency', 'Other local currency', 3),
	(54, 'InterestCurrency', 'Onshore RMB', 4),
	(55, 'InterestCurrency', 'Multi-currency', 5),
	(56, 'InterestCurrency', 'Others', 6),
	(57, 'StandardsList', 'ASEAN Green Bond Standards', 1),
	(58, 'StandardsList', 'ASEAN Social Bond Standards', 2),
	(59, 'StandardsList', 'ASEAN Sustainability Bond Standards', 3),
	(60, 'StandardsList', 'China Green Bond Endorsed Project Catalogue of the PBoC', 4),
	(61, 'StandardsList', 'Green Bond Guidance (NDRC)', 5),
	(62, 'StandardsList', 'Green Bond Guidelines (Japan)', 6),
	(63, 'StandardsList', 'Green Bond Principles', 7),
	(64, 'StandardsList', 'Green Industries Guidance', 8),
	(65, 'StandardsList', 'Green Loan Principles', 9),
	(66, 'StandardsList', 'Guidelines for Establishing the Green Financial System', 10),
	(67, 'StandardsList', 'Social Bond Principles', 11),
	(68, 'StandardsList', 'Social Loan Principles', 12),
	(69, 'StandardsList', 'Sustainability Bond Guidelines', 13),
	(70, 'StandardsList', 'Sustainability-Linked Bond Principles', 14),
	(71, 'StandardsList', 'Sustainability-Linked Loan Principles', 15),
	(72, 'StandardsList', 'The Climate Bonds Standard', 16),
	(73, 'StandardsList', 'The EU Green Bond Standard', 17),
	(74, 'StandardsList', 'The PBoC\'s Green Bond Guidelines', 18),
	(75, 'StandardsList', 'The PBoC\'s Green Bond Categories', 19),
	(76, 'StandardsList', 'Others', 20),
	(77, 'ExternalReviewProvider', 'CICERO', 1),
	(78, 'ExternalReviewProvider', 'Beijing Zhongcai Green Financing Consultant Ltd.', 2),
	(79, 'ExternalReviewProvider', 'Carbon Trust Assurance Limited', 3),
	(80, 'ExternalReviewProvider', 'CECEP Environmental Consulting Group', 4),
	(81, 'ExternalReviewProvider', 'Deloitte', 5),
	(82, 'ExternalReviewProvider', 'DNV GL', 6),
	(83, 'ExternalReviewProvider', 'Emergent Ventures India', 7),
	(84, 'ExternalReviewProvider', 'Ernst & Young', 8),
	(85, 'ExternalReviewProvider', 'Grant Thornton', 9),
	(86, 'ExternalReviewProvider', 'Hong Kong Quality Assurance Agency (HKQAA)', 10),
	(87, 'ExternalReviewProvider', 'ISS-ESG', 11),
	(88, 'ExternalReviewProvider', 'Japan Credit Rating Agency, Ltd.', 12),
	(89, ' ExternalReviewProvider ', ' KPMG ', 13),
	(90, ' ExternalReviewProvider ', ' Moody’s', 14),
	(91, 'ExternalReviewProvider', 'PwC', 15),
	(92, 'ExternalReviewProvider', 'Standard & Poor’s', 16),
	(93, 'ExternalReviewProvider', 'Sustainalytics', 17),
	(94, 'ExternalReviewProvider', 'Uncertified/Self-Certified', 18),
	(95, 'ExternalReviewProvider', 'Vigeo Eiris', 19),
	(96, 'ExternalReviewProvider', 'Others', 20),
	(150, 'Roles', 'Facility Agent', 1),
	(151, 'Roles', 'Borrower', 2),
	(152, 'Roles', 'Lender', 3),
	(153, 'Roles', 'Law Firm', 4),
	(160, 'Roles', 'Other', 10);
/*!40000 ALTER TABLE `loan_master_data` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_metadata
CREATE TABLE IF NOT EXISTS `loan_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `search` longtext,
  `status` int(11) DEFAULT NULL,
  `value` longtext,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5j0xx4i93ea6pfnakkgjo7mn` (`created_by`),
  KEY `FKdkifi6cj020n7g31h9fwirnsx` (`updated_by`),
  KEY `FKtqa6kdlmng5wr5vgkou4ueaud` (`loan_id`),
  CONSTRAINT `FK5j0xx4i93ea6pfnakkgjo7mn` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKdkifi6cj020n7g31h9fwirnsx` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKtqa6kdlmng5wr5vgkou4ueaud` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_metadata: ~17 rows (approximately)
/*!40000 ALTER TABLE `loan_metadata` DISABLE KEYS */;
INSERT INTO `loan_metadata` (`id`, `create_at`, `updated_at`, `key`, `ordering`, `search`, `status`, `value`, `created_by`, `updated_by`, `loan_id`) VALUES
	(3, '2023-03-16 07:21:37', NULL, 'DocumentTitle', NULL, 'DocumentTitle_eSignature_plan A & B', 1, 'eSignature_plan A & B', 4, 4, 3),
	(4, '2023-03-16 07:36:13', NULL, 'DocumentTitle', NULL, 'DocumentTitle_RODS Feedback from MAS (1) - Test', 1, 'RODS Feedback from MAS (1) - Test', 4, 4, 4),
	(5, '2023-03-16 11:00:37', NULL, 'DocumentTitle', NULL, 'DocumentTitle_Get_Started_With_Smallpdf', 1, 'Get_Started_With_Smallpdf', 3, 3, 5),
	(6, '2023-03-16 15:05:19', NULL, 'DocumentTitle', NULL, 'DocumentTitle_Bryant Test', 1, 'Bryant Test', 7, 7, 6),
	(7, '2023-03-17 03:17:36', NULL, 'DocumentTitle', NULL, 'DocumentTitle_report', 1, 'report', 7, 7, 7),
	(8, '2023-03-20 03:38:21', '2023-03-20 03:38:21', 'DocumentType', NULL, 'DocumentType_2', 1, '2', 4, NULL, 8),
	(9, '2023-03-20 03:38:21', '2023-03-20 03:38:21', 'DocumentTitle', NULL, 'DocumentTitle_Kay Do Smoke Test', 1, 'Kay Do Smoke Test', 4, NULL, 8),
	(10, '2023-03-20 03:39:33', '2023-03-20 04:00:03', 'DocumentType', NULL, 'DocumentType_2', 1, '2', 4, 46, 9),
	(11, '2023-03-20 03:39:33', '2023-03-20 04:00:03', 'DocumentTitle', NULL, 'DocumentTitle_Kay Do Smoke Test ABCXYZ', 1, 'Kay Do Smoke Test ABCXYZ', 4, 46, 9),
	(12, '2023-03-20 06:40:59', NULL, 'DocumentTitle', NULL, 'DocumentTitle_230201 MN Platform Rules v2', 1, '230201 MN Platform Rules v2', 47, 47, 10),
	(14, '2023-03-20 06:42:01', NULL, 'DocumentTitle', NULL, 'DocumentTitle_230315 MN Website Privacy Policy', 1, '230315 MN Website Privacy Policy', 47, 47, 12),
	(16, '2023-03-20 06:50:31', NULL, 'DocumentTitle', NULL, 'DocumentTitle_privacy-policy', 1, 'privacy-policy', 46, 46, 14),
	(17, '2023-03-20 06:53:42', '2023-03-20 06:53:42', 'DocumentType', NULL, 'DocumentType_2', 1, '2', 46, 46, 15),
	(18, '2023-03-20 06:53:42', '2023-03-20 06:53:42', 'DocumentTitle', NULL, 'DocumentTitle_Obligor User Metadata', 1, 'Obligor User Metadata', 46, 46, 15),
	(19, '2023-03-20 08:17:45', '2023-03-20 08:17:45', 'DocumentType', NULL, 'DocumentType_2', 1, '2', 4, NULL, 16),
	(20, '2023-03-20 08:17:45', '2023-03-20 08:17:45', 'DocumentTitle', NULL, 'DocumentTitle_LOAN NAME MONDAY DEMO', 1, 'LOAN NAME MONDAY DEMO', 4, NULL, 16),
	(21, '2023-03-20 08:18:42', NULL, 'DocumentTitle', NULL, 'DocumentTitle_Terms of Service', 1, 'Terms of Service', 4, 4, 17);
/*!40000 ALTER TABLE `loan_metadata` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_offering
CREATE TABLE IF NOT EXISTS `loan_offering` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `name_build` varchar(255) DEFAULT NULL,
  `rating_bucket` int(11) DEFAULT NULL,
  `search_meta_data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_offering: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_offering` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_offering` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_risk_factory_item
CREATE TABLE IF NOT EXISTS `loan_risk_factory_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` longtext,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `headline` longtext,
  `ordering` int(11) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `loan_risk_factory_item_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK13n9platuoinpgrrci16qiku0` (`created_by`),
  KEY `FKegjeiosgyfnemn5rmu0dnw6di` (`updated_by`),
  KEY `FKhwgq49gw5777t7v1nkoa3xhpg` (`loan_id`),
  KEY `FK2kxn6epgy95wpbh78n7p65gn` (`loan_risk_factory_item_category_id`),
  CONSTRAINT `FK13n9platuoinpgrrci16qiku0` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK2kxn6epgy95wpbh78n7p65gn` FOREIGN KEY (`loan_risk_factory_item_category_id`) REFERENCES `loan_risk_factory_item_category` (`id`),
  CONSTRAINT `FKegjeiosgyfnemn5rmu0dnw6di` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKhwgq49gw5777t7v1nkoa3xhpg` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_risk_factory_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_risk_factory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_risk_factory_item` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_risk_factory_item_category
CREATE TABLE IF NOT EXISTS `loan_risk_factory_item_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp38nx6bl9ayt83c996xdthupr` (`created_by`),
  KEY `FKdp8vtsf0jbrr8w4e4lb8ydn9g` (`updated_by`),
  CONSTRAINT `FKdp8vtsf0jbrr8w4e4lb8ydn9g` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKp38nx6bl9ayt83c996xdthupr` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_risk_factory_item_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_risk_factory_item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_risk_factory_item_category` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_risk_factory_label_category
CREATE TABLE IF NOT EXISTS `loan_risk_factory_label_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` longtext,
  `example` longtext,
  `name` longtext,
  `status` int(11) DEFAULT '1',
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdqo9glx105bjbaes6obk4x04c` (`created_by`),
  KEY `FKrhvwclredt9obcyfikryampof` (`updated_by`),
  KEY `FKpanbwtkpigla3knxojv4j47cu` (`deleted_by`),
  CONSTRAINT `FKdqo9glx105bjbaes6obk4x04c` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKpanbwtkpigla3knxojv4j47cu` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKrhvwclredt9obcyfikryampof` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_risk_factory_label_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_risk_factory_label_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_risk_factory_label_category` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_type
CREATE TABLE IF NOT EXISTS `loan_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6xub9gq82jdkkvdcpxbjk52kq` (`created_by`),
  KEY `FKtb30om0d4lejgdtncw7sr25ji` (`updated_by`),
  CONSTRAINT `FK6xub9gq82jdkkvdcpxbjk52kq` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKtb30om0d4lejgdtncw7sr25ji` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_type: ~10 rows (approximately)
/*!40000 ALTER TABLE `loan_type` DISABLE KEYS */;
INSERT INTO `loan_type` (`id`, `create_at`, `updated_at`, `code`, `name`, `ordering`, `created_by`, `updated_by`) VALUES
	(1, NULL, NULL, 'Standalone', 'Offering Circular / Standalone', 1, NULL, NULL),
	(2, NULL, NULL, 'Programme', 'Debt Programmes / Medium-term Note', 2, NULL, NULL),
	(3, NULL, NULL, 'Pricing Supp', 'Pricing Supplement / Final Terms', 3, NULL, NULL),
	(4, NULL, NULL, 'LM-OTP', 'Liability Management (OTP/Tender)', 4, NULL, NULL),
	(5, NULL, NULL, 'Others', 'Others', 17, NULL, NULL),
	(6, NULL, NULL, 'LM-C', 'Liability Management (Consent Solicitation)', 5, NULL, NULL),
	(7, NULL, NULL, 'LM-EO', 'Liability Management (Exchange Offer)', 6, NULL, NULL),
	(8, NULL, NULL, 'LM-O', 'Liability Management (Others)', 7, NULL, NULL),
	(9, NULL, NULL, 'GSS-F', 'GSS - Framework Documents', 8, NULL, NULL),
	(10, NULL, NULL, 'GSS-SR', 'GSS - Sustainability reports', 9, NULL, NULL);
/*!40000 ALTER TABLE `loan_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_type_type
CREATE TABLE IF NOT EXISTS `loan_type_type` (
  `loan_id` bigint(20) NOT NULL,
  `loan_type_id` bigint(20) NOT NULL,
  KEY `FK4x9spuxvawrbud1ig7rn2cbl9` (`loan_type_id`),
  KEY `FKfxw26slxwrkp9x1acx48ka5ve` (`loan_id`),
  CONSTRAINT `FK4x9spuxvawrbud1ig7rn2cbl9` FOREIGN KEY (`loan_type_id`) REFERENCES `loan_type` (`id`),
  CONSTRAINT `FKfxw26slxwrkp9x1acx48ka5ve` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.loan_type_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_type_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_type_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.loan_user
CREATE TABLE IF NOT EXISTS `loan_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loan_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp7kgttkdjqbuh0w1rr8cmw08c` (`loan_id`),
  KEY `FKddh3tq661x2ukmiter1se6ks9` (`user_id`),
  KEY `FKmw1f70pvmuxmvhp9rxyf362sh` (`role_id`),
  CONSTRAINT `FK9kaatgi43irobv2k7fcxb32ku` FOREIGN KEY (`role_id`) REFERENCES `user_group` (`id`),
  CONSTRAINT `FKddh3tq661x2ukmiter1se6ks9` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKmw1f70pvmuxmvhp9rxyf362sh` FOREIGN KEY (`role_id`) REFERENCES `loan_master_data` (`id`),
  CONSTRAINT `FKp7kgttkdjqbuh0w1rr8cmw08c` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Dumping data for table privreg_dev.loan_user: ~25 rows (approximately)
/*!40000 ALTER TABLE `loan_user` DISABLE KEYS */;
INSERT INTO `loan_user` (`id`, `loan_id`, `role_id`, `user_id`) VALUES
	(1, 3, 2, 11),
	(2, 3, 2, 27),
	(3, 3, 3, 28),
	(4, 3, 3, 29),
	(5, 3, 4, 30),
	(6, 3, 5, 31),
	(7, 3, 5, 32),
	(8, 3, 4, 33),
	(9, 3, 2, 34),
	(10, 3, 4, 35),
	(11, 3, 5, 36),
	(12, 3, 5, 37),
	(13, 3, 3, 38),
	(14, 3, 3, 39),
	(15, 3, 4, 40),
	(16, 3, 3, 41),
	(17, 3, 2, 42),
	(18, 3, 2, 43),
	(19, 3, 2, 44),
	(20, 3, 3, 45),
	(21, 4, 3, 11),
	(22, 4, 3, 27),
	(23, 5, 3, 11),
	(24, 5, 2, 48),
	(25, 8, 3, 11);
/*!40000 ALTER TABLE `loan_user` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.metadata
CREATE TABLE IF NOT EXISTS `metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.metadata: ~22 rows (approximately)
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` (`id`, `key`, `type`, `value`) VALUES
	(1, 'ObligorCountry', 'select', '{ \n	"1":"Afghanistan",\n	"2":"Aland Islands",\n	"3":"Albania",\n	"4":"Algeria",\n	"5":"American Samoa",\n	"6":"Andorra",\n	"7":"Angola",\n	"8":"Anguilla",\n	"9":"Antarctica",\n	"10":"Antigua and Barbuda",\n	"11":"Argentina",\n	"12":"Armenia",\n	"13":"Aruba",\n	"14":"Australia",\n	"15":"Austria",\n	"16":"Azerbaijan",\n	"17":"Bahamas",\n	"18":"Bahrain",\n	"19":"Bangladesh",\n	"20":"Barbados",\n	"21":"Belarus",\n	"22":"Belgium",\n	"23":"Belize",\n	"24":"Benin",\n	"25":"Bermuda",\n	"26":"Bhutan",\n	"27":"Bolivia",\n	"28":"Bonaire",\n	"29":"Bosnia and Herzegovina",\n	"30":"Botswana",\n	"31":"Bouvet Island",\n	"32":"Brazil",\n	"33":"British Indian Ocean Territory",\n	"34":"Brunei Darussalam",\n	"35":"Bulgaria",\n	"36":"Burkina Faso",\n	"37":"Burundi",\n	"38":"Cabo Verde",\n	"39":"Cambodia",\n	"40":"Cameroon",\n	"41":"Canada",\n	"42":"Cayman Islands",\n	"43":"Central African Republic",\n	"44":"Chad",\n	"45":"Chile",\n	"46":"China",\n	"47":"Christmas Island",\n	"48":"Cocos Islands",\n	"49":"Colombia",\n	"50":"Comoros",\n	"51":"The Democratic Republic of the Congo",\n	"52":"Congo",\n	"53":"Cook Islands",\n	"54":"Costa Rica",\n	"55":"Côte d\'Ivoire",\n	"56":"Croatia",\n	"57":"Cuba",\n	"58":"Curaçao",\n	"59":"Cyprus",\n	"60":"Czechia",\n	"61":"Denmark",\n	"62":"Djibouti",\n	"63":"Dominica",\n	"64":"Dominican Republic",\n	"65":"Ecuador",\n	"66":"Egypt",\n	"67":"El Salvador",\n	"68":"Equatorial Guinea",\n	"69":"Eritrea",\n	"70":"Estonia",\n	"71":"Eswatini",\n	"72":"Ethiopia",\n	"73":"Falkland Islands",\n	"74":"Faroe Islands",\n	"75":"Fiji",\n	"76":"Finland",\n	"77":"France",\n	"78":"French Guiana",\n	"79":"French Polynesia",\n	"80":"French Southern Territories",\n	"81":"Gabon",\n	"82":"Gambia",\n	"83":"Georgia",\n	"84":"Germany",\n	"85":"Ghana",\n	"86":"Gibraltar",\n	"87":"Greece",\n	"88":"Greenland",\n	"89":"Grenada",\n	"90":"Guadeloupe",\n	"91":"Guam",\n	"92":"Guatemala",\n	"93":"Guernsey",\n	"94":"Guinea",\n	"95":"Guinea-Bissau",\n	"96":"Guyana",\n	"97":"Haiti",\n	"98":"Heard Island and McDonald Islands",\n	"99":"Holy See",\n	"100":"Honduras",\n	"101":"Hong Kong",\n	"102":"Hungary",\n	"103":"Iceland",\n	"104":"India",\n	"105":"Indonesia",\n	"106":"Iran",\n	"107":"Iraq",\n	"108":"Ireland",\n	"109":"Isle of Man",\n	"110":"Israel",\n	"111":"Italy",\n	"112":"Jamaica",\n	"113":"Japan",\n	"114":"Jersey",\n	"115":"Jordan",\n	"116":"Kazakhstan",\n	"117":"Kenya",\n	"118":"Kiribati",\n	"119":"The Democratic People\'s Republic of Korea",\n	"120":"Korea",\n	"121":"Kuwait",\n	"122":"Kyrgyzstan",\n	"123":"Lao People\'s Democratic Republic",\n	"124":"Latvia",\n	"125":"Lebanon",\n	"126":"Lesotho",\n	"127":"Liberia",\n	"128":"Libya",\n	"129":"Liechtenstein",\n	"130":"Lithuania",\n	"131":"Luxembourg",\n	"132":"Macao",\n	"133":"North Macedonia",\n	"134":"Madagascar",\n	"135":"Malawi",\n	"136":"Malaysia",\n	"137":"Maldives",\n	"138":"Mali",\n	"139":"Malta",\n	"140":"Marshall Islands",\n	"141":"Martinique",\n	"142":"Mauritania",\n	"143":"Mauritius",\n	"144":"Mayotte",\n	"145":"Mexico",\n	"146":"Federated States of Micronesia",\n	"147":"The Republic of Moldova",\n	"148":"Monaco",\n	"149":"Mongolia",\n	"150":"Montenegro",\n	"151":"Montserrat",\n	"152":"Morocco",\n	"153":"Mozambique",\n	"154":"Myanmar",\n	"155":"Namibia",\n	"156":"Nauru",\n	"157":"Nepal",\n	"158":"Netherlands",\n	"159":"New Caledonia",\n	"160":"New Zealand",\n	"161":"Nicaragua",\n	"162":"Niger",\n	"163":"Nigeria",\n	"164":"Niue",\n	"165":"Norfolk Island",\n	"166":"Northern Mariana Islands",\n	"167":"Norway",\n	"168":"Oman",\n	"169":"Pakistan",\n	"170":"Palau",\n	"171":"The State of Palestine",\n	"172":"Panama",\n	"173":"Papua New Guinea",\n	"174":"Paraguay",\n	"175":"Peru",\n	"176":"Philippines",\n	"177":"Pitcairn",\n	"178":"Poland",\n	"179":"Portugal",\n	"180":"Puerto Rico",\n	"181":"Qatar",\n	"182":"Réunion",\n	"183":"Romania",\n	"184":"Russian Federation",\n	"185":"Rwanda",\n	"186":"Saint Barthélemy",\n	"187":"Saint Helena",\n	"188":"Saint Kitts and Nevis",\n	"189":"Saint Lucia",\n	"190":"Saint Martin",\n	"191":"Saint Pierre and Miquelon",\n	"192":"Saint Vincent and the Grenadines",\n	"193":"Samoa",\n	"194":"San Marino",\n	"195":"Sao Tome and Principe",\n	"196":"Saudi Arabia",\n	"197":"Senegal",\n	"198":"Serbia",\n	"199":"Seychelles",\n	"200":"Sierra Leone",\n	"201":"Singapore",\n	"202":"Sint Maarten",\n	"203":"Slovakia",\n	"204":"Slovenia",\n	"205":"Solomon Islands",\n	"206":"Somalia",\n	"207":"South Africa",\n	"208":"South Georgia and the South Sandwich Islands",\n	"209":"South Sudan",\n	"210":"Spain",\n	"211":"Sri Lanka",\n	"212":"Sudan",\n	"213":"Suriname",\n	"214":"Svalbard",\n	"215":"Sweden",\n	"216":"Switzerland",\n	"217":"Syrian Arab Republic",\n	"218":"Taiwan",\n	"219":"Tajikistan",\n	"220":"Tanzania, the United Republic of",\n	"221":"Thailand",\n	"222":"Timor-Leste",\n	"223":"Togo",\n	"224":"Tokelau",\n	"225":"Tonga",\n	"226":"Trinidad and Tobago",\n	"227":"Tunisia",\n	"228":"Turkey",\n	"229":"Turkmenistan",\n	"230":"Turks and Caicos Islands",\n	"231":"Tuvalu",\n	"232":"Uganda",\n	"233":"Ukraine",\n	"234":"United Arab Emirates",\n	"235":"United Kingdom of Great Britain and Northern Ireland",\n	"236":"United States Minor Outlying Islands",\n	"237":"United States of America",\n	"238":"Uruguay",\n	"239":"Uzbekistan",\n	"240":"Vanuatu",\n	"241":"Venezuela",\n	"242":"Vietnam",\n	"243":"Virgin Islands",\n	"244":"The Virgin Islands of the United States",\n	"245":"Wallis and Futuna",\n	"246":"Western Sahara",\n	"247":"Yemen",\n	"248":"Zambia",\n	"249":"Zimbabwe"\n}'),
	(2, 'Industry', 'select', '{\r\n  "1": "Aerospace",\r\n  "2": "Agribusiness",\r\n  "3": "Auto/Truck",\r\n  "4": "Chemicals",\r\n  "5": "Computers & Electronics",\r\n  "6": "Conglomerate",\r\n  "7": "Construction/Building",\r\n  "8": "Consumer Products",\r\n  "9": "Defense",\r\n  "10": "Dining & Lodging",\r\n  "11": "Finance",\r\n  "12": "Food & Beverage",\r\n  "13": "Forestry & Paper",\r\n  "14": "Government",\r\n  "15": "Healthcare",\r\n  "16": "Holding Companies",\r\n  "17": "Insurance",\r\n  "18": "Leisure & Recreation",\r\n  "19": "Machinery",\r\n  "20": "Metal & Steel",\r\n  "21": "Mining",\r\n  "22": "Oil & Gas",\r\n  "23": "Professional Services",\r\n  "24": "Publishing",\r\n  "25": "Real Estate/Property",\r\n  "26": "Retail",\r\n  "27": "Telecommunications",\r\n  "28": "Textile",\r\n  "29": "Transportation",\r\n  "30": "Utility & Energy"\r\n}'),
	(3, 'IssuerType', 'select', '{\r\n	"1": "Corporate", \r\n	"2": "Sovereign", \r\n	"3": "Financial", \r\n	"4": "Supranational", \r\n	"5": "Project Finance", \r\n	"6": "Structured Finance", \r\n	"7": "LGFV (China)", \r\n	"8": "Government Linked/Agency", \r\n	"9": "Others" \r\n}'),
	(4, 'Currency', 'select', '{ 	"1":"G3", 	"2":"SGD", 	"3":"Other local currency", 	"4":"Onshore RMB", 	"5":"Multi-currency", 	"6":"Others" }'),
	(5, 'Ccy', 'select', '{\n    "1": "USD",\n    "2": "SGD",\n    "3": "CNY",\n    "4": "CHF",\n    "5": "JPY",\n    "6": "EUR",\n    "7": "HKD",\n    "8": "RMB"\n}'),
	(6, 'ContinentRegion', 'select', '{\r\n  "1": "Oceania",\r\n  "2": "Japan",\r\n  "3": "Central Asia",\r\n  "4": "North Asia x-JP",\r\n  "5": "South Asia",\r\n  "6": "Southeast Asia",\r\n  "7": "Middle East",\r\n  "8": "Eastern Europe",\r\n  "9": "Western Europe",\r\n  "10": "Northen Africa",\r\n  "11": "Other Africa",\r\n  "12": "Latin America and the Caribbean",\r\n  "13": "US/Canada",\r\n  "14": "Others"\r\n}'),
	(7, 'CovenantStructure', 'select', '{\r\n	"1": "Non-High Yield", \r\n	"2": "High Yield", \r\n	"3": "Corp. Perpetual/Sub Debt", \r\n	"4": "Covered", \r\n	"5": "Bank Senior Debt", \r\n	"6": "Bank Sub Debt", \r\n	"7": "SSA", \r\n	"8": "Others"\r\n}'),
	(8, 'DistributionFormat', 'select', '{ "1":"144A", "2":"SEC Registered", "3":"Reg S & 144A", "4":"Reg S", "5":"Others" }'),
	(9, 'ESGFlag', 'select', '{\r\n	"1":"Green",\r\n	"2":"Social",\r\n	"3":"Sustainability",\r\n	"4":"Sustainability-Linked",\r\n	"5":"None"\r\n}'),
	(10, 'GoverningLaw', 'select', '{\n	"1":"Singapore",\n	"2":"England & Wales",\n	"3":"Hong Kong",\n	"4":"New York",\n	"5":"Others"\n}'),
	(11, 'ListingVenue', 'select', '{\r\n  "1": "SGX",\r\n  "2": "HKEX",\r\n  "3": "Tokyo",\r\n  "4": "Chongwa",\r\n  "5": "Taipei",\r\n  "6": "NSEI",\r\n  "7": "NASDAQ Dubai",\r\n  "8": "ASX",\r\n  "9": "Lisbon",\r\n  "10": "LUX",\r\n  "11": "Euro MTF",\r\n  "12": "Frankfurt",\r\n  "13": "LSE",\r\n  "14": "NYSE",\r\n  "15": "Irish",\r\n  "16": "Others"\r\n}'),
	(12, 'Rating', 'select', '{\n	"1":"Cross Over",\n	"2":"Unrated",\n	"3":"IG",\n	"4":"High Yield"\n}'),
	(13, 'Moodys', 'select', '{\n  "1": "Aaa",\n  "2": "Aa1",\n  "3": "Aa2",\n  "4": "Aa3",\n  "5": "A1",\n  "6": "A2",\n  "7": "A3",\n  "8": "Baa1",\n  "9": "Baa2",\n  "10": "Baa3",\n  "11": "Ba1",\n  "12": "Ba2",\n  "13": "Ba3",\n  "14": "B1",\n  "15": "B2",\n  "16": "B3",\n  "17": "Caa1",\n  "18": "Caa2",\n  "19": "Caa3",\n  "20": "Ca",\n  "21": "C",\n  "22": "NR"\n}'),
	(14, 'SandP', 'select', '{\n    "1": "AAA",\n    "2": "AA+",\n    "3": "AA",\n    "4": "AA-",\n    "5": "A+",\n    "6": "A",\n    "7": "A-",\n    "8": "BBB+",\n    "9": "BBB",\n    "10": "BBB-",\n    "11": "BB+",\n    "12": "BB",\n    "13": "BB-",\n    "14": "B+",\n    "15": "B",\n    "16": "B-",\n    "17": "CCC+",\n    "18": "CCC",\n    "19": "CCC-",\n    "20": "CC",\n    "21": "C",\n    "22": "D",\n    "23": "NR"\n  }'),
	(15, 'Fitch', 'select', '{\n    "1": "AAA",\n    "2": "AA+",\n    "3": "AA",\n    "4": "AA-",\n    "5": "A+",\n    "6": "A",\n    "7": "A-",\n    "8": "BBB+",\n    "9": "BBB",\n    "10": "BBB-",\n    "11": "BB+",\n    "12": "BB",\n    "13": "BB-",\n    "14": "B+",\n    "15": "B",\n    "16": "B-",\n    "17": "CCC",\n    "18": "DDD",\n    "19": "DD",\n    "20": "D",\n    "21": "NR"\n  }'),
	(17, 'OCIndustrySection', 'select', '{\r\n  "1": "Aerospace",\r\n  "2": "Agribusiness",\r\n  "3": "Auto/Truck",\r\n  "4": "Chemicals",\r\n  "5": "Computers & Electronics",\r\n  "6": "Construction/Building",\r\n  "7": "Consumer Products",\r\n  "8": "Defense",\r\n  "9": "Dining & Lodging",\r\n  "10": "Finance",\r\n  "11": "Food & Beverage",\r\n  "12": "Forestry & Paper",\r\n  "13": "Government",\r\n  "14": "Healthcare",\r\n  "15": "Holding Companies",\r\n  "16": "Insurance",\r\n  "17": "Leisure & Recreation",\r\n  "18": "Machinery",\r\n  "19": "Metal & Steel",\r\n  "20": "Mining",\r\n  "21": "Oil & Gas",\r\n  "22": "Professional Services",\r\n  "23": "Publishing",\r\n  "24": "Real Estate/Property",\r\n  "25": "Retail",\r\n  "26": "Telecommunications",\r\n  "27": "Textile",\r\n  "28": "Transportation",\r\n  "29": "Utility & Energy"\r\n}'),
	(20, 'CouponType', 'select', '{"1":"Fixed", "2":"Floating", "3":"Zero", "4":"Fixed-Floating", "5":"Others"}'),
	(21, 'FloatingIndex', 'select', '{"1":"AONIA", "2":"CORA", "3":"EURIBOR", "4":"HONIA", "5":"LIBOR", "6":"NOWA", "7":"SARON", "8":"SOFR", "9":"SONIA", "10":"SORA", "11":"SWESTR", "12":"THOR", "13":"TONA", "14":"Others" }'),
	(22, 'Ranking', 'select', '{"1":"Senior Secured", "2":"Senior Unsecured", "3":"Subordinated Secured", "4":"Subordinated Unsecured"}'),
	(23, 'IssuanceTap', 'select', '{"1":"Yes", "2":"No"}'),
	(24, 'FinancialSponsor', 'select', '{"1":"Affinity Equity Partners","2":"Apollo Global Management","3":"Ardian SAS","4":"Ares Management","5":"Asia Alternatives","6":"Bain Capital","7":"Baring Private Equity","8":"BC Partners","9":"Blackrock","10":"Blackstone Group","11":"Brookfield Asset Management","12":"CDH Investments","13":"Citic Capital Partners","14":"CPPIB","15":"EMR Capital","16":"Genting Group","17":"GIC","18":"Global Logistics Properties","19":"Hellman & Friedman LLC","20":"Kedaara Capital Advisors","21":"KKR & Co","22":"MBK Partners","23":"Northstar Group","24":"PAG","25":"Pavilion Capitol","26":"Permira Holdings","27":"Platinum Equity","28":"Samena Capital","29":"Saratoga Capital","30":"Temasek","31":"The Carlyle Group","32":"Thoma Bravo","33":"TPG Capital","34":"Vista Eq Partners Mgmt","35":"Others"}'),
	(25, 'RatingBucket', 'select', '{"1":"Triple A", "2":"Double A", "3":"Single A", "4":"Triple B", "5":"Double B", "6":"Single B", "7":"Triple C and below", "8":"Unrated"}');
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.migration_sql
CREATE TABLE IF NOT EXISTS `migration_sql` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `modules` varchar(255) DEFAULT NULL,
  `name_file` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_msneyk4cggf167o78i8knlkfq` (`name_file`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.migration_sql: ~14 rows (approximately)
/*!40000 ALTER TABLE `migration_sql` DISABLE KEYS */;
INSERT INTO `migration_sql` (`id`, `description`, `modules`, `name_file`, `type`) VALUES
	(1, 'dip/sql/User_group.sql', 'DIP', 'dip/sql/User_group.sql', NULL),
	(2, 'common/sql/DROP_PROCEDURE_check_table_exists.sql', 'COMMON', 'common/sql/DROP_PROCEDURE_check_table_exists.sql', 'DROP_PROCEDURE'),
	(3, 'common/sql/CREATE_PROCEDURE_check_table_exists.sql', 'COMMON', 'common/sql/CREATE_PROCEDURE_check_table_exists.sql', 'CREATE_PROCEDURE'),
	(4, 'dip/sql/LOAN_58_Add_permission_for_Obligor_User.sql', 'DIP', 'dip/sql/LOAN_58_Add_permission_for_Obligor_User.sql', NULL),
	(5, 'dip/sql/Setup_Table_Additional_section.sql', 'DIP', 'dip/sql/Setup_Table_Additional_section.sql', NULL),
	(6, 'dip/sql/Setup_Table_Country.sql', 'DIP', 'dip/sql/Setup_Table_Country.sql', NULL),
	(7, 'dip/sql/Setup_Table_document_master_data.sql', 'DIP', 'dip/sql/Setup_Table_document_master_data.sql', NULL),
	(8, 'dip/sql/Setup_Table_ui_label.sql', 'DIP', 'dip/sql/Setup_Table_ui_label.sql', NULL),
	(9, 'dip/sql/Setup_Table_obligor_master_data.sql', 'DIP', 'dip/sql/Setup_Table_obligor_master_data.sql', NULL),
	(10, 'dip/sql/Setup_Table_metadata.sql', 'DIP', 'dip/sql/Setup_Table_metadata.sql', NULL),
	(11, 'dip/sql/Setup_Table_form_field.sql', 'DIP', 'dip/sql/Setup_Table_form_field.sql', NULL),
	(12, 'dip/sql/Setup_Table_setting.sql', 'DIP', 'dip/sql/Setup_Table_setting.sql', NULL),
	(13, 'dip/sql/ADD_LOAN_METADATA.sql', 'DIP', 'dip/sql/ADD_LOAN_METADATA.sql', NULL),
	(14, 'dip/sql/ADD_LOAN_MASTER_DATA.sql', 'DIP', 'dip/sql/ADD_LOAN_MASTER_DATA.sql', NULL);
/*!40000 ALTER TABLE `migration_sql` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.obligor
CREATE TABLE IF NOT EXISTS `obligor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `entity_id` varchar(255) DEFAULT NULL,
  `lei` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_organization` varchar(255) DEFAULT NULL,
  `placeholders` longtext,
  `rating_others` longtext,
  `status` int(11) DEFAULT '0',
  `uen` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `continent_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `industry_sector_id` bigint(20) DEFAULT NULL,
  `rating_bucket_id` bigint(20) DEFAULT NULL,
  `rating_fitch_id` bigint(20) DEFAULT NULL,
  `rating_moodys_id` bigint(20) DEFAULT NULL,
  `rating_s_and_p_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_by26h3cip66a71jq7g7jfn3xb` (`name`),
  KEY `FKcldchmx0516eo0smegqdld9qg` (`continent_id`),
  KEY `FKl663tm3oj86kjokwxuupv8mwl` (`country_id`),
  KEY `FK6hvapdr9rkgtotip2wfjwovt1` (`industry_sector_id`),
  KEY `FK5fcvap51r0lhsj9akj5wo3ify` (`rating_bucket_id`),
  KEY `FK9bcxbya0ar2gog6826rwa51tj` (`rating_fitch_id`),
  KEY `FKhak413eraf1bm2ss0vwa1ralk` (`rating_moodys_id`),
  KEY `FKj6lchxl23l024vjl4olbnccgc` (`rating_s_and_p_id`),
  CONSTRAINT `FK5fcvap51r0lhsj9akj5wo3ify` FOREIGN KEY (`rating_bucket_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FK6hvapdr9rkgtotip2wfjwovt1` FOREIGN KEY (`industry_sector_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FK9bcxbya0ar2gog6826rwa51tj` FOREIGN KEY (`rating_fitch_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FKcldchmx0516eo0smegqdld9qg` FOREIGN KEY (`continent_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FKhak413eraf1bm2ss0vwa1ralk` FOREIGN KEY (`rating_moodys_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FKj6lchxl23l024vjl4olbnccgc` FOREIGN KEY (`rating_s_and_p_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FKl663tm3oj86kjokwxuupv8mwl` FOREIGN KEY (`country_id`) REFERENCES `obligor_master_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.obligor: ~29 rows (approximately)
/*!40000 ALTER TABLE `obligor` DISABLE KEYS */;
INSERT INTO `obligor` (`id`, `created_at`, `created_by`, `deleted_at`, `entity_id`, `lei`, `name`, `parent_organization`, `placeholders`, `rating_others`, `status`, `uen`, `updated_at`, `updated_by`, `continent_id`, `country_id`, `industry_sector_id`, `rating_bucket_id`, `rating_fitch_id`, `rating_moodys_id`, `rating_s_and_p_id`) VALUES
	(1, '2023-03-15 02:58:57', 1, NULL, '', '', 'Obligor Test 01', '', '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, '', '2023-03-15 15:18:51', 4, NULL, NULL, 83, 375, NULL, NULL, 40),
	(2, '2023-03-15 02:59:57', 1, NULL, 'ID89243NYQ', 'KQWNGEW89423', 'Obligor Test 02', 'ZALO ', '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, 'UW41205', '2023-03-15 15:18:12', 4, 112, 127, 81, 380, NULL, NULL, NULL),
	(3, '2023-03-15 02:55:57', 1, NULL, 'ID123456783', 'KAY DO LEI INFORMATION', 'Obligor Test 03', 'Kay Do Organization', '{"placeholder_1":"Kay Do #1","placeholder_2":"Kay Do #2","placeholder_3":"","placeholder_4":"Kay Do #4","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"Rating #1","rating_other_2":"Rating #2","rating_other_3":"Rating #3"}', 0, 'JGNW32824IRJW', '2023-03-15 14:56:00', 4, 115, 129, 83, 375, 62, 16, 41),
	(4, '2023-03-15 16:33:46', 3, NULL, 'ID89243NYQ', NULL, 'Andrew ob  1', 'Andrew DTO', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, NULL, '2023-03-15 16:33:46', 3, NULL, NULL, 83, 380, NULL, NULL, NULL),
	(5, '2023-03-16 02:45:48', 4, NULL, NULL, 'KAY DO LEI', 'Kay Do', 'Kay Do Organization', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 2, 'JWEHF12712', '2023-03-16 02:45:48', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(6, '2023-03-16 02:45:48', 4, NULL, NULL, 'KAY DO LEI', 'Kay Do 1', 'Kay Do Organization 1', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'KRUQOT3485', '2023-03-16 02:45:48', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(7, '2023-03-16 02:45:48', 4, NULL, NULL, 'KAY DO LEI', 'Kay Do 2', 'Kay Do Organization 2', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'OEGNW529', '2023-03-16 02:45:48', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(8, '2023-03-16 03:08:54', 4, NULL, NULL, 'KAY DO LEI ABC', 'Kay Do 10', 'Kay Do Organization 10', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'JWEHF12712JFEWN', '2023-03-16 03:08:54', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(9, '2023-03-16 03:08:54', 4, NULL, NULL, 'KAY DO LEI XYZ', 'Kay Do 11', 'Kay Do Organization 11', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'KRUQOT3485KJWER', '2023-03-16 03:08:54', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(10, '2023-03-16 03:08:54', 4, NULL, NULL, 'KAY DO LEI UYEN', 'Kay Do 12', 'Kay Do Organization 12', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'OEGNW529GDFND', '2023-03-16 03:08:54', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(11, '2023-03-16 07:05:07', 4, NULL, 'ID123456783rerwr', 'KAY DO LEI ABC', 'Kay Do Rosewood Test', 'International Company', '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, 'JWEHF12712JFEWN', '2023-03-16 07:08:04', 4, NULL, NULL, 85, 375, NULL, NULL, 40),
	(12, '2023-03-16 07:05:07', 4, NULL, NULL, 'KAY DO LEI XYZ', 'Kay Do Rosewood 1', 'International Company 1', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'KRUQOT3485KJWER', '2023-03-16 07:05:07', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(13, '2023-03-16 07:05:07', 4, NULL, NULL, 'KAY DO LEI UYEN', 'Kay Do Rosewood 2', 'International Company 2', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'OEGNW529GDFND', '2023-03-16 07:05:07', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(14, '2023-03-20 03:30:36', 4, NULL, NULL, 'FGJEWRF7527', 'DELL Computer Inc.', 'Kay Do Orgnazation', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'WEAISF12324HF', '2023-03-20 03:30:36', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(15, '2023-03-20 03:30:36', 4, NULL, '473573', 'JJHGNF3343', 'BE Soultion Software', 'Smoke Test', '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, '3475JNMDB', '2023-03-20 03:52:32', 46, 112, 125, 80, 375, 61, 18, 39),
	(16, '2023-03-20 03:30:36', 4, NULL, NULL, 'lkjasg53482', 'Lenovo Computer Corp.', 'Self-Created Organization', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'JREUVN2135321', '2023-03-20 03:30:36', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(17, '2023-03-20 03:38:21', 4, NULL, NULL, NULL, 'BE Solution Smoke Test', NULL, '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, NULL, '2023-03-20 03:38:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, '2023-03-20 03:39:33', 4, NULL, NULL, NULL, 'BE Solution Smoke Test 123', NULL, '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, NULL, '2023-03-20 03:39:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, '2023-03-20 03:59:39', 46, NULL, NULL, 'FGJEWRF7527', 'DELL Computer Inc. Kay Do Smoke', 'Kay Do Orgnazation', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'WEAISF12324HF', '2023-03-20 03:59:39', 46, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(21, '2023-03-20 03:59:39', 46, NULL, NULL, 'JJHGNF3343', 'BE Soultion Software Kay Do Smoke', 'Smoke Test', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, '3475JNMDB', '2023-03-20 03:59:39', 46, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(22, '2023-03-20 03:59:39', 46, NULL, NULL, 'lkjasg53482', 'Lenovo Computer Corp. Kay Do Smoke', 'Self-Created Organization', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'JREUVN2135321', '2023-03-20 03:59:39', 46, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(23, '2023-03-20 06:39:23', 46, NULL, NULL, 'SDGJREWG784358345', 'Borrower Name 1', 'parent borrower 1', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'JDFNEF1232', '2023-03-20 06:39:23', 46, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(25, '2023-03-20 06:39:23', 46, NULL, NULL, 'FJERYUTEt56567', 'Borrower Name 2', 'parent borrower 2', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'DFJMERU574543', '2023-03-20 06:39:23', 46, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(26, '2023-03-20 06:42:06', 3, NULL, NULL, NULL, 'Andrew Borrower name', NULL, '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, NULL, '2023-03-20 06:42:06', 3, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(27, '2023-03-20 06:47:20', 46, NULL, NULL, NULL, 'Andrew Borrower name 2', NULL, '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, NULL, '2023-03-20 06:47:20', 46, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(28, '2023-03-20 06:53:42', 46, NULL, NULL, NULL, 'BE SOLUTION METADATA', NULL, '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, NULL, '2023-03-20 06:53:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, '2023-03-20 07:05:43', 4, NULL, NULL, 'FGJEWRF7527', 'NAVIGOS', 'Kay Do Orgnazation 123', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, 'WEAISF12324HF', '2023-03-20 07:05:43', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(30, '2023-03-20 07:05:43', 4, NULL, NULL, 'JJHGNF3343', 'VietnamWORk', 'Smoke Test 123', '{"placeholder_10":"","placeholder_20":"","placeholder_14":"","placeholder_13":"","placeholder_12":"","placeholder_11":"","placeholder_9":"","placeholder_18":"","placeholder_8":"","placeholder_17":"","placeholder_16":"","placeholder_15":"","placeholder_5":"","placeholder_4":"","placeholder_7":"","placeholder_6":"","placeholder_19":"","placeholder_1":"","placeholder_3":"","placeholder_2":""}', '{"rating_other_3":"","rating_other_2":"","rating_other_1":""}', 0, '3475JNMDB', '2023-03-20 07:05:43', 4, NULL, NULL, NULL, 380, NULL, NULL, NULL),
	(31, '2023-03-20 07:05:43', 4, NULL, '', 'lkjasg53482 12312', 'ZALO', 'Self-Created Organization 123', '{"placeholder_1":"","placeholder_2":"","placeholder_3":"","placeholder_4":"","placeholder_5":"","placeholder_6":"","placeholder_7":"","placeholder_8":"","placeholder_9":"","placeholder_10":"","placeholder_11":"","placeholder_12":"","placeholder_13":"","placeholder_14":"","placeholder_15":"","placeholder_16":"","placeholder_17":"","placeholder_18":"","placeholder_19":"","placeholder_20":""}', '{"rating_other_1":"","rating_other_2":"","rating_other_3":""}', 0, 'JREUVN2135321', '2023-03-20 08:06:43', 55, NULL, 125, 81, 380, NULL, NULL, NULL);
/*!40000 ALTER TABLE `obligor` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.obligor_follower
CREATE TABLE IF NOT EXISTS `obligor_follower` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `followed_at` datetime DEFAULT NULL,
  `obligor_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhuepkcx9fvk5nwy6gxaxcjsvo` (`obligor_id`),
  KEY `FK6qwp89i3mwm4vfadugicvs0wu` (`user_id`),
  CONSTRAINT `FK6qwp89i3mwm4vfadugicvs0wu` FOREIGN KEY (`user_id`) REFERENCES `data_node_user` (`id`),
  CONSTRAINT `FKhuepkcx9fvk5nwy6gxaxcjsvo` FOREIGN KEY (`obligor_id`) REFERENCES `obligor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.obligor_follower: ~0 rows (approximately)
/*!40000 ALTER TABLE `obligor_follower` DISABLE KEYS */;
/*!40000 ALTER TABLE `obligor_follower` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.obligor_master_data
CREATE TABLE IF NOT EXISTS `obligor_master_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.obligor_master_data: ~380 rows (approximately)
/*!40000 ALTER TABLE `obligor_master_data` DISABLE KEYS */;
INSERT INTO `obligor_master_data` (`id`, `entity_type`, `name`, `ordering`) VALUES
	(1, 'obligor_obligor_type', 'Corporate', 1),
	(2, 'obligor_obligor_type', 'Sovereign', 2),
	(3, 'obligor_obligor_type', 'Financial', 3),
	(4, 'obligor_obligor_type', 'Supranational', 4),
	(5, 'obligor_obligor_type', 'Project Finance', 5),
	(6, 'obligor_obligor_type', 'Structured Finance', 6),
	(7, 'obligor_obligor_type', 'LGFV (China)', 7),
	(8, 'obligor_obligor_type', 'Government Linked/Agency', 8),
	(9, 'obligor_obligor_type', 'Others', 9),
	(10, 'obligor_sustainable_issuer_type', 'Green', 1),
	(11, 'obligor_sustainable_issuer_type', 'Social', 2),
	(12, 'obligor_sustainable_issuer_type', 'Sustainability', 3),
	(13, 'obligor_sustainable_issuer_type', 'Sustainability-linked', 4),
	(14, 'rating_moodys_id', 'Aaa', 1),
	(15, 'rating_moodys_id', 'Aa1', 2),
	(16, 'rating_moodys_id', 'Aa2', 3),
	(17, 'rating_moodys_id', 'Aa3', 4),
	(18, 'rating_moodys_id', 'A1', 5),
	(19, 'rating_moodys_id', 'A2', 6),
	(20, 'rating_moodys_id', 'A3', 7),
	(21, 'rating_moodys_id', 'Baa1', 8),
	(22, 'rating_moodys_id', 'Baa2', 9),
	(23, 'rating_moodys_id', 'Baa3', 10),
	(24, 'rating_moodys_id', 'Ba1', 11),
	(25, 'rating_moodys_id', 'Ba2', 12),
	(26, 'rating_moodys_id', 'Ba3', 13),
	(27, 'rating_moodys_id', 'B1', 14),
	(28, 'rating_moodys_id', 'B2', 15),
	(29, 'rating_moodys_id', 'B3', 16),
	(30, 'rating_moodys_id', 'Caa1', 17),
	(31, 'rating_moodys_id', 'Caa2', 18),
	(32, 'rating_moodys_id', 'Caa3', 19),
	(33, 'rating_moodys_id', 'Ca', 20),
	(34, 'rating_moodys_id', 'C', 21),
	(35, 'rating_moodys_id', 'NR', 22),
	(36, 'rating_s_and_p_id', 'AAA', 1),
	(37, 'rating_s_and_p_id', 'AA+', 2),
	(38, 'rating_s_and_p_id', 'AA', 3),
	(39, 'rating_s_and_p_id', 'AA-', 4),
	(40, 'rating_s_and_p_id', 'A+', 5),
	(41, 'rating_s_and_p_id', 'A', 6),
	(42, 'rating_s_and_p_id', 'A-', 7),
	(43, 'rating_s_and_p_id', 'BBB+', 8),
	(44, 'rating_s_and_p_id', 'BBB', 9),
	(45, 'rating_s_and_p_id', 'BBB-', 10),
	(46, 'rating_s_and_p_id', 'BB+', 11),
	(47, 'rating_s_and_p_id', 'BB', 12),
	(48, 'rating_s_and_p_id', 'BB-', 13),
	(49, 'rating_s_and_p_id', 'B+', 14),
	(50, 'rating_s_and_p_id', 'B', 15),
	(51, 'rating_s_and_p_id', 'B-', 16),
	(52, 'rating_s_and_p_id', 'CCC+', 17),
	(53, 'rating_s_and_p_id', 'CCC', 18),
	(54, 'rating_s_and_p_id', 'CCC−', 19),
	(55, 'rating_s_and_p_id', 'CC', 20),
	(56, 'rating_s_and_p_id', 'C', 21),
	(57, 'rating_s_and_p_id', 'D', 22),
	(58, 'rating_s_and_p_id', 'NR', 23),
	(59, 'rating_fitch_id', 'AAA', 1),
	(60, 'rating_fitch_id', 'AA+', 2),
	(61, 'rating_fitch_id', 'AA', 3),
	(62, 'rating_fitch_id', 'AA-', 4),
	(63, 'rating_fitch_id', 'A+', 5),
	(64, 'rating_fitch_id', 'A', 6),
	(65, 'rating_fitch_id', 'A-', 7),
	(66, 'rating_fitch_id', 'BBB+', 8),
	(67, 'rating_fitch_id', 'BBB', 9),
	(68, 'rating_fitch_id', 'BBB-', 10),
	(69, 'rating_fitch_id', 'BB+', 11),
	(70, 'rating_fitch_id', 'BB', 12),
	(71, 'rating_fitch_id', 'BB-', 13),
	(72, 'rating_fitch_id', 'B+', 14),
	(73, 'rating_fitch_id', 'B', 15),
	(74, 'rating_fitch_id', 'B-', 16),
	(75, 'rating_fitch_id', 'CCC', 17),
	(76, 'rating_fitch_id', 'DDD', 18),
	(77, 'rating_fitch_id', 'DD', 19),
	(78, 'rating_fitch_id', 'D', 20),
	(79, 'rating_fitch_id', 'NR', 21),
	(80, 'industry_sector_id', 'Aerospace', 1),
	(81, 'industry_sector_id', 'Agribusiness', 2),
	(82, 'industry_sector_id', 'Auto/Truck', 3),
	(83, 'industry_sector_id', 'Chemicals', 4),
	(84, 'industry_sector_id', 'Computers & Electronics', 5),
	(85, 'industry_sector_id', 'Conglomerate', 6),
	(86, 'industry_sector_id', 'Construction/Building', 7),
	(87, 'industry_sector_id', 'Consumer Products', 8),
	(88, 'industry_sector_id', 'Defense', 9),
	(89, 'industry_sector_id', 'Dining & Lodging', 10),
	(90, 'industry_sector_id', 'Finance', 11),
	(91, 'industry_sector_id', 'Food & Beverage', 12),
	(92, 'industry_sector_id', 'Forestry & Paper', 13),
	(93, 'industry_sector_id', 'Government', 14),
	(94, 'industry_sector_id', 'Healthcare', 15),
	(95, 'industry_sector_id', 'Holding Companies', 16),
	(96, 'industry_sector_id', 'Insurance', 17),
	(97, 'industry_sector_id', 'Leisure & Recreation', 18),
	(98, 'industry_sector_id', 'Machinery', 19),
	(99, 'industry_sector_id', 'Metal & Steel', 20),
	(100, 'industry_sector_id', 'Mining', 21),
	(101, 'industry_sector_id', 'Oil & Gas', 22),
	(102, 'industry_sector_id', 'Professional Services', 23),
	(103, 'industry_sector_id', 'Publishing', 24),
	(104, 'industry_sector_id', 'Real Estate/Property', 25),
	(105, 'industry_sector_id', 'Retail', 26),
	(106, 'industry_sector_id', 'Telecommunications', 27),
	(107, 'industry_sector_id', 'Textile', 28),
	(108, 'industry_sector_id', 'Transportation', 29),
	(109, 'industry_sector_id', 'Utility & Energy', 30),
	(110, 'continent_id', 'Oceania', 1),
	(111, 'continent_id', 'Japan', 2),
	(112, 'continent_id', 'Central Asia', 3),
	(113, 'continent_id', 'North Asia x-JP', 4),
	(114, 'continent_id', 'South Asia', 5),
	(115, 'continent_id', 'Southeast Asia', 6),
	(116, 'continent_id', 'Middle East', 7),
	(117, 'continent_id', 'Eastern Europe', 8),
	(118, 'continent_id', 'Western Europe', 9),
	(119, 'continent_id', 'Northern Africa', 10),
	(120, 'continent_id', 'Other Africa', 11),
	(121, 'continent_id', 'Latin America and the Caribbean', 12),
	(122, 'continent_id', 'US/Canada', 13),
	(123, 'continent_id', 'Others', 14),
	(124, 'country_id', 'Afghanistan', 1),
	(125, 'country_id', 'Aland Islands', 2),
	(126, 'country_id', 'Albania', 3),
	(127, 'country_id', 'Algeria', 4),
	(128, 'country_id', 'American Samoa', 5),
	(129, 'country_id', 'Andorra', 6),
	(130, 'country_id', 'Angola', 7),
	(131, 'country_id', 'Anguilla', 8),
	(132, 'country_id', 'Antarctica', 9),
	(133, 'country_id', 'Antigua and Barbuda', 10),
	(134, 'country_id', 'Argentina', 11),
	(135, 'country_id', 'Armenia', 12),
	(136, 'country_id', 'Aruba', 13),
	(137, 'country_id', 'Australia', 14),
	(138, 'country_id', 'Austria', 15),
	(139, 'country_id', 'Azerbaijan', 16),
	(140, 'country_id', 'Bahamas', 17),
	(141, 'country_id', 'Bahrain', 18),
	(142, 'country_id', 'Bangladesh', 19),
	(143, 'country_id', 'Barbados', 20),
	(144, 'country_id', 'Belarus', 21),
	(145, 'country_id', 'Belgium', 22),
	(146, 'country_id', 'Belize', 23),
	(147, 'country_id', 'Benin', 24),
	(148, 'country_id', 'Bermuda', 25),
	(149, 'country_id', 'Bhutan', 26),
	(150, 'country_id', 'Bolivia', 27),
	(151, 'country_id', 'Bonaire', 28),
	(152, 'country_id', 'Bosnia and Herzegovina', 29),
	(153, 'country_id', 'Botswana', 30),
	(154, 'country_id', 'Bouvet Island', 31),
	(155, 'country_id', 'Brazil', 32),
	(156, 'country_id', 'British Indian Ocean Territory', 33),
	(157, 'country_id', 'Brunei Darussalam', 34),
	(158, 'country_id', 'Bulgaria', 35),
	(159, 'country_id', 'Burkina Faso', 36),
	(160, 'country_id', 'Burundi', 37),
	(161, 'country_id', 'Cabo Verde', 38),
	(162, 'country_id', 'Cambodia', 39),
	(163, 'country_id', 'Cameroon', 40),
	(164, 'country_id', 'Canada', 41),
	(165, 'country_id', 'Cayman Islands', 42),
	(166, 'country_id', 'Central African Republic', 43),
	(167, 'country_id', 'Chad', 44),
	(168, 'country_id', 'Chile', 45),
	(169, 'country_id', 'China', 46),
	(170, 'country_id', 'Christmas Island', 47),
	(171, 'country_id', 'Cocos Islands', 48),
	(172, 'country_id', 'Colombia', 49),
	(173, 'country_id', 'Comoros', 50),
	(174, 'country_id', 'The Democratic Republic of the Congo', 51),
	(175, 'country_id', 'Congo', 52),
	(176, 'country_id', 'Cook Islands', 53),
	(177, 'country_id', 'Costa Rica', 54),
	(178, 'country_id', 'Côte d\'Ivoire', 55),
	(179, 'country_id', 'Croatia', 56),
	(180, 'country_id', 'Cuba', 57),
	(181, 'country_id', 'Cura√ßao', 58),
	(182, 'country_id', 'Cyprus', 59),
	(183, 'country_id', 'Czechia', 60),
	(184, 'country_id', 'Denmark', 61),
	(185, 'country_id', 'Djibouti', 62),
	(186, 'country_id', 'Dominica', 63),
	(187, 'country_id', 'Dominican Republic', 64),
	(188, 'country_id', 'Ecuador', 65),
	(189, 'country_id', 'Egypt', 66),
	(190, 'country_id', 'El Salvador', 67),
	(191, 'country_id', 'Equatorial Guinea', 68),
	(192, 'country_id', 'Eritrea', 69),
	(193, 'country_id', 'Estonia', 70),
	(194, 'country_id', 'Eswatini', 71),
	(195, 'country_id', 'Ethiopia', 72),
	(196, 'country_id', 'Falkland Islands', 73),
	(197, 'country_id', 'Faroe Islands', 74),
	(198, 'country_id', 'Fiji', 75),
	(199, 'country_id', 'Finland', 76),
	(200, 'country_id', 'France', 77),
	(201, 'country_id', 'French Guiana', 78),
	(202, 'country_id', 'French Polynesia', 79),
	(203, 'country_id', 'French Southern Territories', 80),
	(204, 'country_id', 'Gabon', 81),
	(205, 'country_id', 'Gambia', 82),
	(206, 'country_id', 'Georgia', 83),
	(207, 'country_id', 'Germany', 84),
	(208, 'country_id', 'Ghana', 85),
	(209, 'country_id', 'Gibraltar', 86),
	(210, 'country_id', 'Greece', 87),
	(211, 'country_id', 'Greenland', 88),
	(212, 'country_id', 'Grenada', 89),
	(213, 'country_id', 'Guadeloupe', 90),
	(214, 'country_id', 'Guam', 91),
	(215, 'country_id', 'Guatemala', 92),
	(216, 'country_id', 'Guernsey', 93),
	(217, 'country_id', 'Guinea', 94),
	(218, 'country_id', 'Guinea-Bissau', 95),
	(219, 'country_id', 'Guyana', 96),
	(220, 'country_id', 'Haiti', 97),
	(221, 'country_id', 'Heard Island and McDonald Islands', 98),
	(222, 'country_id', 'Holy See', 99),
	(223, 'country_id', 'Honduras', 100),
	(224, 'country_id', 'Hong Kong', 101),
	(225, 'country_id', 'Hungary', 102),
	(226, 'country_id', 'Iceland', 103),
	(227, 'country_id', 'India', 104),
	(228, 'country_id', 'Indonesia', 105),
	(229, 'country_id', 'Iran', 106),
	(230, 'country_id', 'Iraq', 107),
	(231, 'country_id', 'Ireland', 108),
	(232, 'country_id', 'Isle of Man', 109),
	(233, 'country_id', 'Israel', 110),
	(234, 'country_id', 'Italy', 111),
	(235, 'country_id', 'Jamaica', 112),
	(236, 'country_id', 'Japan', 113),
	(237, 'country_id', 'Jersey', 114),
	(238, 'country_id', 'Jordan', 115),
	(239, 'country_id', 'Kazakhstan', 116),
	(240, 'country_id', 'Kenya', 117),
	(241, 'country_id', 'Kiribati', 118),
	(242, 'country_id', 'The Democratic People\'s Republic of Korea', 119),
	(243, 'country_id', 'Korea', 120),
	(244, 'country_id', 'Kuwait', 121),
	(245, 'country_id', 'Kyrgyzstan', 122),
	(246, 'country_id', 'Lao People\'s Democratic Republic', 123),
	(247, 'country_id', 'Latvia', 124),
	(248, 'country_id', 'Lebanon', 125),
	(249, 'country_id', 'Lesotho', 126),
	(250, 'country_id', 'Liberia', 127),
	(251, 'country_id', 'Libya', 128),
	(252, 'country_id', 'Liechtenstein', 129),
	(253, 'country_id', 'Lithuania', 130),
	(254, 'country_id', 'Luxembourg', 131),
	(255, 'country_id', 'Macao', 132),
	(256, 'country_id', 'North Macedonia', 133),
	(257, 'country_id', 'Madagascar', 134),
	(258, 'country_id', 'Malawi', 135),
	(259, 'country_id', 'Malaysia', 136),
	(260, 'country_id', 'Maldives', 137),
	(261, 'country_id', 'Mali', 138),
	(262, 'country_id', 'Malta', 139),
	(263, 'country_id', 'Marshall Islands', 140),
	(264, 'country_id', 'Martinique', 141),
	(265, 'country_id', 'Mauritania', 142),
	(266, 'country_id', 'Mauritius', 143),
	(267, 'country_id', 'Mayotte', 144),
	(268, 'country_id', 'Mexico', 145),
	(269, 'country_id', 'Federated States of Micronesia', 146),
	(270, 'country_id', 'The Republic of Moldova', 147),
	(271, 'country_id', 'Monaco', 148),
	(272, 'country_id', 'Mongolia', 149),
	(273, 'country_id', 'Montenegro', 150),
	(274, 'country_id', 'Montserrat', 151),
	(275, 'country_id', 'Morocco', 152),
	(276, 'country_id', 'Mozambique', 153),
	(277, 'country_id', 'Myanmar', 154),
	(278, 'country_id', 'Namibia', 155),
	(279, 'country_id', 'Nauru', 156),
	(280, 'country_id', 'Nepal', 157),
	(281, 'country_id', 'Netherlands', 158),
	(282, 'country_id', 'New Caledonia', 159),
	(283, 'country_id', 'New Zealand', 160),
	(284, 'country_id', 'Nicaragua', 161),
	(285, 'country_id', 'Niger', 162),
	(286, 'country_id', 'Nigeria', 163),
	(287, 'country_id', 'Niue', 164),
	(288, 'country_id', 'Norfolk Island', 165),
	(289, 'country_id', 'Northern Mariana Islands', 166),
	(290, 'country_id', 'Norway', 167),
	(291, 'country_id', 'Oman', 168),
	(292, 'country_id', 'Pakistan', 169),
	(293, 'country_id', 'Palau', 170),
	(294, 'country_id', 'The State of Palestine', 171),
	(295, 'country_id', 'Panama', 172),
	(296, 'country_id', 'Papua New Guinea', 173),
	(297, 'country_id', 'Paraguay', 174),
	(298, 'country_id', 'Peru', 175),
	(299, 'country_id', 'Philippines', 176),
	(300, 'country_id', 'Pitcairn', 177),
	(301, 'country_id', 'Poland', 178),
	(302, 'country_id', 'Portugal', 179),
	(303, 'country_id', 'Puerto Rico', 180),
	(304, 'country_id', 'Qatar', 181),
	(305, 'country_id', 'R√©union', 182),
	(306, 'country_id', 'Romania', 183),
	(307, 'country_id', 'Russian Federation', 184),
	(308, 'country_id', 'Rwanda', 185),
	(309, 'country_id', 'Saint Barth√©lemy', 186),
	(310, 'country_id', 'Saint Helena', 187),
	(311, 'country_id', 'Saint Kitts and Nevis', 188),
	(312, 'country_id', 'Saint Lucia', 189),
	(313, 'country_id', 'Saint Martin', 190),
	(314, 'country_id', 'Saint Pierre and Miquelon', 191),
	(315, 'country_id', 'Saint Vincent and the Grenadines', 192),
	(316, 'country_id', 'Samoa', 193),
	(317, 'country_id', 'San Marino', 194),
	(318, 'country_id', 'Sao Tome and Principe', 195),
	(319, 'country_id', 'Saudi Arabia', 196),
	(320, 'country_id', 'Senegal', 197),
	(321, 'country_id', 'Serbia', 198),
	(322, 'country_id', 'Seychelles', 199),
	(323, 'country_id', 'Sierra Leone', 200),
	(324, 'country_id', 'Singapore', 201),
	(325, 'country_id', 'Sint Maarten', 202),
	(326, 'country_id', 'Slovakia', 203),
	(327, 'country_id', 'Slovenia', 204),
	(328, 'country_id', 'Solomon Islands', 205),
	(329, 'country_id', 'Somalia', 206),
	(330, 'country_id', 'South Africa', 207),
	(331, 'country_id', 'South Georgia and the South Sandwich Islands', 208),
	(332, 'country_id', 'South Sudan', 209),
	(333, 'country_id', 'Spain', 210),
	(334, 'country_id', 'Sri Lanka', 211),
	(335, 'country_id', 'Sudan', 212),
	(336, 'country_id', 'Suriname', 213),
	(337, 'country_id', 'Svalbard', 214),
	(338, 'country_id', 'Sweden', 215),
	(339, 'country_id', 'Switzerland', 216),
	(340, 'country_id', 'Syrian Arab Republic', 217),
	(341, 'country_id', 'Taiwan', 218),
	(342, 'country_id', 'Tajikistan', 219),
	(343, 'country_id', 'Tanzania,\n        the United Republic of', 220),
	(344, 'country_id', 'Thailand', 221),
	(345, 'country_id', 'Timor-Leste', 222),
	(346, 'country_id', 'Togo', 223),
	(347, 'country_id', 'Tokelau', 224),
	(348, 'country_id', 'Tonga', 225),
	(349, 'country_id', 'Trinidad and Tobago', 226),
	(350, 'country_id', 'Tunisia', 227),
	(351, 'country_id', 'Turkey', 228),
	(352, 'country_id', 'Turkmenistan', 229),
	(353, 'country_id', 'Turks and Caicos Islands', 230),
	(354, 'country_id', 'Tuvalu', 231),
	(355, 'country_id', 'Uganda', 232),
	(356, 'country_id', 'Ukraine', 233),
	(357, 'country_id', 'United Arab Emirates', 234),
	(358, 'country_id', 'United Kingdom of Great Britain and Northern Ireland', 235),
	(359, 'country_id', 'United States Minor Outlying Islands', 236),
	(360, 'country_id', 'United States of America', 237),
	(361, 'country_id', 'Uruguay', 238),
	(362, 'country_id', 'Uzbekistan', 239),
	(363, 'country_id', 'Vanuatu', 240),
	(364, 'country_id', 'Venezuela', 241),
	(365, 'country_id', 'Vietnam', 242),
	(366, 'country_id', 'Virgin Islands', 243),
	(367, 'country_id', 'The Virgin Islands of the United States', 244),
	(368, 'country_id', 'Wallis and Futuna', 245),
	(369, 'country_id', 'Western Sahara', 246),
	(370, 'country_id', 'Yemen', 247),
	(371, 'country_id', 'Zambia', 248),
	(372, 'country_id', 'Zimbabwe', 249),
	(373, 'rating_bucket_id', 'Triple A', 1),
	(374, 'rating_bucket_id', 'Double A', 2),
	(375, 'rating_bucket_id', 'Single A', 3),
	(376, 'rating_bucket_id', 'Triple B', 4),
	(377, 'rating_bucket_id', 'Double B', 5),
	(378, 'rating_bucket_id', 'Single B', 6),
	(379, 'rating_bucket_id', 'Triple C and below', 7),
	(380, 'rating_bucket_id', 'Unrated', 8);
/*!40000 ALTER TABLE `obligor_master_data` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.obligor_obligor_type
CREATE TABLE IF NOT EXISTS `obligor_obligor_type` (
  `obligor_id` bigint(20) NOT NULL,
  `obligor_type_id` bigint(20) NOT NULL,
  KEY `FKth43k8iepn9wnu0op2w2xbmgg` (`obligor_type_id`),
  KEY `FK13gn0gqgpy9ds3fymd8xdg2e` (`obligor_id`),
  CONSTRAINT `FK13gn0gqgpy9ds3fymd8xdg2e` FOREIGN KEY (`obligor_id`) REFERENCES `obligor` (`id`),
  CONSTRAINT `FKth43k8iepn9wnu0op2w2xbmgg` FOREIGN KEY (`obligor_type_id`) REFERENCES `obligor_master_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.obligor_obligor_type: ~29 rows (approximately)
/*!40000 ALTER TABLE `obligor_obligor_type` DISABLE KEYS */;
INSERT INTO `obligor_obligor_type` (`obligor_id`, `obligor_type_id`) VALUES
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 5),
	(3, 6),
	(4, 3),
	(8, 1),
	(9, 3),
	(10, 5),
	(12, 3),
	(13, 5),
	(11, 1),
	(11, 2),
	(11, 3),
	(14, 2),
	(16, 8),
	(15, 6),
	(15, 5),
	(15, 4),
	(19, 2),
	(21, 6),
	(22, 8),
	(23, 2),
	(25, 1),
	(26, 1),
	(27, 1),
	(29, 2),
	(30, 6),
	(31, 8);
/*!40000 ALTER TABLE `obligor_obligor_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.obligor_sustainable_issuer_type
CREATE TABLE IF NOT EXISTS `obligor_sustainable_issuer_type` (
  `obligor_id` bigint(20) NOT NULL,
  `sustainable_issuer_type_id` bigint(20) NOT NULL,
  KEY `FK6wfq8kjduffrs180vfx23pu4c` (`sustainable_issuer_type_id`),
  KEY `FKh8k1ly6xc95r0q9awl0252o3l` (`obligor_id`),
  CONSTRAINT `FK6wfq8kjduffrs180vfx23pu4c` FOREIGN KEY (`sustainable_issuer_type_id`) REFERENCES `obligor_master_data` (`id`),
  CONSTRAINT `FKh8k1ly6xc95r0q9awl0252o3l` FOREIGN KEY (`obligor_id`) REFERENCES `obligor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.obligor_sustainable_issuer_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `obligor_sustainable_issuer_type` DISABLE KEYS */;
INSERT INTO `obligor_sustainable_issuer_type` (`obligor_id`, `sustainable_issuer_type_id`) VALUES
	(3, 12),
	(3, 11),
	(2, 12),
	(2, 11),
	(1, 12),
	(1, 11),
	(11, 11),
	(11, 12);
/*!40000 ALTER TABLE `obligor_sustainable_issuer_type` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.obligor_user
CREATE TABLE IF NOT EXISTS `obligor_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obligor_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc5u54r9wf4wdtoh8hvcvq7u1j` (`obligor_id`),
  KEY `FKbhl8vf9ovrtv71c9i26p2bfe4` (`user_id`),
  CONSTRAINT `FKbhl8vf9ovrtv71c9i26p2bfe4` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKc5u54r9wf4wdtoh8hvcvq7u1j` FOREIGN KEY (`obligor_id`) REFERENCES `obligor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.obligor_user: ~7 rows (approximately)
/*!40000 ALTER TABLE `obligor_user` DISABLE KEYS */;
INSERT INTO `obligor_user` (`id`, `obligor_id`, `user_id`) VALUES
	(1, 5, 8),
	(2, 5, 9),
	(3, 6, 10),
	(16, 1, 25),
	(17, 1, 26),
	(18, 15, 46),
	(24, 31, 52);
/*!40000 ALTER TABLE `obligor_user` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.offering_document
CREATE TABLE IF NOT EXISTS `offering_document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `name_build` varchar(255) DEFAULT NULL,
  `rating_bucket` int(11) DEFAULT NULL,
  `search_meta_data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.offering_document: ~0 rows (approximately)
/*!40000 ALTER TABLE `offering_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `offering_document` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.parts_of_doc_status
CREATE TABLE IF NOT EXISTS `parts_of_doc_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `additional` int(11) DEFAULT '0',
  `bond_definitions` int(11) DEFAULT '0',
  `doc_metadata` int(11) DEFAULT '0',
  `eod_item` int(11) DEFAULT '0',
  `eod_labels` int(11) DEFAULT '0',
  `esg_item` int(11) DEFAULT '0',
  `esg_labels` int(11) DEFAULT '0',
  `risk_factors_item` int(11) DEFAULT '0',
  `risk_factors_labels` int(11) DEFAULT '0',
  `table_of_contents` int(11) DEFAULT '0',
  `doc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjfq9xkbt2k2xk6sneamoe0d53` (`doc_id`),
  CONSTRAINT `FKjfq9xkbt2k2xk6sneamoe0d53` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.parts_of_doc_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `parts_of_doc_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `parts_of_doc_status` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.parts_of_loan_status
CREATE TABLE IF NOT EXISTS `parts_of_loan_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `additional` int(11) DEFAULT '0',
  `bond_definitions` int(11) DEFAULT '0',
  `doc_metadata` int(11) DEFAULT '0',
  `eod_item` int(11) DEFAULT '0',
  `eod_labels` int(11) DEFAULT '0',
  `esg_item` int(11) DEFAULT '0',
  `esg_labels` int(11) DEFAULT '0',
  `risk_factors_item` int(11) DEFAULT '0',
  `risk_factors_labels` int(11) DEFAULT '0',
  `table_of_contents` int(11) DEFAULT '0',
  `loan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk3xvrggl5q92my693f5po8wyy` (`loan_id`),
  CONSTRAINT `FKk3xvrggl5q92my693f5po8wyy` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.parts_of_loan_status: ~4 rows (approximately)
/*!40000 ALTER TABLE `parts_of_loan_status` DISABLE KEYS */;
INSERT INTO `parts_of_loan_status` (`id`, `additional`, `bond_definitions`, `doc_metadata`, `eod_item`, `eod_labels`, `esg_item`, `esg_labels`, `risk_factors_item`, `risk_factors_labels`, `table_of_contents`, `loan_id`) VALUES
	(1, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 8),
	(2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 9),
	(3, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 15),
	(4, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 16);
/*!40000 ALTER TABLE `parts_of_loan_status` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.refreshtoken
CREATE TABLE IF NOT EXISTS `refreshtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_or156wbneyk8noo4jstv55ii3` (`token`),
  KEY `FK8i9l5qlklij77rvmtk4uy9sit` (`user_id`),
  CONSTRAINT `FK8i9l5qlklij77rvmtk4uy9sit` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.refreshtoken: ~0 rows (approximately)
/*!40000 ALTER TABLE `refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `refreshtoken` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.risk_factory_item
CREATE TABLE IF NOT EXISTS `risk_factory_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` longtext,
  `doc_page_end` varchar(255) DEFAULT NULL,
  `doc_page_start` varchar(255) DEFAULT NULL,
  `headline` longtext,
  `ordering` int(11) DEFAULT NULL,
  `pdf_page_end` int(11) DEFAULT NULL,
  `pdf_page_start` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `risk_factory_item_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKejdfwt7o135jhyoybo8mnbmr9` (`created_by`),
  KEY `FKsjfbud6eskjwm0ckdjvm1iqv` (`updated_by`),
  KEY `FKt9uj1g0os64jo3f1jd7dgc4sy` (`doc_id`),
  KEY `FKf6a6oj9kdn0i2bnowqnyk0jap` (`risk_factory_item_category_id`),
  CONSTRAINT `FKejdfwt7o135jhyoybo8mnbmr9` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKf6a6oj9kdn0i2bnowqnyk0jap` FOREIGN KEY (`risk_factory_item_category_id`) REFERENCES `risk_factory_item_category` (`id`),
  CONSTRAINT `FKsjfbud6eskjwm0ckdjvm1iqv` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKt9uj1g0os64jo3f1jd7dgc4sy` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.risk_factory_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `risk_factory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_factory_item` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.risk_factory_item_category
CREATE TABLE IF NOT EXISTS `risk_factory_item_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3o6rixb4aeqqulebom0ja0jjt` (`created_by`),
  KEY `FK3msd8jvyo4gehmyrnmutgnlky` (`updated_by`),
  CONSTRAINT `FK3msd8jvyo4gehmyrnmutgnlky` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK3o6rixb4aeqqulebom0ja0jjt` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.risk_factory_item_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `risk_factory_item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_factory_item_category` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.risk_factory_label
CREATE TABLE IF NOT EXISTS `risk_factory_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  `is_deleted_label` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `doc_id` bigint(20) DEFAULT NULL,
  `risk_factory_item_id` bigint(20) DEFAULT NULL,
  `risk_factory_label_category_id` bigint(20) DEFAULT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `loan_risk_factory_item_id` bigint(20) DEFAULT NULL,
  `loan_risk_factory_label_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtqfs6417ptunsjwlm9u03r6yp` (`created_by`),
  KEY `FK3t3xthcx77fr7jb2ifodlr6i9` (`updated_by`),
  KEY `FK5gugkay9kkgvnsv9a2w9xm984` (`deleted_by`),
  KEY `FKo9gtpukysc9giphqkb8pey22q` (`doc_id`),
  KEY `FKeol44yogntuub0ujnodtrsjip` (`risk_factory_item_id`),
  KEY `FK23xuc9lcb86pk33x2ef7wekgj` (`risk_factory_label_category_id`),
  KEY `FK4lfb2ar8a42g2cgb2r6vv8hsq` (`loan_id`),
  KEY `FK7hq95kvdt40oujhxrhf0h0xcy` (`loan_risk_factory_item_id`),
  KEY `FK4cbasdojhhb9gwj0shkgus74w` (`loan_risk_factory_label_category_id`),
  CONSTRAINT `FK23xuc9lcb86pk33x2ef7wekgj` FOREIGN KEY (`risk_factory_label_category_id`) REFERENCES `risk_factory_label_category` (`id`),
  CONSTRAINT `FK3t3xthcx77fr7jb2ifodlr6i9` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK4cbasdojhhb9gwj0shkgus74w` FOREIGN KEY (`loan_risk_factory_label_category_id`) REFERENCES `loan_risk_factory_label_category` (`id`),
  CONSTRAINT `FK4lfb2ar8a42g2cgb2r6vv8hsq` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`),
  CONSTRAINT `FK5gugkay9kkgvnsv9a2w9xm984` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK7hq95kvdt40oujhxrhf0h0xcy` FOREIGN KEY (`loan_risk_factory_item_id`) REFERENCES `loan_risk_factory_item` (`id`),
  CONSTRAINT `FKeol44yogntuub0ujnodtrsjip` FOREIGN KEY (`risk_factory_item_id`) REFERENCES `risk_factory_item` (`id`),
  CONSTRAINT `FKo9gtpukysc9giphqkb8pey22q` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`),
  CONSTRAINT `FKtqfs6417ptunsjwlm9u03r6yp` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.risk_factory_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `risk_factory_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_factory_label` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.risk_factory_label_category
CREATE TABLE IF NOT EXISTS `risk_factory_label_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` longtext,
  `example` longtext,
  `name` longtext,
  `status` int(11) DEFAULT '1',
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi33v27vtmfs4kta2fol7rarg7` (`created_by`),
  KEY `FKkki9jrpge1vuxuxqg2f97wo7j` (`updated_by`),
  KEY `FK3hrfxfejp6gu9ec0o6kp29as6` (`deleted_by`),
  CONSTRAINT `FK3hrfxfejp6gu9ec0o6kp29as6` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKi33v27vtmfs4kta2fol7rarg7` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKkki9jrpge1vuxuxqg2f97wo7j` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.risk_factory_label_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `risk_factory_label_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_factory_label_category` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.section
CREATE TABLE IF NOT EXISTS `section` (
  `section_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.section: ~0 rows (approximately)
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.setting: ~4 rows (approximately)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id`, `key`, `value`) VALUES
	(1, 'Data Visualization URL', ''),
	(2, 'TABLEAU_REGISTER_MAIL_TO_EMAIL', 'support@marketnode.com'),
	(3, 'TABLEAU_REGISTER_MAIL_TITLE', 'REQUEST | Aimee\'s Clauset'),
	(4, 'SCHEDULE_SET_TOTAL_USED_UI_LABLE_FixedDelay', '1800000');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.system_audit_log
CREATE TABLE IF NOT EXISTS `system_audit_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_date` datetime DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `payload` varchar(255) DEFAULT NULL,
  `search_string` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_group_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.system_audit_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `system_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_audit_log` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.system_setting
CREATE TABLE IF NOT EXISTS `system_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `jcseg_option` varchar(255) DEFAULT NULL,
  `key_phrase_config` varchar(255) DEFAULT NULL,
  `key_phrase_size_config` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `smtp_security` char(1) DEFAULT NULL,
  `sentiment_area_config` varchar(255) DEFAULT NULL,
  `sentiment_key_phrase_config` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `translator_config` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.system_setting: ~0 rows (approximately)
/*!40000 ALTER TABLE `system_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_setting` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.ui_label
CREATE TABLE IF NOT EXISTS `ui_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) DEFAULT NULL,
  `description` longtext,
  `display_value` varchar(255) DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `example` longtext,
  `group_attribute` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_used` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg9s16r07xopfdmiom0xh01aa4` (`user_id`),
  CONSTRAINT `FKg9s16r07xopfdmiom0xh01aa4` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.ui_label: ~431 rows (approximately)
/*!40000 ALTER TABLE `ui_label` DISABLE KEYS */;
INSERT INTO `ui_label` (`id`, `attribute`, `description`, `display_value`, `entity_type`, `example`, `group_attribute`, `ordering`, `status`, `total_used`, `updated_at`, `user_id`) VALUES
	(1, 'EOD_COVENANT_EXCEL_NAME', NULL, 'Name', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(2, 'EOD_COVENANT_EXCEL_COVENANT_TYPE', NULL, 'Covenant_type', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(3, 'EOD_COVENANT_EXCEL_COVENANT_LABELS', NULL, 'covenant_labels', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(4, 'EOD_COVENANT_EXCEL_COVENANT_CONTENT', NULL, 'Covenant_content', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(5, 'EOD_COVENANT_EXCEL_POSITION_PDF', NULL, 'Position_PDF', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(6, 'EOD_COVENANT_EXCEL_POSITION_DOC', NULL, 'Position_Doc', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(7, 'EOD_COVENANT_EXCEL_THRESHOLD', NULL, 'Threshold', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(8, 'EOD_COVENANT_EXCEL_VALUE', NULL, 'Value', 'EOD_COVENANT_EXCEL', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(9, 'DocumentTitle', NULL, 'Doc Name - MN Identifier', 'DOC_METADATA', NULL, 'SecurityDetails', 36, NULL, 0, NULL, NULL),
	(10, 'DocumentType', NULL, 'Document Type', 'DOC_METADATA', NULL, 'SecurityDetails', 4, NULL, 0, NULL, NULL),
	(11, 'MarketnodeTransactionID', NULL, 'Credit Enhanced/SBLC Provider', 'DOC_METADATA', NULL, 'SecurityDetails', 37, NULL, 0, NULL, NULL),
	(12, 'MarketnodeDocumentID', NULL, 'Step Up Rate (%)', 'DOC_METADATA', NULL, 'SecurityDetails', 38, NULL, 0, NULL, NULL),
	(13, 'IssuanceTap', NULL, 'Issuance Tap', 'DOC_METADATA', NULL, 'SecurityDetails', 25, NULL, 0, NULL, NULL),
	(14, 'OCIndustrySection', NULL, 'Offering Doc Industry Section', 'DOC_METADATA', NULL, 'SecurityDetails', 27, NULL, 0, NULL, NULL),
	(15, 'DateofIssuance', NULL, 'Issue Date', 'DOC_METADATA', NULL, 'SecurityDetails', 12, NULL, 0, NULL, NULL),
	(16, 'Currency', NULL, 'Currency Group', 'DOC_METADATA', NULL, 'SecurityDetails', 14, NULL, 0, NULL, NULL),
	(17, 'Size', NULL, 'Issuance Size', 'DOC_METADATA', NULL, 'SecurityDetails', 16, NULL, 0, NULL, NULL),
	(18, 'CouponType', NULL, 'Interest Type', 'DOC_METADATA', NULL, 'SecurityDetails', 20, NULL, 0, NULL, NULL),
	(19, 'Coupon', NULL, 'Interest/Margin (%)', 'DOC_METADATA', NULL, 'SecurityDetails', 17, NULL, 0, NULL, NULL),
	(20, 'FloatingTerms', NULL, 'Floating Terms(Months)', 'DOC_METADATA', NULL, 'SecurityDetails', 22, NULL, 0, NULL, NULL),
	(21, 'FloatingIndex', NULL, 'Floating Index', 'DOC_METADATA', NULL, 'SecurityDetails', 21, NULL, 0, NULL, NULL),
	(22, 'Ranking', NULL, 'Ranking', 'DOC_METADATA', NULL, 'SecurityDetails', 22, NULL, 0, NULL, NULL),
	(23, 'MaturityDate', NULL, 'Maturity Date/ First Call (Perps)', 'DOC_METADATA', NULL, 'SecurityDetails', 13, NULL, 0, NULL, NULL),
	(24, 'SecurityCodeISINRegS', NULL, 'Reg S - Security Code  (ISIN)', 'DOC_METADATA', NULL, 'SecurityDetails', 28, NULL, 0, NULL, NULL),
	(25, 'SecurityCodeISIN144A', NULL, '144A - Security Code  (ISIN)', 'DOC_METADATA', NULL, 'SecurityDetails', 31, NULL, 0, NULL, NULL),
	(26, 'SecurityCodeCommonCodeRegS', NULL, 'Reg S - Security Code (Common Code)', 'DOC_METADATA', NULL, 'SecurityDetails', 29, NULL, 0, NULL, NULL),
	(27, 'SecurityCodeCommonCode144A', NULL, '144A - Security Code (Common Code)', 'DOC_METADATA', NULL, 'SecurityDetails', 32, NULL, 0, NULL, NULL),
	(28, 'SecurityCodeCUSIPRegS', NULL, 'Reg S - Security Code (CUSIP)', 'DOC_METADATA', NULL, 'SecurityDetails', 30, NULL, 0, NULL, NULL),
	(29, 'SecurityCodeCUSIP144A', NULL, '144A - Security Code (CUSIP)', 'DOC_METADATA', NULL, 'SecurityDetails', 33, NULL, 0, NULL, NULL),
	(30, 'SecurityCodeOther', NULL, 'Security Code (Other)', 'DOC_METADATA', NULL, 'SecurityDetails', 34, NULL, 0, NULL, NULL),
	(31, 'LEI', NULL, 'Issuer LEI', 'DOC_METADATA', NULL, 'SecurityDetails', 35, NULL, 0, NULL, NULL),
	(32, 'Issuer1', NULL, 'Issuer', 'DOC_METADATA', NULL, 'SecurityDetails', 5, NULL, 0, NULL, NULL),
	(33, 'ObligorId', NULL, 'Borrower', 'DOC_METADATA', NULL, 'SecurityDetails', 8, NULL, 0, NULL, NULL),
	(34, 'Moodys', NULL, 'Issue Rating - Moody\'s', 'DOC_METADATA', NULL, 'SecurityDetails', 40, NULL, 0, NULL, NULL),
	(35, 'SandP', NULL, 'Issue Rating - S&P', 'DOC_METADATA', NULL, 'SecurityDetails', 39, NULL, 0, NULL, NULL),
	(36, 'Fitch', NULL, 'Issue Rating - Fitch', 'DOC_METADATA', NULL, 'SecurityDetails', 41, NULL, 0, NULL, NULL),
	(37, 'FinancialSponsor', NULL, 'Financial Sponsor', 'DOC_METADATA', NULL, 'SecurityDetails', 11, NULL, 0, NULL, NULL),
	(38, 'ListingVenue', NULL, 'Listing Venue', 'DOC_METADATA', NULL, 'SecurityDetails', 26, NULL, 0, NULL, NULL),
	(39, 'ESGFlag', NULL, 'GSSS Type', 'DOC_METADATA', NULL, 'SecurityDetails', 24, NULL, 0, NULL, NULL),
	(40, 'CovenantStructure', NULL, 'Covenant Structure', 'DOC_METADATA', NULL, 'SecurityDetails', 23, NULL, 0, NULL, NULL),
	(41, 'GoverningLaw', NULL, 'Governing Law', 'DOC_METADATA', NULL, 'SecurityDetails', 42, NULL, 0, NULL, NULL),
	(42, 'DistributionFormat', NULL, 'Distribution Format', 'DOC_METADATA', NULL, 'SecurityDetails', 43, NULL, 0, NULL, NULL),
	(43, 'Ccy', NULL, 'Issue Currency', 'DOC_METADATA', NULL, 'SecurityDetails', 15, NULL, 0, NULL, NULL),
	(44, 'NoOfBookrunners', NULL, 'No of Bookrunner(s)', 'DOC_METADATA', NULL, 'SecurityDetails', 44, NULL, 0, NULL, NULL),
	(45, 'Bookrunners', NULL, 'Bookrunner(s)', 'DOC_METADATA', NULL, 'SecurityDetails', 45, NULL, 0, NULL, NULL),
	(46, 'IssuerDealCounsel', NULL, 'Issuer Deal Counsel', 'DOC_METADATA', NULL, 'SecurityDetails', 46, NULL, 0, NULL, NULL),
	(47, 'UnderwriterDealCounsel', NULL, 'Underwriter Deal Counsel', 'DOC_METADATA', NULL, 'SecurityDetails', 47, NULL, 0, NULL, NULL),
	(48, 'name', NULL, 'Borrower Name', 'obligor', NULL, NULL, NULL, NULL, 29, NULL, NULL),
	(49, 'obligor_obligor_type', NULL, 'Borrower Type', 'obligor', NULL, NULL, NULL, NULL, 21, NULL, NULL),
	(50, 'entity_id', NULL, 'Marketnode Client ID', 'obligor', NULL, NULL, NULL, NULL, 5, NULL, NULL),
	(51, 'parent_organization', NULL, 'Parent Organization', 'obligor', NULL, NULL, NULL, NULL, 23, NULL, NULL),
	(52, 'lei', NULL, 'LEI', 'obligor', NULL, NULL, NULL, NULL, 22, NULL, NULL),
	(53, 'uen', NULL, 'UEN', 'obligor', NULL, NULL, NULL, NULL, 22, NULL, NULL),
	(54, 'industry_sector_id', NULL, 'Industry Sector', 'obligor', NULL, NULL, NULL, NULL, 6, NULL, NULL),
	(55, 'obligor_sustainable_issuer_type', NULL, 'Sustainable Issuer Type', 'obligor', NULL, NULL, NULL, NULL, 4, NULL, NULL),
	(56, 'country_id', NULL, 'Country/Region', 'obligor', NULL, NULL, NULL, NULL, 3, NULL, NULL),
	(57, 'continent_id', NULL, 'Continent/Region', 'obligor', NULL, NULL, NULL, NULL, 3, NULL, NULL),
	(58, 'rating_fitch_id', NULL, 'Rating - Fitch', 'obligor', NULL, NULL, NULL, NULL, 2, NULL, NULL),
	(59, 'rating_s_and_p_id', NULL, 'Rating - S&P', 'obligor', NULL, NULL, NULL, NULL, 4, NULL, NULL),
	(60, 'rating_moodys_id', NULL, 'Rating - Moody’s', 'obligor', NULL, NULL, NULL, NULL, 2, NULL, NULL),
	(61, 'updated_at', NULL, 'Updated', 'obligor', NULL, NULL, NULL, NULL, 29, NULL, NULL),
	(62, 'rating_other_1', NULL, 'Borrower Rating - Others 1', 'obligor', NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(63, 'rating_other_2', NULL, 'Borrower Rating - Others 2', 'obligor', NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(64, 'rating_other_3', NULL, 'Borrower Rating - Others 3', 'obligor', NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(65, 'placeholder_1', NULL, 'Financial Sponsor', 'obligor', NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(66, 'placeholder_2', NULL, 'Title 2', 'obligor', NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(67, 'placeholder_3', NULL, 'ESG Band (1 to 5) - In Construction', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(68, 'placeholder_4', NULL, 'Title 4', 'obligor', NULL, NULL, NULL, NULL, 1, NULL, NULL),
	(69, 'placeholder_5', NULL, 'Title 5', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(70, 'placeholder_6', NULL, 'Title 6', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(71, 'placeholder_7', NULL, 'Title 7', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(72, 'placeholder_8', NULL, 'Title 8', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(73, 'placeholder_9', NULL, 'Title 9', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(74, 'placeholder_10', NULL, 'Title 10', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(75, 'placeholder_11', NULL, 'Title 11', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(76, 'placeholder_12', NULL, 'Title 12', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(77, 'placeholder_13', NULL, 'Title 13', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(78, 'placeholder_14', NULL, 'Title 14', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(79, 'placeholder_15', NULL, 'Title 15', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(80, 'placeholder_16', NULL, 'Title 16', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(81, 'placeholder_17', NULL, 'Title 17', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(82, 'placeholder_18', NULL, 'Title 18', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(83, 'placeholder_19', NULL, 'Title 19', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(84, 'placeholder_20', NULL, 'Title 20', 'obligor', NULL, NULL, NULL, NULL, 0, NULL, NULL),
	(85, 'SecurityDetails', NULL, 'Security Details', 'DOC_METADATA', NULL, NULL, 1, NULL, 0, NULL, NULL),
	(86, 'CreatedAt', NULL, 'Date Uploaded', 'DOC_METADATA', NULL, 'SecurityDetails', 3, NULL, 0, NULL, NULL),
	(87, 'Issuer2', NULL, 'Issuer 2', 'DOC_METADATA', NULL, 'SecurityDetails', 6, NULL, 0, NULL, NULL),
	(88, 'Issuer3', NULL, 'Issuer 3', 'DOC_METADATA', NULL, 'SecurityDetails', 7, NULL, 0, NULL, NULL),
	(89, 'Obligor2', NULL, 'Borrower 2', 'DOC_METADATA', NULL, 'SecurityDetails', 9, NULL, 0, NULL, NULL),
	(90, 'Obligor3', NULL, 'Borrower 3', 'DOC_METADATA', NULL, 'SecurityDetails', 10, NULL, 0, NULL, NULL),
	(91, 'StepUpInterestMargin', NULL, 'Initial/Reset Spread (%)', 'DOC_METADATA', NULL, 'SecurityDetails', 18, NULL, 0, NULL, NULL),
	(92, 'StepUpInterestMarginDate', NULL, 'Reset/Step-Up Date', 'DOC_METADATA', NULL, 'SecurityDetails', 19, NULL, 0, NULL, NULL),
	(93, 'AdditionalSecurityDetails', NULL, 'Additional Security Details', 'DOC_METADATA', NULL, NULL, 2, NULL, 0, NULL, NULL),
	(94, 'IssueDescription', NULL, 'Issue Description', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 48, NULL, 0, NULL, NULL),
	(95, 'IssuerShortName', NULL, 'Issuer Short Name', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 49, NULL, 0, NULL, NULL),
	(96, 'IssuerClass', NULL, 'Issuer Class', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 50, NULL, 0, NULL, NULL),
	(97, 'ProgrammeNumber', NULL, 'Programme Number', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 51, NULL, 0, NULL, NULL),
	(98, 'ProgrammeType', NULL, 'Programme Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 52, NULL, 0, NULL, NULL),
	(99, 'NominalAmount', NULL, 'Nominal Amount', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 53, NULL, 0, NULL, NULL),
	(100, 'OperationalMaturityDate', NULL, 'Operational Maturity Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 54, NULL, 0, NULL, NULL),
	(101, 'IsPerpetual', NULL, 'Is Perpetual', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 55, NULL, 0, NULL, NULL),
	(102, 'Location', NULL, 'Location', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 56, NULL, 0, NULL, NULL),
	(103, 'Product', NULL, 'Product', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 57, NULL, 0, NULL, NULL),
	(104, 'SubProduct', NULL, 'Sub Product', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 58, NULL, 0, NULL, NULL),
	(105, 'SecurityType', NULL, 'Security Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 59, NULL, 0, NULL, NULL),
	(106, 'CalculationAgent', NULL, 'Calculation Agent', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 60, NULL, 0, NULL, NULL),
	(107, 'PPAgent', NULL, 'PP Agent', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 61, NULL, 0, NULL, NULL),
	(108, 'IssueStatus', NULL, 'Issue Status', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 62, NULL, 0, NULL, NULL),
	(109, 'InterestFrequency', NULL, 'Interest Frequency', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 63, NULL, 0, NULL, NULL),
	(110, 'InterestTypeChangeDate', NULL, 'Interest Type Change Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 64, NULL, 0, NULL, NULL),
	(111, 'InterestCurrency', NULL, 'Interest Currency', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 65, NULL, 0, NULL, NULL),
	(112, 'DayCountFraction', NULL, 'Day Count Fraction', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 66, NULL, 0, NULL, NULL),
	(113, 'FixingPeriod', NULL, 'Fixing Period', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 67, NULL, 0, NULL, NULL),
	(114, 'FixingDirection', NULL, 'Fixing Direction', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 68, NULL, 0, NULL, NULL),
	(115, 'FixingDays', NULL, 'Fixing Days', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 69, NULL, 0, NULL, NULL),
	(116, 'FixingDayType', NULL, 'Fixing Day Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 70, NULL, 0, NULL, NULL),
	(117, 'ApplicablePeriod', NULL, 'Applicable Period', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 71, NULL, 0, NULL, NULL),
	(118, 'CalculationMethod', NULL, 'Calculation Method', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 72, NULL, 0, NULL, NULL),
	(119, 'Margin', NULL, 'Margin', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 73, NULL, 0, NULL, NULL),
	(120, 'Cap', NULL, 'Cap', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 74, NULL, 0, NULL, NULL),
	(121, 'Floor', NULL, 'Floor', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 75, NULL, 0, NULL, NULL),
	(122, 'DealID', NULL, 'Deal ID', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 76, NULL, 0, NULL, NULL),
	(123, 'OutstandingNominalAmount', NULL, 'Outstanding Nominal Amount', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 77, NULL, 0, NULL, NULL),
	(124, 'NCCRApplicable', NULL, 'NCCR Applicable', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 78, NULL, 0, NULL, NULL),
	(125, 'FloorApplicable', NULL, 'Floor Applicable', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 79, NULL, 0, NULL, NULL),
	(126, 'CASApplicable', NULL, 'CAS Applicable', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 80, NULL, 0, NULL, NULL),
	(127, 'TriPartyDeal', NULL, 'Tri Party Deal', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 81, NULL, 0, NULL, NULL),
	(128, 'ShariaCompliant', NULL, 'Sharia Compliant', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 82, NULL, 0, NULL, NULL),
	(129, 'ClearstreamCSK', NULL, 'Clearstream CSK', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 83, NULL, 0, NULL, NULL),
	(130, 'EuroclearCSK', NULL, 'Euroclear CSK', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 84, NULL, 0, NULL, NULL),
	(131, 'IssueInDefault', NULL, 'Issue In Default', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 85, NULL, 0, NULL, NULL),
	(132, 'Domestic', NULL, 'Domestic', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 86, NULL, 0, NULL, NULL),
	(133, 'CommonDepositary', NULL, 'Common Depositary', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 87, NULL, 0, NULL, NULL),
	(134, 'MaturityIncomeRecordDate', NULL, 'Maturity Income Record Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 88, NULL, 0, NULL, NULL),
	(135, 'IsUnit', NULL, 'Is Unit', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 89, NULL, 0, NULL, NULL),
	(136, 'UnitPrice', NULL, 'Unit Price', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 90, NULL, 0, NULL, NULL),
	(137, 'RPPType', NULL, 'RPP Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 91, NULL, 0, NULL, NULL),
	(138, 'EventType', NULL, 'Event Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 92, NULL, 0, NULL, NULL),
	(139, 'CounterParty', NULL, 'Counter Party', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 93, NULL, 0, NULL, NULL),
	(140, 'BondType', NULL, 'Bond Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 94, NULL, 0, NULL, NULL),
	(141, 'NoteType', NULL, 'Note Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 95, NULL, 0, NULL, NULL),
	(142, 'IssueForm', NULL, 'Issue Form', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 96, NULL, 0, NULL, NULL),
	(143, 'ClosingMechanic', NULL, 'Closing Mechanic', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 97, NULL, 0, NULL, NULL),
	(144, 'NoteForm', NULL, 'Note Form', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 98, NULL, 0, NULL, NULL),
	(145, 'NoteFormDaysType', NULL, 'Note Form Days Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 99, NULL, 0, NULL, NULL),
	(146, 'NoteFormDays', NULL, 'Note Form Days', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 100, NULL, 0, NULL, NULL),
	(147, 'LinkCDEPISIN', NULL, 'Link CDEP ISIN', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 101, NULL, 0, NULL, NULL),
	(148, 'LinkCDEPIssueStatus', NULL, 'Link CDEP Issue Status', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 102, NULL, 0, NULL, NULL),
	(149, 'Registrar', NULL, 'Registrar', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 103, NULL, 0, NULL, NULL),
	(150, 'Feature', NULL, 'Feature', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 104, NULL, 0, NULL, NULL),
	(151, 'IssuePrice', NULL, 'Issue Price', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 105, NULL, 0, NULL, NULL),
	(152, 'BusinessDayConcention', NULL, 'Business Day Concention', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 106, NULL, 0, NULL, NULL),
	(153, 'RedemptionValuationDate', NULL, 'Redemption Valuation Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 107, NULL, 0, NULL, NULL),
	(154, 'RedemptionPercentagePrice', NULL, 'Redemption Percentage Price', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 108, NULL, 0, NULL, NULL),
	(155, 'ScheduleValueDatePrefix', NULL, 'Schedule Value Date Prefix', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 109, NULL, 0, NULL, NULL),
	(156, 'ScheduleValueDate', NULL, 'Schedule Value Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 110, NULL, 0, NULL, NULL),
	(157, 'ScheduleDate', NULL, 'Schedule Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 111, NULL, 0, NULL, NULL),
	(158, 'AccrualDaysType', NULL, 'Accrual Days Type', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 112, NULL, 0, NULL, NULL),
	(159, 'AccrualDate', NULL, 'Accrual Date', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 113, NULL, 0, NULL, NULL),
	(160, 'DenominationAmount', NULL, 'Denomination Amount', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 114, NULL, 0, NULL, NULL),
	(161, 'ReductionMethod', NULL, 'Reduction Method', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 115, NULL, 0, NULL, NULL),
	(162, 'CalculationbyDenomination', NULL, 'Calculation by Denomination', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 116, NULL, 0, NULL, NULL),
	(163, 'Put', NULL, 'Put', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 117, NULL, 0, NULL, NULL),
	(164, 'FixingCities', NULL, 'Fixing Cities', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 118, NULL, 0, NULL, NULL),
	(165, 'PaymentCities', NULL, 'Payment Cities', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 119, NULL, 0, NULL, NULL),
	(166, 'Title1', NULL, 'Title 1', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 120, NULL, 0, NULL, NULL),
	(167, 'Title2', NULL, 'Title 2', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 121, NULL, 0, NULL, NULL),
	(168, 'Title3', NULL, 'Title 3', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 122, NULL, 0, NULL, NULL),
	(169, 'Title4', NULL, 'Title 4', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 123, NULL, 0, NULL, NULL),
	(170, 'Title5', NULL, 'Title 5', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 124, NULL, 0, NULL, NULL),
	(171, 'Title6', NULL, 'Title 6', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 125, NULL, 0, NULL, NULL),
	(172, 'Title7', NULL, 'Title 7', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 126, NULL, 0, NULL, NULL),
	(173, 'Title8', NULL, 'Title 8', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 127, NULL, 0, NULL, NULL),
	(174, 'Title9', NULL, 'Title 9', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 128, NULL, 0, NULL, NULL),
	(175, 'Title10', NULL, 'Title 10', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 129, NULL, 0, NULL, NULL),
	(176, 'Title11', NULL, 'Title 11', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 130, NULL, 0, NULL, NULL),
	(177, 'Title12', NULL, 'Title 12', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 131, NULL, 0, NULL, NULL),
	(178, 'Title13', NULL, 'Title 13', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 132, NULL, 0, NULL, NULL),
	(179, 'Title14', NULL, 'Title 14', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 133, NULL, 0, NULL, NULL),
	(180, 'Title15', NULL, 'Title 15', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 134, NULL, 0, NULL, NULL),
	(181, 'Title16', NULL, 'Title 16', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 135, NULL, 0, NULL, NULL),
	(182, 'Title17', NULL, 'Title 17', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 136, NULL, 0, NULL, NULL),
	(183, 'Title18', NULL, 'Title 18', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 137, NULL, 0, NULL, NULL),
	(184, 'Title19', NULL, 'Title 19', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 138, NULL, 0, NULL, NULL),
	(185, 'Title20', NULL, 'Title 20', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 139, NULL, 0, NULL, NULL),
	(186, 'Title21', NULL, 'Title 21', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 140, NULL, 0, NULL, NULL),
	(187, 'Title22', NULL, 'Title 22', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 141, NULL, 0, NULL, NULL),
	(188, 'Title23', NULL, 'Title 23', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 142, NULL, 0, NULL, NULL),
	(189, 'Title24', NULL, 'Title 24', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 143, NULL, 0, NULL, NULL),
	(190, 'Title25', NULL, 'Title 25', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 144, NULL, 0, NULL, NULL),
	(191, 'Title26', NULL, 'Title 26', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 145, NULL, 0, NULL, NULL),
	(192, 'Title27', NULL, 'Title 27', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 146, NULL, 0, NULL, NULL),
	(193, 'Title28', NULL, 'Title 28', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 147, NULL, 0, NULL, NULL),
	(194, 'Title29', NULL, 'Title 29', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 148, NULL, 0, NULL, NULL),
	(195, 'Title30', NULL, 'Title 30', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 149, NULL, 0, NULL, NULL),
	(196, 'Title31', NULL, 'Title 31', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 150, NULL, 0, NULL, NULL),
	(197, 'Title32', NULL, 'Title 32', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 151, NULL, 0, NULL, NULL),
	(198, 'Title33', NULL, 'Title 33', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 152, NULL, 0, NULL, NULL),
	(199, 'Title34', NULL, 'Title 34', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 153, NULL, 0, NULL, NULL),
	(200, 'Title35', NULL, 'Title 35', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 154, NULL, 0, NULL, NULL),
	(201, 'Title36', NULL, 'Title 36', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 155, NULL, 0, NULL, NULL),
	(202, 'Title37', NULL, 'Title 37', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 156, NULL, 0, NULL, NULL),
	(203, 'Title38', NULL, 'Title 38', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 157, NULL, 0, NULL, NULL),
	(204, 'Title39', NULL, 'Title 39', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 158, NULL, 0, NULL, NULL),
	(205, 'Title40', NULL, 'Title 40', 'DOC_METADATA', NULL, 'AdditionalSecurityDetails', 159, NULL, 0, NULL, NULL),
	(206, 'CoverPage', NULL, 'Cover Page', 'TABLE_OF_CONTENT', NULL, NULL, 1, 1, 0, NULL, NULL),
	(207, 'SummaryBox', NULL, 'Summary Box', 'TABLE_OF_CONTENT', NULL, NULL, 2, 1, 0, NULL, NULL),
	(208, 'UseOfProceeds', NULL, 'Use of Proceeds', 'TABLE_OF_CONTENT', NULL, NULL, 3, 1, 0, NULL, NULL),
	(209, 'RiskFactors ', NULL, 'Risk Factors ', 'TABLE_OF_CONTENT', NULL, NULL, 4, 1, 0, NULL, NULL),
	(210, 'ManagementDiscussionAndAnalysis', NULL, 'Management’s Discussion and Analysis', 'TABLE_OF_CONTENT', NULL, NULL, 5, 1, 0, NULL, NULL),
	(211, 'Industry ', NULL, 'Industry ', 'TABLE_OF_CONTENT', NULL, NULL, 6, 1, 0, NULL, NULL),
	(212, 'Business', NULL, 'Business', 'TABLE_OF_CONTENT', NULL, NULL, 7, 1, 0, NULL, NULL),
	(213, 'FinancialStatements', NULL, 'Selected Financials', 'TABLE_OF_CONTENT', NULL, NULL, 8, 1, 0, NULL, NULL),
	(214, 'MaterialIndebtedness', NULL, 'Material Indebtedness', 'TABLE_OF_CONTENT', NULL, NULL, 9, 1, 0, NULL, NULL),
	(215, 'DescriptionOfNotes', NULL, 'Description of Notes/T&Cs', 'TABLE_OF_CONTENT', NULL, NULL, 10, 1, 0, NULL, NULL),
	(216, 'Taxation', NULL, 'Taxation', 'TABLE_OF_CONTENT', NULL, NULL, 11, 1, 0, NULL, NULL),
	(217, 'PlanOfDistribution', NULL, 'Plan of Distribution', 'TABLE_OF_CONTENT', NULL, NULL, 12, 1, 0, NULL, NULL),
	(218, 'FootballField', NULL, 'Football Field', 'TABLE_OF_CONTENT', NULL, NULL, 13, 1, 0, NULL, NULL),
	(219, 'Others', NULL, 'Definitions', 'TABLE_OF_CONTENT', NULL, NULL, 14, 1, 0, NULL, NULL),
	(220, 'Chapter1', NULL, 'Corporate/Group Structure', 'TABLE_OF_CONTENT', NULL, NULL, 15, 1, 0, NULL, NULL),
	(221, 'Chapter2', NULL, 'Green/Sustainable Financing Framework', 'TABLE_OF_CONTENT', NULL, NULL, 16, 1, 0, NULL, NULL),
	(222, 'Chapter3', NULL, 'Form of Pricing Supplement/Final Terms', 'TABLE_OF_CONTENT', NULL, NULL, 17, 1, 0, NULL, NULL),
	(223, 'Chapter4', NULL, 'Chapter 4', 'TABLE_OF_CONTENT', NULL, NULL, 18, 0, 0, NULL, NULL),
	(224, 'Chapter5', NULL, 'Chapter 5', 'TABLE_OF_CONTENT', NULL, NULL, 19, 0, 0, NULL, NULL),
	(225, 'Chapter6', NULL, 'Chapter 6', 'TABLE_OF_CONTENT', NULL, NULL, 20, 0, 0, NULL, NULL),
	(226, 'Chapter7', NULL, 'Chapter 7', 'TABLE_OF_CONTENT', NULL, NULL, 21, 0, 0, NULL, NULL),
	(227, 'Chapter8', NULL, 'Chapter 8', 'TABLE_OF_CONTENT', NULL, NULL, 22, 0, 0, NULL, NULL),
	(228, 'Chapter9', NULL, 'Chapter 9', 'TABLE_OF_CONTENT', NULL, NULL, 23, 0, 0, NULL, NULL),
	(229, 'Chapter10', NULL, 'Chapter 10', 'TABLE_OF_CONTENT', NULL, NULL, 24, 0, 0, NULL, NULL),
	(230, 'Chapter11', NULL, 'Chapter 11', 'TABLE_OF_CONTENT', NULL, NULL, 25, 0, 0, NULL, NULL),
	(231, 'Chapter12', NULL, 'Chapter 12', 'TABLE_OF_CONTENT', NULL, NULL, 26, 0, 0, NULL, NULL),
	(232, 'Chapter13', NULL, 'Chapter 13', 'TABLE_OF_CONTENT', NULL, NULL, 27, 0, 0, NULL, NULL),
	(233, 'Chapter14', NULL, 'Chapter 14', 'TABLE_OF_CONTENT', NULL, NULL, 28, 0, 0, NULL, NULL),
	(234, 'Chapter15', NULL, 'Chapter 15', 'TABLE_OF_CONTENT', NULL, NULL, 29, 0, 0, NULL, NULL),
	(235, 'Chapter16', NULL, 'Chapter 16', 'TABLE_OF_CONTENT', NULL, NULL, 30, 0, 0, NULL, NULL),
	(236, 'Chapter17', NULL, 'Chapter 17', 'TABLE_OF_CONTENT', NULL, NULL, 31, 0, 0, NULL, NULL),
	(237, 'Chapter18', NULL, 'Chapter 18', 'TABLE_OF_CONTENT', NULL, NULL, 32, 0, 0, NULL, NULL),
	(238, 'Chapter19', NULL, 'Chapter 19', 'TABLE_OF_CONTENT', NULL, NULL, 33, 0, 0, NULL, NULL),
	(239, 'Chapter20', NULL, 'Chapter 20', 'TABLE_OF_CONTENT', NULL, NULL, 34, 0, 0, NULL, NULL),
	(240, 'rating_bucket_id', NULL, 'Borrower Ratings Bucket', 'obligor', NULL, NULL, NULL, NULL, 26, NULL, NULL),
	(241, 'ESGDetails', NULL, 'ESG Details', 'DOC_METADATA_ESG', NULL, NULL, 160, NULL, 0, NULL, NULL),
	(242, 'SGXSFI', NULL, 'SGX Sustainable Fixed Income Initiative', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 161, NULL, 0, NULL, NULL),
	(243, 'StandardsList', NULL, 'Standards & Frameworks', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 162, NULL, 0, NULL, NULL),
	(244, 'ExternalReviewProvider', NULL, 'External Review Providers', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 163, NULL, 0, NULL, NULL),
	(245, 'SiteURL', NULL, 'Link to Site', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 164, NULL, 0, NULL, NULL),
	(246, 'FrameworkURL', NULL, 'Link to Framework(s)', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 165, NULL, 0, NULL, NULL),
	(247, 'SustainabilityURL', NULL, 'Link to Sustainability Report(s)', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 166, NULL, 0, NULL, NULL),
	(248, 'SLBAnnualURL', NULL, 'Link to SLB Annual Report(s)', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 167, NULL, 0, NULL, NULL),
	(249, 'PostIssuanceURL', NULL, 'Link to Pre-, Post - Issuance Report(s)', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 168, NULL, 0, NULL, NULL),
	(250, 'FrameworkDate', NULL, 'Framework Date', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 169, NULL, 0, NULL, NULL),
	(251, 'ImpactReportDate', NULL, 'Allocation/Impact Report Date', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 170, NULL, 0, NULL, NULL),
	(252, 'Title41', NULL, 'Title 41', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 171, NULL, 0, NULL, NULL),
	(253, 'Title42', NULL, 'Title 42', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 172, NULL, 0, NULL, NULL),
	(254, 'Title43', NULL, 'Title 43', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 173, NULL, 0, NULL, NULL),
	(255, 'Title44', NULL, 'Title 44', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 174, NULL, 0, NULL, NULL),
	(256, 'Title45', NULL, 'Title 45', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 175, NULL, 0, NULL, NULL),
	(257, 'Title46', NULL, 'Title 46', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 176, NULL, 0, NULL, NULL),
	(258, 'Title47', NULL, 'Title 47', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 177, NULL, 0, NULL, NULL),
	(259, 'Title48', NULL, 'Title 48', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 178, NULL, 0, NULL, NULL),
	(260, 'Title49', NULL, 'Title 49', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 179, NULL, 0, NULL, NULL),
	(261, 'Title50', NULL, 'Title 50', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 180, NULL, 0, NULL, NULL),
	(262, 'Title51', NULL, 'Title 51', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 181, NULL, 0, NULL, NULL),
	(263, 'Title52', NULL, 'Title 52', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 182, NULL, 0, NULL, NULL),
	(264, 'Title53', NULL, 'Title 53', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 183, NULL, 0, NULL, NULL),
	(265, 'Title54', NULL, 'Title 54', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 184, NULL, 0, NULL, NULL),
	(266, 'Title55', NULL, 'Title 55', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 185, NULL, 0, NULL, NULL),
	(267, 'Title56', NULL, 'Title 56', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 186, NULL, 0, NULL, NULL),
	(268, 'Title57', NULL, 'Title 57', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 187, NULL, 0, NULL, NULL),
	(269, 'Title58', NULL, 'Title 58', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 188, NULL, 0, NULL, NULL),
	(270, 'Title59', NULL, 'Title 59', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 189, NULL, 0, NULL, NULL),
	(271, 'Title60', NULL, 'Title 60', 'DOC_METADATA_ESG', NULL, 'ESGDetails', 190, NULL, 0, NULL, NULL),
	(272, 'DocumentTitle', NULL, 'Doc Name - MN Identifier', 'LOAN_METADATA', NULL, 'SecurityDetails', 36, NULL, 0, NULL, NULL),
	(273, 'DocumentType', NULL, 'Document Type', 'LOAN_METADATA', NULL, 'SecurityDetails', 4, NULL, 0, NULL, NULL),
	(274, 'MarketnodeTransactionID', NULL, 'Credit Enhanced/SBLC Provider', 'LOAN_METADATA', NULL, 'SecurityDetails', 37, NULL, 0, NULL, NULL),
	(275, 'MarketnodeDocumentID', NULL, 'Step Up Rate (%)', 'LOAN_METADATA', NULL, 'SecurityDetails', 38, NULL, 0, NULL, NULL),
	(276, 'IssuanceTap', NULL, 'Issuance Tap', 'LOAN_METADATA', NULL, 'SecurityDetails', 25, NULL, 0, NULL, NULL),
	(277, 'OCIndustrySection', NULL, 'Offering Doc Industry Section', 'LOAN_METADATA', NULL, 'SecurityDetails', 27, NULL, 0, NULL, NULL),
	(278, 'DateofIssuance', NULL, 'Issue Date', 'LOAN_METADATA', NULL, 'SecurityDetails', 12, NULL, 0, NULL, NULL),
	(279, 'Currency', NULL, 'Currency Group', 'LOAN_METADATA', NULL, 'SecurityDetails', 14, NULL, 0, NULL, NULL),
	(280, 'Size', NULL, 'Issuance Size', 'LOAN_METADATA', NULL, 'SecurityDetails', 16, NULL, 0, NULL, NULL),
	(281, 'CouponType', NULL, 'Interest Type', 'LOAN_METADATA', NULL, 'SecurityDetails', 20, NULL, 0, NULL, NULL),
	(282, 'Coupon', NULL, 'Interest/Margin (%)', 'LOAN_METADATA', NULL, 'SecurityDetails', 17, NULL, 0, NULL, NULL),
	(283, 'FloatingTerms', NULL, 'Floating Terms(Months)', 'LOAN_METADATA', NULL, 'SecurityDetails', 22, NULL, 0, NULL, NULL),
	(284, 'FloatingIndex', NULL, 'Floating Index', 'LOAN_METADATA', NULL, 'SecurityDetails', 21, NULL, 0, NULL, NULL),
	(285, 'Ranking', NULL, 'Ranking', 'LOAN_METADATA', NULL, 'SecurityDetails', 22, NULL, 0, NULL, NULL),
	(286, 'MaturityDate', NULL, 'Maturity Date/ First Call (Perps)', 'LOAN_METADATA', NULL, 'SecurityDetails', 13, NULL, 0, NULL, NULL),
	(287, 'SecurityCodeISINRegS', NULL, 'Reg S - Security Code  (ISIN)', 'LOAN_METADATA', NULL, 'SecurityDetails', 28, NULL, 0, NULL, NULL),
	(288, 'SecurityCodeISIN144A', NULL, '144A - Security Code  (ISIN)', 'LOAN_METADATA', NULL, 'SecurityDetails', 31, NULL, 0, NULL, NULL),
	(289, 'SecurityCodeCommonCodeRegS', NULL, 'Reg S - Security Code (Common Code)', 'LOAN_METADATA', NULL, 'SecurityDetails', 29, NULL, 0, NULL, NULL),
	(290, 'SecurityCodeCommonCode144A', NULL, '144A - Security Code (Common Code)', 'LOAN_METADATA', NULL, 'SecurityDetails', 32, NULL, 0, NULL, NULL),
	(291, 'SecurityCodeCUSIPRegS', NULL, 'Reg S - Security Code (CUSIP)', 'LOAN_METADATA', NULL, 'SecurityDetails', 30, NULL, 0, NULL, NULL),
	(292, 'SecurityCodeCUSIP144A', NULL, '144A - Security Code (CUSIP)', 'LOAN_METADATA', NULL, 'SecurityDetails', 33, NULL, 0, NULL, NULL),
	(293, 'SecurityCodeOther', NULL, 'Security Code (Other)', 'LOAN_METADATA', NULL, 'SecurityDetails', 34, NULL, 0, NULL, NULL),
	(294, 'LEI', NULL, 'Issuer LEI', 'LOAN_METADATA', NULL, 'SecurityDetails', 35, NULL, 0, NULL, NULL),
	(295, 'Issuer1', NULL, 'Issuer', 'LOAN_METADATA', NULL, 'SecurityDetails', 5, NULL, 0, NULL, NULL),
	(296, 'ObligorId', NULL, 'Obligor', 'LOAN_METADATA', NULL, 'SecurityDetails', 8, NULL, 0, NULL, NULL),
	(297, 'Moodys', NULL, 'Issue Rating - Moody\'s', 'LOAN_METADATA', NULL, 'SecurityDetails', 40, NULL, 0, NULL, NULL),
	(298, 'SandP', NULL, 'Issue Rating - S&P', 'LOAN_METADATA', NULL, 'SecurityDetails', 39, NULL, 0, NULL, NULL),
	(299, 'Fitch', NULL, 'Issue Rating - Fitch', 'LOAN_METADATA', NULL, 'SecurityDetails', 41, NULL, 0, NULL, NULL),
	(300, 'FinancialSponsor', NULL, 'Financial Sponsor', 'LOAN_METADATA', NULL, 'SecurityDetails', 11, NULL, 0, NULL, NULL),
	(301, 'ListingVenue', NULL, 'Listing Venue', 'LOAN_METADATA', NULL, 'SecurityDetails', 26, NULL, 0, NULL, NULL),
	(302, 'ESGFlag', NULL, 'GSSS Type', 'LOAN_METADATA', NULL, 'SecurityDetails', 24, NULL, 0, NULL, NULL),
	(303, 'CovenantStructure', NULL, 'Covenant Structure', 'LOAN_METADATA', NULL, 'SecurityDetails', 23, NULL, 0, NULL, NULL),
	(304, 'GoverningLaw', NULL, 'Governing Law', 'LOAN_METADATA', NULL, 'SecurityDetails', 42, NULL, 0, NULL, NULL),
	(305, 'DistributionFormat', NULL, 'Distribution Format', 'LOAN_METADATA', NULL, 'SecurityDetails', 43, NULL, 0, NULL, NULL),
	(306, 'Ccy', NULL, 'Issue Currency', 'LOAN_METADATA', NULL, 'SecurityDetails', 15, NULL, 0, NULL, NULL),
	(307, 'NoOfBookrunners', NULL, 'No of Bookrunner(s)', 'LOAN_METADATA', NULL, 'SecurityDetails', 44, NULL, 0, NULL, NULL),
	(308, 'Bookrunners', NULL, 'Bookrunner(s)', 'LOAN_METADATA', NULL, 'SecurityDetails', 45, NULL, 0, NULL, NULL),
	(309, 'IssuerDealCounsel', NULL, 'Issuer Deal Counsel', 'LOAN_METADATA', NULL, 'SecurityDetails', 46, NULL, 0, NULL, NULL),
	(310, 'UnderwriterDealCounsel', NULL, 'Underwriter Deal Counsel', 'LOAN_METADATA', NULL, 'SecurityDetails', 47, NULL, 0, NULL, NULL),
	(311, 'SecurityDetails', NULL, 'Security Details', 'LOAN_METADATA', NULL, NULL, 1, NULL, 0, NULL, NULL),
	(312, 'CreatedAt', NULL, 'Date Uploaded', 'LOAN_METADATA', NULL, 'SecurityDetails', 3, NULL, 0, NULL, NULL),
	(313, 'Issuer2', NULL, 'Issuer 2', 'LOAN_METADATA', NULL, 'SecurityDetails', 6, NULL, 0, NULL, NULL),
	(314, 'Issuer3', NULL, 'Issuer 3', 'LOAN_METADATA', NULL, 'SecurityDetails', 7, NULL, 0, NULL, NULL),
	(315, 'Obligor2', NULL, 'Obligor 2', 'LOAN_METADATA', NULL, 'SecurityDetails', 9, NULL, 0, NULL, NULL),
	(316, 'Obligor3', NULL, 'Obligor3', 'LOAN_METADATA', NULL, 'SecurityDetails', 10, NULL, 0, NULL, NULL),
	(317, 'StepUpInterestMargin', NULL, 'Initial/Reset Spread (%)', 'LOAN_METADATA', NULL, 'SecurityDetails', 18, NULL, 0, NULL, NULL),
	(318, 'StepUpInterestMarginDate', NULL, 'Reset/Step-Up Date', 'LOAN_METADATA', NULL, 'SecurityDetails', 19, NULL, 0, NULL, NULL),
	(319, 'AdditionalSecurityDetails', NULL, 'Additional Security Details', 'LOAN_METADATA', NULL, NULL, 2, NULL, 0, NULL, NULL),
	(320, 'IssueDescription', NULL, 'Issue Description', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 48, NULL, 0, NULL, NULL),
	(321, 'IssuerShortName', NULL, 'Issuer Short Name', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 49, NULL, 0, NULL, NULL),
	(322, 'IssuerClass', NULL, 'Issuer Class', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 50, NULL, 0, NULL, NULL),
	(323, 'ProgrammeNumber', NULL, 'Programme Number', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 51, NULL, 0, NULL, NULL),
	(324, 'ProgrammeType', NULL, 'Programme Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 52, NULL, 0, NULL, NULL),
	(325, 'NominalAmount', NULL, 'Nominal Amount', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 53, NULL, 0, NULL, NULL),
	(326, 'OperationalMaturityDate', NULL, 'Operational Maturity Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 54, NULL, 0, NULL, NULL),
	(327, 'IsPerpetual', NULL, 'Is Perpetual', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 55, NULL, 0, NULL, NULL),
	(328, 'Location', NULL, 'Location', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 56, NULL, 0, NULL, NULL),
	(329, 'Product', NULL, 'Product', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 57, NULL, 0, NULL, NULL),
	(330, 'SubProduct', NULL, 'Sub Product', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 58, NULL, 0, NULL, NULL),
	(331, 'SecurityType', NULL, 'Security Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 59, NULL, 0, NULL, NULL),
	(332, 'CalculationAgent', NULL, 'Calculation Agent', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 60, NULL, 0, NULL, NULL),
	(333, 'PPAgent', NULL, 'PP Agent', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 61, NULL, 0, NULL, NULL),
	(334, 'IssueStatus', NULL, 'Issue Status', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 62, NULL, 0, NULL, NULL),
	(335, 'InterestFrequency', NULL, 'Interest Frequency', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 63, NULL, 0, NULL, NULL),
	(336, 'InterestTypeChangeDate', NULL, 'Interest Type Change Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 64, NULL, 0, NULL, NULL),
	(337, 'InterestCurrency', NULL, 'Interest Currency', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 65, NULL, 0, NULL, NULL),
	(338, 'DayCountFraction', NULL, 'Day Count Fraction', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 66, NULL, 0, NULL, NULL),
	(339, 'FixingPeriod', NULL, 'Fixing Period', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 67, NULL, 0, NULL, NULL),
	(340, 'FixingDirection', NULL, 'Fixing Direction', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 68, NULL, 0, NULL, NULL),
	(341, 'FixingDays', NULL, 'Fixing Days', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 69, NULL, 0, NULL, NULL),
	(342, 'FixingDayType', NULL, 'Fixing Day Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 70, NULL, 0, NULL, NULL),
	(343, 'ApplicablePeriod', NULL, 'Applicable Period', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 71, NULL, 0, NULL, NULL),
	(344, 'CalculationMethod', NULL, 'Calculation Method', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 72, NULL, 0, NULL, NULL),
	(345, 'Margin', NULL, 'Margin', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 73, NULL, 0, NULL, NULL),
	(346, 'Cap', NULL, 'Cap', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 74, NULL, 0, NULL, NULL),
	(347, 'Floor', NULL, 'Floor', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 75, NULL, 0, NULL, NULL),
	(348, 'DealID', NULL, 'Deal ID', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 76, NULL, 0, NULL, NULL),
	(349, 'OutstandingNominalAmount', NULL, 'Outstanding Nominal Amount', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 77, NULL, 0, NULL, NULL),
	(350, 'NCCRApplicable', NULL, 'NCCR Applicable', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 78, NULL, 0, NULL, NULL),
	(351, 'FloorApplicable', NULL, 'Floor Applicable', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 79, NULL, 0, NULL, NULL),
	(352, 'CASApplicable', NULL, 'CAS Applicable', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 80, NULL, 0, NULL, NULL),
	(353, 'TriPartyDeal', NULL, 'Tri Party Deal', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 81, NULL, 0, NULL, NULL),
	(354, 'ShariaCompliant', NULL, 'Sharia Compliant', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 82, NULL, 0, NULL, NULL),
	(355, 'ClearstreamCSK', NULL, 'Clearstream CSK', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 83, NULL, 0, NULL, NULL),
	(356, 'EuroclearCSK', NULL, 'Euroclear CSK', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 84, NULL, 0, NULL, NULL),
	(357, 'IssueInDefault', NULL, 'Issue In Default', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 85, NULL, 0, NULL, NULL),
	(358, 'Domestic', NULL, 'Domestic', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 86, NULL, 0, NULL, NULL),
	(359, 'CommonDepositary', NULL, 'Common Depositary', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 87, NULL, 0, NULL, NULL),
	(360, 'MaturityIncomeRecordDate', NULL, 'Maturity Income Record Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 88, NULL, 0, NULL, NULL),
	(361, 'IsUnit', NULL, 'Is Unit', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 89, NULL, 0, NULL, NULL),
	(362, 'UnitPrice', NULL, 'Unit Price', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 90, NULL, 0, NULL, NULL),
	(363, 'RPPType', NULL, 'RPP Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 91, NULL, 0, NULL, NULL),
	(364, 'EventType', NULL, 'Event Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 92, NULL, 0, NULL, NULL),
	(365, 'CounterParty', NULL, 'Counter Party', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 93, NULL, 0, NULL, NULL),
	(366, 'BondType', NULL, 'Bond Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 94, NULL, 0, NULL, NULL),
	(367, 'NoteType', NULL, 'Note Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 95, NULL, 0, NULL, NULL),
	(368, 'IssueForm', NULL, 'Issue Form', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 96, NULL, 0, NULL, NULL),
	(369, 'ClosingMechanic', NULL, 'Closing Mechanic', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 97, NULL, 0, NULL, NULL),
	(370, 'NoteForm', NULL, 'Note Form', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 98, NULL, 0, NULL, NULL),
	(371, 'NoteFormDaysType', NULL, 'Note Form Days Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 99, NULL, 0, NULL, NULL),
	(372, 'NoteFormDays', NULL, 'Note Form Days', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 100, NULL, 0, NULL, NULL),
	(373, 'LinkCDEPISIN', NULL, 'Link CDEP ISIN', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 101, NULL, 0, NULL, NULL),
	(374, 'LinkCDEPIssueStatus', NULL, 'Link CDEP Issue Status', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 102, NULL, 0, NULL, NULL),
	(375, 'Registrar', NULL, 'Registrar', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 103, NULL, 0, NULL, NULL),
	(376, 'Feature', NULL, 'Feature', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 104, NULL, 0, NULL, NULL),
	(377, 'IssuePrice', NULL, 'Issue Price', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 105, NULL, 0, NULL, NULL),
	(378, 'BusinessDayConcention', NULL, 'Business Day Concention', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 106, NULL, 0, NULL, NULL),
	(379, 'RedemptionValuationDate', NULL, 'Redemption Valuation Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 107, NULL, 0, NULL, NULL),
	(380, 'RedemptionPercentagePrice', NULL, 'Redemption Percentage Price', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 108, NULL, 0, NULL, NULL),
	(381, 'ScheduleValueDatePrefix', NULL, 'Schedule Value Date Prefix', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 109, NULL, 0, NULL, NULL),
	(382, 'ScheduleValueDate', NULL, 'Schedule Value Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 110, NULL, 0, NULL, NULL),
	(383, 'ScheduleDate', NULL, 'Schedule Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 111, NULL, 0, NULL, NULL),
	(384, 'AccrualDaysType', NULL, 'Accrual Days Type', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 112, NULL, 0, NULL, NULL),
	(385, 'AccrualDate', NULL, 'Accrual Date', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 113, NULL, 0, NULL, NULL),
	(386, 'DenominationAmount', NULL, 'Denomination Amount', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 114, NULL, 0, NULL, NULL),
	(387, 'ReductionMethod', NULL, 'Reduction Method', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 115, NULL, 0, NULL, NULL),
	(388, 'CalculationbyDenomination', NULL, 'Calculation by Denomination', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 116, NULL, 0, NULL, NULL),
	(389, 'Put', NULL, 'Put', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 117, NULL, 0, NULL, NULL),
	(390, 'FixingCities', NULL, 'Fixing Cities', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 118, NULL, 0, NULL, NULL),
	(391, 'PaymentCities', NULL, 'Payment Cities', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 119, NULL, 0, NULL, NULL),
	(392, 'Title1', NULL, 'Title 1', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 120, NULL, 0, NULL, NULL),
	(393, 'Title2', NULL, 'Title 2', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 121, NULL, 0, NULL, NULL),
	(394, 'Title3', NULL, 'Title 3', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 122, NULL, 0, NULL, NULL),
	(395, 'Title4', NULL, 'Title 4', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 123, NULL, 0, NULL, NULL),
	(396, 'Title5', NULL, 'Title 5', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 124, NULL, 0, NULL, NULL),
	(397, 'Title6', NULL, 'Title 6', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 125, NULL, 0, NULL, NULL),
	(398, 'Title7', NULL, 'Title 7', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 126, NULL, 0, NULL, NULL),
	(399, 'Title8', NULL, 'Title 8', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 127, NULL, 0, NULL, NULL),
	(400, 'Title9', NULL, 'Title 9', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 128, NULL, 0, NULL, NULL),
	(401, 'Title10', NULL, 'Title 10', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 129, NULL, 0, NULL, NULL),
	(402, 'Title11', NULL, 'Title 11', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 130, NULL, 0, NULL, NULL),
	(403, 'Title12', NULL, 'Title 12', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 131, NULL, 0, NULL, NULL),
	(404, 'Title13', NULL, 'Title 13', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 132, NULL, 0, NULL, NULL),
	(405, 'Title14', NULL, 'Title 14', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 133, NULL, 0, NULL, NULL),
	(406, 'Title15', NULL, 'Title 15', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 134, NULL, 0, NULL, NULL),
	(407, 'Title16', NULL, 'Title 16', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 135, NULL, 0, NULL, NULL),
	(408, 'Title17', NULL, 'Title 17', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 136, NULL, 0, NULL, NULL),
	(409, 'Title18', NULL, 'Title 18', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 137, NULL, 0, NULL, NULL),
	(410, 'Title19', NULL, 'Title 19', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 138, NULL, 0, NULL, NULL),
	(411, 'Title20', NULL, 'Title 20', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 139, NULL, 0, NULL, NULL),
	(412, 'Title21', NULL, 'Title 21', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 140, NULL, 0, NULL, NULL),
	(413, 'Title22', NULL, 'Title 22', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 141, NULL, 0, NULL, NULL),
	(414, 'Title23', NULL, 'Title 23', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 142, NULL, 0, NULL, NULL),
	(415, 'Title24', NULL, 'Title 24', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 143, NULL, 0, NULL, NULL),
	(416, 'Title25', NULL, 'Title 25', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 144, NULL, 0, NULL, NULL),
	(417, 'Title26', NULL, 'Title 26', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 145, NULL, 0, NULL, NULL),
	(418, 'Title27', NULL, 'Title 27', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 146, NULL, 0, NULL, NULL),
	(419, 'Title28', NULL, 'Title 28', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 147, NULL, 0, NULL, NULL),
	(420, 'Title29', NULL, 'Title 29', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 148, NULL, 0, NULL, NULL),
	(421, 'Title30', NULL, 'Title 30', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 149, NULL, 0, NULL, NULL),
	(422, 'Title31', NULL, 'Title 31', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 150, NULL, 0, NULL, NULL),
	(423, 'Title32', NULL, 'Title 32', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 151, NULL, 0, NULL, NULL),
	(424, 'Title33', NULL, 'Title 33', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 152, NULL, 0, NULL, NULL),
	(425, 'Title34', NULL, 'Title 34', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 153, NULL, 0, NULL, NULL),
	(426, 'Title35', NULL, 'Title 35', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 154, NULL, 0, NULL, NULL),
	(427, 'Title36', NULL, 'Title 36', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 155, NULL, 0, NULL, NULL),
	(428, 'Title37', NULL, 'Title 37', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 156, NULL, 0, NULL, NULL),
	(429, 'Title38', NULL, 'Title 38', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 157, NULL, 0, NULL, NULL),
	(430, 'Title39', NULL, 'Title 39', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 158, NULL, 0, NULL, NULL),
	(431, 'Title40', NULL, 'Title 40', 'LOAN_METADATA', NULL, 'AdditionalSecurityDetails', 159, NULL, 0, NULL, NULL);
/*!40000 ALTER TABLE `ui_label` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.user_access_permission
CREATE TABLE IF NOT EXISTS `user_access_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ljc8c7dpbc1jeyf3xm0l0x7r4` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.user_access_permission: ~93 rows (approximately)
/*!40000 ALTER TABLE `user_access_permission` DISABLE KEYS */;
INSERT INTO `user_access_permission` (`id`, `description`, `is_enabled`, `module`, `name`) VALUES
	(1, 'Update access control', b'1', 'Access Control', 'Update_Access_Control'),
	(2, 'View access control', b'1', 'Access Control', 'View_Access_Control'),
	(3, 'Update Additional Disclosures', b'1', 'Additional Disclosures', 'Update_Additional_Disclosures'),
	(4, 'View Additional Disclosures', b'1', 'Additional Disclosures', 'View_Additional_Disclosures'),
	(5, 'Confirm Additional Disclosures', b'1', 'Additional Disclosures', 'Confirm_Additional_Disclosures'),
	(6, 'Edit document', b'1', 'Document Listing', 'Edit_Document'),
	(7, 'Confirm the deletion of the document', b'1', 'Document Listing', 'Confirm_Delete_Document'),
	(8, 'Broadcast Ready Document', b'1', 'Document Listing', 'Broadcast_Ready_Document'),
	(9, 'Delete document', b'1', 'Document Listing', 'Delete_Document'),
	(10, 'Force Document Status Complete', b'1', 'Document Listing', 'Force_Document_Status_Complete'),
	(11, 'View Document Data Visualization Status', b'1', 'Document Listing', 'View_Document_Data_Visualization_Status'),
	(12, 'Sync Document', b'1', 'Document Listing', 'Sync_Document'),
	(13, 'Upload document', b'1', 'Document Listing', 'Upload_document'),
	(14, 'View document list', b'1', 'Document Listing', 'View_Document_List'),
	(15, 'Update Document Data Visualization Status', b'1', 'Document Listing', 'Update_Document_Data_Visualization_Status'),
	(16, 'Update Document MetaData Title', b'1', 'Document MetaData Title Management', 'Update_Document_MetaData_Title'),
	(17, 'View Document MetaData Title', b'1', 'Document MetaData Title Management', 'View_Document_MetaData_Title'),
	(18, 'Delete EOD Item Extraction', b'1', 'EOD Item', 'DELETE_EOD_Item_EXTRACTION'),
	(19, 'Confirm EOD Item', b'1', 'EOD Item', 'Confirm_EOD_Item'),
	(20, 'Update EOD Item', b'1', 'EOD Item', 'Update_EOD_Item'),
	(21, 'View EOD Item', b'1', 'EOD Item', 'View_EOD_Item'),
	(22, 'Update EOD Label', b'1', 'EOD Label', 'Update_EOD_Label'),
	(23, 'Confirm EOD Label', b'1', 'EOD Label', 'Confirm_EOD_Label'),
	(24, 'View EOD Label', b'1', 'EOD Label', 'View_EOD_Label'),
	(25, 'Confirm ESG Item', b'1', 'ESG Item', 'Confirm_ESG_Item'),
	(26, 'Delete ESG Item Extraction', b'1', 'ESG Item', 'DELETE_ESG_Item_EXTRACTION'),
	(27, 'Update ESG Item', b'1', 'ESG Item', 'Update_ESG_Item'),
	(28, 'View ESG Item', b'1', 'ESG Item', 'View_ESG_Item'),
	(29, 'View ESG Label', b'1', 'ESG Label', 'View_ESG_Label'),
	(30, 'Confirm ESG Label', b'1', 'ESG Label', 'Confirm_ESG_Label'),
	(31, 'Update ESG Label', b'1', 'ESG Label', 'Update_ESG_Label'),
	(32, 'Delete EODs & Covenant Category Label', b'1', 'Label Management', 'Delete_Label_Management_Tab_EOD_Covenant_Category'),
	(33, 'Edit EODs & Covenant Category Label', b'1', 'Label Management', 'Edit_Label_Management_Tab_EOD_Covenant_Category'),
	(34, 'Delete label EODs & Covenant Label', b'1', 'Label Management', 'Delete_Label_Management_Tab_EOD_Covenant'),
	(35, 'Edit ESG Label', b'1', 'Label Management', 'Edit_Label_Management_ESG_Label'),
	(36, 'Delete Risk Factor Label', b'1', 'Label Management', 'Delete_Label_Management_Tab_Risk_Factor'),
	(37, 'View label management tab EODs & Covenant Label', b'1', 'Label Management', 'View_Label_Management_Tab_EOD_Covenant_Category'),
	(38, 'Create ESG Label', b'1', 'Label Management', 'Create_Label_Management_ESG_Label'),
	(39, 'Edit label EODs & Covenant Label', b'1', 'Label Management', 'Edit_Label_Management_Tab_EOD_Covenant'),
	(40, 'Edit ESG Category', b'1', 'Label Management', 'Edit_Label_Management_ESG_Category'),
	(41, 'Create ESG Category', b'1', 'Label Management', 'Create_Label_Management_ESG_Category'),
	(42, 'View Risk Factor Label', b'1', 'Label Management', 'View_Label_Management_Tab_Risk_Factor'),
	(43, 'Create EODs & Covenant Category Label', b'1', 'Label Management', 'Create_Label_Management_Tab_EOD_Covenant_Category'),
	(44, 'Create Risk Factor Label', b'1', 'Label Management', 'Create_Label_Management_Tab_Risk_Factor'),
	(45, 'Edit Risk Factor Label', b'1', 'Label Management', 'Edit_Label_Management_Tab_Risk_Factor'),
	(58, 'Update obligor metadata', b'1', 'Obligor Metadata', 'Update_Obligor_Metadata'),
	(59, 'View obligor metadata', b'1', 'Obligor Metadata', 'View_Obligor_Metadata'),
	(60, 'Confirm Risk Factory Item', b'1', 'Risk Factory Item', 'Confirm_Risk_Factory_Item'),
	(61, 'View Risk Factory Item', b'1', 'Risk Factory Item', 'View_Risk_Factory_Item'),
	(62, 'Update Risk Factory Item', b'1', 'Risk Factory Item', 'Update_Risk_Factory_Item'),
	(63, 'Update Risk Factory Label', b'1', 'Risk Factory Label', 'Update_Risk_Factory_Label'),
	(64, 'Confirm Risk Factory Label', b'1', 'Risk Factory Label', 'Confirm_Risk_Factory_Label'),
	(65, 'View Risk Factory Label', b'1', 'Risk Factory Label', 'View_Risk_Factory_Label'),
	(66, 'Update Table of Contents Metadata', b'1', 'Table of Contents Metadata Management', 'Update_TOC_Metadata'),
	(67, 'Enable/Disable Table of Contents Metadata', b'1', 'Table of Contents Metadata Management', 'Update_Status_TOC_Metadata'),
	(68, 'View Table of Contents Metadata', b'1', 'Table of Contents Metadata Management', 'View_TOC_Metadata'),
	(69, 'View Table of content page', b'1', 'Table of content assignment', 'View_Table_Of_Content_Page'),
	(70, 'Confirm Table of content page', b'1', 'Table of content assignment', 'Confirm_Table_Of_Content_Page'),
	(71, 'Update Table of content page', b'1', 'Table of content assignment', 'Update_Table_Of_Content_Page'),
	(72, 'View user group', b'1', 'User Group', 'View_User_Group_List'),
	(73, 'Delete user group', b'1', 'User Group', 'Delete_User_Group'),
	(74, 'Edit user group', b'1', 'User Group', 'Edit_User_Group'),
	(75, 'Create user group', b'1', 'User Group', 'Create_User_Group'),
	(76, 'Create user', b'1', 'User Management', 'Create_User'),
	(77, 'Update Profile', b'1', 'User Management', 'Update_Profile'),
	(78, 'Delete user', b'1', 'User Management', 'Delete_User'),
	(79, 'Edit user', b'1', 'User Management', 'Edit_User'),
	(80, 'View user list', b'1', 'User Management', 'View_User_List'),
	(85, 'Delete obligor user', b'1', 'Obligor', 'Delete_Obligor_User'),
	(92, 'Create EODs & Covenant Label', b'1', 'Label Management', 'Create_Label_Management_Tab_EOD_Covenant'),
	(93, 'Delete ESG Category', b'1', 'Label Management', 'Delete_Label_Management_ESG_Category'),
	(94, 'View Label Management', b'1', 'Label Management', 'View_Label_Management'),
	(95, 'Delete ESG Label', b'1', 'Label Management', 'Delete_Label_Management_ESG_Label'),
	(96, 'View ESG Label', b'1', 'Label Management', 'View_Label_Management_ESG_Label'),
	(97, 'View metadata page', b'1', 'Metadata assignment', 'View_Metadata_Page'),
	(98, 'Confirm metadata', b'1', 'Metadata assignment', 'Confirm_Metadata'),
	(99, 'Update metadata', b'1', 'Metadata assignment', 'Update_Metadata'),
	(100, 'Upload obligor', b'1', 'Obligor', 'Upload_Obligor'),
	(101, 'Create obligor', b'1', 'Obligor', 'Create_Obligor'),
	(102, 'Edit obligor', b'1', 'Obligor', 'Edit_Obligor'),
	(103, 'Delete obligor', b'1', 'Obligor', 'Delete_Obligor'),
	(104, 'View obligor', b'1', 'Obligor', 'View_Obligor'),
	(105, 'View obligor list', b'1', 'Obligor', 'View_Obligor_List'),
	(106, 'View obligor users', b'1', 'Obligor', 'View_Obligor_Users'),
	(107, 'Add and Edit obligor user', b'1', 'Obligor', 'Edit_Obligor_User'),
	(108, 'View the list of loans under an obligor', b'1', 'Loan Management', 'View_Loans'),
	(109, 'Create a loan', b'1', 'Loan Management', 'Create_Loan'),
	(110, 'Update a loan', b'1', 'Loan Management', 'Update_Loan'),
	(111, 'Delete a loan', b'1', 'Loan Management', 'Delete_Loan'),
	(112, 'View Users can access a loan', b'1', 'Loan Management', 'View_Loan_Users'),
	(113, 'Add User to a loan', b'1', 'Loan Management', 'Add_Loan_User'),
	(114, 'Remove User to a loan', b'1', 'Loan Management', 'Remove_Loan_User'),
	(115, 'View All obligor list', b'1', 'Obligor', 'View_All_Obligor_List');
/*!40000 ALTER TABLE `user_access_permission` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.user_access_permission_user_group
CREATE TABLE IF NOT EXISTS `user_access_permission_user_group` (
  `access_permission_name` varchar(255) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  KEY `FK82al35gd1gpyiy9fwi4hjmbe4` (`user_group_id`),
  CONSTRAINT `FK82al35gd1gpyiy9fwi4hjmbe4` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.user_access_permission_user_group: ~130 rows (approximately)
/*!40000 ALTER TABLE `user_access_permission_user_group` DISABLE KEYS */;
INSERT INTO `user_access_permission_user_group` (`access_permission_name`, `user_group_id`) VALUES
	('Delete_Obligor_User', 2),
	('View_Obligor_List', 2),
	('View_Obligor', 2),
	('Create_Obligor', 2),
	('Edit_Obligor', 2),
	('Delete_Obligor', 2),
	('View_Obligor_Users', 2),
	('Edit_Obligor_User', 2),
	('View_Obligor_List', 3),
	('View_Obligor', 3),
	('Update_Additional_Disclosures', 3),
	('View_Additional_Disclosures', 3),
	('Confirm_Additional_Disclosures', 3),
	('Edit_Document', 3),
	('Confirm_Delete_Document', 3),
	('Broadcast_Ready_Document', 3),
	('Delete_Document', 3),
	('Force_Document_Status_Complete', 3),
	('View_Document_Data_Visualization_Status', 3),
	('Sync_Document', 3),
	('Upload_document', 3),
	('View_Document_List', 3),
	('Update_Document_Data_Visualization_Status', 3),
	('Update_Obligor_Metadata', 5),
	('Delete_Obligor_User', 4),
	('View_Obligor_List', 4),
	('View_Obligor', 4),
	('Edit_Obligor', 4),
	('View_Obligor_Users', 4),
	('Edit_Obligor_User', 4),
	('View_Loans', 4),
	('Create_Loan', 4),
	('Update_Loan', 4),
	('View_Loan_Users', 4),
	('Add_Loan_User', 4),
	('Remove_Loan_User', 4),
	('Delete_Loan', 4),
	('Add_Loan_User', 6),
	('Broadcast_Ready_Document', 6),
	('Confirm_Additional_Disclosures', 6),
	('Confirm_Delete_Document', 6),
	('Confirm_EOD_Item', 6),
	('Confirm_EOD_Label', 6),
	('Confirm_ESG_Item', 6),
	('Confirm_ESG_Label', 6),
	('Confirm_Metadata', 6),
	('Confirm_Risk_Factory_Item', 6),
	('Confirm_Risk_Factory_Label', 6),
	('Confirm_Table_Of_Content_Page', 6),
	('Create_Label_Management_ESG_Category', 6),
	('Create_Label_Management_ESG_Label', 6),
	('Create_Label_Management_Tab_EOD_Covenant', 6),
	('Create_Label_Management_Tab_EOD_Covenant_Category', 6),
	('Create_Label_Management_Tab_Risk_Factor', 6),
	('Create_Loan', 6),
	('Create_Obligor', 6),
	('Create_User', 6),
	('Create_User_Group', 6),
	('Delete_Document', 6),
	('DELETE_EOD_Item_EXTRACTION', 6),
	('DELETE_ESG_Item_EXTRACTION', 6),
	('Delete_Label_Management_ESG_Category', 6),
	('Delete_Label_Management_ESG_Label', 6),
	('Delete_Label_Management_Tab_EOD_Covenant', 6),
	('Delete_Label_Management_Tab_EOD_Covenant_Category', 6),
	('Delete_Label_Management_Tab_Risk_Factor', 6),
	('Delete_Loan', 6),
	('Delete_Obligor', 6),
	('Delete_Obligor_User', 6),
	('Delete_User', 6),
	('Delete_User_Group', 6),
	('Edit_Document', 6),
	('Edit_Label_Management_ESG_Category', 6),
	('Edit_Label_Management_ESG_Label', 6),
	('Edit_Label_Management_Tab_EOD_Covenant', 6),
	('Edit_Label_Management_Tab_EOD_Covenant_Category', 6),
	('Edit_Label_Management_Tab_Risk_Factor', 6),
	('Edit_Obligor', 6),
	('Edit_Obligor_User', 6),
	('Edit_User', 6),
	('Edit_User_Group', 6),
	('Force_Document_Status_Complete', 6),
	('Remove_Loan_User', 6),
	('Sync_Document', 6),
	('Update_Access_Control', 6),
	('Update_Additional_Disclosures', 6),
	('Update_Document_Data_Visualization_Status', 6),
	('Update_Document_MetaData_Title', 6),
	('Update_EOD_Item', 6),
	('Update_EOD_Label', 6),
	('Update_ESG_Item', 6),
	('Update_ESG_Label', 6),
	('Update_Loan', 6),
	('Update_Metadata', 6),
	('Update_Obligor_Metadata', 6),
	('Update_Profile', 6),
	('Update_Risk_Factory_Item', 6),
	('Update_Risk_Factory_Label', 6),
	('Update_Status_TOC_Metadata', 6),
	('Update_Table_Of_Content_Page', 6),
	('Update_TOC_Metadata', 6),
	('Upload_document', 6),
	('Upload_Obligor', 6),
	('View_Access_Control', 6),
	('View_Additional_Disclosures', 6),
	('View_All_Obligor_List', 6),
	('View_Document_Data_Visualization_Status', 6),
	('View_Document_List', 6),
	('View_Document_MetaData_Title', 6),
	('View_EOD_Item', 6),
	('View_EOD_Label', 6),
	('View_ESG_Item', 6),
	('View_ESG_Label', 6),
	('View_Label_Management', 6),
	('View_Label_Management_ESG_Label', 6),
	('View_Label_Management_Tab_EOD_Covenant_Category', 6),
	('View_Label_Management_Tab_Risk_Factor', 6),
	('View_Loans', 6),
	('View_Loan_Users', 6),
	('View_Metadata_Page', 6),
	('View_Obligor', 6),
	('View_Obligor_List', 6),
	('View_Obligor_Metadata', 6),
	('View_Obligor_Users', 6),
	('View_Risk_Factory_Item', 6),
	('View_Risk_Factory_Label', 6),
	('View_Table_Of_Content_Page', 6),
	('View_TOC_Metadata', 6),
	('View_User_Group_List', 6),
	('View_User_List', 6);
/*!40000 ALTER TABLE `user_access_permission_user_group` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.user_group
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT NULL,
  `is_root` bit(1) DEFAULT b'0',
  `search_string` varchar(1000) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3apsndpk83lecoy6vnhfmanub` (`created_by`),
  KEY `FKe41imyk99wfl8jihkwnickk5` (`updated_by`),
  KEY `FK3sdruhdvju86h6eonojneair9` (`deleted_by`),
  CONSTRAINT `FK3apsndpk83lecoy6vnhfmanub` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK3sdruhdvju86h6eonojneair9` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKe41imyk99wfl8jihkwnickk5` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.user_group: ~5 rows (approximately)
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` (`id`, `create_at`, `updated_at`, `deleted_at`, `description`, `group_name`, `is_active`, `is_deleted`, `is_root`, `search_string`, `created_by`, `updated_by`, `deleted_by`) VALUES
	(2, NULL, NULL, NULL, 'System Admin', 'System Admin', 1, 0, b'0', '[Super Sys Admin, Super Sys Admin, Active,  ]', NULL, NULL, NULL),
	(3, NULL, NULL, NULL, 'Agent User', 'Agent User', 1, 0, b'0', '[Agent User, Agent User, Active,  ]', NULL, NULL, NULL),
	(4, NULL, NULL, NULL, 'Obligor User', 'Obligor User', 1, 0, b'0', '[Obligor User, Obligor User, Active,  ]', NULL, NULL, NULL),
	(5, NULL, NULL, NULL, 'Lenders', 'Lenders', 1, 0, b'0', '[Lenders, Lenders, Active,  ]', NULL, NULL, NULL),
	(6, NULL, NULL, NULL, 'Super System Admin', 'Super System Admin', 1, 0, b'1', '[System Administrator, System Administrator, Active,  ]', NULL, NULL, NULL);
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.user_group_user
CREATE TABLE IF NOT EXISTS `user_group_user` (
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  KEY `FKn0bs0kp0moqy55uu0aeih8fwa` (`user_id`),
  KEY `FKa0v81mi8j51mx16nqwvghm79g` (`user_group_id`),
  CONSTRAINT `FKa0v81mi8j51mx16nqwvghm79g` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`),
  CONSTRAINT `FKn0bs0kp0moqy55uu0aeih8fwa` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.user_group_user: ~18 rows (approximately)
/*!40000 ALTER TABLE `user_group_user` DISABLE KEYS */;
INSERT INTO `user_group_user` (`user_group_id`, `user_id`) VALUES
	(6, 5),
	(4, 6),
	(4, 9),
	(4, 13),
	(4, 17),
	(6, 2),
	(4, 26),
	(6, 1),
	(6, 3),
	(4, 47),
	(6, 7),
	(4, 46),
	(4, 52),
	(4, 53),
	(6, 11),
	(6, 12),
	(6, 4),
	(4, 55);
/*!40000 ALTER TABLE `user_group_user` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.user_session
CREATE TABLE IF NOT EXISTS `user_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `refresh_token` varchar(1000) NOT NULL,
  `expires_in` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.user_session: ~88 rows (approximately)
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;
INSERT INTO `user_session` (`id`, `access_token`, `created_at`, `expiry_date`, `refresh_token`, `expires_in`, `user_id`) VALUES
	(1, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2Nzg4NTA2MTYsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.4OaEOD-D_UMwRDnQFwJay961MNXt7OmOldw-c_y2OuZzTTDj64wstTviVFlctSZWTgfwKZwgTnoGOMxsByfzFg', '2023-03-15 03:23:37', '2023-03-16 03:26:57', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4NTA2MTZ9.3ZR-WbJ35u_v-ynIoJEqboGlIEBa6JBt_4lUQ6xZbLg', 86400, 1),
	(2, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI2IiwiZGF0YSI6eyJpZCI6NiwibmFtZSI6IkNocmlzIENsaWVudCIsImVtYWlsIjoiYWRtaW5AYmV5b25kZWRnZS5jb20uc2ciLCJzdGF0dXMiOiIxIiwidXNlcl9ncm91cF9pZCI6bnVsbH0sInVzZXJfaWQiOjYsImlhdCI6MTY3ODg2MDgyNSwiZW1haWwiOiJhZG1pbkBiZXlvbmRlZGdlLmNvbS5zZyJ9.P8nHrX_XLKcTWSzgDpu_Viy6IgN1aRozKzbAcWoN6KQ3oDemfOthHpDXlr22rGMOj3EtqSyex7egnbJzsSB1JA', '2023-03-15 06:13:46', '2023-03-16 06:17:05', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4NjA4MjV9.bzuive18LXEbjBFFMnP0Faa7kRln0gClRiJXimWjNV0', 86400, 6),
	(4, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2Nzg4NjMzNTMsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.rvtW9tR92nNQngJ8VKSsL7Bccyq0YLarEZWE1v4Rnml30U_VsFNtoxYRfv1HDac-GE2FYIME0JTXGrf9Ruy6NQ', '2023-03-15 06:55:54', '2023-03-16 06:59:14', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4NjMzNTN9.w3CeVEFH6X4uIQuif1k2IWXZOxY_uiSMco02va6g2gw', 86400, 1),
	(5, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4ODYzMzY1LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.BcDop_shczDyAzcsBJURKuTtZrPcYetbOH6v4TLZU3QZUs7N_ZtTXJSuYXtMs-N86ARx1fKNbgrieAcYWcwu6w', '2023-03-15 06:56:05', '2023-03-16 06:59:25', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4NjMzNjV9.evCrHcEISvvL992705jgyxbEsyTkS9gs7bJOE8099JQ', 86400, 7),
	(6, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4ODYzODE5LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.cB8ifd6JvnfnGtkxLw5hdQLcwF2T6UMPXVDZXcluJNhajzVzEEhhETF9FHQJUifvHhJlfzikBoPS8WiNqO5aeA', '2023-03-15 07:03:40', '2023-03-16 07:07:00', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4NjM4MTl9.YYp0ic8c7RFl3scch9vgGKw_Dxr_Pgykk4Yzq8wYYXk', 86400, 7),
	(7, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4ODY0Mjg1LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.NegxWTmsA2XriTSxnT-GofxR7QALnoUfWHNcLea8Sz8JBAEBC6qt3AWdy3wi-9d-2GZykLv1ZUDlfcUwrG-6fQ', '2023-03-15 07:11:25', '2023-03-16 07:14:45', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4NjQyODV9.KHzMEkKz9ITqHhs3CU5Ccva7Q6ZFoLksBO3ywc5vxGU', 86400, 7),
	(13, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2Nzg4ODc0NzQsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.7uYY6lPlwaqqg0PE6APcRzgekDggcGmAKHAX2y2xeXEJt3RjVyfD2ZmiM5CUloPu99ExD-0BpnGXOLt9xrNHIA', '2023-03-15 13:37:54', '2023-03-16 13:41:14', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg4ODc0NzR9.H4kcdOtlDeB5g7NBoXJevuxHLonNP7ewE6MEGekcRXg', 86400, 1),
	(26, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2Nzg5MjE2MTMsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.tVplCZL1cwhnYYOLTsIvo6H6-ARTu_jh1Ds30rRHwABCfy7qga2LRzDIH6w487NqMxhGx3AWCNaUTlUvaaLaBQ', '2023-03-15 23:06:53', '2023-03-16 23:10:13', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5MjE2MTN9.DlTohJu6U2vhZCViAXEOoxRYhDOdwzQyTCXCZbW9tbE', 86400, 1),
	(30, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTMyOTczLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.qKF4uLOB2wWPMrM9u-ErQoMLZXPjF_XhGXOBqumUgo0yc6I2Xn1PwZOOD_4BtOyzd3sKW3tH87tSdX_uIB31yQ', '2023-03-16 02:16:14', '2023-03-17 02:19:34', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5MzI5NzN9.jrP5O1XmQO-MINv5vdnmT5OPM18j2EUAOx5yhkWBuEA', 86400, 7),
	(34, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTM0NDk3LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.LaAzkgkFjQoNvwanKbUOJmVw1Ggz8lilAkInkCYsyGPZu55iba3cAkw4lmYll-zNP0Ww7IF3lyoIRF0gBgdNeA', '2023-03-16 02:41:37', '2023-03-17 02:44:57', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5MzQ0OTd9.vXBgT7VQ-wyACgp5_5Ff31hY8g0U9N3Nd0aB8Fro5_o', 86400, 7),
	(60, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ0MTk3LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.xhz11tjVhfzrya2HiGvJFr1Ve8fwV-xR_R7C1VOYMaCLepuPUEjuFI5AItRa1eIZ4JIcoeES_DdPxJGzzxJ65A', '2023-03-16 05:23:17', '2023-03-17 05:26:37', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDQxOTd9.dMVb8K28JxrVN780_RBgqGRCyAuLztrJHLCxWessjKM', 86400, 7),
	(61, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ0MjExLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.gRbymayVJ2T9Slyn0zKij_4UCJG5VXcl33h2I2Nj_2pfi-WZqSI--KINPQ6BoUDJ-K_kynNw5GSKacS_N6jDYQ', '2023-03-16 05:23:32', '2023-03-17 05:26:52', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDQyMTF9.VMHt7R8BeDDuXFKVwwrI3SSyq1K0L2fpfhUhnRVUapA', 86400, 7),
	(62, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ0MjQ0LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.8M5ejGF0hIxDMG9BzeiZLJ2NJst090X8XndfTKLwHO09k9PxoWGdJsTXyPPtJUTrFC4eHxYE7Uxcbbwi-4eQ3g', '2023-03-16 05:24:04', '2023-03-17 05:27:24', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDQyNDR9.girkJPdt1lJbvU7cElcf7MCfK6LTSQJvUYXY4iZIV08', 86400, 7),
	(63, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ0Mjc0LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.ExUQPixBfcqx-cKymVaPiU8OgEURdx5YsGtq_-R7ToODFaliwi5wJg4xWRu0nbdNtO-g5FaWGM0lV4JzYyWPsA', '2023-03-16 05:24:34', '2023-03-17 05:27:54', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDQyNzR9.JmcxOdhevcvTglD45FeiK-Gpvz7nZmkP-CAplC5HYGA', 86400, 7),
	(64, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ0MzE2LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.nSr8mPbGcWmLSM7w7tzovL3ZKGH7NizZDb3O59uEv9jCq9Vb-ZhNuga4kkw8ZUb7xC-y5XOM2c4UUdqJDaDyaA', '2023-03-16 05:25:16', '2023-03-17 05:28:36', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDQzMTZ9.l8W_7VSlF32A1WxienmomKCJkMtEm529h9FHe0w_cH8', 86400, 7),
	(65, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ0NTgzLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.XRmB3a9V8JQRS8rdcugKoEDnIT0PvVP8JOdaHvtuXGpFfIzYSnalM_eazGdCJZPOl6V967NXLCyfv6tuYvCtwg', '2023-03-16 05:29:43', '2023-03-17 05:33:03', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDQ1ODN9.xqzEzoQA3v8vzrUkRv9dtDFu9UHo3_04JwDPod7L4sU', 86400, 7),
	(77, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ2MTg0LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.FJ29MBcW0T6JWlbwoYDGlL7HbRq_MnXp4_mgAUh52Xw0d3zzreveCTRPNW3C6taoIu7IFJN5-fc83gvgW5_-LQ', '2023-03-16 05:56:25', '2023-03-17 05:59:45', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDYxODR9.Wj-2XZ68w-twVol9RbAjF_0pmZQ0_EjiKvJNgaxXGfY', 86400, 7),
	(81, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5IiwiZGF0YSI6eyJpZCI6OSwibmFtZSI6IktheSBEbyIsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo5LCJpYXQiOjE2Nzg5NDc0NzksImVtYWlsIjoia2F5LmRvLnJvc2V3b29kQHlvcG1haWwuY29tIn0.bSp2Bw-O3oNt1h0Nj0gvtMzeZ3wASAl3jmmYN2Wlvsqe9JTLdiD_c57q0c5yX2EdGpdWSMjaqzGREbs-6-unbg', '2023-03-16 06:17:59', '2023-03-17 06:21:19', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDc0Nzl9.pPycprBScXwSDAw5spIuizJTHGhU7s23QVE8n0UzDJE', 86400, 9),
	(82, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5IiwiZGF0YSI6eyJpZCI6OSwibmFtZSI6IktheSBEbyIsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo5LCJpYXQiOjE2Nzg5NDc1MTMsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kQHlvcG1haWwuY29tIn0.FEtCnPG1iDtU5MWYE9r3sDYBXrwMWku2fuI9Ea9OPQOZhshEqmvgznWoX7B2L1IO_7rkBS3ww7Epic6rWl1D-Q', '2023-03-16 06:18:34', '2023-03-17 06:21:54', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDc1MTN9.Xai2ExSHkiJjCo37Jjaj4wgucH3dC32ZtNXhpxGZpSY', 86400, 9),
	(87, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc4OTQ4MjA4LCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.GXpAr1VrTm5GuoB_p76D2pjuTTeWLZpcy7Xb1i9Ts4s_8epOLrtwCLVLFq4xrQEEl49jgSq--FS-KUPM7nLggw', '2023-03-16 06:30:08', '2023-03-17 06:33:28', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDgyMDh9.E6Z-3D2WyWz5qkoXGr-hV_SwryS2d1LjS_8DCV9pKD4', 86400, 11),
	(89, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc4OTQ4MjMzLCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.A-y68cjeAhmhiZoq_EoNlkKHrZ3CmdsuzivbIcVX1Z4_unsehpJn-8OPtWMP203ydIdoUQGgpXoGOKHeDqoERg', '2023-03-16 06:30:34', '2023-03-17 06:33:54', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDgyMzN9.bTQ7KMo8R1mmebmNvKFOl0Kk1sGQEDH5SvTuZ97lFSQ', 86400, 11),
	(96, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ4NDU0LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.roBgToFDUkMkBZZ2KPrZFYCTFL8i6Og3xKCbuzMjOPFnemc-PkvdroMRVH2t5Xuognq09GcsKituUGzk6r2f_A', '2023-03-16 06:34:15', '2023-03-17 06:37:35', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDg0NTR9.kdZqVTKXt-8xLCy4GQhzRt8UxmcJA7uswlCFuqphy_s', 86400, 7),
	(97, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5IiwiZGF0YSI6eyJpZCI6OSwibmFtZSI6IktheSBEbyIsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo5LCJpYXQiOjE2Nzg5NDg1NTgsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kQHlvcG1haWwuY29tIn0.bDOL8d64Ugz4hZ9i9rBebREcNaOvETcUgD628sJ3EZWkVGfuMFe0_WQy3xa9ZaVbqpEhk6DPLm04ZEDUWhDUdA', '2023-03-16 06:35:59', '2023-03-17 06:39:19', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDg1NTh9.5NOp-5NpBRG9jsN2I3zZHcAt221ur78tmby2YhbM5G0', 86400, 9),
	(98, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ5MjQwLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.DaAfIWyOHjnX-N41RQTh6oFdurAMlG_YRa8sA8E_kd5b_MvQ5pMfb0mP_OBeLkalsXlDamXrEcIof8NaE7fRDA', '2023-03-16 06:47:21', '2023-03-17 06:50:41', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDkyNDB9.Oag4Lm4RRDfazE9aJKsBRcMtugsRQnNT21GK0iBN1Qo', 86400, 7),
	(100, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ5MzE5LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.2gHWq7t3Shay4wdYpqeJ6uOKSimdlMHOq2m2Zg6i6zYQ3qWS1LQr850Drf6vvmFyrVDobgPhmuc3GuaUFIIRiQ', '2023-03-16 06:48:39', '2023-03-17 06:51:59', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDkzMTl9.NPdQg2JySpttky1DgBoXKUdOIwu_6k8ZXg5s88vIoww', 86400, 7),
	(103, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTQ5NTMzLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.JoSFn_vjW4vM32uFghg8XmECttna6Gj1mQfb18XK1y8ISfuTtTPad7wlqc4eUPnIvSj-sBFw4T48u_shdmJw9g', '2023-03-16 06:52:14', '2023-03-17 06:55:34', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk1MzN9.dv_kit2TUh3cm-kql9LMvFwygx-1HGGJWhdZE2VANjY', 86400, 7),
	(104, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTcxNSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.ZnbAWb1RkhcSS4MZ0iNmjj0PygpYPmlYm71dRnVPoVW726vAUP976_aN3OczzPo_Gz3xUgKBWAKtLU90E_6WJw', '2023-03-16 06:55:15', '2023-03-17 06:58:35', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3MTV9.wOLYuv2gLO7yXlLK11T4fOVDTYK1Vx7pbtktmIJw_qI', 86400, 12),
	(105, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTcyMCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.YTkRRQ2BXdjTEOXAIHaTOfPV6sg9rCIOMx78G5KxGJkkbj_wF9kRqDggsUAG8DzPxmBwRavJrdeZaFfomVY7Ow', '2023-03-16 06:55:21', '2023-03-17 06:58:41', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3MjB9.C0AWhyZsgc2fl_4A1ebZJVGWi9a-mN5fQ8hllzPbGrE', 86400, 12),
	(106, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTczOCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.pt0lWP1ilhuzduPF1ErfG-hQfKF0g6rX-z2r_X9j3kep3LU6WICzFLXJgIdY_ZZLsJOv2vM5sDLRgra9-MOW9Q', '2023-03-16 06:55:39', '2023-03-17 06:58:59', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3Mzh9.7tmF9Sf40gfVbJVGr2nFIi0Xwb9tGAnF8a3wplJCqpo', 86400, 12),
	(107, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTc0NSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.lgGbmwGgwsU-_RgVMkCeFRZgy4CxEmZXVBEDm4o-C7j2Eur2oq2RmR8O6MgnPRDDxjbeFFmKIdfN03zJS-mDFg', '2023-03-16 06:55:45', '2023-03-17 06:59:05', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3NDV9.CnaZ-MTvkegE8IOtIrO02wil35_bCDnhoMdzbATOZIA', 86400, 12),
	(108, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTc2MywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.4U3JB3XRfdf7Ro9yqXqABrlBQVrEh-DXvpyuk1c8qSas3EqgDrbDSZjXUd8rtzklTxhE0FGSRAWsAReEkrTzxg', '2023-03-16 06:56:04', '2023-03-17 06:59:24', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3NjN9.3jDXWCVfOSeEV36fnXpBjvXomH5MB9tTa4OFoFj4ehM', 86400, 12),
	(109, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTc3MywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.0nq3qVj-QFVNSMFXpiRufD5jN6e3YPLdYIEd0XG-2T-g5nMiSfiwJeJEoukB3kgOIXqzzWrlNlpcXY3gPXDHRQ', '2023-03-16 06:56:13', '2023-03-17 06:59:33', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3NzN9.6ykzaZulGIQiRfxoLNBOXsqYLkbs2yTPsvOejK6my5k', 86400, 12),
	(110, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTc4NSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.YDGpCiSIGYTpNV6fK088Zg18QsM0HRdjuk0FmSBCmRr3jgNdAMk8UyFiB1LV3OrNkt-f5TSsY3XCBTMhcz281Q', '2023-03-16 06:56:25', '2023-03-17 06:59:45', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3ODV9.Mptcl129BWqtDnHjXASE_1LMU02DQXdRVNcE9XqMfUY', 86400, 12),
	(111, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTc5MiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.N-fKuF9U1Lat0vlkqSHua7eB_xd1qS_oa4fXE6sehkU7ZGSl3iQro3fx7G8aqujL20FkZJhuxlrKS9GZOzMAnw', '2023-03-16 06:56:32', '2023-03-17 06:59:52', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3OTJ9.lVAaMqu-wp-xjkZ9-GIzhnuFrBlZGG0WrPV_WyTjK00', 86400, 12),
	(112, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTc5OSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.HTVYLEosl34xCyJSzWiTGOi_VfC7GhSr4EAKgst-YQSpThVxmbrx4ZjJhOwyB3ryDd1_htVVmHi-lGFsyoOIJg', '2023-03-16 06:56:39', '2023-03-17 06:59:59', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk3OTl9.xvdmw-7eub28gV6wWvX_fmiH47nby3fcg8VD5xld53I', 86400, 12),
	(114, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk0OTg2NiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.DQ8KEVAAb3_yO-WMd3mUM1jMdQJPWcT4Kg72aup6219gDi7uTa7p3R6IFinXFPR8kp_354RZ3YFYqZ-Jo4VnsQ', '2023-03-16 06:57:47', '2023-03-17 07:01:07', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NDk4NjZ9.9HnloY4szFDRT-eebUPYTgJvbvNp5xMwtkbmh7gBQH4', 86400, 12),
	(119, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk1ODQwMywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.EHq5tUDBW4A4bU4jwZMzURxYrMa1xzvKMfzx2TFR07ZRa5weN4sQPN6eT_o7nsA8-8Iy32V0WFlKZ98al7Mz0Q', '2023-03-16 09:20:04', '2023-03-17 09:23:24', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NTg0MDN9.lHQEXSsVjmsrhWuZDrim_fAM0T857tZlRS5szEzgjaM', 86400, 12),
	(120, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxNyIsImRhdGEiOnsiaWQiOjE3LCJuYW1lIjoiS2F5IERvIDEyMyIsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kNkB5b3BtYWlsLmNvbSIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTcsImlhdCI6MTY3ODk1OTQyMCwiZW1haWwiOiJrYXkuZG8ucm9zZXdvb2Q2QHlvcG1haWwuY29tIn0.7AYMBfOn0eSz0CYUEH2mLAAJbvVqRYKOCpSRrmLJtygxHFnyF0jgwx2QDe2Abeu4yKSvryrBxKu0SYKgfBBBPw', '2023-03-16 09:37:01', '2023-03-17 09:40:21', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NTk0MjB9.0Ou79JiCPRnunhZsrZVkjMuDZBGP7Qrcw_MbCEEL1r0', 86400, 17),
	(121, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxNyIsImRhdGEiOnsiaWQiOjE3LCJuYW1lIjoiS2F5IERvIDEyMyIsImVtYWlsIjoia2F5LmRvLnJvc2V3b29kNkB5b3BtYWlsLmNvbSIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTcsImlhdCI6MTY3ODk1OTQ2NCwiZW1haWwiOiJrYXkuZG8ucm9zZXdvb2Q2QHlvcG1haWwuY29tIn0.aJutwPeZ9baZFGcK8i-ti-jE69q-Sm9_YqoDcroDMaiV76vwqqydmVfE6LlaqH0r1UJzrox5e2RZOTOfSEHyJg', '2023-03-16 09:37:44', '2023-03-17 09:41:04', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NTk0NjR9.oqupfuTMg7mZ7XZgNhTlVlhjzoxJl2eaSwUAaFrzRa0', 86400, 17),
	(122, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk2MDM2NSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.0vD5df1qsbEwV4k8cfwKJxD_IlN-yO5Rvd4DA2Vj-HWfGAvS1bup8VjeSpXhjp0TpwVG6JwNNmmzJgVC7gYZ_g', '2023-03-16 09:52:45', '2023-03-17 09:56:05', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NjAzNjV9.UuLninLaS0iNmmGniry08bQrE7tY-Ni8fb5BNS16esY', 86400, 12),
	(125, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3ODk2MDgxNSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.ofdHwxc-ierlMXSTLc6hEAg85EIUikVm0NQd9GvzWRSU0j4PhV8wq_fVOJYiPiXxKHdm7xSW-CWn0huAuvnFTA', '2023-03-16 10:00:15', '2023-03-17 10:03:35', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NjA4MTV9.vNA2azNcLvHyrHo-WCYC5dnKruq2uy5flHMcglaM8xc', 86400, 12),
	(131, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2Nzg5NjkxNTMsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.vRqx_R_scBX9ODD_EkmqBjfCdcnqJEoj96okRX0ubIJ6Gjz1Pm_YyTAGTqKvXy-ZGLfrqNwaBFGegxtDd3aNow', '2023-03-16 12:19:14', '2023-03-17 12:22:34', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NjkxNTN9.yj5PMuxFpIuLHwiQjAmMJsv1CsgSptjFFWRdCuPiCUc', 86400, 1),
	(132, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTc5MDQ1LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.S2Zt5J-o-YpTytLROVJogFEYrz5uZ7Bsl223awlFhuUBQAFoskVdoyAGue937_CWrBLXlfIo6dvOtW4Zhon0RA', '2023-03-16 15:04:06', '2023-03-17 15:07:26', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5NzkwNDV9.vBOHLFV8U5gDFuvTiLmXVmYD6i6WaPME-59cho1McMU', 86400, 7),
	(133, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc4OTc5ODUxLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.jhcrpQ1WxUBWME-8w4M-tG3BNpN5Ghv5_e4D9GaSmp7P1-goeHGcc-XPTGywHA4h5csa57lz7a-w9hMv4PtjxA', '2023-03-16 15:17:31', '2023-03-17 15:20:51', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2Nzg5Nzk4NTF9.KyCwJpsaI2W6MEyVw5_QJYG2IGZVI-OeZNmUA1yPZwk', 86400, 7),
	(134, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc5MDE4Nzk2LCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.lnWB74rV6BQVc3nqWSxJGTQ0jLsBt9ko3fPvmBIgOcOmIVRhONnoFMuv3Ed4DRQDtCRlU1kaKDy6qlUG6IalMw', '2023-03-17 02:06:36', '2023-03-18 02:09:56', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwMTg3OTZ9.fpeiMw5p1_ar_TM8iRzzHnq3Ufn2wxcrRye7gT9S0Bg', 86400, 11),
	(135, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTAyMDczNywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.AcaD-qHFLo6kQGf11JanwcQwQQAjG7Nhp1GymYXGkiUoBWILt7Bsr0pSFZ9Seztwa7jam7P-uL6ywU3QclddKg', '2023-03-17 02:38:57', '2023-03-18 02:42:17', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwMjA3Mzd9.M0ufQIIa0ElMXpUqCjNkKXXuEki0eHxeII0xH3rxAdU', 86400, 12),
	(137, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc5MDIzMDIyLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.iilhgqOLN-kc2QUDKxEDyhXqEKil1iP6gnvflbw0tljbfxG3OLh3lEsM1OqFJaOR6oH_tX0t_ZGuFaQ5IIP2XQ', '2023-03-17 03:17:02', '2023-03-18 03:20:22', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwMjMwMjJ9.hrTAW9GzMGhCY6DjU0ELtHbtf15omaEdK2N7BdDEeNg', 86400, 7),
	(138, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc5MDIzMDMzLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.BYN35PBtvtEKC9FdWVQxNvYFF9lzu4e7S10lHojQzELrle42Kh5BYDjWp7WfZlhBJgNl1sDCB9m5e8vueK5emA', '2023-03-17 03:17:14', '2023-03-18 03:20:34', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwMjMwMzN9.TX_sxexbRXkTWc_xJhssUuJqgNwqQCDCQDysNVjiMC0', 86400, 7),
	(156, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyIiwiZGF0YSI6eyJpZCI6MiwibmFtZSI6IkxFIHZpIHZpIiwiZW1haWwiOiJsZXZpOEB5b3BtYWlsLmNvbSIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MiwiaWF0IjoxNjc5MDQ4MzI1LCJlbWFpbCI6Imxldmk4QHlvcG1haWwuY29tIn0.KQ4Go5QivZhfqRrYTZt08U2moMwWcg6XYh5WcUVAdeCaPDEigPl0VRyyYuV4B8vQixC5rpueGo6wsDQVGoeHzw', '2023-03-17 10:18:45', '2023-03-18 10:22:05', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwNDgzMjV9.cFY5l4VuHlGIIXHHbH1IDQofonjkSwXzigOpTpvyGLg', 86400, 2),
	(157, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2NzkwNTA0OTksImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.SsoyYSP6JtkiQ3WPzsgBCbgj5eRq1ADZHhFsE6fVWM-gC3joyY1VwVqQ46X2hF1Xp4D0xjNHZZkJmXMxS6pniw', '2023-03-17 10:55:00', '2023-03-18 10:58:20', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwNTA0OTl9.-wokNscZ87ghfUVFntkGjx23Rk6RQnIugUv0LB2q3kQ', 86400, 1),
	(159, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTA2MTIwMywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.nlDO1HedO5bQWZo0tcOb6UUEhR8ImT67jcry8YjdztIFZAlfZ2N0LmGa0b2WFzcOHpLTf5BrL6lGmbdrcxqSIw', '2023-03-17 13:53:24', '2023-03-18 13:56:44', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkwNjEyMDN9.2NPtOkbMkNdlfcINg3ZZpBh4qiJNWrzsgMOo8bKFOio', 86400, 12),
	(160, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc5MTIxMTQ0LCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.0fIjuOikbvGKbjVUFeMyWVBQ2wLopzXhkGoCtpjWE6orjuTUm_TQQT4EaW7ZhFPZENoRoH2hl9DHBn_jkdauSg', '2023-03-18 06:32:25', '2023-03-19 06:35:45', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkxMjExNDR9.w32MHfO2uvLsqZemP_tgkrgNTQLrmKaboOVUDW6r0NA', 86400, 11),
	(162, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc5Mjc3NjA4LCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.G7D6Av_wFdiRjKx3ZuKsoqjCk2N2V3b97h_GdgBL4Wour0-_6MMbwhX_y0YgfxkKvVjFoKPbaPGGBcctHwnmpg', '2023-03-20 02:00:09', '2023-03-21 02:03:29', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyNzc2MDh9.mb0DVKsp4W04IMtcY5HBgpwffnF9ShyQsfMcmr2TlCc', 86400, 11),
	(163, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc5Mjc3OTExLCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.06Icpf5eUmCAGbAR2T69Qy-uNL2AWP3SEse1F9MxfFyj_cCcJM6KjZZXlfXNS0N3eAyxFIeIkgtmv5xUEXeStg', '2023-03-20 02:05:12', '2023-03-21 02:08:32', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyNzc5MTF9.cD5Nh0olsvQhHK6jjFo3mq27XEUR636fSIXQO0YQdVk', 86400, 11),
	(165, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2NzkyODE4NTcsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.sw1Be6OmQ-ZzZPdUC5z00ZKl6QsHyxhnAn7LNXqhqXHjSv9IKxZoEL3bBcSejjZm_0dnwU4HiaZlx47NE_SdlA', '2023-03-20 03:10:58', '2023-03-21 03:14:18', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODE4NTd9.Vblc448I0LcgOoMZ5Cj7McKgjAeseW89WCaNrv4VFQk', 86400, 1),
	(166, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2NzkyODE4OTEsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.fJ3sqP0aCslIdLb0UTu21XU7dsf_3K8yu-RfIZg1CjqPguY1zAR9doX7kacRezZkyfAsSat4Y_zzXvwc41ZSmA', '2023-03-20 03:11:31', '2023-03-21 03:14:51', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODE4OTF9.DmO19iM5rfehZZqBXNvlPDOwTEsAbhTQBtiQue7mh9Q', 86400, 1),
	(173, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2NzkyODIzNTUsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.lknbPtfeNF32QdO2QU1Iu9skZOcARKcbpTd1YnqvMX8olFU2rbIgAedTcNo4_w9i30aMOYAXBKkq5purJQ1mGg', '2023-03-20 03:19:15', '2023-03-21 03:22:35', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODIzNTV9.Wp5KmW_P2h-qNNsGO-SgUPnhfMZB8S2DQLZIhqDpOpY', 86400, 1),
	(178, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiZGF0YSI6eyJpZCI6MywibmFtZSI6IkFuZHJldyBOZ3V5ZW4iLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MywiaWF0IjoxNjc5MjgyNDQ5LCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.6dkInHoGZS_VKzEc-3i0i8y6febnqR8KtYWN1Rr_ro4da9tWZQFNf-b_3jkYV5p-BoUE7LOdbxIL9LoyGBLlwg', '2023-03-20 03:20:49', '2023-03-21 03:24:09', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODI0NDl9.KcXUGuqa7Z5h2lE4qON8T1XNzauHAibHSgocFdiRZWs', 86400, 3),
	(179, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiZGF0YSI6eyJpZCI6MywibmFtZSI6IkFuZHJldyBOZ3V5ZW4iLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MywiaWF0IjoxNjc5MjgyNTAxLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.sTxaigFcyahYaLGI60FA4MJMyxdu1zvws2wWh2Kf9fo7rojHqwIL4QP7HsQjaCHUD3eXdbSQ6JmR6L274o0WtA', '2023-03-20 03:21:41', '2023-03-21 03:25:01', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODI1MDF9.yOQvOZbSBYp9I5gVfIhc5jFOLUAjYNP_amiLRoSRs78', 86400, 3),
	(180, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiZGF0YSI6eyJpZCI6MywibmFtZSI6IkFuZHJldyBOZ3V5ZW4iLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MywiaWF0IjoxNjc5MjgyODIwLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.t1lDFgpHeuJuD0mRy8DaiLdVhGW28gI8KFOWKN3ngjdkiSswKaCsZ_nGPYm4p0DqBQPywKO0wnGDojUlBOcsoA', '2023-03-20 03:27:01', '2023-03-21 03:30:21', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODI4MjB9.Yc6Gq4CRj3XfnulVz1kWxacdXvxf2h_OJ2v2st-JnDI', 86400, 3),
	(181, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiZGF0YSI6eyJpZCI6NCwibmFtZSI6ImtheSBkbyIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo0LCJpYXQiOjE2NzkyODI4NDYsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIn0.IwIFyp-z9J1dZ7kw1eZ2TvxaPj3s4vgNEgCH_rhIu4e7To1aj_BYwzIkV6a87orwaRfD0rQnTZY_U8gB37m6oQ', '2023-03-20 03:27:27', '2023-03-21 03:30:47', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODI4NDZ9.aRoIIx4uo-9_G3_ur9wk0OaqZBhxnLVKeONEMRfB3fI', 86400, 4),
	(182, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiZGF0YSI6eyJpZCI6NCwibmFtZSI6ImtheSBkbyIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo0LCJpYXQiOjE2NzkyODMwNTksImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIn0.eMmizb7er5L354pTAQTi31ze4Rn1nXa27SI5wVub5BVibithoss3rv_qKlkkmyFUg0swtlibho03YGy4s5vWEQ', '2023-03-20 03:30:59', '2023-03-21 03:34:19', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODMwNTl9.0aXXDaCMUs67R4AALK0iEZrYcSbY6PedcxP7uK8Evr4', 86400, 4),
	(183, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiZGF0YSI6eyJpZCI6NCwibmFtZSI6ImtheSBkbyIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo0LCJpYXQiOjE2NzkyODMwOTUsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIn0.d-WII_dt-XlI5Hu6zojRk2sNzKdxJl0ei5jHht07ljD3KgYyqVnyKToLoIHgymjmj4978K9qG2vldxkFoUpyHg', '2023-03-20 03:31:36', '2023-03-21 03:34:56', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODMwOTV9.Pb4sgztIRke-LRSI2o4kBYGWVAUQDf0nhaFe8L1ioMI', 86400, 4),
	(184, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiZGF0YSI6eyJpZCI6NCwibmFtZSI6ImtheSBkbyIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo0LCJpYXQiOjE2NzkyODM1MTcsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIn0.lPrFejXr61mHrdszbIhsCx_mCJyS7Ecdchpgj7aOrBoAf4MldVtGVU8-JDRZGKNclrjyZvOwu_wcH-3HgkvuFw', '2023-03-20 03:38:37', '2023-03-21 03:41:57', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODM1MTd9.Mh1jYWURGM_nayM2ZkMax_64zBqfc7wKptTiAvvDWUk', 86400, 4),
	(192, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2NzkyODQ3NjMsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.Vfr1mA-HEaxli9xYNGt2s8kQwsI718bI5Nurkx9AmGrS0gJuTGI6eoh06W_1lQeMrjLPUnmBNBUXPtto-4cSTg', '2023-03-20 03:59:24', '2023-03-21 04:02:44', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODQ3NjN9.1njtl0fcR2o3jBdHkPQKh_nrsqrgygcW85UpEWAb9HQ', 86400, 1),
	(195, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI4NTg5NCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.3_cDF1vjkdAimS9iQTEtR8chFYaV5qWLQjMSAhcW-Yf5hOn76X7PBYApqa3MlwmXKQTJRsuX-shma2SdFdy0ug', '2023-03-20 04:18:14', '2023-03-21 04:21:34', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODU4OTR9.STAMwsAxkmHe6yaRdgyqS8ljoAhVNHoB8rpKeYiRSbc', 86400, 12),
	(196, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI4NTkxOCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.jQQGtwh1opzmPwi_hioPO0C63wusKHHuVbsdkabg5NPcPvOyZcU5_3CSvTwAXKFlp4YC2Wl0tMc2lH5c8QHAQA', '2023-03-20 04:18:38', '2023-03-21 04:21:58', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODU5MTh9.NYEyFPn-l-Y83nO7zALytWXhhyiTDXwW_PChdZJrfz0', 86400, 12),
	(197, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiZGF0YSI6eyJpZCI6MSwibmFtZSI6IkR1b25nIE5ndXllbiIsImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxLCJpYXQiOjE2NzkyODU5ODksImVtYWlsIjoibmRkdW9uZzdAZ21haWwuY29tIn0.S5Rog1xq3XGbU0mNQ9IUIt48gjVMt4cX5lrdX_m1ukGVWKNeSDC41Hwhd1ttFBy_9mHB0r__qjFdJdYU8FH2RA', '2023-03-20 04:19:50', '2023-03-21 04:23:10', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODU5ODl9.wesTQUx7yFtAZiYaYdIu5nZCH4JniYXfhMsL2p-PCzg', 86400, 1),
	(199, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI4Njk5NCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.BnJyyGCgL6hgr6FTTqZYk4ZNinsQhHwPvFHehFYJC1LFTZ_NZLa8P5lQpOCekvME27ZslogZb9f6Z6h0arGKEQ', '2023-03-20 04:36:34', '2023-03-21 04:39:54', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODY5OTR9.gHQVXAqmWgbyE1Djoa0brX6jOo2DRbFGyg1lSfxQPRs', 86400, 12),
	(200, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI4NzAxMSwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.cDdlkhNOSr2no1iJz5PoRev_xcNYoa5CCHCFXRx8IAyr5h1-YYJk0Ooxi3L3Y7bQPFMDo_EAXL9IowsykoPpQA', '2023-03-20 04:36:52', '2023-03-21 04:40:12', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODcwMTF9.-BDRw7U67P05w7DcDFqcgVu913RosGsj8zyEj31h9Ag', 86400, 12),
	(201, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI4NzA3NCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.XpARpOdO9AIwdVJaFhjB5h2IA6FcJHQWpwPZyoJXGKcjUcUkjRwssoEdav7u8dWyL5l9XDW0KdvLJxp1idfxbA', '2023-03-20 04:37:54', '2023-03-21 04:41:14', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyODcwNzR9.qccPMgZcV5efQIS2bQIcS0_ubJIwueVE0GQo-22kSQk', 86400, 12),
	(202, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI5MzE5OCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.hFKqiLEW38gATzrIv9EGiDeMeu9HQ4s4vdyBlX2tP9buZPbUIxGogsO1J_p19dlRXnwQtjBYoX3_EukKkfc6eA', '2023-03-20 06:19:58', '2023-03-21 06:23:18', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTMxOTh9.cCdZACTcCYsISakr8fBz5hU4NG4e_DTB6ELvKWnxUJw', 86400, 12),
	(203, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI5MzIyMCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.kqbp8-Q7vNU6PgVhmkAyC72X8EG6O4qBhwl-WrVV7NDtgRTwz_uT2eViHu4zdtKXmaF6JG2A_Z0x4aHNX81GEA', '2023-03-20 06:20:21', '2023-03-21 06:23:41', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTMyMjB9.DpI3qienlh3fHJnY5FO7bld0TfUQyJOBA_5TCRRn3hg', 86400, 12),
	(204, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI5MzQyMywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.rJC-XfOhqgdCNgXWCmOKyf_tEmHpsKHMwwqefrXgfI3jHw5yQRintdOZJv9pD97NmfnQAffcwyZFvLEh9SR5pg', '2023-03-20 06:23:43', '2023-03-21 06:27:03', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTM0MjN9.pcjgAtF3hYS40B5zUrkTn2xANgRDD9CVECxjXS-nrpE', 86400, 12),
	(205, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI5MzQzNCwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.pgInTmOal4XCvpc13PN47XPa3Tb9DX2GpBNaJQgZXhGeO95Kj_IKu_ah1z37qqqrkmoT0QzzM4zrU9jWaBOw_Q', '2023-03-20 06:23:54', '2023-03-21 06:27:14', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTM0MzR9.ZyXhV8vVZEhEyy6xhLa_30xGkftfLnQF26IE3G2hTX4', 86400, 12),
	(206, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc5MjkzNjYxLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.bxJxYdVoFrtOcK5WALWB57rh_OMyxSQeZw_8kyJZV-sJGSvCuGs4hZVzHTQ3cPaqbuFetu2Tsq_noppHM-EkZg', '2023-03-20 06:27:41', '2023-03-21 06:31:01', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTM2NjF9.RibU4pRW2UCbMgOuss-cUjkIHZSSs2tHU60kKldA_ks', 86400, 7),
	(208, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiZGF0YSI6eyJpZCI6MywibmFtZSI6IkFuZHJldyBOZ3V5ZW4iLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MywiaWF0IjoxNjc5Mjk0NDIyLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.MwWFfVTKf5v0y8c5STye-aSO-ZUPhn8bkw7TbVuq6IJJJearpDuoxdltr4_Cp0SU65ZZZ9WsoMNr-yEwSsx4vA', '2023-03-20 06:40:22', '2023-03-21 06:43:42', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTQ0MjJ9.gbPYHM3gXYtNDQwRHGjv1lEstGTUilO6eUwNFcl5YXA', 86400, 3),
	(209, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiZGF0YSI6eyJpZCI6NCwibmFtZSI6ImtheSBkbyIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo0LCJpYXQiOjE2NzkyOTQ0MjIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIn0.5r-5zGfEH2T78WWKMt9SHTDR2gpODTzw9BvzigpHP5iSNdBrpv_irldxxHc0lLn44XeSQ_sjYTLJp477i_oq_w', '2023-03-20 06:40:23', '2023-03-21 06:43:43', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTQ0MjJ9.gbPYHM3gXYtNDQwRHGjv1lEstGTUilO6eUwNFcl5YXA', 86400, 4),
	(211, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiZGF0YSI6eyJpZCI6MywibmFtZSI6IkFuZHJldyBOZ3V5ZW4iLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MywiaWF0IjoxNjc5Mjk0NjAxLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.1xktCL_gxzXSZUByz-jRc1S98YTl8VmpPnqdUgz8GM42aiqjQSfJ0h81Y5iTP0PTzr_QJDQ58hyconqZF7ytRA', '2023-03-20 06:43:21', '2023-03-21 06:46:41', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTQ2MDF9.yGxOccf3-mWDvcWg82G3hTFLkwWaFNXmsB_l8I2s1d0', 86400, 3),
	(212, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiZGF0YSI6eyJpZCI6MywibmFtZSI6IkFuZHJldyBOZ3V5ZW4iLCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MywiaWF0IjoxNjc5Mjk0NjA0LCJlbWFpbCI6ImFuZHJldy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.lJVCR1vR0bJSr2coCvGqvGA-Y55ZOWb1SUFvN9kQlh26TGRw4bvYdBEKNeCLUPEmbCOp0MOZIlLsFINmlzaFzA', '2023-03-20 06:43:25', '2023-03-21 06:46:45', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTQ2MDR9.3PBYUk1lDXK9O5Jx2MdIMLFNzgapyMLaF9iit_8BjkI', 86400, 3),
	(214, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc5Mjk0NjkwLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.W_7ZNIONcz_Uzlf3R8GxJ7KlxZIw-qwyZS9R-hPVNCyWWikz6D5MgyzltjB2xNo_3Q784zbu7-Ea6A0jFd8gDQ', '2023-03-20 06:44:51', '2023-03-21 06:48:11', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTQ2OTB9.PeMj7QjzNirMLuYIOAYQc-CNtUKadn_vaC1TGArZoT0', 86400, 7),
	(216, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiZGF0YSI6eyJpZCI6NywibmFtZSI6IkJyeWFudCBNYWkiLCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6NywiaWF0IjoxNjc5Mjk0NzE5LCJlbWFpbCI6ImJyeWFudC5tYWlAYmV5b25kZWRnZS5jbyJ9.PDLMod35ROMDHnw0a0jLLm3FfI21J7jONHRfRB_KnuvUO5_h5DvmfBXtVvWWwq4T3OmR1Ka5c8Eo-sYN3R9c5g', '2023-03-20 06:45:19', '2023-03-21 06:48:39', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTQ3MTl9.AiFEFxmgzytoSiZ6ySKeqmiXordTB31L2LeI4J715tU', 86400, 7),
	(223, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImRhdGEiOnsiaWQiOjExLCJuYW1lIjoiSGFycnkgUGhhbSIsImVtYWlsIjoiaGFycnkucGhhbUBiZXlvbmRlZGdlLmNvIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjoxMSwiaWF0IjoxNjc5Mjk5Mjg3LCJlbWFpbCI6ImhhcnJ5LnBoYW1AYmV5b25kZWRnZS5jbyJ9.UZrE98MofH5f0dQZomImhgiuTBDA3o20FCiJQOUrS_qAs3Q1hdpGG7BcEOoRO9CW8-lrTqmoiBxImSdICicpyg', '2023-03-20 08:01:27', '2023-03-21 08:04:47', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTkyODd9.Qlw3l1i5hE7vVrLzb-pwpb53gGbYjzvTVbPt4ywO_t4', 86400, 11),
	(224, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI5OTM3NywiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.9b_Mi1YdcsNCxP_J6wzEYPbXtzApsGEJ-4sfctr4n8fgvR0HE2IhFO-2Jfah2MtmZLYscQ9ri7vy51Pwqxdr_g', '2023-03-20 08:02:57', '2023-03-21 08:06:17', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTkzNzd9.hp56KYbcLa1b-SFEXP8Ks7ujkmcN6tDz7kEJTK1on1Y', 86400, 12),
	(225, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImRhdGEiOnsiaWQiOjEyLCJuYW1lIjoiR2Vub3MgTmd1eWVuIiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyIsInN0YXR1cyI6IjEiLCJ1c2VyX2dyb3VwX2lkIjpudWxsfSwidXNlcl9pZCI6MTIsImlhdCI6MTY3OTI5OTQ0NiwiZW1haWwiOiJnZW5vcy5uZ3V5ZW5AYmV5b25kZWRnZS5jbyJ9.baBVlycYTmjTMEIt0KJwTV3A6XwQV7pw_OdX0XNyjKOoRo1-XmU963KOOnruKIRWBVJqO4y68bGCPrYdiskR8A', '2023-03-20 08:04:06', '2023-03-21 08:07:26', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTk0NDZ9.gM6s6o8bchQurYirXvaQQ986BvURlib4tULRR9hM438', 86400, 12),
	(226, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI1NSIsImRhdGEiOnsiaWQiOjU1LCJuYW1lIjoiS2F5IERvIiwiZW1haWwiOiJrYXkuZG8uemFsbzVAeW9wbWFpbC5jb20iLCJzdGF0dXMiOiIxIiwidXNlcl9ncm91cF9pZCI6bnVsbH0sInVzZXJfaWQiOjU1LCJpYXQiOjE2NzkyOTk1NzksImVtYWlsIjoia2F5LmRvLnphbG81QHlvcG1haWwuY29tIn0.vGEHLpxRbp9d7yG28oLYGz-CjmCPREqAK5hG4vNi5G1OQye4K6KfDyFQBVn7-qFGRfKRoEM4EdCqfkdNamksxw', '2023-03-20 08:06:19', '2023-03-21 08:09:39', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTk1Nzl9.oRv8gQWvjJqXqrab8juuoYhR6cK-JL37Sovj1p2qTww', 86400, 55),
	(227, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiZGF0YSI6eyJpZCI6NCwibmFtZSI6ImtheSBkbyIsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIiwic3RhdHVzIjoiMSIsInVzZXJfZ3JvdXBfaWQiOm51bGx9LCJ1c2VyX2lkIjo0LCJpYXQiOjE2NzkyOTk5MTMsImVtYWlsIjoia2F5LmRvQHlvcG1haWwuY29tIn0.nP1mx3xFlD92BnVqiqEnelmw5vjPrVKwgkY-Uru7ftDm6Cxi_S3MjsyLR1hbpt_f--Bs-k0GC8V7t5O6PEYZ5w', '2023-03-20 08:11:53', '2023-03-21 08:15:13', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkyOTk5MTN9.tzXNDWC_sAQr97GPHyopSQDQ-SCN4HaxeBzOUEYEvUw', 86400, 4),
	(228, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI1NSIsImRhdGEiOnsiaWQiOjU1LCJuYW1lIjoiS2F5IERvIiwiZW1haWwiOiJrYXkuZG8uemFsbzVAeW9wbWFpbC5jb20iLCJzdGF0dXMiOiIxIiwidXNlcl9ncm91cF9pZCI6bnVsbH0sInVzZXJfaWQiOjU1LCJpYXQiOjE2NzkzMDAwMjksImVtYWlsIjoia2F5LmRvLnphbG81QHlvcG1haWwuY29tIn0.M3N28xwgmxc7qc6bGbEDGHahyJezyt5lVGN7g7WYYgOLW83ywNcEkUvNMYN8sZvnQ4oPpCBXmUuldynUOTAKcA', '2023-03-20 08:13:49', '2023-03-21 08:17:09', 'eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NzkzMDAwMjl9.YlMfONmg2SfxPeDLhE5BWiAXCH8TT0PTF93bEwzCW94', 86400, 55);
/*!40000 ALTER TABLE `user_session` ENABLE KEYS */;

-- Dumping structure for table privreg_dev.user_user
CREATE TABLE IF NOT EXISTS `user_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `first_login` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `image` longtext CHARACTER SET latin1,
  `is_active` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `last_login_date_time` datetime DEFAULT NULL,
  `login_count` bigint(20) NOT NULL,
  `mobile_number` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `reset_password_token` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `search_string` varchar(1000) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdoqttjft6ugyatfuh21qljidq` (`created_by`),
  KEY `FK8x30hq54rpm28609374bxa7mm` (`updated_by`),
  KEY `FK4h3am3ftqv5mp50pknauftudg` (`deleted_by`),
  CONSTRAINT `FK4h3am3ftqv5mp50pknauftudg` FOREIGN KEY (`deleted_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FK8x30hq54rpm28609374bxa7mm` FOREIGN KEY (`updated_by`) REFERENCES `user_user` (`id`),
  CONSTRAINT `FKdoqttjft6ugyatfuh21qljidq` FOREIGN KEY (`created_by`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table privreg_dev.user_user: ~56 rows (approximately)
/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
INSERT INTO `user_user` (`id`, `create_at`, `updated_at`, `deleted_at`, `email`, `first_login`, `fullname`, `image`, `is_active`, `is_deleted`, `last_login_date_time`, `login_count`, `mobile_number`, `password`, `reset_password_token`, `search_string`, `created_by`, `updated_by`, `deleted_by`, `first_name`, `last_name`) VALUES
	(1, '2022-08-26 03:40:55', NULL, NULL, 'ndduong7@gmail.com', 1, 'Duong Nguyen', NULL, 1, 0, '2023-03-20 04:19:50', 20, NULL, NULL, NULL, 'Duong Nguyen ndduong7@gmail.com  ACTIVE Super System Admin 2023-03-20 04:19:49.727', NULL, NULL, NULL, 'Duong', 'Nguyen'),
	(2, '2022-10-12 04:52:17', NULL, NULL, 'levi8@yopmail.com', 1, 'LE vi vi', NULL, 1, 0, '2023-03-17 10:18:45', 12, NULL, NULL, NULL, 'LE vi vi levi8@yopmail.com  ACTIVE Super System Admin 2023-03-17 10:18:45.346', NULL, NULL, NULL, 'LE', 'vi vi'),
	(3, '2023-03-09 05:12:19', NULL, NULL, 'andrew.nguyen@beyondedge.co', 1, 'Andrew Nguyen', NULL, 1, 0, '2023-03-20 06:43:25', 41, NULL, NULL, NULL, 'Andrew Nguyen andrew.nguyen@beyondedge.co  ACTIVE Super System Admin 2023-03-20 06:43:24.662', NULL, NULL, NULL, 'Andrew', 'Nguyen'),
	(4, '2022-11-28 10:07:41', NULL, NULL, 'kay.do@yopmail.com', 1, 'kay do', NULL, 1, 0, '2023-03-20 08:11:53', 98, NULL, NULL, NULL, 'kay do kay.do@yopmail.com  ACTIVE Super System Admin 2023-03-20 08:11:53.073', NULL, NULL, NULL, 'kay', 'do'),
	(5, '2023-01-04 07:07:20', NULL, NULL, 'danny.nguyen@beyondedge.co', 1, 'Danny Nguyen', NULL, 1, 0, '2023-03-10 11:16:15', 2, NULL, NULL, NULL, 'Danny Nguyen danny.nguyen@beyondedge.co  ACTIVE System Administrator 2023-03-10 11:16:14.564', NULL, NULL, NULL, 'Danny', 'Nguyen'),
	(6, '2022-12-05 07:13:38', NULL, NULL, 'admin@beyondedge.com.sg', 1, 'Chris Client', NULL, 1, 0, '2023-03-15 06:13:45', 3, NULL, NULL, NULL, 'Chris Client admin@beyondedge.com.sg  ACTIVE Obligor User 2023-03-15 06:13:45.386', NULL, NULL, NULL, 'Chris', 'Client'),
	(7, '2022-08-26 03:40:55', NULL, NULL, 'bryant.mai@beyondedge.co', 1, 'Bryant Mai', NULL, 1, 0, '2023-03-20 06:45:19', 29, NULL, NULL, NULL, 'Bryant Mai bryant.mai@beyondedge.co  ACTIVE Super System Admin 2023-03-20 06:45:19.141', NULL, NULL, NULL, 'Bryant', 'Mai'),
	(8, '2023-03-16 04:53:50', NULL, NULL, 'kay.do1@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do1@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay', 'Do'),
	(9, '2023-03-16 06:16:26', NULL, NULL, 'kay.do.rosewood@yopmail.com', 1, 'Kay Do', NULL, 1, 0, '2023-03-16 06:35:59', 3, NULL, NULL, NULL, 'Kay Do kay.do.rosewood@yopmail.com  ACTIVE Obligor User 2023-03-16 06:35:58.96', NULL, NULL, NULL, 'Kay', 'Do'),
	(10, '2023-03-16 06:22:50', NULL, NULL, 'kay.do.rosewood1@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.rosewood1@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay', 'Do'),
	(11, '2023-02-27 06:29:55', NULL, NULL, 'harry.pham@beyondedge.co', 1, 'Harry Pham', NULL, 1, 0, '2023-03-20 08:01:27', 7, NULL, NULL, NULL, 'Harry Pham harry.pham@beyondedge.co  ACTIVE Super System Admin 2023-03-20 08:01:27.145', NULL, NULL, NULL, 'Harry', 'Pham'),
	(12, '2023-02-27 06:28:52', NULL, NULL, 'genos.nguyen@beyondedge.co', 1, 'Genos Nguyen', NULL, 1, 0, '2023-03-20 08:04:06', 26, NULL, NULL, NULL, 'Genos Nguyen genos.nguyen@beyondedge.co  ACTIVE Super System Admin 2023-03-20 08:04:06.244', NULL, NULL, NULL, 'Genos', 'Nguyen'),
	(13, '2023-03-16 07:09:52', NULL, NULL, 'kay.do.rosewood2@yopmail.com', 1, 'Kay do', NULL, 1, 0, '2023-03-16 07:15:06', 1, NULL, NULL, NULL, 'Kay do kay.do.rosewood2@yopmail.com  ACTIVE Obligor User 2023-03-16 07:15:06.346', NULL, NULL, NULL, 'Kay', 'do'),
	(14, '2023-03-16 07:10:54', NULL, NULL, 'kay.do.rosewood3@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.rosewood3@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay', 'do'),
	(15, '2023-03-16 07:17:03', NULL, NULL, 'kay.do.rosewood4@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.rosewood4@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'VInce', 'Vo'),
	(16, '2023-03-16 08:36:50', NULL, NULL, 'kay.do.rosewood5@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.rosewood5@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'james', 'Pham'),
	(17, '2023-03-16 09:36:17', NULL, NULL, 'kay.do.rosewood6@yopmail.com', 1, 'Kay Do 123', NULL, 1, 0, '2023-03-16 09:37:44', 2, NULL, NULL, NULL, 'Kay Do 123 kay.do.rosewood6@yopmail.com  ACTIVE Obligor User 2023-03-16 09:37:44.381', NULL, NULL, NULL, 'Kay Do', '123'),
	(18, '2023-03-16 10:23:30', NULL, NULL, 'andrew.nguyen@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.nguyen@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Andrew', 'Nguyen'),
	(19, '2023-03-16 10:23:46', NULL, NULL, 'andrew.test@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.test@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Andrew', 'Test'),
	(20, '2023-03-16 10:23:57', NULL, NULL, 'andrew.test1@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.test1@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Andrew', 'Test1'),
	(21, '2023-03-16 10:28:05', NULL, NULL, 'andrew.nguyen1@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.nguyen1@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Andrew', 'Nguyen'),
	(22, '2023-03-16 10:28:19', NULL, NULL, 'andrew.nguyen3@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.nguyen3@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'andrew', 'nguyen3'),
	(23, '2023-03-16 10:28:36', NULL, NULL, 'andrew.test33@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.test33@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'andrew', 'test33'),
	(24, '2023-03-16 10:29:38', NULL, NULL, 'andrew.nguyen3333@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' andrew.nguyen3333@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'andrew', 'nguyen3333'),
	(25, '2023-03-17 02:54:59', NULL, NULL, 'truongngan1203@gmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' truongngan1203@gmail.com  ACTIVE  ', NULL, NULL, NULL, 'Haha', 'Hihi'),
	(26, '2023-03-17 03:27:58', NULL, NULL, 'genos.nguyen@yopmail.com', 1, 'Genos Nguyen', NULL, 1, 0, '2023-03-20 04:16:46', 12, NULL, NULL, NULL, 'Genos Nguyen genos.nguyen@yopmail.com  ACTIVE Obligor User 2023-03-20 04:16:45.672', NULL, NULL, NULL, 'Genos', 'Nguyen'),
	(27, '2023-03-18 07:39:55', NULL, NULL, 'harry.pham@gmail.co', 1, 'HarryPham', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'HarryPham harry.pham@gmail.co  ACTIVE  ', NULL, NULL, NULL, 'Harry', 'Pham'),
	(28, '2023-03-18 07:41:35', NULL, NULL, 'kuvite@mailinator.com', 1, 'Laborum praesentium Qui possimus in et ', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Laborum praesentium Qui possimus in et  kuvite@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Laborum praesentium ', 'Qui possimus in et '),
	(29, '2023-03-18 07:42:21', NULL, NULL, 'vewu@mailinator.com', 1, 'Sint nesciunt conseOmnis incidunt non ', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Sint nesciunt conseOmnis incidunt non  vewu@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Sint nesciunt conse', 'Omnis incidunt non '),
	(30, '2023-03-18 07:42:31', NULL, NULL, 'hajygezi@mailinator.com', 1, 'Deleniti odit nostruSunt ea sed doloremq', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Deleniti odit nostruSunt ea sed doloremq hajygezi@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Deleniti odit nostru', 'Sunt ea sed doloremq'),
	(31, '2023-03-18 07:42:39', NULL, NULL, 'lytadedu@mailinator.com', 1, 'Quibusdam reprehendeArchitecto aut qui e', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Quibusdam reprehendeArchitecto aut qui e lytadedu@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Quibusdam reprehende', 'Architecto aut qui e'),
	(32, '2023-03-18 07:42:51', NULL, NULL, 'xuwyqiv@mailinator.com', 1, 'Quo cum consequaturDo cupiditate sint ', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Quo cum consequaturDo cupiditate sint  xuwyqiv@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Quo cum consequatur', 'Do cupiditate sint '),
	(33, '2023-03-18 07:42:59', NULL, NULL, 'fuwared@mailinator.com', 1, 'Porro nobis libero mUt dolores non et qu', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Porro nobis libero mUt dolores non et qu fuwared@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Porro nobis libero m', 'Ut dolores non et qu'),
	(34, '2023-03-18 07:43:07', NULL, NULL, 'geguv@mailinator.com', 1, 'Nisi deserunt id corUt natus obcaecati e', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Nisi deserunt id corUt natus obcaecati e geguv@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Nisi deserunt id cor', 'Ut natus obcaecati e'),
	(35, '2023-03-18 08:03:19', NULL, NULL, 'mocegineh@mailinator.com', 1, 'Nostrud nulla doloreEnim consectetur qu', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Nostrud nulla doloreEnim consectetur qu mocegineh@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Nostrud nulla dolore', 'Enim consectetur qu'),
	(36, '2023-03-18 08:03:25', NULL, NULL, 'kodub@mailinator.com', 1, 'Temporibus ad enim eQuod quis occaecat m', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Temporibus ad enim eQuod quis occaecat m kodub@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Temporibus ad enim e', 'Quod quis occaecat m'),
	(37, '2023-03-18 08:03:32', NULL, NULL, 'mumamakecy@mailinator.com', 1, 'Eaque deleniti dolorEst est tempore al', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Eaque deleniti dolorEst est tempore al mumamakecy@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Eaque deleniti dolor', 'Est est tempore al'),
	(38, '2023-03-18 08:03:39', NULL, NULL, 'qymenunoqe@mailinator.com', 1, 'Eligendi sed pariatuCulpa ut eius ipsum', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Eligendi sed pariatuCulpa ut eius ipsum qymenunoqe@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Eligendi sed pariatu', 'Culpa ut eius ipsum'),
	(39, '2023-03-18 08:04:55', NULL, NULL, 'huvym@mailinator.com', 1, 'Temporibus quas cupiSit laudantium quis', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Temporibus quas cupiSit laudantium quis huvym@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Temporibus quas cupi', 'Sit laudantium quis'),
	(40, '2023-03-18 08:05:01', NULL, NULL, 'miki@mailinator.com', 1, 'Voluptate sunt eveniCorporis laborum Es', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Voluptate sunt eveniCorporis laborum Es miki@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Voluptate sunt eveni', 'Corporis laborum Es'),
	(41, '2023-03-18 08:05:14', NULL, NULL, 'puri@mailinator.com', 1, 'Reiciendis quia omniNon modi tempor inci', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Reiciendis quia omniNon modi tempor inci puri@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Reiciendis quia omni', 'Non modi tempor inci'),
	(42, '2023-03-18 08:05:26', NULL, NULL, 'laje@mailinator.com', 1, 'Suscipit praesentiumOccaecat quibusdam o', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Suscipit praesentiumOccaecat quibusdam o laje@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Suscipit praesentium', 'Occaecat quibusdam o'),
	(43, '2023-03-18 08:39:38', NULL, NULL, 'nosutadem@mailinator.com', 1, 'Ea cupidatat minim eQuis distinctio Aut', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'Ea cupidatat minim eQuis distinctio Aut nosutadem@mailinator.com  ACTIVE  ', NULL, NULL, NULL, 'Ea cupidatat minim e', 'Quis distinctio Aut'),
	(44, '2023-03-18 09:13:43', NULL, NULL, '2412@xn--g-ufa', 1, '23423435', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, '23423435 2412@xn--g-ufa  ACTIVE  ', NULL, NULL, NULL, '234', '23435'),
	(45, '2023-03-18 09:16:25', NULL, NULL, '1232@GMA', 1, 'HarryPham', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'HarryPham 1232@GMA  ACTIVE  ', NULL, NULL, NULL, 'Harry', 'Pham'),
	(46, '2023-03-20 03:42:42', NULL, NULL, 'kay.do.obligoruser@yopmail.com', 1, 'Kay Do', NULL, 1, 0, '2023-03-20 07:16:19', 14, NULL, NULL, NULL, 'Kay Do kay.do.obligoruser@yopmail.com  ACTIVE Obligor User 2023-03-20 07:16:18.567', NULL, NULL, NULL, 'Kay', 'Do'),
	(47, '2023-03-20 04:00:48', NULL, NULL, 'kay.do.obligoruser1@yopmail.com', 1, 'kay Do', NULL, 1, 0, '2023-03-20 06:44:25', 3, NULL, NULL, NULL, 'kay Do kay.do.obligoruser1@yopmail.com  ACTIVE Obligor User 2023-03-20 06:44:25.486', NULL, NULL, NULL, 'kay', 'Do'),
	(48, '2023-03-20 04:05:21', NULL, NULL, '123@gmail.co', 1, 'HarryPham', NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 'HarryPham 123@gmail.co  ACTIVE  ', NULL, NULL, NULL, 'Harry', 'Pham'),
	(49, '2023-03-20 06:47:04', NULL, NULL, 'kay.do.obligoruser2@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.obligoruser2@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay 2222', 'Do 222'),
	(50, '2023-03-20 07:07:38', NULL, NULL, 'kay.do.zalo@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.zalo@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay Zalo', 'Do Zalo'),
	(51, '2023-03-20 07:08:15', NULL, NULL, 'kay.do.zalo1@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.zalo1@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay Zalo 1', 'Do Zalo 1'),
	(52, '2023-03-20 07:25:46', NULL, NULL, 'kay.do.zalo2@yopmail.com', 1, 'Kay Zalo Do Zalo', NULL, 1, 0, '2023-03-20 07:27:09', 1, NULL, NULL, NULL, 'Kay Zalo Do Zalo kay.do.zalo2@yopmail.com  ACTIVE Obligor User 2023-03-20 07:27:09.469', NULL, NULL, NULL, 'Kay Zalo', 'Do Zalo'),
	(53, '2023-03-20 07:28:02', NULL, NULL, 'kay.do.zalo3@yopmail.com', 1, 'Kay Do', NULL, 1, 0, '2023-03-20 07:28:55', 1, NULL, NULL, NULL, 'Kay Do kay.do.zalo3@yopmail.com  ACTIVE Obligor User 2023-03-20 07:28:54.539', NULL, NULL, NULL, 'Kay', 'Do'),
	(54, '2023-03-20 08:02:44', NULL, NULL, 'kay.do.zalo4@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.zalo4@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay Zalo 4', 'Do Zalo 4'),
	(55, '2023-03-20 08:03:20', NULL, NULL, 'kay.do.zalo5@yopmail.com', 1, 'Kay Do', NULL, 1, 0, '2023-03-20 08:13:49', 2, NULL, NULL, NULL, 'Kay Do kay.do.zalo5@yopmail.com  ACTIVE Obligor User 2023-03-20 08:13:48.967', NULL, NULL, NULL, 'Kay', 'Do'),
	(56, '2023-03-20 08:07:08', NULL, NULL, 'kay.do.zalo6@yopmail.com', 1, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, ' kay.do.zalo6@yopmail.com  ACTIVE  ', NULL, NULL, NULL, 'Kay Do 6', 'Kay Do 6');
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
