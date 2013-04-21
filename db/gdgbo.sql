-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-04-2013 a las 03:56:18
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gdgbo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_level`
--

CREATE TABLE IF NOT EXISTS `academic_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `academic_level`
--

INSERT INTO `academic_level` (`id`, `name`) VALUES
(1, 'Técnico Medio'),
(2, 'Técnico Superior'),
(3, 'Licenciatura'),
(4, 'Maestría'),
(5, 'Doctorado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=189 ;

--
-- Volcado de datos para la tabla `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, '', NULL, 'controllers', 1, 372),
(2, 1, '', NULL, 'Attachments', 2, 13),
(3, 2, '', NULL, 'admin_index', 3, 4),
(4, 2, '', NULL, 'admin_add', 5, 6),
(5, 2, '', NULL, 'admin_edit', 7, 8),
(6, 2, '', NULL, 'admin_delete', 9, 10),
(7, 2, '', NULL, 'admin_browse', 11, 12),
(8, 1, '', NULL, 'Blocks', 14, 29),
(9, 8, '', NULL, 'admin_index', 15, 16),
(10, 8, '', NULL, 'admin_add', 17, 18),
(11, 8, '', NULL, 'admin_edit', 19, 20),
(12, 8, '', NULL, 'admin_delete', 21, 22),
(13, 8, '', NULL, 'admin_moveup', 23, 24),
(14, 8, '', NULL, 'admin_movedown', 25, 26),
(15, 8, '', NULL, 'admin_process', 27, 28),
(16, 1, '', NULL, 'Comments', 30, 45),
(17, 16, '', NULL, 'admin_index', 31, 32),
(18, 16, '', NULL, 'admin_edit', 33, 34),
(19, 16, '', NULL, 'admin_delete', 35, 36),
(20, 16, '', NULL, 'admin_process', 37, 38),
(21, 16, '', NULL, 'index', 39, 40),
(22, 16, '', NULL, 'add', 41, 42),
(23, 16, '', NULL, 'delete', 43, 44),
(24, 1, '', NULL, 'Contacts', 46, 57),
(25, 24, '', NULL, 'admin_index', 47, 48),
(26, 24, '', NULL, 'admin_add', 49, 50),
(27, 24, '', NULL, 'admin_edit', 51, 52),
(28, 24, '', NULL, 'admin_delete', 53, 54),
(29, 24, '', NULL, 'view', 55, 56),
(30, 1, '', NULL, 'Filemanager', 58, 79),
(31, 30, '', NULL, 'admin_index', 59, 60),
(32, 30, '', NULL, 'admin_browse', 61, 62),
(33, 30, '', NULL, 'admin_editfile', 63, 64),
(34, 30, '', NULL, 'admin_upload', 65, 66),
(35, 30, '', NULL, 'admin_delete_file', 67, 68),
(36, 30, '', NULL, 'admin_delete_directory', 69, 70),
(37, 30, '', NULL, 'admin_rename', 71, 72),
(38, 30, '', NULL, 'admin_create_directory', 73, 74),
(39, 30, '', NULL, 'admin_create_file', 75, 76),
(40, 30, '', NULL, 'admin_chmod', 77, 78),
(41, 1, '', NULL, 'Languages', 80, 95),
(42, 41, '', NULL, 'admin_index', 81, 82),
(43, 41, '', NULL, 'admin_add', 83, 84),
(44, 41, '', NULL, 'admin_edit', 85, 86),
(45, 41, '', NULL, 'admin_delete', 87, 88),
(46, 41, '', NULL, 'admin_moveup', 89, 90),
(47, 41, '', NULL, 'admin_movedown', 91, 92),
(48, 41, '', NULL, 'admin_select', 93, 94),
(49, 1, '', NULL, 'Links', 96, 111),
(50, 49, '', NULL, 'admin_index', 97, 98),
(51, 49, '', NULL, 'admin_add', 99, 100),
(52, 49, '', NULL, 'admin_edit', 101, 102),
(53, 49, '', NULL, 'admin_delete', 103, 104),
(54, 49, '', NULL, 'admin_moveup', 105, 106),
(55, 49, '', NULL, 'admin_movedown', 107, 108),
(56, 49, '', NULL, 'admin_process', 109, 110),
(57, 1, '', NULL, 'Menus', 112, 121),
(58, 57, '', NULL, 'admin_index', 113, 114),
(59, 57, '', NULL, 'admin_add', 115, 116),
(60, 57, '', NULL, 'admin_edit', 117, 118),
(61, 57, '', NULL, 'admin_delete', 119, 120),
(62, 1, '', NULL, 'Messages', 122, 131),
(63, 62, '', NULL, 'admin_index', 123, 124),
(64, 62, '', NULL, 'admin_edit', 125, 126),
(65, 62, '', NULL, 'admin_delete', 127, 128),
(66, 62, '', NULL, 'admin_process', 129, 130),
(67, 1, '', NULL, 'Nodes', 132, 161),
(68, 67, '', NULL, 'admin_index', 133, 134),
(69, 67, '', NULL, 'admin_create', 135, 136),
(70, 67, '', NULL, 'admin_add', 137, 138),
(71, 67, '', NULL, 'admin_edit', 139, 140),
(72, 67, '', NULL, 'admin_update_paths', 141, 142),
(73, 67, '', NULL, 'admin_delete', 143, 144),
(74, 67, '', NULL, 'admin_delete_meta', 145, 146),
(75, 67, '', NULL, 'admin_add_meta', 147, 148),
(76, 67, '', NULL, 'admin_process', 149, 150),
(77, 67, '', NULL, 'index', 151, 152),
(78, 67, '', NULL, 'term', 153, 154),
(79, 67, '', NULL, 'promoted', 155, 156),
(80, 67, '', NULL, 'search', 157, 158),
(81, 67, '', NULL, 'view', 159, 160),
(82, 1, '', NULL, 'Regions', 162, 171),
(83, 82, '', NULL, 'admin_index', 163, 164),
(84, 82, '', NULL, 'admin_add', 165, 166),
(85, 82, '', NULL, 'admin_edit', 167, 168),
(86, 82, '', NULL, 'admin_delete', 169, 170),
(87, 1, '', NULL, 'Roles', 172, 181),
(88, 87, '', NULL, 'admin_index', 173, 174),
(89, 87, '', NULL, 'admin_add', 175, 176),
(90, 87, '', NULL, 'admin_edit', 177, 178),
(91, 87, '', NULL, 'admin_delete', 179, 180),
(92, 1, '', NULL, 'Settings', 182, 201),
(93, 92, '', NULL, 'admin_dashboard', 183, 184),
(94, 92, '', NULL, 'admin_index', 185, 186),
(95, 92, '', NULL, 'admin_view', 187, 188),
(96, 92, '', NULL, 'admin_add', 189, 190),
(97, 92, '', NULL, 'admin_edit', 191, 192),
(98, 92, '', NULL, 'admin_delete', 193, 194),
(99, 92, '', NULL, 'admin_prefix', 195, 196),
(100, 92, '', NULL, 'admin_moveup', 197, 198),
(101, 92, '', NULL, 'admin_movedown', 199, 200),
(102, 1, '', NULL, 'Terms', 202, 217),
(103, 102, '', NULL, 'admin_index', 203, 204),
(104, 102, '', NULL, 'admin_add', 205, 206),
(105, 102, '', NULL, 'admin_edit', 207, 208),
(106, 102, '', NULL, 'admin_delete', 209, 210),
(107, 102, '', NULL, 'admin_moveup', 211, 212),
(108, 102, '', NULL, 'admin_movedown', 213, 214),
(109, 102, '', NULL, 'admin_process', 215, 216),
(110, 1, '', NULL, 'Types', 218, 227),
(111, 110, '', NULL, 'admin_index', 219, 220),
(112, 110, '', NULL, 'admin_add', 221, 222),
(113, 110, '', NULL, 'admin_edit', 223, 224),
(114, 110, '', NULL, 'admin_delete', 225, 226),
(115, 1, '', NULL, 'Users', 228, 275),
(116, 115, '', NULL, 'admin_index', 229, 230),
(117, 115, '', NULL, 'admin_add', 231, 232),
(118, 115, '', NULL, 'admin_edit', 233, 234),
(119, 115, '', NULL, 'admin_reset_password', 235, 236),
(120, 115, '', NULL, 'admin_delete', 237, 238),
(121, 115, '', NULL, 'admin_login', 239, 240),
(122, 115, '', NULL, 'admin_logout', 241, 242),
(123, 115, '', NULL, 'index', 243, 244),
(124, 115, '', NULL, 'add', 245, 246),
(125, 115, '', NULL, 'activate', 247, 248),
(126, 115, '', NULL, 'edit', 249, 250),
(127, 115, '', NULL, 'forgot', 251, 252),
(128, 115, '', NULL, 'reset', 253, 254),
(129, 115, '', NULL, 'login', 255, 256),
(130, 115, '', NULL, 'logout', 257, 258),
(131, 115, '', NULL, 'view', 259, 260),
(132, 1, '', NULL, 'Vocabularies', 276, 289),
(133, 132, '', NULL, 'admin_index', 277, 278),
(134, 132, '', NULL, 'admin_add', 279, 280),
(135, 132, '', NULL, 'admin_edit', 281, 282),
(136, 132, '', NULL, 'admin_delete', 283, 284),
(137, 1, '', NULL, 'AclAcos', 290, 299),
(138, 137, '', NULL, 'admin_index', 291, 292),
(139, 137, '', NULL, 'admin_add', 293, 294),
(140, 137, '', NULL, 'admin_edit', 295, 296),
(141, 137, '', NULL, 'admin_delete', 297, 298),
(142, 1, '', NULL, 'AclActions', 300, 313),
(143, 142, '', NULL, 'admin_index', 301, 302),
(144, 142, '', NULL, 'admin_add', 303, 304),
(145, 142, '', NULL, 'admin_edit', 305, 306),
(146, 142, '', NULL, 'admin_delete', 307, 308),
(147, 142, '', NULL, 'admin_move', 309, 310),
(148, 142, '', NULL, 'admin_generate', 311, 312),
(149, 1, '', NULL, 'AclAros', 314, 323),
(150, 149, '', NULL, 'admin_index', 315, 316),
(151, 149, '', NULL, 'admin_add', 317, 318),
(152, 149, '', NULL, 'admin_edit', 319, 320),
(153, 149, '', NULL, 'admin_delete', 321, 322),
(154, 1, '', NULL, 'AclPermissions', 324, 329),
(155, 154, '', NULL, 'admin_index', 325, 326),
(156, 154, '', NULL, 'admin_toggle', 327, 328),
(159, 1, '', NULL, 'ExtensionsHooks', 330, 335),
(160, 159, '', NULL, 'admin_index', 331, 332),
(161, 159, '', NULL, 'admin_toggle', 333, 334),
(162, 1, '', NULL, 'ExtensionsLocales', 336, 347),
(163, 162, '', NULL, 'admin_index', 337, 338),
(164, 162, '', NULL, 'admin_activate', 339, 340),
(165, 162, '', NULL, 'admin_add', 341, 342),
(166, 162, '', NULL, 'admin_edit', 343, 344),
(167, 162, '', NULL, 'admin_delete', 345, 346),
(168, 1, '', NULL, 'ExtensionsPlugins', 348, 357),
(169, 168, '', NULL, 'admin_index', 349, 350),
(170, 168, '', NULL, 'admin_add', 351, 352),
(171, 168, '', NULL, 'admin_delete', 353, 354),
(172, 1, '', NULL, 'ExtensionsThemes', 358, 371),
(173, 172, '', NULL, 'admin_index', 359, 360),
(174, 172, '', NULL, 'admin_activate', 361, 362),
(175, 172, '', NULL, 'admin_add', 363, 364),
(176, 172, '', NULL, 'admin_editor', 365, 366),
(177, 172, '', NULL, 'admin_save', 367, 368),
(178, 172, '', NULL, 'admin_delete', 369, 370),
(179, 115, NULL, NULL, 'quiz', 261, 262),
(180, 115, NULL, NULL, 'getDepto', 263, 264),
(181, 115, NULL, NULL, 'getIndustry', 265, 266),
(182, 115, NULL, NULL, 'getAcademicLevel', 267, 268),
(183, 115, NULL, NULL, 'getOcupations', 269, 270),
(184, 115, NULL, NULL, 'getTechCareers', 271, 272),
(185, 115, NULL, NULL, 'getLanguages', 273, 274),
(186, 132, NULL, NULL, 'admin_moveup', 285, 286),
(187, 132, NULL, NULL, 'admin_movedown', 287, 288),
(188, 168, NULL, NULL, 'admin_toggle', 355, 356);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, '', 1, 4),
(2, NULL, 'Role', 2, '', 5, 6),
(3, NULL, 'Role', 3, '', 7, 8),
(4, 1, 'User', 1, NULL, 2, 3),
(5, NULL, 'User', 2, NULL, 9, 10),
(6, NULL, 'User', 3, NULL, 11, 12),
(7, NULL, 'User', 4, NULL, 13, 14),
(8, NULL, 'User', 5, NULL, 15, 16),
(9, NULL, 'User', 6, NULL, 17, 18),
(10, NULL, 'User', 7, NULL, 19, 20),
(11, NULL, 'User', 8, NULL, 21, 22),
(12, NULL, 'User', 9, NULL, 23, 24),
(13, NULL, 'User', 10, NULL, 25, 26),
(14, NULL, 'User', 11, NULL, 27, 28),
(15, NULL, 'User', 12, NULL, 29, 30),
(16, NULL, 'User', 13, NULL, 31, 32),
(17, NULL, 'User', 14, NULL, 33, 34),
(18, NULL, 'User', 15, NULL, 35, 36),
(19, NULL, 'User', 16, NULL, 37, 38),
(20, NULL, 'User', 17, NULL, 39, 40),
(21, NULL, 'User', 18, NULL, 41, 42),
(22, NULL, 'User', 19, NULL, 43, 44),
(23, NULL, 'User', 20, NULL, 45, 46),
(24, NULL, 'User', 21, NULL, 47, 48),
(25, NULL, 'User', 22, NULL, 49, 50),
(26, NULL, 'User', 23, NULL, 51, 52),
(27, NULL, 'User', 24, NULL, 53, 54),
(28, NULL, 'User', 25, NULL, 55, 56),
(29, NULL, 'User', 26, NULL, 57, 58),
(30, NULL, 'User', 27, NULL, 59, 60),
(31, NULL, 'User', 28, NULL, 61, 62),
(32, NULL, 'User', 29, NULL, 63, 64),
(33, NULL, 'User', 30, NULL, 65, 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 2, 23, '1', '1', '1', '1'),
(2, 2, 22, '1', '1', '1', '1'),
(3, 2, 21, '1', '1', '1', '1'),
(4, 3, 21, '1', '1', '1', '1'),
(5, 3, 22, '1', '1', '1', '1'),
(6, 2, 29, '1', '1', '1', '1'),
(7, 3, 29, '1', '1', '1', '1'),
(8, 2, 77, '1', '1', '1', '1'),
(9, 2, 78, '1', '1', '1', '1'),
(10, 2, 79, '1', '1', '1', '1'),
(11, 2, 80, '1', '1', '1', '1'),
(12, 2, 81, '1', '1', '1', '1'),
(13, 3, 77, '1', '1', '1', '1'),
(14, 3, 78, '1', '1', '1', '1'),
(15, 3, 79, '1', '1', '1', '1'),
(16, 3, 80, '1', '1', '1', '1'),
(17, 3, 81, '1', '1', '1', '1'),
(18, 2, 123, '1', '1', '1', '1'),
(19, 3, 124, '1', '1', '1', '1'),
(20, 3, 125, '1', '1', '1', '1'),
(21, 2, 126, '1', '1', '1', '1'),
(22, 3, 127, '1', '1', '1', '1'),
(23, 3, 128, '1', '1', '1', '1'),
(24, 3, 129, '1', '1', '1', '1'),
(25, 2, 130, '1', '1', '1', '1'),
(26, 2, 131, '1', '1', '1', '1'),
(27, 3, 131, '1', '1', '1', '1'),
(28, 2, 179, '1', '1', '1', '1'),
(29, 2, 180, '1', '1', '1', '1'),
(30, 2, 181, '1', '1', '1', '1'),
(31, 2, 182, '1', '1', '1', '1'),
(32, 2, 183, '1', '1', '1', '1'),
(33, 2, 184, '1', '1', '1', '1'),
(34, 2, 185, '1', '1', '1', '1'),
(35, 3, 185, '1', '1', '1', '1'),
(36, 3, 184, '1', '1', '1', '1'),
(37, 3, 183, '1', '1', '1', '1'),
(38, 3, 182, '1', '1', '1', '1'),
(39, 3, 181, '1', '1', '1', '1'),
(40, 3, 180, '1', '1', '1', '1'),
(41, 3, 179, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `blocks`
--

INSERT INTO `blocks` (`id`, `region_id`, `title`, `alias`, `body`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `updated`, `created`) VALUES
(3, 4, 'About', 'about', 'This is the content of your block. Can be modified in admin panel.', 1, '', 1, 2, '', '', '', '', '', '2009-12-20 03:07:39', '2009-07-26 17:13:14'),
(8, 4, 'Search', 'search', '', 0, '', 1, 1, 'search', '', '', '', '', '2009-12-20 03:07:39', '2009-12-20 03:07:27'),
(5, 4, 'Meta', 'meta', '[menu:meta]', 1, '', 1, 6, '', '', '', '', '', '2009-12-22 05:17:39', '2009-09-12 06:36:22'),
(6, 4, 'Blogroll', 'blogroll', '[menu:blogroll]', 1, '', 1, 4, '', '', '', '', '', '2009-12-20 03:07:33', '2009-09-12 23:33:27'),
(7, 4, 'Categories', 'categories', '[vocabulary:categories type="blog"]', 1, '', 1, 3, '', '', '', '', '', '2009-12-20 03:07:36', '2009-10-03 16:52:50'),
(9, 4, 'Recent Posts', 'recent_posts', '[node:recent_posts conditions="Node.type:blog" order="Node.id DESC" limit="5"]', 1, '', 1, 5, '', '', '', '', '', '2010-04-08 21:09:31', '2009-12-22 05:17:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `node_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `node_id`, `user_id`, `name`, `email`, `website`, `ip`, `title`, `body`, `rating`, `status`, `notify`, `type`, `comment_type`, `lft`, `rght`, `updated`, `created`) VALUES
(1, NULL, 1, 0, 'Mr Croogo', 'email@example.com', 'http://www.croogo.org', '127.0.0.1', '', 'Hi, this is the first comment.', NULL, 1, 0, 'blog', 'comment', 1, 2, '2009-12-25 12:00:00', '2009-12-25 12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `created`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'you@your-site.com', 1, 0, 0, 0, 0, 1, 1, '2009-10-07 22:07:49', '2009-09-16 01:45:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n`
--

CREATE TABLE IF NOT EXISTS `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industries`
--

CREATE TABLE IF NOT EXISTS `industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Volcado de datos para la tabla `industries`
--

INSERT INTO `industries` (`id`, `name`) VALUES
(1, 'Accounting'),
(2, 'Airlines/Aviation'),
(3, 'AlternativeDisputeResolution'),
(4, 'AlternativeMedicine'),
(5, 'Animation'),
(6, 'Apparel&amp;Fashion'),
(7, 'Architecture&amp;Planning'),
(8, 'ArtsandCrafts'),
(9, 'Automotive'),
(10, 'Aviation&amp;Aerospace'),
(11, 'Banking'),
(12, 'Biotechnology'),
(13, 'BroadcastMedia'),
(14, 'BuildingMaterials'),
(15, 'BusinessSuppliesandEquipment'),
(16, 'CapitalMarkets'),
(17, 'Chemicals'),
(18, 'Civic&amp;SocialOrganization'),
(19, 'CivilEngineering'),
(20, 'CommercialRealEstate'),
(21, 'Computer&amp;NetworkSecurity'),
(22, 'ComputerGames'),
(23, 'ComputerHardware'),
(24, 'ComputerNetworking'),
(25, 'ComputerSoftware'),
(26, 'Construction'),
(27, 'ConsumerElectronics'),
(28, 'ConsumerGoods'),
(29, 'ConsumerServices'),
(30, 'Cosmetics'),
(31, 'Dairy'),
(32, 'Defense&amp;Space'),
(33, 'Design'),
(34, 'EducationManagement'),
(35, 'E-Learning'),
(36, 'Electrical/ElectronicManufacturing'),
(37, 'Entertainment'),
(38, 'EnvironmentalServices'),
(39, 'EventsServices'),
(40, 'ExecutiveOffice'),
(41, 'FacilitiesServices'),
(42, 'Farming'),
(43, 'FinancialServices'),
(44, 'FineArt'),
(45, 'Fishery'),
(46, 'Food&amp;Beverages'),
(47, 'FoodProduction'),
(48, 'Fund-Raising'),
(49, 'Furniture'),
(50, 'Gambling&amp;Casinos'),
(51, 'Glass,Ceramics&amp;Concrete'),
(52, 'GovernmentAdministration'),
(53, 'GovernmentRelations'),
(54, 'GraphicDesign'),
(55, 'Health,WellnessandFitness'),
(56, 'HigherEducation'),
(57, 'Hospital&amp;HealthCare'),
(58, 'Hospitality'),
(59, 'HumanResources'),
(60, 'ImportandExport'),
(61, 'Individual&amp;FamilyServices'),
(62, 'IndustrialAutomation'),
(63, 'InformationServices'),
(64, 'InformationTechnologyandServices'),
(65, 'Insurance'),
(66, 'InternationalAffairs'),
(67, 'InternationalTradeandDevelopment'),
(68, 'Internet'),
(69, 'InvestmentBanking'),
(70, 'InvestmentManagement'),
(71, 'Judiciary'),
(72, 'LawEnforcement'),
(73, 'LawPractice'),
(74, 'LegalServices'),
(75, 'LegislativeOffice'),
(76, 'Leisure,Travel&amp;Tourism'),
(77, 'Libraries'),
(78, 'LogisticsandSupplyChain'),
(79, 'LuxuryGoods&amp;Jewelry'),
(80, 'Machinery'),
(81, 'ManagementConsulting'),
(82, 'Maritime'),
(83, 'MarketingandAdvertising'),
(84, 'MarketResearch'),
(85, 'MechanicalorIndustrialEngineering'),
(86, 'MediaProduction'),
(87, 'MedicalDevices'),
(88, 'MedicalPractice'),
(89, 'MentalHealthCare'),
(90, 'Military'),
(91, 'Mining&amp;Metals'),
(92, 'MotionPicturesandFilm'),
(93, 'MuseumsandInstitutions'),
(94, 'Music'),
(95, 'Nanotechnology'),
(96, 'Newspapers'),
(97, 'NonprofitOrganizationManagement'),
(98, 'Oil&amp;Energy'),
(99, 'OnlineMedia'),
(100, 'Outsourcing/Offshoring'),
(101, 'Package/FreightDelivery'),
(102, 'PackagingandContainers'),
(103, 'Paper&amp;ForestProducts'),
(104, 'PerformingArts'),
(105, 'Pharmaceuticals'),
(106, 'Philanthropy'),
(107, 'Photography'),
(108, 'Plastics'),
(109, 'PoliticalOrganization'),
(110, 'Primary/SecondaryEducation'),
(111, 'Printing'),
(112, 'ProfessionalTraining&amp;Coaching'),
(113, 'ProgramDevelopment'),
(114, 'PublicPolicy'),
(115, 'PublicRelationsandCommunications'),
(116, 'PublicSafety'),
(117, 'Publishing'),
(118, 'RailroadManufacture'),
(119, 'Ranching'),
(120, 'RealEstate'),
(121, 'RecreationalFacilitiesandServices'),
(122, 'ReligiousInstitutions'),
(123, 'Renewables&amp;Environment'),
(124, 'Research'),
(125, 'Restaurants'),
(126, 'Retail'),
(127, 'SecurityandInvestigations'),
(128, 'Semiconductors'),
(129, 'Shipbuilding'),
(130, 'SportingGoods'),
(131, 'Sports'),
(132, 'StaffingandRecruiting'),
(133, 'Supermarkets'),
(134, 'Telecommunications'),
(135, 'Textiles'),
(136, 'ThinkTanks'),
(137, 'Tobacco'),
(138, 'TranslationandLocalization'),
(139, 'Transportation/Trucking/Railroad'),
(140, 'Utilities'),
(141, 'VentureCapital&amp;PrivateEquity'),
(142, 'Veterinary'),
(143, 'Warehousing'),
(144, 'Wholesale'),
(145, 'WineandSpirits'),
(146, 'Wireless'),
(147, 'WritingandEditing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `created`) VALUES
(1, 'English', 'English', 'eng', 1, 1, '2009-11-02 21:37:38', '2009-11-02 20:52:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `links`
--

INSERT INTO `links` (`id`, `parent_id`, `menu_id`, `title`, `class`, `description`, `link`, `target`, `rel`, `status`, `lft`, `rght`, `visibility_roles`, `params`, `updated`, `created`) VALUES
(5, NULL, 4, 'About', 'about', '', 'controller:nodes/action:view/type:page/slug:about', '', '', 1, 3, 4, '', '', '2009-10-06 23:14:21', '2009-08-19 12:23:33'),
(6, NULL, 4, 'Contact', 'contact', '', 'controller:contacts/action:view/contact', '', '', 1, 5, 6, '', '', '2009-10-06 23:14:45', '2009-08-19 12:34:56'),
(7, NULL, 3, 'Home', 'home', '', '/', '', '', 1, 5, 6, '', '', '2009-10-06 21:17:06', '2009-09-06 21:32:54'),
(8, NULL, 3, 'About', 'about', '', '/about', '', '', 1, 7, 10, '', '', '2009-09-12 03:45:53', '2009-09-06 21:34:57'),
(9, 8, 3, 'Child link', 'child-link', '', '#', '', '', 0, 8, 9, '', '', '2009-10-06 23:13:06', '2009-09-12 03:52:23'),
(10, NULL, 5, 'Site Admin', 'site-admin', '', '/admin', '', '', 1, 1, 2, '', '', '2009-09-12 06:34:09', '2009-09-12 06:34:09'),
(11, NULL, 5, 'Log out', 'log-out', '', '/users/logout', '', '', 1, 7, 8, '["1","2"]', '', '2009-09-12 06:35:22', '2009-09-12 06:34:41'),
(12, NULL, 6, 'Croogo', 'croogo', '', 'http://www.croogo.org', '', '', 1, 3, 4, '', '', '2009-09-12 23:31:59', '2009-09-12 23:31:59'),
(14, NULL, 6, 'CakePHP', 'cakephp', '', 'http://www.cakephp.org', '', '', 1, 1, 2, '', '', '2009-10-07 03:25:25', '2009-09-12 23:38:43'),
(15, NULL, 3, 'Contact', 'contact', '', '/controller:contacts/action:view/contact', '', '', 1, 11, 12, '', '', '2009-09-16 07:54:13', '2009-09-16 07:53:33'),
(16, NULL, 5, 'Entries (RSS)', 'entries-rss', '', '/nodes/promoted.rss', '', '', 1, 3, 4, '', '', '2009-10-27 17:46:22', '2009-10-27 17:46:22'),
(17, NULL, 5, 'Comments (RSS)', 'comments-rss', '', '/comments.rss', '', '', 1, 5, 6, '', '', '2009-10-27 17:46:54', '2009-10-27 17:46:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_depto`
--

CREATE TABLE IF NOT EXISTS `location_depto` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `location_depto`
--

INSERT INTO `location_depto` (`id`, `name`) VALUES
('LP', 'La Paz'),
('OR', 'Oruro'),
('CB', 'Cochabamba'),
('SC', 'Santa Cruz'),
('PO', 'Potosi'),
('CH', 'Chuquisaca'),
('BE', 'Beni'),
('PA', 'Pando'),
('TA', 'Tarija');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `updated`, `created`) VALUES
(3, 'Main Menu', 'main', '', '', 1, NULL, 4, '', '2009-08-19 12:21:06', '2009-07-22 01:49:53'),
(4, 'Footer', 'footer', '', '', 1, NULL, 2, '', '2009-08-19 12:22:42', '2009-08-19 12:22:42'),
(5, 'Meta', 'meta', '', '', 1, NULL, 4, '', '2009-09-12 06:33:29', '2009-09-12 06:33:29'),
(6, 'Blogroll', 'blogroll', '', '', 1, NULL, 2, '', '2009-09-12 23:30:24', '2009-09-12 23:30:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `meta`
--

INSERT INTO `meta` (`id`, `model`, `foreign_key`, `key`, `value`, `weight`) VALUES
(1, 'Node', 1, 'meta_keywords', 'key1, key2', NULL),
(2, 'Node', 3, 'userName', 'Nombre', NULL),
(3, 'Node', 3, 'userLastName', 'Apellido', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `nodes`
--

INSERT INTO `nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `updated`, `created`) VALUES
(1, NULL, 1, 'Hello World', 'hello-world', '<p>Welcome to Croogo. This is your first post. You can edit or delete it from the admin panel.</p>', '', 1, '', 2, 1, 1, '/blog/hello-world', '{"1":"uncategorized"}', 0, 1, 2, '', 'blog', '2009-12-25 11:00:00', '2009-12-25 11:00:00'),
(2, NULL, 1, 'About', 'about', '<p>This is an example of a Croogo page, you could edit this to put information about yourself or your site.</p>', '', 1, '', 0, 0, 0, '/about', '', 0, 1, 2, '', 'page', '2009-12-25 22:00:00', '2009-12-25 22:00:00'),
(3, NULL, 1, 'Encuesta', 'encuesta', '<p>lalalalalalalal</p>', '', 1, NULL, 1, 0, 1, '/page/encuesta', NULL, 0, 3, 4, '', 'page', '2013-04-20 17:09:49', '2013-04-20 17:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodes_taxonomies`
--

CREATE TABLE IF NOT EXISTS `nodes_taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `node_id` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `nodes_taxonomies`
--

INSERT INTO `nodes_taxonomies` (`id`, `node_id`, `taxonomy_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupations`
--

CREATE TABLE IF NOT EXISTS `ocupations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ocupations`
--

INSERT INTO `ocupations` (`id`, `name`, `description`) VALUES
(1, 'Estudiante Vocacional/Tecnico', NULL),
(2, 'Estudiante Universitario', NULL),
(3, 'Empleado público', NULL),
(4, 'Empleado privado', NULL),
(5, 'Empleado en startup?', NULL),
(6, 'Profesional independiente', NULL),
(7, 'Emprendedor', NULL),
(8, 'Empresario', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `user_id` int(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_birth` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `twitter_account` varchar(255) DEFAULT NULL,
  `facebook_account` varchar(255) DEFAULT NULL,
  `google_account` varchar(255) DEFAULT NULL,
  `linkedin_account` varchar(255) DEFAULT NULL,
  `skype_account` varchar(255) NOT NULL,
  `years_experience` varchar(255) DEFAULT NULL,
  `have_kids` int(11) DEFAULT NULL,
  `work_life_balance` varchar(255) DEFAULT NULL,
  `greatest_challenge` varchar(255) DEFAULT NULL,
  `woman_barriers` int(11) DEFAULT NULL,
  `persue_career` text NOT NULL,
  `future_career` text NOT NULL,
  `stay_current` text NOT NULL,
  `interests` int(11) NOT NULL,
  `bolivian_limits` text NOT NULL,
  `training_days` varchar(255) NOT NULL,
  `training_frequency` varchar(255) NOT NULL,
  `training_time` varchar(255) NOT NULL,
  `location_country_id` varchar(100) DEFAULT NULL,
  `location_depto_id` varchar(100) DEFAULT NULL,
  `location_city_id` varchar(100) DEFAULT NULL,
  `industry_id` int(11) NOT NULL,
  `education_id` int(11) DEFAULT NULL,
  `ocupation_id` int(11) NOT NULL,
  `academic_level_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`id`, `title`, `alias`, `description`, `block_count`) VALUES
(3, 'none', 'none', '', 0),
(4, 'right', 'right', '', 6),
(6, 'left', 'left', '', 0),
(7, 'header', 'header', '', 0),
(8, 'footer', 'footer', '', 0),
(9, 'region1', 'region1', '', 0),
(10, 'region2', 'region2', '', 0),
(11, 'region3', 'region3', '', 0),
(12, 'region4', 'region4', '', 0),
(13, 'region5', 'region5', '', 0),
(14, 'region6', 'region6', '', 0),
(15, 'region7', 'region7', '', 0),
(16, 'region8', 'region8', '', 0),
(17, 'region9', 'region9', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `updated`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', '2009-04-05 00:10:34'),
(2, 'Registered', 'registered', '2009-04-05 00:10:50', '2009-04-06 05:20:38'),
(3, 'Public', 'public', '2009-04-05 00:12:38', '2009-04-07 01:41:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`) VALUES
(6, 'Site.title', 'GDGbo', '', '', '', 1, 1, ''),
(7, 'Site.tagline', 'Google Developers Group Bolivia', '', '', 'textarea', 1, 2, ''),
(8, 'Site.email', 'enat87@gmail.com', '', '', '', 1, 3, ''),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 5, ''),
(12, 'Meta.robots', 'index, follow', '', '', '', 1, 6, ''),
(13, 'Meta.keywords', 'croogo, Croogo', '', '', 'textarea', 1, 7, ''),
(14, 'Meta.description', 'Croogo - A CakePHP powered Content Management System', '', '', 'textarea', 1, 8, ''),
(15, 'Meta.generator', 'Croogo - Content Management System', '', '', '', 0, 9, ''),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, ''),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, ''),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, ''),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, ''),
(20, 'Site.theme', '', '', '', '', 0, 14, ''),
(21, 'Site.feed_url', '', '', '', '', 0, 15, ''),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 16, ''),
(23, 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', 1, 17, ''),
(24, 'Comment.level', '1', '', 'levels deep (threaded comments)', '', 1, 18, ''),
(25, 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', 1, 19, ''),
(26, 'Site.locale', 'eng', '', '', 'text', 0, 20, ''),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 21, ''),
(28, 'Comment.date_time_format', 'M d, Y', '', '', '', 1, 22, ''),
(29, 'Site.timezone', '4', '', 'zero (0) for GMT', '', 1, 4, ''),
(32, 'Hook.bootstraps', 'Tinymce', '', '', '', 0, 23, ''),
(33, 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', 1, 24, ''),
(34, 'Croogo.version', '1.4.3\n', '', '', '', 0, 25, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxonomies`
--

CREATE TABLE IF NOT EXISTS `taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`) VALUES
(1, NULL, 1, 1, 1, 2),
(2, NULL, 2, 1, 3, 4),
(3, NULL, 3, 2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tech_careers`
--

CREATE TABLE IF NOT EXISTS `tech_careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tech_careers`
--

INSERT INTO `tech_careers` (`id`, `name`) VALUES
(1, 'Desarrollador'),
(2, 'Diseñador'),
(3, 'Arquitecto'),
(4, 'Project Manager'),
(5, 'Analista de negocios'),
(6, 'QA'),
(7, 'IT (redes)'),
(8, 'Atención al Cliente'),
(9, 'Gerencia'),
(10, 'DBA'),
(11, 'Documentación'),
(12, 'Marketing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE IF NOT EXISTS `terms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `terms`
--

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `updated`, `created`) VALUES
(1, 'Uncategorized', 'uncategorized', '', '2009-07-22 03:38:43', '2009-07-22 03:34:56'),
(2, 'Announcements', 'announcements', '', '2010-05-16 23:57:06', '2009-07-22 03:45:37'),
(3, 'mytag', 'mytag', '', '2009-08-26 14:42:43', '2009-08-26 14:42:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `types`
--

INSERT INTO `types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `created`) VALUES
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 0, 1, 0, 0, '', '', '2009-09-09 00:23:24', '2009-09-02 18:06:27'),
(2, 'Blog', 'blog', 'A blog entry is a single post to an online journal, or blog.', 1, 1, 2, 1, 0, 0, '', '', '2009-09-15 12:15:43', '2009-09-02 18:20:44'),
(4, 'Node', 'node', 'Default content type.', 1, 1, 2, 1, 0, 0, '', '', '2009-10-06 21:53:15', '2009-09-05 23:51:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types_vocabularies`
--

CREATE TABLE IF NOT EXISTS `types_vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `types_vocabularies`
--

INSERT INTO `types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`) VALUES
(31, 2, 2, NULL),
(30, 2, 1, NULL),
(25, 4, 2, NULL),
(24, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `created`) VALUES
(1, 1, 'admin', '02c4c6f7069992e5f0d43af5cabe67e83e30e214', 'admin', '', NULL, 'f62204c11fb68741ab2224d7edf4c7c5', NULL, NULL, '0', 1, '2013-04-20 16:46:40', '2013-04-20 16:46:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vocabularies`
--

CREATE TABLE IF NOT EXISTS `vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vocabulary_alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `vocabularies`
--

INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `created`) VALUES
(1, 'Categories', 'categories', '', 0, 1, 0, '', 1, '2010-05-17 20:03:11', '2009-07-22 02:16:21'),
(2, 'Tags', 'tags', '', 0, 1, 0, '', 2, '2010-05-17 20:03:11', '2009-07-22 02:16:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `world_languages`
--

CREATE TABLE IF NOT EXISTS `world_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `world_languages`
--

INSERT INTO `world_languages` (`id`, `name`) VALUES
(1, 'Español'),
(2, 'Ingles'),
(3, 'Alemán'),
(4, 'Portugués');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
