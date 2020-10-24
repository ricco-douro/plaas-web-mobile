CREATE TABLE IF NOT EXISTS `#__osmembership_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(50) DEFAULT NULL,
  `config_value` text,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `#__osmembership_countries` ;
CREATE TABLE `#__osmembership_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`),
  KEY `idx_country_name` (`name`)
) DEFAULT CHARSET=utf8;
INSERT INTO `#__osmembership_countries` (`country_id`, `zone_id`, `name`, `country_3_code`, `country_2_code`, `published`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 1),
(2, 1, 'Albania', 'ALB', 'AL', 1),
(3, 1, 'Algeria', 'DZA', 'DZ', 1),
(4, 1, 'American Samoa', 'ASM', 'AS', 1),
(5, 1, 'Andorra', 'AND', 'AD', 1),
(6, 1, 'Angola', 'AGO', 'AO', 1),
(7, 1, 'Anguilla', 'AIA', 'AI', 1),
(8, 1, 'Antarctica', 'ATA', 'AQ', 1),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 1),
(10, 1, 'Argentina', 'ARG', 'AR', 1),
(11, 1, 'Armenia', 'ARM', 'AM', 1),
(12, 1, 'Aruba', 'ABW', 'AW', 1),
(13, 1, 'Australia', 'AUS', 'AU', 1),
(14, 1, 'Austria', 'AUT', 'AT', 1),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 1),
(16, 1, 'Bahamas', 'BHS', 'BS', 1),
(17, 1, 'Bahrain', 'BHR', 'BH', 1),
(18, 1, 'Bangladesh', 'BGD', 'BD', 1),
(19, 1, 'Barbados', 'BRB', 'BB', 1),
(20, 1, 'Belarus', 'BLR', 'BY', 1),
(21, 1, 'Belgium', 'BEL', 'BE', 1),
(22, 1, 'Belize', 'BLZ', 'BZ', 1),
(23, 1, 'Benin', 'BEN', 'BJ', 1),
(24, 1, 'Bermuda', 'BMU', 'BM', 1),
(25, 1, 'Bhutan', 'BTN', 'BT', 1),
(26, 1, 'Bolivia', 'BOL', 'BO', 1),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 1),
(28, 1, 'Botswana', 'BWA', 'BW', 1),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 1),
(30, 1, 'Brazil', 'BRA', 'BR', 1),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 1),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 1),
(33, 1, 'Bulgaria', 'BGR', 'BG', 1),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 1),
(35, 1, 'Burundi', 'BDI', 'BI', 1),
(36, 1, 'Cambodia', 'KHM', 'KH', 1),
(37, 1, 'Cameroon', 'CMR', 'CM', 1),
(38, 1, 'Canada', 'CAN', 'CA', 1),
(39, 1, 'Cape Verde', 'CPV', 'CV', 1),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 1),
(41, 1, 'Central African Republic', 'CAF', 'CF', 1),
(42, 1, 'Chad', 'TCD', 'TD', 1),
(43, 1, 'Chile', 'CHL', 'CL', 1),
(44, 1, 'China', 'CHN', 'CN', 1),
(45, 1, 'Christmas Island', 'CXR', 'CX', 1),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 1),
(47, 1, 'Colombia', 'COL', 'CO', 1),
(48, 1, 'Comoros', 'COM', 'KM', 1),
(49, 1, 'Congo', 'COG', 'CG', 1),
(50, 1, 'Cook Islands', 'COK', 'CK', 1),
(51, 1, 'Costa Rica', 'CRI', 'CR', 1),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI', 1),
(53, 1, 'Croatia', 'HRV', 'HR', 1),
(54, 1, 'Cuba', 'CUB', 'CU', 1),
(55, 1, 'Cyprus', 'CYP', 'CY', 1),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 1),
(57, 1, 'Denmark', 'DNK', 'DK', 1),
(58, 1, 'Djibouti', 'DJI', 'DJ', 1),
(59, 1, 'Dominica', 'DMA', 'DM', 1),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 1),
(61, 1, 'East Timor', 'TMP', 'TP', 1),
(62, 1, 'Ecuador', 'ECU', 'EC', 1),
(63, 1, 'Egypt', 'EGY', 'EG', 1),
(64, 1, 'El Salvador', 'SLV', 'SV', 1),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 1),
(66, 1, 'Eritrea', 'ERI', 'ER', 1),
(67, 1, 'Estonia', 'EST', 'EE', 1),
(68, 1, 'Ethiopia', 'ETH', 'ET', 1),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 1),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 1),
(71, 1, 'Fiji', 'FJI', 'FJ', 1),
(72, 1, 'Finland', 'FIN', 'FI', 1),
(73, 1, 'France', 'FRA', 'FR', 1),
(74, 1, 'France, Metropolitan', 'FXX', 'FX', 1),
(75, 1, 'French Guiana', 'GUF', 'GF', 1),
(76, 1, 'French Polynesia', 'PYF', 'PF', 1),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 1),
(78, 1, 'Gabon', 'GAB', 'GA', 1),
(79, 1, 'Gambia', 'GMB', 'GM', 1),
(80, 1, 'Georgia', 'GEO', 'GE', 1),
(81, 1, 'Germany', 'DEU', 'DE', 1),
(82, 1, 'Ghana', 'GHA', 'GH', 1),
(83, 1, 'Gibraltar', 'GIB', 'GI', 1),
(84, 1, 'Greece', 'GRC', 'GR', 1),
(85, 1, 'Greenland', 'GRL', 'GL', 1),
(86, 1, 'Grenada', 'GRD', 'GD', 1),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 1),
(88, 1, 'Guam', 'GUM', 'GU', 1),
(89, 1, 'Guatemala', 'GTM', 'GT', 1),
(90, 1, 'Guinea', 'GIN', 'GN', 1),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 1),
(92, 1, 'Guyana', 'GUY', 'GY', 1),
(93, 1, 'Haiti', 'HTI', 'HT', 1),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 1),
(95, 1, 'Honduras', 'HND', 'HN', 1),
(96, 1, 'Hong Kong', 'HKG', 'HK', 1),
(97, 1, 'Hungary', 'HUN', 'HU', 1),
(98, 1, 'Iceland', 'ISL', 'IS', 1),
(99, 1, 'India', 'IND', 'IN', 1),
(100, 1, 'Indonesia', 'IDN', 'ID', 1),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 1),
(102, 1, 'Iraq', 'IRQ', 'IQ', 1),
(103, 1, 'Ireland', 'IRL', 'IE', 1),
(104, 1, 'Israel', 'ISR', 'IL', 1),
(105, 1, 'Italy', 'ITA', 'IT', 1),
(106, 1, 'Jamaica', 'JAM', 'JM', 1),
(107, 1, 'Japan', 'JPN', 'JP', 1),
(108, 1, 'Jordan', 'JOR', 'JO', 1),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 1),
(110, 1, 'Kenya', 'KEN', 'KE', 1),
(111, 1, 'Kiribati', 'KIR', 'KI', 1),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP', 1),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 1),
(114, 1, 'Kuwait', 'KWT', 'KW', 1),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 1),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA', 1),
(117, 1, 'Latvia', 'LVA', 'LV', 1),
(118, 1, 'Lebanon', 'LBN', 'LB', 1),
(119, 1, 'Lesotho', 'LSO', 'LS', 1),
(120, 1, 'Liberia', 'LBR', 'LR', 1),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY', 1),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 1),
(123, 1, 'Lithuania', 'LTU', 'LT', 1),
(124, 1, 'Luxembourg', 'LUX', 'LU', 1),
(125, 1, 'Macau', 'MAC', 'MO', 1),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 1),
(127, 1, 'Madagascar', 'MDG', 'MG', 1),
(128, 1, 'Malawi', 'MWI', 'MW', 1),
(129, 1, 'Malaysia', 'MYS', 'MY', 1),
(130, 1, 'Maldives', 'MDV', 'MV', 1),
(131, 1, 'Mali', 'MLI', 'ML', 1),
(132, 1, 'Malta', 'MLT', 'MT', 1),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 1),
(134, 1, 'Martinique', 'MTQ', 'MQ', 1),
(135, 1, 'Mauritania', 'MRT', 'MR', 1),
(136, 1, 'Mauritius', 'MUS', 'MU', 1),
(137, 1, 'Mayotte', 'MYT', 'YT', 1),
(138, 1, 'Mexico', 'MEX', 'MX', 1),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 1),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 1),
(141, 1, 'Monaco', 'MCO', 'MC', 1),
(142, 1, 'Mongolia', 'MNG', 'MN', 1),
(143, 1, 'Montserrat', 'MSR', 'MS', 1),
(144, 1, 'Morocco', 'MAR', 'MA', 1),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 1),
(146, 1, 'Myanmar', 'MMR', 'MM', 1),
(147, 1, 'Namibia', 'NAM', 'NA', 1),
(148, 1, 'Nauru', 'NRU', 'NR', 1),
(149, 1, 'Nepal', 'NPL', 'NP', 1),
(150, 1, 'Netherlands', 'NLD', 'NL', 1),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 1),
(152, 1, 'New Caledonia', 'NCL', 'NC', 1),
(153, 1, 'New Zealand', 'NZL', 'NZ', 1),
(154, 1, 'Nicaragua', 'NIC', 'NI', 1),
(155, 1, 'Niger', 'NER', 'NE', 1),
(156, 1, 'Nigeria', 'NGA', 'NG', 1),
(157, 1, 'Niue', 'NIU', 'NU', 1),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 1),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 1),
(160, 1, 'Norway', 'NOR', 'NO', 1),
(161, 1, 'Oman', 'OMN', 'OM', 1),
(162, 1, 'Pakistan', 'PAK', 'PK', 1),
(163, 1, 'Palau', 'PLW', 'PW', 1),
(164, 1, 'Panama', 'PAN', 'PA', 1),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 1),
(166, 1, 'Paraguay', 'PRY', 'PY', 1),
(167, 1, 'Peru', 'PER', 'PE', 1),
(168, 1, 'Philippines', 'PHL', 'PH', 1),
(169, 1, 'Pitcairn', 'PCN', 'PN', 1),
(170, 1, 'Poland', 'POL', 'PL', 1),
(171, 1, 'Portugal', 'PRT', 'PT', 1),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 1),
(173, 1, 'Qatar', 'QAT', 'QA', 1),
(174, 1, 'Reunion', 'REU', 'RE', 1),
(175, 1, 'Romania', 'ROM', 'RO', 1),
(176, 1, 'Russian Federation', 'RUS', 'RU', 1),
(177, 1, 'Rwanda', 'RWA', 'RW', 1),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 1),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 1),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 1),
(181, 1, 'Samoa', 'WSM', 'WS', 1),
(182, 1, 'San Marino', 'SMR', 'SM', 1),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 1),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 1),
(185, 1, 'Senegal', 'SEN', 'SN', 1),
(186, 1, 'Seychelles', 'SYC', 'SC', 1),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 1),
(188, 1, 'Singapore', 'SGP', 'SG', 1),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK', 1),
(190, 1, 'Slovenia', 'SVN', 'SI', 1),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 1),
(192, 1, 'Somalia', 'SOM', 'SO', 1),
(193, 1, 'South Africa', 'ZAF', 'ZA', 1),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 1),
(195, 1, 'Spain', 'ESP', 'ES', 1),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 1),
(197, 1, 'St. Helena', 'SHN', 'SH', 1),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 1),
(199, 1, 'Sudan', 'SDN', 'SD', 1),
(200, 1, 'Suriname', 'SUR', 'SR', 1),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 1),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 1),
(203, 1, 'Sweden', 'SWE', 'SE', 1),
(204, 1, 'Switzerland', 'CHE', 'CH', 1),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 1),
(206, 1, 'Taiwan', 'TWN', 'TW', 1),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 1),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 1),
(209, 1, 'Thailand', 'THA', 'TH', 1),
(210, 1, 'Togo', 'TGO', 'TG', 1),
(211, 1, 'Tokelau', 'TKL', 'TK', 1),
(212, 1, 'Tonga', 'TON', 'TO', 1),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 1),
(214, 1, 'Tunisia', 'TUN', 'TN', 1),
(215, 1, 'Turkey', 'TUR', 'TR', 1),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 1),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 1),
(218, 1, 'Tuvalu', 'TUV', 'TV', 1),
(219, 1, 'Uganda', 'UGA', 'UG', 1),
(220, 1, 'Ukraine', 'UKR', 'UA', 1),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 1),
(222, 1, 'United Kingdom', 'GBR', 'GB', 1),
(223, 1, 'United States', 'USA', 'US', 1),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 1),
(225, 1, 'Uruguay', 'URY', 'UY', 1),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 1),
(227, 1, 'Vanuatu', 'VUT', 'VU', 1),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 1),
(229, 1, 'Venezuela', 'VEN', 'VE', 1),
(230, 1, 'Viet Nam', 'VNM', 'VN', 1),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 1),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 1),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 1),
(234, 1, 'Western Sahara', 'ESH', 'EH', 1),
(235, 1, 'Yemen', 'YEM', 'YE', 1),
(236, 1, 'Serbia', 'SRB', 'RS', 1),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC', 1),
(238, 1, 'Zambia', 'ZMB', 'ZM', 1),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 1),
(240, 1, 'East Timor', 'XET', 'XE', 1),
(241, 1, 'Jersey', 'XJE', 'XJ', 1),
(242, 1, 'St. Barthelemy', 'XSB', 'XB', 1),
(243, 1, 'St. Eustatius', 'XSE', 'XU', 1),
(244, 1, 'Canary Islands', 'XCA', 'XC', 1),
(245, 1, 'Montenegro', 'MNE', 'ME', 1);
CREATE TABLE IF NOT EXISTS `#__osmembership_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `coupon_type` tinyint(3) unsigned DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `published` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 ;
CREATE TABLE IF NOT EXISTS `#__osmembership_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `field_type` tinyint(3) unsigned DEFAULT NULL,
  `required` tinyint(3) unsigned DEFAULT NULL,
  `values` text,
  `default_values` text,
  `rows` tinyint(3) unsigned DEFAULT NULL,
  `cols` tinyint(3) unsigned DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `css_class` varchar(50) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(3) unsigned DEFAULT NULL,
  `datatype_validation` tinyint(4) NOT NULL DEFAULT '0',
  `field_mapping` varchar(50) DEFAULT NULL,
  `is_core` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Core field',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `#__osmembership_field_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `field_value` text,
  PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `#__osmembership_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subscription_length` int(11) NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT NULL,
  `short_description` tinytext,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `enable_cancel` tinyint(3) unsigned DEFAULT NULL,
  `cancel_before_number_days` int(11) DEFAULT NULL,
  `params` text,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(3) unsigned DEFAULT NULL,
  `send_first_reminder` tinyint(4) NOT NULL DEFAULT '0',
  `send_second_reminder` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `#__osmembership_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `author_email` varchar(50) DEFAULT NULL,
  `author_url` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `params` text,
  `ordering` int(11) DEFAULT NULL,
  `published` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `#__osmembership_renewrates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `number_days` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8 ;
