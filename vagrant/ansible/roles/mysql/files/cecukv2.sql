
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table area_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `area_sections`;

CREATE TABLE `area_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `area_sections` WRITE;
/*!40000 ALTER TABLE `area_sections` DISABLE KEYS */;

INSERT INTO `area_sections` (`id`, `title`, `body`, `area_id`, `area_slug`, `created_at`, `updated_at`)
VALUES
	(1,'NEED PRAYER?','<p>Please ring the Prayer Line on</p>\r\n\r\n<p>01634 844230 or 07800806688 and leave a message.</p>\r\n\r\n<p>UNWELL, NEED HELP OR A VISIT?<br />\r\nEmail: pastoral.care@cec4u.co.uk &hellip;..OR<br />\r\nPhone: 01634 865393 and leave message, name and phone number.</p>\r\n',1,NULL,'2014-12-12 14:28:15','2014-12-17 08:04:16'),
	(2,'Pastor David Hadlum, Senior Pastor','<p>It gives me great pleasure to welcome you to our website. We are a Christian Church who love Jesus and our community. This can be best summed up in the following... Jesus said: &quot; &#39;Love the Lord your God with all your heart and with all your soul and with all your mind.&#39; This is the first and greatest commandment. And the second is like it: &#39;Love your neighbour as yourself&#39;.&quot; Matthew 22v36-39.</p>\r\n\r\n<p>I would like to personally invite you to come join us for one of our meetings. We are committed to leading people on a life changing journey to become fully devoted followers of Jesus Christ.</p>\r\n\r\n<p>If you need prayer, please visit our contact page, post your request and you can be sure we will pray for you.</p>\r\n',2,NULL,'2014-12-12 14:28:15','2014-12-17 07:59:40'),
	(4,'WE ARE','<ul>\r\n	<li>Pentecostal Christian Church</li>\r\n	<li>Family Church</li>\r\n	<li>Community Church</li>\r\n</ul>\r\n',3,'we-are','2014-12-12 14:28:15','2014-12-17 08:01:15'),
	(5,'WE BELIEVE','<ul>\r\n	<li>Jesus Christ is God</li>\r\n	<li>Jesus died for our sins</li>\r\n	<li>Jesus Christ is alive</li>\r\n	<li>Jesus Christ will return</li>\r\n</ul>\r\n',3,'we-believe','2014-12-12 14:28:15','2014-12-17 08:01:35'),
	(6,'WHAT WE DO','<ul>\r\n	<li>Gather to worship Jesus</li>\r\n	<li>Encourage one another</li>\r\n	<li>Grow together in the Christian faith</li>\r\n	<li>Go into our community to help and share</li>\r\n</ul>\r\n',3,'we-do','2014-12-12 14:28:15','2014-12-17 08:02:01');

/*!40000 ALTER TABLE `area_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `global` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;

INSERT INTO `areas` (`id`, `name`, `title`, `global`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'sidebar','Sidebar',0,NULL,'2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(2,'pastor-welcome','Pastor Welcome Message',0,NULL,'2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(3,'index-middle','Middle',0,NULL,'2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(4,'above-footer','Above Footer',0,NULL,'2014-12-12 14:28:15','2014-12-12 14:28:15');

/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `display_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;

INSERT INTO `banners` (`id`, `user_id`, `description`, `file_name`, `deleted_at`, `created_at`, `updated_at`, `display_order`)
VALUES
	(1,1,'Quia voluptas provident commodi omnis.','foo.jpg','2014-12-18 13:42:20','2014-12-12 14:28:16','2014-12-18 13:42:20',1),
	(2,1,'<p>FIND OUT MORE ABOUT OUR WEEKLY MEETINGS</p>\r\n','meetings.jpg',NULL,'2014-12-18 13:53:46','2014-12-18 13:53:46',0),
	(3,1,'<p>SERVING OUR COMMUNITY, FIND OUT MORE...</p>\r\n','food_bank.jpg',NULL,'2014-12-18 13:54:44','2014-12-18 13:54:44',0),
	(4,1,'<p>CHRISTMAS SHOEBOXES 2014</p>\r\n','christmas_shoeboxes_2014.jpg',NULL,'2014-12-18 13:55:31','2014-12-18 13:55:31',0),
	(5,1,'<p>2014 CAROL SERVICES</p>\r\n','2014_carol_services.jpg',NULL,'2014-12-18 13:58:22','2014-12-18 13:58:22',0);

/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `ministry_id` tinyint(4) NOT NULL DEFAULT '0',
  `enable_booking` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;

INSERT INTO `events` (`id`, `title`, `body`, `date_start`, `date_end`, `deleted_at`, `banner_id`, `ministry_id`, `enable_booking`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,'Welcome to this event','This is a general event for the church',1419069600,1419078600,NULL,NULL,1,0,'nadia74','2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(2,'Another general church event','This is another general church event',1419271200,1419280200,NULL,NULL,1,0,'pbernier','2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(3,'Youth Event','Welcome to the youth event',1419454800,1419462000,NULL,NULL,2,0,'haag.conrad','2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(4,'Men\'s Curry night','Come and have a taste of curry!',1419850800,1419856200,NULL,NULL,5,0,'effie11','2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(5,'Special Prayer Meeting','Prayer meeting for everyone',1419955200,1419962400,NULL,NULL,1,0,'jamey98','2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(6,'Christmas Day Service','<p>Come join us celebrate on Christmas day</p>\r\n',1419505200,1419510600,NULL,0,1,0,'stevepop','2014-12-16 08:04:10','2014-12-16 08:04:42');

/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;

INSERT INTO `files` (`id`, `user_id`, `description`, `file_name`, `type`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'Test','cecsite.pdf','pdf',NULL,'2014-12-16 08:02:29','2014-12-16 08:02:29');

/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ministry_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `user_id`, `ministry_id`, `description`, `file_name`, `image_path`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'test','pic1.jpg','general','2014-12-17 21:30:50','2014-12-16 07:59:23','2014-12-17 21:30:50'),
	(2,1,10,'<p>Andrew and Shirley Coombs</p>\r\n\r\n<p>Rainham</p>\r\n','andrew_and_ shirley_ coombs.jpg','house-groups',NULL,'2014-12-17 23:15:08','2014-12-17 23:15:08'),
	(3,1,10,'<p>Ken and Wendy Amah</p>\r\n\r\n<p>Rochester</p>\r\n','ken_and_wendy_amah.jpg','house-groups',NULL,'2014-12-17 23:24:40','2014-12-17 23:24:40'),
	(4,1,10,'<p>Len and Wendy Carter</p>\r\n\r\n<p>Rochester Street, Chatham</p>\r\n','len_and_wendy_carter.jpg','house-groups',NULL,'2014-12-17 23:31:48','2014-12-17 23:31:48'),
	(5,1,10,'<p>Joshua and Sandra Kporha</p>\r\n\r\n<p>Boundary Road, Chatham</p>\r\n','joshua_and_sandra_ kporha.jpg','house-groups',NULL,'2014-12-17 23:32:39','2014-12-17 23:32:39'),
	(6,1,10,'<p>Steve and Maria Popoola</p>\r\n\r\n<p>Peacock Rise, Walderslade</p>\r\n','steve_and_maria_popoola.jpg','house-groups',NULL,'2014-12-17 23:33:22','2014-12-17 23:33:22'),
	(7,1,10,'<p>Roger and Laura Edmonds</p>\r\n\r\n<p>Parkwood, Rainham</p>\r\n','roger_and_laura_edmonds.jpg','house-groups',NULL,'2014-12-17 23:33:47','2014-12-17 23:33:47'),
	(8,1,10,'<p>Mick and Val Groombridge</p>\r\n\r\n<p>Lordswood</p>\r\n','mick_and_val_groombridge.jpg','house-groups',NULL,'2014-12-17 23:34:07','2014-12-17 23:34:07'),
	(9,1,10,'<p>Peter and Ruth Friday</p>\r\n\r\n<p>Wilson Avenue, Chatham</p>\r\n','peter_and_ruth_friday.jpg','house-groups',NULL,'2014-12-17 23:34:29','2014-12-17 23:34:29'),
	(10,1,10,'<p>Caroline Bradley</p>\r\n\r\n<p>Curlew Crescent, Strood</p>\r\n','caroline_bradley.jpg','house-groups',NULL,'2014-12-17 23:34:54','2014-12-17 23:34:54'),
	(11,1,10,'<p>Paul and Inez Robinson</p>\r\n\r\n<p>Berkely Close, Rochester</p>\r\n','paul_and_Inez_robinson.jpg','house-groups',NULL,'2014-12-17 23:35:20','2014-12-17 23:35:20');

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_09_22_072048_create_ministry_table',1),
	('2014_09_25_063639_create_section_table',1),
	('2014_09_27_142230_create_areas_table',1),
	('2014_09_29_121511_create_area_sections_table',1),
	('2014_09_29_121904_create_events_table',1),
	('2014_10_10_073133_create_users_table',1),
	('2014_10_16_071210_create_password_reminders_table',1),
	('2014_10_23_122150_create_banners_table',1),
	('2014_10_29_152059_add_display_order_to-banners_table',1),
	('2014_11_05_081129_create_images_table',1),
	('2014_11_07_084755_create_files_table',1),
	('2014_12_11_170224_create_pages_table',1),
	('2014_12_12_141508_add_ministry_id_to_pages_table',2),
	('2014_12_15_094954_add_deleted_at_to_ministries',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ministries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ministries`;

CREATE TABLE `ministries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ministries_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ministries` WRITE;
/*!40000 ALTER TABLE `ministries` DISABLE KEYS */;

INSERT INTO `ministries` (`id`, `name`, `description`, `email_contact`, `deleted`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'General','General ministry of Chatham Evangelical Church','info@cec4u.co.uk',0,'2014-12-12 14:28:16','2014-12-15 08:35:01',NULL),
	(2,'Inspire Youth Group','CEC Youth Ministry ','youth@cec.co.uk',0,'2014-12-12 14:28:16','2014-12-15 08:38:43',NULL),
	(3,'Children Ministry','Dolor eligendi optio perspiciatis repellat similique tenetur voluptatibus.','clay09@example.com',0,'2014-12-12 14:28:16','2014-12-12 14:28:16',NULL),
	(4,'Horizons','Eius officia quia repudiandae ad nobis modi quidem.','lorine.hudson@example.net',0,'2014-12-12 14:28:16','2014-12-12 14:28:16',NULL),
	(5,'Men Ministry','Et dolores reprehenderit pariatur minus eum.','ken23@example.com',0,'2014-12-12 14:28:16','2014-12-12 14:28:16',NULL),
	(6,'Women Ministry','Mollitia sit officiis est voluptate eos atque ut.','bonnie.feil@example.com',0,'2014-12-12 14:28:16','2014-12-12 14:28:16',NULL),
	(8,'Cyber Cafe','This ministry offers the feee use of the internet to those who need it to get information on jobs and services','info@cec4u.co.uk',0,'2014-12-15 08:46:21','2014-12-15 09:53:54',NULL),
	(9,'Prayer Group','The Prayer Ministry of the Church','info@cec4u.co.uk',0,'2014-12-15 08:46:21','2014-12-15 09:53:54',NULL),
	(10,'House Groups','Members meet in various house centres around Medway','info@cec4u.co.uk',0,'2014-12-15 08:46:21','2014-12-15 09:53:54',NULL),
	(11,'Food Bank','This ministry assists in providing food to the poor and less privileged','info@cec4u.co.uk',0,'2014-12-15 08:46:21','2014-12-15 09:53:54',NULL);

/*!40000 ALTER TABLE `ministries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_sections`;

CREATE TABLE `page_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_content` longtext COLLATE utf8_unicode_ci,
  `deleted_at` datetime DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `page_sections` WRITE;
/*!40000 ALTER TABLE `page_sections` DISABLE KEYS */;

INSERT INTO `page_sections` (`id`, `section_title`, `section_content`, `deleted_at`, `page_id`, `created_at`, `updated_at`)
VALUES
	(1,'Inspire Youth Group (Youth Ministry)','<p>We are a group of young people aged 11-18.</p>\r\n\r\n<p>Every Friday night at 7:30pm at our Church building on Ordnance Street in Chatham, the young people get together.</p>\r\n\r\n<p>There is fun and friendship. There are regular social trips out and about and annual summer events.</p>\r\n\r\n<p>At regular Sunday morning meetings there is a dedicated Bible study for the youth.</p>\r\n\r\n<p>&ldquo;Don&rsquo;t let anyone look down on you because you are young, but set an example for the believers in speech, in love, in faith and in purity.&rdquo; &ndash; 1 Timothy 4:12</p>\r\n',NULL,4,'2014-12-12 14:28:15','2014-12-17 13:42:48'),
	(2,'Children Ministry','<p>The Children&#39;s Ministry takes care of children aged 3-11 comprising Eaglets, 3-6 years and Eagles (6-11 years ) meet every Sunday morning.</p>\r\n\r\n<p>They sing &amp; study, dance &amp; draw and play &amp; pray! All Children&rsquo;s activities are overseen by an employed Children&rsquo;s worker and children&rsquo;s safety and care is paramount.</p>\r\n\r\n<p>There are also holiday clubs and special party days through the year. &ldquo;When Jesus saw this, he was indignant. He said to them &lsquo;Let the little children come to me, and do not hinder them, for the kingdom of God belongs to such as these.&rsquo;&rdquo; &ndash; Mark 10:14</p>\r\n',NULL,5,'2014-12-12 14:28:15','2014-12-17 13:43:17'),
	(3,'Youth Ministry','We are a group of young people aged 11-18 – Every Friday night at 7:30pm at our Church building on Ordnance Street in Chatham the young people get together. There is fun and friendship. \n\nThere are regular social trips out and about and annual summer events. At regular Sunday morning meetings there is a dedicated Bible study for the youth. \n\n“Don’t let anyone look down on you because you are young, but set an example for the believers in speech, in love, in faith and in purity.” – 1 Timothy 4:12',NULL,2,'2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(5,'Horisons (Over 60s)','<p>Horizons is a fellowship of older people (60+) They meet every month for a time of food and fellowship.</p>\r\n\r\n<p>There are frequent guest speakers and musical performances.</p>\r\n',NULL,6,'2014-12-12 14:28:15','2014-12-17 13:43:43'),
	(6,'Men Ministry','<p>The men of CEC meet together to eat and encourage one another.</p>\r\n\r\n<p>There are breakfast and curry nights - as well as the occasional game of cricket! CEC holds a 1-day conference for men periodically.</p>\r\n\r\n<p>&ldquo;Be on your guard; stand firm in the faith; be men of courage; be strong. Do everything in love.&rdquo; &ndash; 1 Corinthians 15:13-14</p>\r\n',NULL,7,'2014-12-12 14:28:15','2014-12-17 13:40:20'),
	(8,'Women Ministry','<p>The women of CEC meet together each week on a Thursday morning for fellowship and a Bible study.</p>\r\n\r\n<p>They also have monthly prayer meetings and host an inspiring annual conference in the spring.</p>\r\n\r\n<p>&ldquo;So do not be ashamed to testify about our Lord&hellip;.who has saved us and called us to a holy life&hellip;..because of his own purpose and grace&hellip;..Yet I am not ashamed , because I know whom I have believed, and am convinced that he is able to guard what I have entrusted to him for that day.&rdquo; 2 Timothy 1:8-12</p>\r\n',NULL,8,'2014-12-12 14:28:15','2014-12-17 13:44:25'),
	(9,'Cyber Cafe','<p>CEC have a Cyber Caf&eacute; in the Church building on Ordnance Street.</p>\r\n\r\n<p>This is open during the week. Anyone is free to drop in and use the computers and have a cup of tea/coffee.</p>\r\n',NULL,9,'2014-12-12 14:28:15','2014-12-17 13:44:58'),
	(10,'Prayer Ministry','<p>Every Thursday evening at 8pm the Church meet together to pray. We also have monthly half-nights of prayer on Friday nights.</p>\r\n\r\n<p>We pray for ourselves, for our Church, for our community, for the nations and for the persecuted Church. God hears our prayers and God answers our prayers.</p>\r\n\r\n<p>&ldquo;Do not be anxious about anything, but in everything by prayer and petition, with thanksgiving, present your requests to God&rdquo; &ndash; Philippians 4:6</p>\r\n',NULL,10,'2014-12-12 14:28:15','2014-12-17 13:45:53'),
	(11,'House Groups','<p>&quot;And day by day continuing with one mind in the temple, and breaking bread from house to house, they were taking their meals together with gladness and sincerity of heart, praising God, and having favor with all the people.</p>\r\n\r\n<p>And the Lord was adding to their number day by day those who were being saved&quot; (Acts 2:46-47).</p>\r\n\r\n<p>Every other Tuesday, small groups meet in homes across Medway.</p>\r\n\r\n<p>House groups provide a more informal way to meet people, to study the Bible and to pray. They are a highly valued aspect of Church life.</p>\r\n\r\n<p>Why not join in? If you need to know where the closest house group to you is, go to our contact page and contact us from the various options provided.</p>\r\n\r\n<p>Scheduled meeting dates are as follows:</p>\r\n\r\n<ul>\r\n	<li>9th December 2014</li>\r\n	<li>23rd December 2014</li>\r\n</ul>\r\n',NULL,11,'2014-12-12 14:28:15','2014-12-17 13:49:04'),
	(12,'Food bank','<p>CEC is a Foodbank centre. Foodbank provides emergency food and support to those experiencing a crisis.</p>\r\n',NULL,12,'2014-12-12 14:28:15','2014-12-17 13:46:40'),
	(13,'Who we ARE','<p>&ldquo;Love the Lord your God with all your heart and with all your soul and with all your mind&hellip;..Love your neighbour as yourself.&rdquo; &ndash; Matthew 22:37-39</p>\r\n\r\n<p>Chatham Evangelical Church (CEC) is part of the Assemblies of God group of churches.</p>\r\n\r\n<p>There are around 600 such churches in Great Britain. We are Pentecostal Christians, which means that we believe that EVERYONE can have a personal experience and relationship with God.</p>\r\n\r\n<p>You too can know and have the fullness of life that can only be found through Jesus Christ. CEC is a family friendly and family focused Church, where individuals of all ages and backgrounds can join together.</p>\r\n\r\n<p>We have fun and support one another through life&rsquo;s ups and downs. We know that God answers prayer in the 21st century and we pray for each other, for our community and for the nations.</p>\r\n\r\n<p>We are a part of our local community and have been located near Chatham train station for around 50 years. We regularly join together with other churches in Medway for various events and are passionate about God bringing about positive change in the lives of individuals in the Medway towns.</p>\r\n',NULL,1,'2014-12-12 14:28:15','2014-12-17 08:34:49'),
	(14,'What we DO','<p>&ldquo;They devoted themselves to the apostles&rsquo; teaching and to the fellowship, to the breaking of bread and to prayer.&rdquo; &ndash; Acts 2:42</p>\r\n\r\n<p><strong>We GATHER</strong> together to worship Jesus and encourage one another. We gather together in various groups, in various ways and in various places through the week.</p>\r\n\r\n<p>When we gather together we have a focus on worshiping Jesus Christ and on encouraging and getting to know one another. We gather together as a whole church on Sunday morning, Sunday evening and on Thursday evening.</p>\r\n\r\n<p>There are specific groups, activities and events for all, regardless of age, gender, background and where you live. Every week we pray together and fellowship together.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>We GROW</strong> stronger in the Christian faith. We do this by reading and studying the Bible and applying the teaching of the Bible to our lives.</p>\r\n\r\n<p>God speaks, guides, directs and comforts us all each week. Every week we preach the teaching of the Bible and break bread together to remind us that Jesus is God and that he has died in our place for the wrong we have done.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>We GO</strong> into our community to help and share. Each of us is part of a local community and we all have a responsibility to be and live the good news message of Jesus Christ in our families, in our streets, in our schools, in our workplaces and wherever else we go.</p>\r\n\r\n<p>As a Church we seek to help those around us with their need, sharing what we have with them.</p>\r\n',NULL,1,'2014-12-12 14:28:15','2014-12-17 08:25:20'),
	(15,'What we BELIEVE','<p>&ldquo;For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.&rdquo; &ndash; John 3:16</p>\r\n\r\n<p><strong>We believe </strong>that Jesus Christ is God. There is no other God. You must believe that Jesus Christ is God to be saved from eternal punishment and death.</p>\r\n\r\n<p><strong>We believe</strong> that Jesus Christ made a way for all to know him personally. He took our sin and wrong-doing upon himself and died on a cross for us. You must believe that Jesus Christ died to make you right before God to have a life that is full and a life that will never end.</p>\r\n\r\n<p><strong>We believe</strong> that the Bible is the Word of God and is the primary way in which God speaks to men and women. The Bible is never wrong or out-of-date and is useful for all aspects of life and faith.</p>\r\n\r\n<p><strong>We believe</strong> that there is one God.</p>\r\n\r\n<p><strong>We believe</strong> that God is alive and continually active in our lives and on the earth. God has revealed himself to men and women in three persons &ndash; God the Father, God the Son and God the Holy Spirit.</p>\r\n\r\n<p><strong>We believe</strong> that Jesus Christ came to earth to rescue men and women and was born of a virgin &ndash; Mary.</p>\r\n\r\n<p><strong>We believe</strong> that Jesus Christ lived a perfect life doing many miraculous signs and wonders, before dying in our place on a cross. On the third day Jesus Christ rose to life and later that he went up to heaven. Jesus Christ will return and will judge every man and woman.</p>\r\n\r\n<p><strong>We believe</strong> that all men and women have sinned and done wrong and therefore fall short of the standards of God.</p>\r\n\r\n<p><strong>We believe</strong> that Jesus Christ died in our place for the wrong that we have done. He was buried and then rose to life again on the third day. Through Jesus Christ dying in our place, the penalty price for our sin has been paid.</p>\r\n\r\n<p><strong>We believe</strong> that when you believe in who Jesus is, and what he has done that you will be born-again. This happens immediately through the work of the Holy Spirit.</p>\r\n\r\n<p><strong>We believe</strong> that all those who believe in Jesus Christ should be baptised in water.</p>\r\n\r\n<p><strong>We believe</strong> that all those who believe in Jesus Christ should be baptised in the Holy Spirit. The Holy Spirit will equip you and enable you to be the person that God wants you to be and do the things that God wants you to do. Evidence that you have received the Holy Spirit is that you will be able to speak in other languages as the Holy Spirit enables.</p>\r\n\r\n<p><strong>We believe</strong> that the gifts of the Holy Spirit are in operation today. For example, we believe that God does heal us of many sicknesses and diseases and that this Jesus Christ provided this for us when he died on the cross.</p>\r\n\r\n<p><strong>We believe</strong> that as believers in Jesus Christ we should live a holy life in obedience to God in accordance with the Bible.</p>\r\n\r\n<p><strong>We believe</strong> that believers in Jesus Christ should regularly break bread. We do this by eating bread as a reminder of Jesus&rsquo; body which was GIVEN for us, and then by drinking wine/juice as a reminder of Jesus&rsquo; blood which was poured out for us.</p>\r\n\r\n<p><strong>We believe</strong> that all believers will not perish, but have eternal life. We will have a new body, one that does not fade or break and will live with God forever. Those that do not believe in Jesus Christ will suffer eternal punishment and eternal separation from God.</p>\r\n',NULL,1,'2014-12-12 14:28:15','2014-12-17 08:28:43'),
	(16,'Sunday Morning Meetings','11:00AM\n\nFort Pitt - School Hall (Enter through reception)\nFort Pitt Hill Chatham\nKent\nME4 6TJ',NULL,3,'2014-12-12 14:28:15','2014-12-12 14:28:15'),
	(17,'Sunday Evening Meetings','6:30PM\n\nChatham Evangelical Church\nOrdnance Street Chatham\nKent\nME4 6SE',NULL,3,'2014-12-12 14:28:15','2014-12-12 14:28:15');

/*!40000 ALTER TABLE `page_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ministry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `slug`, `title`, `description`, `updated_by`, `created_at`, `updated_at`, `ministry_id`)
VALUES
	(1,'about-us','About Us','This page contains information  about Chatham Evangelical Church','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',1),
	(2,'contact-us','Contact Us','This page contains the contact form','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',1),
	(3,'meeting-times','Our Meeting Times','CEC Meeting times page','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',1),
	(4,'youth','Inspire Youth Group','Inspire Youth Group','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',2),
	(5,'children','Children Ministry','Children Ministry','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',3),
	(6,'horizons','Horizons Page','Horizons Page','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',4),
	(7,'men','Men Ministry','Men Ministry','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',5),
	(8,'women','Women Ministry','Women Ministry','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',6),
	(9,'cyber-cafe','Cyber Cafe','Cyber Cafe Ministry','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',8),
	(10,'prayer-group','Prayer Group','Prayer Group','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',9),
	(11,'house-groups','House Groups','House Groups','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',10),
	(12,'food-bank','Food Bank','Food Bank','admin','2014-12-12 14:28:15','2014-12-12 14:28:15',11);

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reminders`;

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `phone`, `is_active`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Steve','Popoola','stevepop','stevepop@gmail.com','07508328212',1,'$2y$10$.crRMtibUcoV0ZiB1xnNxu8/WXlbmqNXsKdbg6KydwuUfz.G2xSLy',NULL,'2014-12-12 14:28:16','2014-12-12 14:28:16'),
	(2,'Luke','Parkinson','luke','mail@lukeparkinson.com','07500000000',1,'$2y$10$4VbgvCtI36RYMHqFsAsGa.TWbE5E9XS5oqWc1xrwyJ1shKFX/zjJm',NULL,'2014-12-12 14:28:16','2014-12-12 14:28:16');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