CREATE TABLE IF NOT EXISTS `#__osmembership_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `comment` text,
  `created_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `gross_amount` decimal(10,2) DEFAULT NULL,
  `subscription_code` varchar(20) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `act` varchar(10) DEFAULT NULL,
  `from_subscription_id` int(11) NOT NULL DEFAULT '0',
  `renew_option_id` int(11) NOT NULL DEFAULT '0',
  `upgrade_option_id` int(11) NOT NULL DEFAULT '0',
  `first_reminder_sent` tinyint(4) NOT NULL DEFAULT '0',
  `second_reminder_sent` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)DEFAULT CHARSET=utf8 ;
CREATE TABLE IF NOT EXISTS `#__osmembership_upgraderules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_plan_id` tinyint(3) unsigned DEFAULT NULL,
  `to_plan_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `min_presence` int(11) DEFAULT NULL,
  `max_presence` int(11) DEFAULT NULL,
  `published` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 ;
CREATE TABLE IF NOT EXISTS `#__osmembership_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `description` TEXT NULL,
  `published` TINYINT UNSIGNED NULL,
  PRIMARY KEY(`id`)
) DEFAULT CHARSET=utf8 ;
DROP TABLE IF EXISTS `#__osmembership_currencies`;
CREATE TABLE `#__osmembership_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(10) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 ;
INSERT INTO `#__osmembership_currencies` (`id`, `currency_code`, `currency_name`) VALUES
(1, 'CAD', 'Canadian Dollars'),
(2, 'EUR', 'Euros'),
(3, 'GBP', 'Pounds Sterling'),
(4, 'USD', 'U.S. Dollars'),
(5, 'JPY', 'Japanese Yen'),
(6, 'AUD', 'Australian Dollars'),
(7, 'NZD', 'New Zealand Dollars'),
(8, 'CHF', 'Swiss Francs'),
(9, 'HKD', 'Hong Kong Dollars'),
(10, 'SGD', 'Singapore Dollars'),
(11, 'SEK', 'Swedish Kronor'),
(12, 'DKK', 'Danish Kroner'),
(13, 'PLN', 'Polish Zloty'),
(14, 'NOK', 'Norwegian Kroner'),
(15, 'HUF', 'Hungarian Forint'),
(16, 'CZK', 'Czech Koruna'),
(17, 'ILS', 'Israeli Shekel'),
(18, 'BRL', 'Brazilian Real'),
(19, 'MYR', 'Malaysian Ringgit'),
(20, 'MXN', 'Mexican Peso'),
(21, 'PHP', 'Philippine Peso'),
(22, 'TWD', 'Taiwan New Dollar'),
(23, 'THB', 'Thai Baht'),
(24, 'RUB', 'Russian Rubles');
CREATE TABLE IF NOT EXISTS `#__osmembership_renewaldiscounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `number_days` int(11) NOT NULL DEFAULT '0',
  `discount_type` tinyint(4) NOT NULL DEFAULT '0',
  `discount_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) CHARACTER SET `utf8`;
