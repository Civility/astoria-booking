-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 06 2019 г., 12:58
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phoca`
--

-- --------------------------------------------------------

--
-- Структура таблицы `klin_action_logs`
--

CREATE TABLE `klin_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_action_logs`
--

INSERT INTO `klin_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2019-03-27 09:46:01', 'com_users', 883, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Breadcrumbs\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:47:14', 'com_modules.module', 883, 17, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:47:14', 'com_modules.module', 883, 1, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:47:14', 'com_modules.module', 883, 16, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":88,\"title\":\"\\u041b\\u043e\\u0433 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0439 - \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435\",\"extension_name\":\"\\u041b\\u043e\\u0433 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0439 - \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=88\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:47:40', 'com_modules.module', 883, 88, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:47:40', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":89,\"title\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438\",\"extension_name\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=89\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:47:50', 'com_modules.module', 883, 89, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:47:50', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:01', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:07', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":87,\"title\":\"Sample Data\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=87\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:07', 'com_modules.module', 883, 87, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:10', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":87,\"title\":\"Sample Data\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=87\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:10', 'com_modules.module', 883, 87, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:14', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:17', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":88,\"title\":\"\\u041b\\u043e\\u0433 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0439 - \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=88\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:17', 'com_modules.module', 883, 88, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10,\"title\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"extension_name\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=10\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:24', 'com_modules.module', 883, 10, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:24', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:26', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10,\"title\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=10\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:26', 'com_modules.module', 883, 10, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":3,\"title\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"extension_name\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=3\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:33', 'com_modules.module', 883, 3, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:33', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:36', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":3,\"title\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=3\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:36', 'com_modules.module', 883, 3, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":4,\"title\":\"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"extension_name\":\"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=4\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:42', 'com_modules.module', 883, 4, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:42', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:45', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":4,\"title\":\"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=4\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:45', 'com_modules.module', 883, 4, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":86,\"title\":\"\\u0412\\u0435\\u0440\\u0441\\u0438\\u044f Joomla!\",\"extension_name\":\"\\u0412\\u0435\\u0440\\u0441\\u0438\\u044f Joomla!\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=86\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:48:56', 'com_modules.module', 883, 86, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:48:56', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":9,\"title\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u0430\",\"extension_name\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u0430\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=9\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:49:12', 'com_modules.module', 883, 9, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:49:12', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":2,\"title\":\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0430\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438\",\"extension_name\":\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0430\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=2\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:49:47', 'com_modules.module', 883, 2, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:49:47', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":12,\"title\":\"\\u041c\\u0435\\u043d\\u044e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"extension_name\":\"\\u041c\\u0435\\u043d\\u044e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=12\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:50:01', 'com_modules.module', 883, 12, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:50:01', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":14,\"title\":\"\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f\",\"extension_name\":\"\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=14\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:50:17', 'com_modules.module', 883, 14, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:50:17', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":13,\"title\":\"\\u041f\\u043e\\u0434\\u043c\\u0435\\u043d\\u044e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"extension_name\":\"\\u041f\\u043e\\u0434\\u043c\\u0435\\u043d\\u044e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=13\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:50:25', 'com_modules.module', 883, 13, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:50:25', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":15,\"title\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"extension_name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=15\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:50:36', 'com_modules.module', 883, 15, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:50:36', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":8,\"title\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"extension_name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=8\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:50:51', 'com_modules.module', 883, 8, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:50:51', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":8,\"title\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432\",\"extension_name\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=8\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\"}', '2019-03-27 09:50:58', 'com_modules.module', 883, 8, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"883\",\"title\":\"civil\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"userid\":\"883\",\"username\":\"civil\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=883\",\"table\":\"#__modules\"}', '2019-03-27 09:50:58', 'com_checkin', 883, 883, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_action_logs_extensions`
--

CREATE TABLE `klin_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_action_logs_extensions`
--

INSERT INTO `klin_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_action_logs_users`
--

CREATE TABLE `klin_action_logs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_action_log_config`
--

CREATE TABLE `klin_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_action_log_config`
--

INSERT INTO `klin_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_assets`
--

CREATE TABLE `klin_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_assets`
--

INSERT INTO `klin_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 185, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 72, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 73, 74, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 75, 76, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 77, 80, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 81, 82, 1, 'com_login', 'com_login', '{}'),
(13, 1, 83, 84, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 85, 86, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 87, 88, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 89, 92, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 93, 94, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 95, 142, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 143, 146, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 147, 148, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 149, 150, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 151, 152, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 153, 154, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 155, 158, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Категория', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 144, 145, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 156, 157, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 165, 166, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 167, 168, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 169, 170, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 171, 172, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 96, 97, 2, 'com_modules.module.1', 'Главное меню', '{}'),
(40, 18, 98, 99, 2, 'com_modules.module.2', 'Форма авторизации', '{}'),
(43, 18, 100, 101, 2, 'com_modules.module.8', 'Панель инструментов', '{}'),
(44, 18, 102, 103, 2, 'com_modules.module.9', 'Панель быстрого доступа', '{}'),
(45, 18, 104, 105, 2, 'com_modules.module.10', 'Авторизованные пользователи', '{}'),
(46, 18, 106, 107, 2, 'com_modules.module.12', 'Меню панели управления', '{}'),
(47, 18, 108, 109, 2, 'com_modules.module.13', 'Подменю панели управления', '{}'),
(48, 18, 110, 111, 2, 'com_modules.module.14', 'Статус пользователя', '{}'),
(49, 18, 112, 113, 2, 'com_modules.module.15', 'Заголовок', '{}'),
(52, 18, 114, 115, 2, 'com_modules.module.79', 'Мультиязычность', '{}'),
(53, 18, 116, 117, 2, 'com_modules.module.86', 'Версия Joomla!', '{}'),
(54, 16, 90, 91, 2, 'com_menus.menu.1', 'Меню', '{}'),
(56, 1, 173, 174, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 175, 176, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 118, 119, 2, 'com_modules.module.88', 'Лог действий - последние', '{}'),
(59, 18, 120, 121, 2, 'com_modules.module.89', 'Панель управления персональными данными', '{}'),
(60, 11, 78, 79, 2, 'com_languages.language.2', 'Русский (Россия)', '{}'),
(61, 8, 26, 51, 2, 'com_content.category.8', 'Номера', '{}'),
(62, 27, 19, 20, 3, 'com_content.article.1', 'Об отеле', '{}'),
(63, 27, 21, 22, 3, 'com_content.article.2', 'Рестораны', '{}'),
(64, 27, 23, 24, 3, 'com_content.article.3', 'Расположение', '{}'),
(65, 61, 27, 28, 3, 'com_content.article.4', 'Classic room', '{}'),
(66, 61, 29, 30, 3, 'com_content.article.5', 'Deluxe room', '{}'),
(67, 61, 31, 32, 3, 'com_content.article.6', 'Superior deluxe room', '{}'),
(68, 61, 33, 34, 3, 'com_content.article.7', 'Studio view room', '{}'),
(69, 61, 35, 36, 3, 'com_content.article.8', 'Deluxe junior suite', '{}'),
(70, 61, 37, 38, 3, 'com_content.article.9', 'Junior suite', '{}'),
(71, 61, 39, 40, 3, 'com_content.article.10', 'Classic suite', '{}'),
(72, 61, 41, 42, 3, 'com_content.article.11', 'Deluxe suite', '{}'),
(73, 61, 43, 44, 3, 'com_content.article.12', 'Ambassador suite', '{}'),
(74, 61, 45, 46, 3, 'com_content.article.13', 'Presidential suite', '{}'),
(75, 61, 47, 48, 3, 'com_content.article.14', 'Royal suite', '{}'),
(76, 61, 49, 50, 3, 'com_content.article.15', 'Tsar suite', '{}'),
(81, 18, 122, 123, 2, 'com_modules.module.94', 'Slider', '{}'),
(82, 18, 124, 125, 2, 'com_modules.module.95', 'Отель Астория', '{}'),
(83, 1, 177, 178, 1, 'com_rsform', 'com_rsform', '{}'),
(85, 18, 126, 127, 2, 'com_modules.module.97', 'Fond', '{}'),
(86, 18, 128, 129, 2, 'com_modules.module.98', 'Найти номер', '{}'),
(87, 18, 130, 131, 2, 'com_modules.module.99', 'Лучший тариф', '{}'),
(88, 18, 132, 133, 2, 'com_modules.module.100', 'Номера', '{}'),
(90, 8, 52, 53, 2, 'com_content.field.1', 'Шахматы', '{}'),
(91, 8, 54, 55, 2, 'com_content.field.2', 'text-after', '{}'),
(92, 18, 134, 135, 2, 'com_modules.module.102', 'Нижний баннер', '{}'),
(93, 18, 136, 137, 2, 'com_modules.module.103', 'Гостиница Астория в Петербурге', '{}'),
(94, 18, 138, 139, 2, 'com_modules.module.104', 'Мероприятия', '{}'),
(95, 1, 179, 180, 1, 'com_fields', 'com_fields', '{}'),
(96, 1, 181, 182, 1, 'com_associations', 'com_associations', '{}'),
(97, 8, 56, 71, 2, 'com_content.fieldgroup.1', 'Room', '{}'),
(100, 97, 57, 58, 3, 'com_content.field.5', 'Удобства в номере', '{}'),
(101, 97, 59, 60, 3, 'com_content.field.6', 'Площадь', '{}'),
(102, 97, 61, 62, 3, 'com_content.field.7', 'Спальная', '{}'),
(103, 97, 63, 64, 3, 'com_content.field.8', 'План номера', '{}'),
(104, 97, 65, 66, 3, 'com_content.field.9', 'Галерея картинок', '{}'),
(105, 97, 67, 68, 3, 'com_content.field.10', 'Удобства в ванной комнате', '{}'),
(107, 97, 69, 70, 3, 'com_content.field.12', 'Забронировать номер', '{}'),
(108, 18, 140, 141, 2, 'com_modules.module.105', 'Как добраться до гостиницы', '{}'),
(109, 1, 183, 184, 1, 'com_osmap', 'COM_OSMAP', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_associations`
--

CREATE TABLE `klin_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_banners`
--

CREATE TABLE `klin_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_banner_clients`
--

CREATE TABLE `klin_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_banner_tracks`
--

CREATE TABLE `klin_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_categories`
--

CREATE TABLE `klin_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_categories`
--

INSERT INTO `klin_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 883, '2019-03-27 09:44:53', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'default', 'com_content', 'Категория', 'default', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 883, '2019-03-27 09:44:53', 883, '2019-04-02 11:41:09', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 883, '2019-03-27 09:44:53', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 883, '2019-03-27 09:44:53', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 883, '2019-03-27 09:44:53', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 883, '2019-03-27 09:44:53', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 61, 1, 11, 12, 1, 'rooms', 'com_content', 'Номера', 'rooms', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 883, '2019-04-02 11:41:37', 0, '2019-04-02 11:41:37', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_contact_details`
--

CREATE TABLE `klin_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_content`
--

CREATE TABLE `klin_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_content`
--

INSERT INTO `klin_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 62, 'Об отеле', 'about', '', '', 1, 2, '2019-04-02 11:42:38', 883, '', '2019-05-06 08:07:52', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:42:38', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 9, 2, 'гостиница астория, астория петербург, астория спб, сайт гостиницы астория, отель астория', 'Сегодня Астория в СПб – символ роскоши, сочетающий в себе историческую изысканность и современный комфорт отдыха.', 1, 98, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(2, 63, 'Рестораны', 'restaurants', '', '', 1, 2, '2019-04-02 11:43:01', 883, '', '2019-05-06 08:08:53', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:43:01', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 1, 'ресторан астория, ресторан астория СПб, кафе астория, лобби бар, отель астория рестораны', 'К услугам гостей пятизвездочного отеля Астория работают рестораны, кафе и бары.', 1, 29, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(3, 64, 'Расположение', 'location', '', '', 1, 2, '2019-04-02 11:43:19', 883, '', '2019-05-06 08:08:37', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:43:19', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 10, 0, 'гостиница астория, достопримечательности петербурга, экскурсия санкт петербург', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(4, 65, 'Classic room', 'classic-room', '<p>Вместительный и просторный номер с кроватью королевских размеров. Из окон открывается вид на тихий внутренний двор гостиницы Астория.</p>\r\n', '\r\n<h3>Классический стандартный номер в гостинице Астория</h3>\r\n<p>Комфортабельные комнаты для гостей площадью 25 кв.м. с видом на уютный внутренний дворик. Гостиничный номер подходит для проживания во время отпуска в Петербурге и рабочих поездок. Позвоните по телефону на сайте и получите уникальное предложение на бронирование номеров в пятизвездочной гостинице Астория.</p>\r\n<p>Номер в Астории совмещает в себе спальную и гостиную, и обставлен современной мебелью. На полу лежит изящный паркет. Кровать в спальне застлана роскошным льняным покрывалом. В номере оборудовано уютное место у окна для работы и отдыха.</p>', 1, 8, '2019-04-02 11:44:06', 883, '', '2019-05-06 08:09:36', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:44:06', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Classic_room\\/mini\\/Classic_room_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Classic_room\\/mid\\/Classic_room_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Classic room\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0433\\u043e \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Classic room\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 30, 11, 'аренда стандартного номера в астории, забронировать номер в гостинице астория, classic room astoria, заказать классический номер в астории', 'Стандартный номер Classic Room в гостинице Астория. Забронировать классический номер в отеле Астория. Аренда стандартного номера в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(5, 66, 'Deluxe room', 'deluxe-room', '<p>Номер оформлен в спокойных пастельных тонах и с использованием натуральных материалов: хлопка, льна, камня, дерева.</p>\r\n', '\r\n<h3>Номер Deluxe Room в гостинице Астория</h3>\r\n<p>Номер делюкс – комфортабельные апартаменты в гостинице Астория с великолепным видом из окна на историческую часть Санкт-Петербурга.</p>\r\n<p>В уютных апартаментах гостиная и спальня совмещены. Оборудовано отдельное место для чтения, бесед и комфортного отдыха.</p>\r\n<p>Интерьеры в пастельных тонах, оформленные с использованием натуральных материалов, манят остаться в элитном отеле подольше. Почувствуйте шик и роскошь отдыха в пятизвездочной гостинице Астория!</p>', 1, 8, '2019-04-02 11:44:15', 883, '', '2019-05-06 08:10:25', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:44:15', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Deluxe_room\\/mini\\/Deluxe_room.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\\u0430\\u0440\\u0435\\u043d\\u0434\\u0430 deluxe room \\u0432 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Deluxe_room\\/mid\\/Deluxe_room.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\\u043d\\u043e\\u043c\\u0435\\u0440 \\u0434\\u0435\\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u0443\\u043b\\u0443\\u0447\\u0448\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Deluxe Room\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 11, 10, 'номер делюкс, забронировать номер deluxe, аренда улучшенного номера в Астории, гостиница Астория, отель Астория.', 'Номер Deluxe в гостинице Астория. Забронировать номер делюкс в отеле Астория. Аренда номера улучшенной планировки в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(6, 67, 'Superior deluxe room', 'superior-deluxe-room', '<p>Уютный номер с видом на историческую часть города. В спальне размещены две кровати, собирающиеся в одну большую.</p>\r\n', '\r\n<h3>Номер увеличенной площади в гостинице Астория - Superior deluxe room</h3>\r\n<p>Просторные номера от 25 кв.м. с видом на великолепную архитектуру Исаакиевского собора и площадь. Оформление гостиничного номера сочетает в себе классику и современные тенденции дизайна интерьеров. Для создания максимального уюта для декора и отделки использовались натуральные ткани и материалы, выдержанные в пастельной гамме. В гостиничном номере предусмотрено все необходимое для комфортного отдыха: от международной телефонной линии до уютного места для отдыха у окна с потрясающим видом на сердце Петербурга.</p>', 1, 8, '2019-04-02 11:44:43', 883, '', '2019-05-06 08:11:20', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:44:43', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Superior_deluxe_room\\/mini\\/Superior_deluxe_room_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"superior-deluxe-room\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Superior_deluxe_room\\/mid\\/Superior_deluxe_room_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Superior deluxe room\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u0438 \\u0432 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 - Superior deluxe room\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 9, 'гостиничный номер увеличенной площадив санкт-петербурге, большой номер в отеле астория в петербурге, superior deluxe room, аренда, забронировать номер в спб', 'Номер Superior King Room Cathedral View отеля Астория в Петербурге. Окна выходят на Исаакиевскую площадь. Забронировать номер большой площади в Астории. Аренда номера увеличенной площади в гостиницу Астория СПб.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(7, 68, 'Studio view room', 'studio-view-room', '<p>Просторный номер с обустроенной зоной для отдыха и работы. Стены номера украшают зарисовки и сцены из балетов.</p>\r\n', '\r\n<h3>Двухместный номер в гостинице Астория - Studio view room</h3>\r\n<p>Studio view room – двухместный номер в гостинице Астория с потрясающим панорамным видом на исторические памятники Санкт-Петербурга.</p>\r\n<p>В апартаментах с авторским дизайном для отделки и декора использовались натуральные материалы и пастельная гамма цветов, создающая уют во время лакшери отдыха.</p>', 1, 8, '2019-04-02 11:44:51', 883, '', '2019-05-06 08:11:52', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:44:51', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Studio_view_room\\/mini\\/Studio_view_room_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\\u0434\\u0432\\u0443\\u0445\\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 Studio room\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Studio_view_room\\/mid\\/Studio_view_room_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Studio view room\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u0434\\u0432\\u0443\\u0445\\u043c\\u0435\\u0441\\u0442\\u043d\\u043e\\u0433\\u043e \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Studio view room\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 8, 'снять Studio room номер в отеле, двухместный номер в гостинице астория, аренда двухместного номера в спб, двухместный номер Studio room в отеле Астория', 'Двухместный номер Studio room в гостинице Астория. Забронировать двухместный номер в отеле Астория. Аренда двухместного номера в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(8, 69, 'Deluxe junior suite', 'deluxe-junior-suite', '<p>Двухкомнатный номер с авторским дизайном от Ольги Полицци. Из окон открывается великолепный вид на Исаакиевский собор.</p>\r\n', '\r\n<h3>Номер полулюкс в гостинице Астория - Deluxe junior suite</h3>\r\n<p>Deluxe junior suite – просторные номера класса делюкс в отеле Астория. Из окна видны достопримечательности и архитектурный ансамбль Исаакиевской площади.</p>\r\n<p>Уникальный дизайн апартаментов выполнен по проекту Ольги Полицци. Для декора использовались нежные цвета пастельных оттенков и натуральные ткани и другие природные материалы – лен, хлопок, дерево.</p>\r\n<p>В просторных номерах раздельные комнаты: гостиная и спальня двуспальной кроватью королевских размеров. В гостиной оборудовано место для чтения, работы и уютного отдыха.</p>', 1, 8, '2019-04-02 11:45:01', 883, '', '2019-05-06 08:13:04', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:45:01', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"deluxe junior suite \\u043f\\u043e\\u043b\\u0443\\u043b\\u044e\\u043a\\u0441 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0432 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Deluxe junior suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u043f\\u043e\\u043b\\u0443\\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Deluxe junior suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 7, 'двухместный номер в астории, полулюкс, делюкс, аренда полулюкса в гостинице астория, забронировать делюкс в отеле астория, номер Deluxe junior suite в астории', 'Номер полулюкс в гостинице Астория. Забронировать двухместный номер Deluxe junior suite в отеле Астория. Аренда номера делюкс в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(9, 70, 'Junior suite', 'junior-suite', '<p>Номера класса люкс с великолепным видом из окон на архитектурный ансамбль Исаакиевской площади.</p>\r\n', '\r\n<h3>Junior suite - номер повышенной комфортности в гостинице Астория</h3>\r\n<p>Номер в Астории JUNIOR SUITE зонирован на две основные комнаты: гостиную и спальню. Дизайн просторного номера класса люкс выполнен по проекту известного дизайнера интерьеров – Ольги Полицци. При отделке номера Астории использовались натуральные материалы: лен, хлопок, паркетная доска и др. Уют и роскошь апартаментов JUNIOR SUITE располагает к длительному отдыху и наслаждению комфортом пятизвездочного отеля. При бронировании с сайта вы получите уникальное предложение цены гостиничного номера.</p>', 1, 8, '2019-04-02 11:45:12', 883, '', '2019-05-06 08:12:28', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:45:12', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Junior_suite\\/mini\\/Junior_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\\u043e\\u0434\\u043d\\u043e\\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0434\\u0432\\u0443\\u0445\\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 junior suite \\u0432 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Junior_suite\\/mid\\/Junior_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Junior suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 - Junior suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 6, 'забронировать JUNIOR SUITE, одноместный номер, двухместный номер, аренда номера повышенной комфортности, гостиница астория, отель астория', 'Одноместный или двухместный номер повышенной комфортности в гостинице Астория. Забронировать номер Junior suite в отеле Астория. Аренда номера повышенной комфортности junior suite в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(10, 71, 'Classic suite', 'classic-suite', '<p>Уютные и роскошные двухкомнатные номера, оформленные в пастельных тонах с видом на достопримечательности Петербурга.</p>\r\n', '\r\n<h3>Номер класса люкс в гостинице Астория - Classic suite</h3>\r\n<p>Номер люкс Classic suite – апартаменты с уютной спальней, гостиной и прихожей. Вид из окон позволяет любоваться уникальным архитектурным ансамблем площади: Исаакиевским собором, Мариинским дворцом, памятником русскому императору – Николаю I.</p>\r\n<p>Уникальный дизайн номера люкс в гостинице Астория оформлен в пастельной гамме и сочетает в себе классические и современные приемы декорирования помещений. При отделке используются натуральные материалы, создающие ощущение роскоши и комфорта: лен, паркетная доска, хлопок.</p>', 1, 8, '2019-04-02 11:45:22', 883, '', '2019-05-06 08:13:42', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:45:22', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Classic_suite\\/mini\\/Classic_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"classic suite \\u043d\\u043e\\u043c\\u0435\\u0440 \\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Classic_suite\\/mid\\/Classic_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Classic suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u041b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Classic suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 5, 'номер люкс, номер люкс в отеле, стоимость люкса в астории, Classic suite гостиница астория, забронировать люкс, аренда номера люкс, оснащение люкса в отеле астория', 'Люкс номер Classic suite в гостинице Астория. Забронировать классический номер люкс в отеле Астория. Аренда номера люкс в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(11, 72, 'Deluxe suite', 'deluxe-suite', '<p>Номер оформлен в светлых пастельных тонах. Дубовый паркет, льняные портьеры и другие элементы декора создают атмосферу уюта.</p>\r\n', '\r\n<h3>Улучшенный номер люкс в гостинице Астория - Deluxe suite</h3>\r\n<p>Номер делюкс в пятизвездочном отеле Астория – это лакшери отдых с современным уровнем комфорта.</p>\r\n<p>В гостиничных апартаментах есть просторная гостиная с оборудованной зоной для работы и отдыха, уютная спальня. Уникальное оформление было выполнено в соответствии с дизайн-проектом Ольги Полицци.</p>\r\n<p>Нежные оттенки пастельной палитры, сочетание классики и современного дизайна, светлый дубовый паркет и натуральные материалы отделки номеров делюкс создают уютное пространства шикарного отдыха в самом центре бурлящего Петербурга.</p>', 1, 8, '2019-04-02 11:45:30', 883, '', '2019-05-06 08:14:15', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:45:30', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\\u0443\\u043b\\u0443\\u0447\\u0448\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 deluxe suite\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Deluxe suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u043b\\u044e\\u043a\\u0441 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u0438 \\u0432 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Deluxe suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 4, 'астория СПб, улучшенный номер люкс, увеличенный люкс в гостинице, аренда люкса в санкт-петербурге, номера люкс в спб, забронировать номер люкс в питере', 'Люкс номер Deluxe Suite Palace View в пятизвездочной гостинице Астория. Забронировать номер люкс в отеле Астория. Аренда улучшенного номера люкс увеличенной площади в Астории СПб.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(12, 73, 'Ambassador suite', 'ambassador-suite', '<p>Современный двухкомнатный люкс с авторским дизайном. Из окон номера открывается вид на уютный внутренний дворик Астории.</p>\r\n', '\r\n<h3>Премиум номер люкс в гостинице Астория</h3>\r\n<p>Ambassador suite – номер в отеле Астория площадью 60 кв.м., сочетающий в себе классический стиль и современный дизайн. Пастельные тона и натуральные материалы, используемые для декорирования, создают ощущение простора, обеспечивают роскошь и уют.</p>\r\n<p>В апартаментах обустроены отдельная спальня, просторная гостиная, зона для отдыха и чтения, прихожая. Из окон открывается вид на уютный внутренний дворик.</p>', 1, 8, '2019-04-02 11:45:39', 883, '', '2019-05-06 08:14:44', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:45:39', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Ambassador_suite\\/mini\\/Ambassador_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"ambassador-suite\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Ambassador_suite\\/mid\\/Ambassador_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Ambassador suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u041f\\u0440\\u0435\\u043c\\u0438\\u0443\\u043c \\u041b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Ambassador suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 3, 'премиум люкс, бронирование Ambassador Suite, аренда премиум номера в Астории, забронировать премиум люкс в спб, Ambassador Suite в Астория Санкт Петербург', 'Номер премиум люкс Ambassador Suite в отеле Астория СПб. Забронировать номер премиум в гостинице Астория. Аренда люкса Ambassador Suite в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(13, 74, 'Presidential suite', 'presidential-suite', '<p>Президентские люксы, названные в честь известных русских композиторов, сочетают в себе уют, стиль и изящество.</p>\r\n', '\r\n<h3>Номер Президентский люкс в гостинице Астория - Presidential suite</h3>\r\n<p>Президентские люксы носят имена великих русских композиторов – Рахманинова, Прокофьева, Стравинского и Шостаковича. Апартаменты являются угловыми, поэтому из окон открывается неподражаемый вид на Исаакиевскую площадь, собор, Мариинский дворец и памятник Николаю I.</p>\r\n<p>Сочетание классического интерьера и новейших тенденций воплотилось в уникальном дизайне президентского люкса. Оформление апартаментов выполнено в пастельных тонах. Яркими акцентами стали антикварные предметы из мрамора, хрусталя и фарфора.</p>', 1, 8, '2019-04-02 11:45:52', 883, '', '2019-05-06 08:15:26', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:45:52', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\\u043f\\u0440\\u0435\\u0437\\u0438\\u0434\\u0435\\u043d\\u0442\\u0441\\u043a\\u0438\\u0439 \\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 presidential suite\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Presidential suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u043f\\u0440\\u0435\\u0437\\u0438\\u0434\\u0435\\u043d\\u0442\\u0441\\u043a\\u0438\\u0439 \\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Presidential suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 2, 'президентский люкс в гостинице, забронировать президентский люкс астория, президентский люкс в отеле, Presidential suite Астория спб пять звезд, президентский люкс в петербурге', 'Президентский люкс Presidential suite в гостинице Астория. Забронировать президентский люкс в отеле Астория. Аренда президентского люкса в Астории.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(14, 75, 'Royal suite', 'royal-suite', '<p>Роскошные апартаменты премиум класса сочетают в себе современный комфорт и традиционное изящество.</p>\r\n', '\r\n<h3>Королевский номер в гостинице Астория - Royal suite</h3>\r\n<p>Royal suite – роскошный номер люкс в отеле Астория с открытой террасой и панорамным видом на живописные достопримечательности Петербурга, расположенные на Исаакиевской площади.</p>\r\n<p>Уникальный авторский дизайн гостиничного номера воплотил в себе гармоничное сочетание классики и современности: апартаменты обставлены модной мебелью и дополнены антиквариатом из мрамора, хрусталя, бронзы, фарфора. Стены украшает живопись.</p>\r\n<p>В гостиничном номере расположены просторная прихожая, украшенная старинным гардеробом с большим зеркалом, столовая, гостиная с обустроенным отдельно местом для работы, спальня. Для удобства гостей в номере обустроена дополнительная ванная комната, библиотека, гардеробная комната.</p>', 1, 8, '2019-04-02 11:46:01', 883, '', '2019-05-06 08:15:49', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:46:01', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Royal_suite\\/mini\\/Royal_suite_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"royal-suite\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Royal_suite\\/mid\\/Royal_suite_1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Royal suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u041a\\u043e\\u0440\\u043e\\u043b\\u0435\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Royal suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 1, 'Royal suite, гостиничный королевский номер, королевский номер люкс в отеле астория, бронирование королевского номера в астории спб', 'Королевский люкс в гостинице Астория Санкт-Петербург. Аренда Королевского номера люкс Royal Suite в Астории СПб. Забронировать королевский номер в гостинице Астория.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(15, 76, 'Tsar suite', 'tsar-suite', '<p>Великолепные царские апартаменты с тремя спальнями, персональным тренажерным залом, столовой и библиотекой.</p>\r\n', '\r\n<h3>Номер Царский люкс в гостинице Астория - Tsar suite</h3>\r\n<p>Царские апартаменты – легендарный номер Астории, признанный одним из самых больших номеров люкс в Северной столице. Он расположен на шестом этаже отеля Астория и его площадь составляет 310 кв.м. из окон видны Исаакиевская площадь и собор.</p>', 1, 8, '2019-04-02 11:46:10', 883, '', '2019-05-06 08:16:14', 883, 0, '0000-00-00 00:00:00', '2019-04-02 11:46:10', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Tsar_suite\\/mini\\/Tsar_suite_10.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"tsar-suite\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_10.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Tsar suite\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0426\\u0430\\u0440\\u0441\\u043a\\u0438\\u0439 \\u043b\\u044e\\u043a\\u0441 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f - Tsar suite\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 0, 'номер царский люкс в гостинице астория в петербурге, забронировать номер Tsar Suite в отеле астория в спб, номер с тремя спальнями, номер с тренажерным залом в Петербурге', 'Номер Царский люкс Tsar Suite в гостинице Астория включает: три спальни и личный тренажерный зал. Забронировать Царский номер в отеле Астория. Аренда Царского люкса в Астории в Спб.', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_contentitem_tag_map`
--

CREATE TABLE `klin_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `klin_content_frontpage`
--

CREATE TABLE `klin_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_content_rating`
--

CREATE TABLE `klin_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_content_types`
--

CREATE TABLE `klin_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_content_types`
--

INSERT INTO `klin_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_core_log_searches`
--

CREATE TABLE `klin_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_extensions`
--

CREATE TABLE `klin_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_extensions`
--

INSERT INTO `klin_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 0, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 0, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"0\",\"cachetimeout\":\"24\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"svg,bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/svg+xml,image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 0, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"0\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"0\",\"show_articles\":\"0\",\"show_link\":\"0\",\"show_pagination\":\"2\",\"show_pagination_results\":\"0\",\"sef_advanced\":1,\"sef_ids\":1}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 0, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"svg,gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"record_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"0\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"none\",\"float_fulltext\":\"none\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"0\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"0\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"0\",\"maxLevelcat\":\"0\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"0\",\"show_cat_num_articles_cat\":\"0\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"12\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"0\",\"filter_field\":\"hide\",\"show_headings\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"date\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"0\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":1,\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"domains\":\"\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"0\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"1\",\"debugGroups\":\"1\",\"sef_advanced\":1,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 0, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"0\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"c.core_title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"min_term_length\":\"3\",\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"ru-RU\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_pagination\":\"2\",\"show_pagination_results\":\"0\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 0, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_categories\",\"com_newsfeeds\",\"com_content\",\"com_media\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"ac0ee642d6b359085f24b12f4b749c83\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 0, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 0, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 0, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 0, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 0, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 0, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 0, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 0, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 0, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 0, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 0, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 0, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 0, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 0, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 0, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 0, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 0, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 0, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `klin_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 0, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.40.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2018\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.9\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"i,dd,dl,dd\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":1,\"exclude\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 19, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 13, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 14, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 17, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 18, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 0, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 16, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1557124269}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"e452a4a00a6c814aa910bb7bb288a83e515ad2ce\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 0, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 0, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 0, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 0, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '{\"buttons\":0,\"width\":\"100%\",\"height\":\"50px\",\"filter\":\"JComponentHelper::filterText\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 0, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1556272503}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `klin_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 0, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 0, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 0, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 0, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 0, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 0, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.5\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"April 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2019-03-20\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.9.4.1\",\"description\":\"Russian language pack (site) for Joomla! 3.9.4\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'ru-RU', 'language', 'ru-RU', '', 1, 1, 0, 0, '{\"name\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2019-03-20\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.9.4.1\",\"description\":\"Russian language pack (administrator) for Joomla! 3.9.4\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{\"name\":\"Russian (ru-RU) Language Pack\",\"type\":\"package\",\"creationDate\":\"2019-03-20\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.9.4.1\",\"description\":\"Joomla 3.9 Russian Language Package\",\"group\":\"\",\"filename\":\"pkg_ru-RU\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'collector', 'template', 'collector', '', 0, 1, 1, 0, '{\"name\":\"collector\",\"type\":\"template\",\"creationDate\":\"01.04.2019\",\"author\":\"Oleg Orlov\",\"copyright\":\"\\u00a9 Oleg Orlov 2019, LLC. All rights reserved.\",\"authorEmail\":\"civilitys@gmail.com\",\"authorUrl\":\"\",\"version\":\"3.9\",\"description\":\"collector for Joomla\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'com_rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{\"name\":\"com_rsform\",\"type\":\"component\",\"creationDate\":\"March 2018\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2018 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"2.1.0\",\"description\":\"COM_RSFORM_INSTALL_DESC\",\"group\":\"\",\"filename\":\"rsform\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{\"name\":\"TCPDF\",\"type\":\"library\",\"creationDate\":\"28 January 2011\",\"author\":\"Nicola Asuni\",\"copyright\":\"http:\\/\\/www.tcpdf.org\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.tcpdf.org\",\"version\":\"2.5.0\",\"description\":\"Class for generating PDF files on-the-fly without requiring external extensions.\",\"group\":\"\",\"filename\":\"tcpdf\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'plg_installer_rsform', 'plugin', 'rsform', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_rsform\",\"type\":\"plugin\",\"creationDate\":\"July 2015\",\"author\":\"RSJoomla!\",\"copyright\":\"(c) 2015 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"https:\\/\\/www.rsjoomla.com\",\"version\":\"1.0.0\",\"description\":\"PLG_INSTALLER_RSFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"rsform\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'System - RSForm! Pro Delete Submissions', 'plugin', 'rsformdeletesubmissions', 'system', 0, 1, 1, 0, '{\"name\":\"System - RSForm! Pro Delete Submissions\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2018 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.0.0\",\"description\":\"PLG_SYSTEM_RSFORMDELETESUBMISSIONS_DESC\",\"group\":\"\",\"filename\":\"rsformdeletesubmissions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10008, 0, 'RSForm!Pro Russian Language Pack', 'file', 'RSForm!Pro_ru_RU25', '', 0, 1, 0, 0, '{\"name\":\"RSForm!Pro Russian Language Pack\",\"type\":\"file\",\"creationDate\":\"23 April 2015\",\"author\":\"RSJoomla!\",\"copyright\":\"Copyright (C) 2013. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.50.x\",\"description\":\"RSForm!Pro Russian Language Pack by RSJoomla!\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'RSForm! Pro Module', 'module', 'mod_rsform', '', 0, 1, 0, 0, '{\"name\":\"RSForm! Pro Module\",\"type\":\"module\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2015 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.51.1\",\"description\":\"MOD_RSFORM_DESC\",\"group\":\"\",\"filename\":\"mod_rsform\"}', '{\"formId\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'Content - RSForm! Pro', 'plugin', 'rsform', 'content', 0, 1, 1, 0, '{\"name\":\"Content - RSForm! Pro\",\"type\":\"plugin\",\"creationDate\":\"June 2015\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2017 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.51.1\",\"description\":\"PLG_CONTENT_RSFORM_DESC\",\"group\":\"\",\"filename\":\"rsform\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'COM_OSMAP', 'component', 'com_osmap', '', 1, 1, 0, 0, '{\"name\":\"COM_OSMAP\",\"type\":\"component\",\"creationDate\":\"April 08 2019\",\"author\":\"Joomlashack\",\"copyright\":\"Copyright (C) 2016-2017 Open Source Training, LLC. All rights reserved.\",\"authorEmail\":\"help@joomlashack.com\",\"authorUrl\":\"https:\\/\\/www.joomlashack.com\",\"version\":\"4.2.20\",\"description\":\"COM_OSMAP_DESCRIPTION\",\"group\":\"\",\"filename\":\"osmap\"}', '{}', '{\"author\":\"Joomlashack\"}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'Joomlashack Framework', 'library', 'allediaframework', '', 0, 1, 1, 0, '{\"name\":\"Joomlashack Framework\",\"type\":\"library\",\"creationDate\":\"November 09 2018\",\"author\":\"Joomlashack\",\"copyright\":\"Copyright (C) 2016-2018 Open Source Training, LLC. All rights reserved.\",\"authorEmail\":\"help@joomlashack.co\",\"authorUrl\":\"https:\\/\\/www.joomlashack.com\",\"version\":\"1.6.4\",\"description\":\"Shared library for Joomlashack extensions\",\"group\":\"\",\"filename\":\"allediaframework\"}', '{}', '{\"author\":\"Joomlashack\"}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'plg_system_ossystem', 'plugin', 'ossystem', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_ossystem\",\"type\":\"plugin\",\"creationDate\":\"October 02 2017\",\"author\":\"Joomlashack\",\"copyright\":\"Copyright (C) 2016 Open Source Training, LLC. All rights reserved.\",\"authorEmail\":\"help@joomlashack.com\",\"authorUrl\":\"http:\\/\\/www.joomlashack.com\",\"version\":\"1.3.0\",\"description\":\"PLG_SYSTEM_OSSYSTEM_DESCRIPTION\",\"group\":\"\",\"filename\":\"ossystem\"}', '[]', '{\"author\":\"Joomlashack\"}', '', 0, '0000-00-00 00:00:00', 1, 0),
(10014, 0, 'PLG_OSMAP_JOOMLA', 'plugin', 'joomla', 'osmap', 0, 1, 1, 0, '{\"name\":\"PLG_OSMAP_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"April 08 2019\",\"author\":\"Joomlashack\",\"copyright\":\"Copyright (C) 2016-2017 Open Source Training, LLC. All rights reserved.\",\"authorEmail\":\"help@joomlashack.com\",\"authorUrl\":\"https:\\/\\/www.joomlashack.com\",\"version\":\"4.2.20\",\"description\":\"PLG_OSMAP_JOOMLA_PLUGIN_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"expand_categories\":\"1\",\"expand_featured\":\"1\",\"max_category_level\":\"all\",\"include_archived\":\"2\",\"show_unauth\":\"0\",\"add_pagebreaks\":\"1\",\"max_art\":\"0\",\"article_order\":\"0\",\"article_orderdir\":\"0\",\"add_images\":\"1\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"art_priority\":\"-1\",\"art_changefreq\":\"-1\",\"keywords\":\"metakey\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_fields`
--

CREATE TABLE `klin_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_fields`
--

INSERT INTO `klin_fields` (`id`, `asset_id`, `context`, `group_id`, `title`, `name`, `label`, `default_value`, `type`, `note`, `description`, `state`, `required`, `checked_out`, `checked_out_time`, `ordering`, `params`, `fieldparams`, `language`, `created_time`, `created_user_id`, `modified_time`, `modified_by`, `access`) VALUES
(1, 90, 'com_content.article', 0, 'Шахматы', 'chess', 'Шахматы', '', 'repeatable', '', 'Построение статьи в шахматном порядке', 1, 0, 0, '0000-00-00 00:00:00', 2, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"fields\":{\"fields0\":{\"fieldname\":\"title\",\"fieldtype\":\"text\"},\"fields1\":{\"fieldname\":\"text\",\"fieldtype\":\"editor\"},\"fields2\":{\"fieldname\":\"img\",\"fieldtype\":\"media\"},\"fields4\":{\"fieldname\":\"source\",\"fieldtype\":\"media\"},\"fields3\":{\"fieldname\":\"alt\",\"fieldtype\":\"text\"}}}', '*', '2019-04-12 09:55:18', 883, '2019-04-12 14:57:19', 883, 1),
(2, 91, 'com_content.article', 0, 'text-after', 'textafter', 'text-after', '', 'textarea', '', '', -2, 0, 0, '0000-00-00 00:00:00', 1, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"3\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"rows\":\"\",\"cols\":\"\",\"maxlength\":300,\"filter\":\"\"}', '*', '2019-04-16 07:20:57', 883, '0000-00-00 00:00:00', 0, 1),
(5, 100, 'com_content.article', 1, 'Удобства в номере', 'services', 'Удобства в номере', '', 'checkboxes', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"border-title\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"1\",\"label_render_class\":\"border-title\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"options\":{\"options0\":{\"name\":\"\\u0423\\u044e\\u0442\\u043d\\u044b\\u0439 \\u0434\\u0438\\u0432\\u0430\\u043d\",\"value\":\"couch\"},\"options1\":{\"name\":\"\\u041c\\u044f\\u0433\\u043a\\u0438\\u0435 \\u043a\\u0440\\u0435\\u0441\\u043b\\u0430\",\"value\":\"loveseat\"},\"options2\":{\"name\":\"\\u0421\\u0442\\u0443\\u043b\\u044c\\u044f\",\"value\":\"chair\"},\"options3\":{\"name\":\"\\u041f\\u0438\\u0441\\u044c\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0441\\u0442\\u043e\\u043b\",\"value\":\"keynote\"},\"options4\":{\"name\":\"\\u0428\\u043a\\u0430\\u0444 \\u0434\\u043b\\u044f \\u0432\\u0435\\u0449\\u0435\\u0439\",\"value\":\"calculator\"},\"options5\":{\"name\":\"\\u0421\\u0435\\u043a\\u0440\\u0435\\u0442\\u0435\\u0440\",\"value\":\"cabinet-filing\"},\"options6\":{\"name\":\"\\u0421\\u0435\\u0439\\u0444\",\"value\":\"sack-dollar\"},\"options7\":{\"name\":\"\\u0421\\u043f\\u043b\\u0438\\u0442-\\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\",\"value\":\"wind-warning\"},\"options8\":{\"name\":\"\\u0421\\u043f\\u0443\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432\\u043e\\u0435 \\u0442\\u0435\\u043b\\u0435\\u0432\\u0438\\u0434\\u0435\\u043d\\u0438\\u0435\",\"value\":\"tv\"},\"options9\":{\"name\":\"\\u041c\\u0438\\u043d\\u0438-\\u0431\\u0430\\u0440 \\u0441 \\u0437\\u0430\\u043a\\u0443\\u0441\\u043a\\u0430\\u043c\\u0438 \\u0438 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0430\\u043c\\u0438\",\"value\":\"glass-whiskey-rocks\"},\"options10\":{\"name\":\"\\u041a\\u043e\\u043a\\u0442\\u0435\\u0439\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u043e\\u043b\",\"value\":\"blender\"},\"options11\":{\"name\":\"\\u041a\\u043e\\u0444\\u0435\\u043c\\u0430\\u0448\\u0438\\u043d\\u0430\",\"value\":\"mug-hot\"},\"options16\":{\"name\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"value\":\"phone-office\"},\"options12\":{\"name\":\"\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u044b\\u0439 Wi-Fi\",\"value\":\"wifi\"},\"options13\":{\"name\":\"\\u041d\\u0430\\u043f\\u043e\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u0435\\u0441\\u044b\",\"value\":\"weight\"},\"options14\":{\"name\":\"\\u0414\\u043e\\u043a-\\u0441\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f iPod\\/iPhone\",\"value\":\"charging-station\"},\"options15\":{\"name\":\"\\u041d\\u0430\\u0431\\u043e\\u0440\\u044b \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0447\\u0430\\u044f \\u0438 \\u043a\\u043e\\u0444\\u0435 \\u0432 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0435\",\"value\":\"coffee\"},\"options17\":{\"name\":\"\\u041c\\u0435\\u0436\\u0434\\u0443\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0430\\u044f \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0430\\u044f \\u043b\\u0438\\u043d\\u0438\\u044f \\u0441 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0435\\u0439 \\u0433\\u043e\\u043b\\u043e\\u0441\\u043e\\u0432\\u043e\\u0439 \\u043f\\u043e\\u0447\\u0442\\u044b\",\"value\":\"phone-plus\"}}}', '*', '2019-04-24 12:49:39', 883, '2019-04-30 09:48:54', 883, 1),
(6, 101, 'com_content.article', 1, 'Площадь', 'square', 'Площадь', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"ruler-triangle\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"filter\":\"integer\",\"maxlength\":3}', '*', '2019-04-24 13:26:28', 883, '2019-04-24 15:07:05', 883, 1),
(7, 102, 'com_content.article', 1, 'Спальная', 'bed', 'Спальная', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"bed\\r\\n\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"filter\":\"integer\",\"maxlength\":\"\"}', '*', '2019-04-24 13:28:49', 883, '0000-00-00 00:00:00', 0, 1),
(8, 103, 'com_content.article', 1, 'План номера', 'plan', 'План номера', '', 'media', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"expand\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"directory\":\"\",\"preview\":\"\",\"image_class\":\"\"}', '*', '2019-04-24 13:39:03', 883, '0000-00-00 00:00:00', 0, 1),
(9, 104, 'com_content.article', 1, 'Галерея картинок', 'gallery', 'Галерея картинок', '', 'repeatable', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"fields\":{\"fields0\":{\"fieldname\":\"big\",\"fieldtype\":\"media\"},\"fields1\":{\"fieldname\":\"mini\",\"fieldtype\":\"media\"},\"fields2\":{\"fieldname\":\"alt\",\"fieldtype\":\"text\"}}}', '*', '2019-04-25 08:26:27', 883, '2019-04-25 08:58:44', 883, 1),
(10, 105, 'com_content.article', 1, 'Удобства в ванной комнате', 'addservices', 'Удобства в ванной комнате', '', 'checkboxes', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"1\",\"label_render_class\":\"border-title\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"options\":{\"options0\":{\"name\":\"\\u041f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043b\\u044f \\u0434\\u0443\\u0448\\u0430 \\u043c\\u0430\\u0440\\u043a\\u0438 Ferragamo\",\"value\":\"holly-berry\"},\"options1\":{\"name\":\"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u043d\",\"value\":\"wind\"},\"options2\":{\"name\":\"\\u0422\\u0430\\u043f\\u043e\\u0447\\u043a\\u0438\",\"value\":\"shoe-prints\"},\"options3\":{\"name\":\"\\u041c\\u0430\\u0445\\u0440\\u043e\\u0432\\u044b\\u0439 \\u0445\\u0430\\u043b\\u0430\\u0442\",\"value\":\"diagnoses\"}}}', '*', '2019-04-24 12:49:39', 883, '2019-04-26 11:25:18', 883, 1),
(12, 107, 'com_content.article', 1, 'Забронировать номер', 'booking', 'Забронировать номер', '', 'editor', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"0\",\"label_render_class\":\"\",\"display\":\"0\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"buttons\":0,\"width\":\"\",\"height\":\"\",\"filter\":\"safehtml\"}', '*', '2019-04-26 12:44:45', 883, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_fields_categories`
--

CREATE TABLE `klin_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_fields_categories`
--

INSERT INTO `klin_fields_categories` (`field_id`, `category_id`) VALUES
(1, 2),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(12, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_fields_groups`
--

CREATE TABLE `klin_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_fields_groups`
--

INSERT INTO `klin_fields_groups` (`id`, `asset_id`, `context`, `title`, `note`, `description`, `state`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`, `created`, `created_by`, `modified`, `modified_by`, `access`) VALUES
(1, 97, 'com_content.article', 'Room', '', '', 1, 0, '0000-00-00 00:00:00', 0, '{\"display_readonly\":\"1\"}', '*', '2019-04-19 11:05:51', 883, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_fields_values`
--

CREATE TABLE `klin_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_fields_values`
--

INSERT INTO `klin_fields_values` (`field_id`, `item_id`, `value`) VALUES
(1, '1', '{\"chess0\":{\"title\":\"\\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043f\\u044f\\u0442\\u0438\\u0437\\u0432\\u0435\\u0437\\u0434\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043e\\u0442\\u0435\\u043b\\u044c\",\"text\":\"<p>\\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0432 \\u0441\\u0442\\u0435\\u043d\\u0430\\u0445 \\u043e\\u0442\\u0435\\u043b\\u044f \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0432 \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0435 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438 \\u0438\\u043c\\u0435\\u043d\\u0438\\u0442\\u044b\\u0435 \\u0440\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u0437\\u0430\\u0440\\u0443\\u0431\\u0435\\u0436\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0438, \\u0430\\u043a\\u0442\\u0435\\u0440\\u044b, \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u0438 \\u0438 \\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u0438, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445: \\u041c\\u0430\\u0439\\u044f \\u041f\\u043b\\u0438\\u0441\\u0435\\u0446\\u043a\\u0430\\u044f, \\u0422\\u043e\\u043d\\u0438 \\u0411\\u043b\\u044d\\u0440, \\u0413\\u0430\\u0440\\u0440\\u0438 \\u041a\\u0430\\u0441\\u043f\\u0430\\u0440\\u043e\\u0432, \\u043f\\u0440\\u0438\\u043d\\u0446 \\u0427\\u0430\\u0440\\u043b\\u044c\\u0437 \\u0423\\u044d\\u043b\\u044c\\u0441\\u043a\\u0438\\u0439 \\u0438 \\u0434\\u0440.<\\/p>\",\"img\":\"images\\/Classic_suite\\/mid\\/Classic_suite_1.jpg\",\"source\":\"images\\/Classic_suite\\/mini\\/Classic_suite_1.jpg\",\"alt\":\"about\"},\"chess1\":{\"title\":\"\\u041a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442\\u043d\\u044b\\u0439 \\u043e\\u0442\\u0434\\u044b\\u0445 \\u0432 \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0435\",\"text\":\"<p>\\u041a \\u0443\\u0441\\u043b\\u0443\\u0433\\u0430\\u043c \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0432 \\u0421\\u041f\\u0431 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u0421\\u041f\\u0410-\\u0446\\u0435\\u043d\\u0442\\u0440, \\u0444\\u0438\\u0442\\u043d\\u0435\\u0441-\\u0437\\u0430\\u043b \\u0441 \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d\\u043e\\u043c, \\u0441\\u0430\\u043b\\u043e\\u043d \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u044b. \\u0422\\u0443\\u0440\\u0435\\u0446\\u043a\\u0430\\u044f \\u0438 \\u0444\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u0431\\u0430\\u043d\\u044f, \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u0441\\u043c\\u0435\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\\u044b, \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u0438\\u0434\\u043e\\u0432 \\u043c\\u0430\\u0441\\u0441\\u0430\\u0436\\u0430 \\u0441\\u0434\\u0435\\u043b\\u0430\\u044e\\u0442 \\u0432\\u0430\\u0448 \\u043e\\u0442\\u0434\\u044b\\u0445 \\u043d\\u0435\\u0437\\u0430\\u0431\\u044b\\u0432\\u0430\\u0435\\u043c\\u044b\\u043c \\u0438 \\u043f\\u043e\\u043c\\u043e\\u0433\\u0443\\u0442 \\u0440\\u0430\\u0441\\u0441\\u043b\\u0430\\u0431\\u0438\\u0442\\u044c\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u043e\\u043b\\u0433\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0433\\u0443\\u043b\\u043e\\u043a \\u043f\\u043e \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u043e\\u0432, \\u0441\\u0430\\u043b\\u043e\\u043d\\u043e\\u0432 \\u0438 \\u0431\\u0443\\u0442\\u0438\\u043a\\u043e\\u0432, \\u0433\\u0434\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u044b \\u043c\\u0438\\u0440\\u043e\\u0432\\u044b\\u0435 \\u0431\\u0440\\u0435\\u043d\\u0434\\u044b \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b, \\u043e\\u0431\\u0443\\u0432\\u0438, \\u0430\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u043e\\u0432. \\u041e\\u043a\\u0443\\u043d\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u0440\\u043e\\u0441\\u043a\\u043e\\u0448\\u044c \\u043e\\u0442\\u0434\\u044b\\u0445\\u0430 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043e\\u0442\\u0435\\u043b\\u044f \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f.<\\/p>\\r\\n<p>\\u0414\\u043b\\u044f \\u0434\\u0435\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447, \\u043a\\u043e\\u043d\\u0444\\u0435\\u0440\\u0435\\u043d\\u0446\\u0438\\u0439, \\u0432\\u044b\\u0441\\u0442\\u0430\\u0432\\u043e\\u043a \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0439 \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u043f\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432\\u043e\\u0440\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043d\\u0430\\u0442\\u044b, \\u0437\\u0430\\u043b\\u044b \\u0434\\u043b\\u044f \\u0431\\u0430\\u043d\\u043a\\u0435\\u0442\\u043e\\u0432 \\u0438 \\u043a\\u043e\\u043d\\u0444\\u0435\\u0440\\u0435\\u043d\\u0446\\u0438\\u0439, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u043c \\u043f\\u0440\\u0435\\u0437\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438 \\u043e\\u0440\\u0433\\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u043e\\u0439.<\\/p>\",\"img\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_2.jpg\",\"source\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_2.jpg\",\"alt\":\"about\"},\"chess2\":{\"title\":\"\\u0411\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043d\\u043e\\u043c\\u0435\\u0440\\u043e\\u0432\",\"text\":\"<p>\\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0432 \\u0421\\u041f\\u0431 \\u2013 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b \\u0440\\u043e\\u0441\\u043a\\u043e\\u0448\\u0438, \\u0441\\u043e\\u0447\\u0435\\u0442\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0432 \\u0441\\u0435\\u0431\\u0435 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0443\\u044e \\u0438\\u0437\\u044b\\u0441\\u043a\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u0438 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442 \\u043e\\u0442\\u0434\\u044b\\u0445\\u0430.<\\/p>\\r\\n<p>\\u041d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e\\u0439 \\u0431\\u0440\\u043e\\u043d\\u0438 \\u043d\\u043e\\u043c\\u0435\\u0440\\u043e\\u0432 \\u043f\\u043e \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c. \\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0435 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u043e\\u0435 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044e \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0430\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432. \\u0411\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u2013 \\u0440\\u043e\\u0441\\u043a\\u043e\\u0448\\u043d\\u044b\\u0439 \\u043e\\u0442\\u0434\\u044b\\u0445 \\u0441 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043e\\u0439 \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441.<\\/p>\",\"img\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_5.jpg\",\"source\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_5.jpg\",\"alt\":\"about\"}}'),
(1, '2', '{\"chess0\":{\"title\":\"\\u041a\\u0430\\u0444\\u0435 \\u00ab\\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\\u00bb\",\"text\":\"<p>\\u0418\\u0437\\u044b\\u0441\\u043a\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0430\\u043a\\u0448\\u0435\\u0440\\u0438 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u043e\\u043c \\u044d\\u0442\\u0430\\u0436\\u0435 \\u043f\\u044f\\u0442\\u0438\\u0437\\u0432\\u0435\\u0437\\u0434\\u043e\\u0447\\u043d\\u043e\\u0439 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b. \\u041a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044f \\u0437\\u0430\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u043b\\u0430\\u0441\\u044c \\u0441\\u043e\\u0432\\u043c\\u0435\\u0441\\u0442\\u043d\\u043e \\u0441 \\u0410\\u0440\\u0430\\u043c\\u043e\\u043c \\u041c\\u043d\\u0430\\u0446\\u043a\\u0430\\u043d\\u043e\\u0432\\u044b\\u043c \\u2013 \\u0437\\u043d\\u0430\\u0442\\u043e\\u043a\\u043e\\u043c \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u0434\\u0435\\u043b\\u0430.<\\/p>\\r\\n<p>\\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0444\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0433\\u043e\\u0441\\u0442\\u044f\\u043c \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u0440\\u0443\\u0441\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u0444\\u0440\\u0430\\u043d\\u0446\\u0443\\u0437\\u0441\\u043a\\u0438\\u0435 \\u0431\\u043b\\u044e\\u0434\\u0430 \\u0432 \\u0441\\u0432\\u043e\\u0435\\u043e\\u0431\\u0440\\u0430\\u0437\\u043d\\u043e\\u043c \\u0430\\u0432\\u0442\\u043e\\u0440\\u0441\\u043a\\u043e\\u043c \\u043f\\u0440\\u043e\\u0447\\u0442\\u0435\\u043d\\u0438\\u0438 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u0445 \\u0448\\u0435\\u0444-\\u043f\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u0430 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0432 \\u0421\\u041f\\u0431.<\\/p>\\r\\n<p>\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0438 \\u0438\\u0437\\u044b\\u0441\\u043a\\u0430\\u043d\\u043d\\u043e\\u0439 \\u043a\\u0443\\u0445\\u043d\\u0438 \\u0438 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0441\\u0441\\u0438\\u043a\\u0438 \\u043d\\u0430\\u0439\\u0434\\u0443\\u0442 \\u0432 \\u043c\\u0435\\u043d\\u044e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0438\\u043a\\u0440\\u044b \\u0441 \\u0431\\u043b\\u0438\\u043d\\u0430\\u043c\\u0438, \\u0442\\u0430\\u0440\\u0442\\u0430\\u0440 \\u0438\\u0437 \\u0442\\u0443\\u043d\\u0446\\u0430, \\u0434\\u0438\\u0447\\u044c \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u0431\\u043b\\u044e\\u0434\\u0430. \\u0412\\u0438\\u043d\\u043e\\u0442\\u0435\\u043a\\u0430 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u0430 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0432 \\u0421\\u041f\\u0431 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0443\\u044e \\u043a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u044e \\u0432\\u0438\\u043d \\u0438 \\u0448\\u0430\\u043c\\u043f\\u0430\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e, \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u044b\\u0445 \\u0443\\u0434\\u043e\\u0432\\u043b\\u0435\\u0442\\u0432\\u043e\\u0440\\u0438\\u0442\\u044c \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043f\\u0440\\u0438\\u0442\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u043a\\u0443\\u0441.<\\/p>\",\"img\":\"images\\/BAR\\/astoria_restaurant.jpg\",\"source\":\"images\\/BAR\\/mini\\/astoria_restaurant.jpg\",\"alt\":\"cafe_astoria\"},\"chess1\":{\"title\":\"\\u041b\\u043e\\u0431\\u0431\\u0438-\\u0431\\u0430\\u0440 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0430\\u044f \\u00ab\\u0420\\u043e\\u0442\\u043e\\u043d\\u0434\\u0430\\u00bb\",\"text\":\"<p>\\u041b\\u043e\\u0431\\u0431\\u0438-\\u0431\\u0430\\u0440 \\u0432\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442 \\u0434\\u043e 60 \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0438 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u043e\\u043c \\u044d\\u0442\\u0430\\u0436\\u0435.<\\/p>\\r\\n<p>\\u0418\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440 \\u043f\\u0435\\u0440\\u0435\\u0434\\u0430\\u0435\\u0442 \\u0434\\u0443\\u0445 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u0433\\u043e \\u0432\\u0435\\u043a\\u0430 \\u2013 \\u0443\\u044e\\u0442\\u043d\\u044b\\u0435 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0435 \\u043a\\u0440\\u0435\\u0441\\u043b\\u0430, \\u043e\\u0431\\u0438\\u0442\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0445\\u0430\\u0442\\u043e\\u043c, \\u0441\\u0430\\u043c\\u043e\\u0432\\u0430\\u0440\\u044b, \\u0440\\u0430\\u0440\\u0438\\u0442\\u0435\\u0442\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u0443\\u044d\\u0442\\u043a\\u0438, \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u044b\\u0435 \\u0445\\u0440\\u0443\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043b\\u044e\\u0441\\u0442\\u0440\\u044b. \\u0422\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u0438 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0441\\u044c \\u0438 \\u043f\\u0440\\u0438 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0440\\u043e\\u0432\\u043a\\u0435 \\u0447\\u0430\\u0435\\u043f\\u0438\\u0442\\u0438\\u044f: \\u0447\\u0430\\u0439 \\u0434\\u043b\\u044f \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u043f\\u043e\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043f\\u043e\\u0441\\u0443\\u0434\\u0435 \\u0441 \\u0443\\u0437\\u043e\\u0440\\u043e\\u043c \\u00ab\\u043a\\u043e\\u0431\\u0430\\u043b\\u044c\\u0442\\u043e\\u0432\\u0430\\u044f \\u043a\\u043b\\u0435\\u0442\\u043a\\u0430\\u00bb \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430 \\u0437\\u043d\\u0430\\u043c\\u0435\\u043d\\u0438\\u0442\\u043e\\u0433\\u043e \\u0418\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u043e\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0444\\u0430\\u0440\\u0444\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430, \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0433\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0438\\u0437\\u044b\\u0441\\u043a\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0438 \\u0443\\u0442\\u043e\\u043d\\u0447\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0435\\u0439. \\u041f\\u043e\\u0441\\u043b\\u0435 15.00 \\u0447\\u0430\\u0435\\u043f\\u0438\\u0442\\u0438\\u044f \\u0432 \\u043b\\u043e\\u0431\\u0431\\u0438-\\u0431\\u0430\\u0440\\u0435 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e\\u0434 \\u0430\\u043a\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0435\\u043c\\u0435\\u043d\\u0442 \\u0430\\u0440\\u0444\\u044b.<\\/p>\\r\\n<p>\\u0412 \\u043b\\u043e\\u0431\\u0431\\u0438-\\u0431\\u0430\\u0440\\u0435 \\u00ab\\u0420\\u043e\\u0442\\u043e\\u043d\\u0434\\u0430\\u00bb \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u043f\\u043e\\u0442\\u0447\\u0443\\u044e\\u0442 \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u043c \\u0438 \\u0440\\u0443\\u0441\\u0441\\u043a\\u0438\\u043c \\u0447\\u0430\\u0435\\u043c \\u0441 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0437\\u0430\\u043a\\u0443\\u0441\\u043a\\u0430\\u043c\\u0438: \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u043b\\u0438\\u043d\\u0430\\u043c\\u0438 \\u0441 \\u0438\\u043a\\u0440\\u043e\\u0439, \\u0432\\u0430\\u0440\\u0435\\u043d\\u044c\\u0435\\u043c \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u043c\\u0438 \\u043d\\u0430\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438, \\u0441\\u0435\\u043d\\u0434\\u0432\\u0438\\u0447\\u0430\\u043c\\u0438, \\u0441\\u0432\\u0435\\u0436\\u0435\\u0439 \\u0432\\u044b\\u043f\\u0435\\u0447\\u043a\\u043e\\u0439 \\u0438 \\u0430\\u0432\\u0442\\u043e\\u0440\\u0441\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0435\\u0441\\u0435\\u0440\\u0442\\u0430\\u043c\\u0438, \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0432 Astoria Chocolatier.<\\/p>\",\"img\":\"images\\/BAR\\/Borsalino.jpg\",\"source\":\"images\\/BAR\\/mini\\/Borsalino.jpg\",\"alt\":\"\\u0420\\u043e\\u0442\\u043e\\u043d\\u0434\\u0430\"},\"chess2\":{\"title\":\"\\u0411\\u0430\\u0440 \\u00abLichfield\\u00bb\",\"text\":\"<p>\\u0411\\u0430\\u0440 \\u041b\\u0438\\u0447\\u0444\\u0438\\u043b\\u0434 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d \\u0432 \\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0433\\u043e \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0430 \\u0431\\u0440\\u0438\\u0442\\u0430\\u043d\\u0441\\u043a\\u043e\\u0439 \\u043c\\u043e\\u043d\\u0430\\u0440\\u0445\\u0438\\u0438 \\u2013 \\u041f\\u0430\\u0442\\u0440\\u0438\\u043a\\u0430 \\u041b\\u0438\\u0447\\u0444\\u0438\\u043b\\u0434\\u0430 \\u0438 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u043e\\u043c \\u044d\\u0442\\u0430\\u0436\\u0435 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b, \\u043a\\u0430\\u043a \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u044b \\u043e\\u0442\\u0435\\u043b\\u044f \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f.<\\/p>\\r\\n<p>\\u0414\\u0443\\u0445 \\u043a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e\\u0439 \\u0410\\u043d\\u0433\\u043b\\u0438\\u0438 \\u043f\\u0435\\u0440\\u0435\\u0434\\u0430\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440, \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0432 \\u0431\\u043e\\u0440\\u0434\\u043e\\u0432\\u044b\\u0445 \\u0442\\u043e\\u043d\\u0430\\u0445, \\u0434\\u0435\\u043a\\u043e\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0431\\u0435\\u043b\\u044c\\u044e \\u0438\\u0437 \\u0442\\u0435\\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0435\\u0440\\u0435\\u0432\\u0430, \\u0442\\u044f\\u0436\\u0435\\u043b\\u044b\\u043c\\u0438 \\u043f\\u043e\\u0440\\u0442\\u044c\\u0435\\u0440\\u0430\\u043c\\u0438, \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u0430\\u043c\\u0438 \\u0438 \\u0440\\u0435\\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0433\\u043e \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0430.<\\/p>\\r\\n<p>\\u041c\\u0435\\u043d\\u044e \\u0431\\u0430\\u0440\\u0430 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0438\\u0437\\u044b\\u0441\\u043a \\u0438 \\u0448\\u0438\\u043a \\u2013 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0447\\u0442\\u0435\\u043d\\u0438\\u044f \\u0431\\u043b\\u044e\\u0434 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0439 \\u043a\\u0443\\u0445\\u043d\\u0438. \\u0423 \\u0446\\u0435\\u043d\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0441\\u043f\\u0438\\u0440\\u0442\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0438\\u0442\\u043a\\u043e\\u0432, \\u043f\\u043e\\u0441\\u0435\\u0442\\u0438\\u0432 \\u044d\\u0442\\u043e\\u0442 \\u0431\\u0430\\u0440, \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043f\\u0440\\u043e\\u0431\\u043e\\u0432\\u0430\\u0442\\u044c \\u044d\\u043b\\u0438\\u0442\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0440\\u0442\\u0430 \\u0432\\u0438\\u0441\\u043a\\u0438, \\u0432\\u044b\\u043f\\u0438\\u0442\\u044c \\u0432\\u043a\\u0443\\u0441\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043a\\u0442\\u0435\\u0439\\u043b\\u044c \\u0438 \\u0432\\u044b\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0441\\u0438\\u0433\\u0430\\u0440\\u0443.<\\/p>\",\"img\":\"images\\/BAR\\/Lichfield_Bar.jpg\",\"source\":\"images\\/BAR\\/mini\\/Lichfield_Bar.jpg\",\"alt\":\"Lichfield\"}}'),
(6, '4', '25'),
(7, '4', '2'),
(8, '4', 'images/plan/RFH-Hotel-Astoria-Junior-Suite.jpg'),
(9, '4', '{\"gallery0\":{\"big\":\"images\\/Classic_room\\/mid\\/Classic_room_1.jpg\",\"mini\":\"images\\/Classic_room\\/mini\\/Classic_room_1.jpg\",\"alt\":\"Classic room-1\"},\"gallery1\":{\"big\":\"images\\/Classic_room\\/mid\\/Classic_room_2.jpg\",\"mini\":\"images\\/Classic_room\\/mini\\/Classic_room_2.jpg\",\"alt\":\"Classic room-2\"}}'),
(12, '4', '<h4>Забронировать стандартный номер в отеле Астория:</h4>\r\n<p>Бронирование номеров осуществляется на сайте и по телефонам. Заполните форму, или позвоните по указанному телефону и получите лучшее предложение на бронирование номера Classic room в гостинице Астория.</p>'),
(1, '3', '{\"chess0\":{\"title\":\"\\u041a\\u0430\\u043a \\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c\\u0441\\u044f \\u0434\\u043e \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b\",\"text\":\"<p>\\u0411\\u043b\\u0438\\u0436\\u0430\\u0439\\u0448\\u0435\\u0435 \\u043a \\u043e\\u0442\\u0435\\u043b\\u044e \\u043c\\u0435\\u0442\\u0440\\u043e \\u2013 \\u0441\\u0442.\\u043c. \\u0410\\u0434\\u043c\\u0438\\u0440\\u0430\\u043b\\u0442\\u0435\\u0439\\u0441\\u043a\\u0430\\u044f. \\u041e\\u0442 \\u0441\\u0442\\u0430\\u043d\\u0446\\u0438\\u0438 \\u0442\\u0443\\u0440\\u0438\\u0441\\u0442 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c\\u0441\\u044f \\u043f\\u0435\\u0448\\u043a\\u043e\\u043c. \\u0412\\u044b\\u0439\\u0434\\u044f \\u0438\\u0437 \\u043c\\u0435\\u0442\\u0440\\u043e, \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043e \\u0438 \\u0434\\u043e\\u0439\\u0442\\u0438 \\u0434\\u043e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0433\\u043e \\u043f\\u0435\\u0440\\u0435\\u043a\\u0440\\u0435\\u0441\\u0442\\u043a\\u0430, \\u043f\\u0435\\u0440\\u0435\\u0441\\u0435\\u043a\\u0430\\u044e\\u0449\\u0435\\u0433\\u043e \\u0443\\u043b. \\u0411\\u043e\\u043b\\u044c\\u0448\\u0430\\u044f \\u041c\\u043e\\u0440\\u0441\\u043a\\u0430\\u044f. \\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u043d\\u0443\\u0442\\u044c \\u0435\\u0449\\u0435 \\u0440\\u0430\\u0437 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043e \\u0438 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u0435\\u0449\\u0435 300 \\u043c. \\u043f\\u043e \\u0443\\u043b\\u0438\\u0446\\u0435. \\u0412\\u0440\\u0435\\u043c\\u044f \\u0432 \\u043f\\u0443\\u0442\\u0438 \\u2013 5 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043f\\u0435\\u0448\\u043a\\u043e\\u043c.<\\/p>\\r\\n<p>\\u041e\\u0442 \\u0430\\u044d\\u0440\\u043e\\u043f\\u043e\\u0440\\u0442\\u0430 \\u041f\\u0443\\u043b\\u043a\\u043e\\u0432\\u043e \\u0434\\u043e \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u0442\\u0430\\u043a\\u0441\\u0438. \\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u043a \\u0443\\u0441\\u043b\\u0443\\u0433\\u0430\\u043c \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0442\\u0430\\u043a\\u0441\\u0438 \\u0432 \\u0430\\u044d\\u0440\\u043e\\u043f\\u043e\\u0440\\u0442\\u0443, \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\\u0432 \\u0435\\u0433\\u043e \\u043d\\u0430 \\u0444\\u0438\\u0440\\u043c\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u0435.<\\/p>\\r\\n<p>\\u041e\\u0442 \\u0436\\u0435\\u043b\\u0435\\u0437\\u043d\\u043e\\u0434\\u043e\\u0440\\u043e\\u0436\\u043d\\u044b\\u0445 \\u0432\\u043e\\u043a\\u0437\\u0430\\u043b\\u043e\\u0432 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0434\\u043e \\u043e\\u0442\\u0435\\u043b\\u044f \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0435\\u0442\\u0440\\u043e \\u0438\\u043b\\u0438 \\u0442\\u0430\\u043a\\u0441\\u0438.<\\/p>\\r\\n<p>\\u0413\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0440\\u0430\\u0439\\u043e\\u043d\\u0435 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430 \\u2013 \\u043d\\u0430 \\u0418\\u0441\\u0430\\u0430\\u043a\\u0438\\u0435\\u0432\\u0441\\u043a\\u043e\\u0439 \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u0438.<\\/p>\\r\\n<p>\\u0420\\u044f\\u0434\\u043e\\u043c \\u0441 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435\\u0439 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u044b \\u0434\\u043e\\u0441\\u0442\\u043e\\u043f\\u0440\\u0438\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430, \\u0431\\u043e\\u043b\\u044c\\u0448\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0438\\u0437 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u2013 \\u0432 \\u043f\\u0435\\u0448\\u0435\\u0439 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0441\\u0442\\u0438. \\u0421\\u0445\\u043e\\u0434\\u0438\\u0432 \\u043e\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0432 \\u0438\\u043c\\u043f\\u0440\\u043e\\u0432\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044e \\u043f\\u043e \\u0421\\u0430\\u043d\\u043a\\u0442--\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0443, \\u0443 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c:<\\/p>\",\"img\":\"images\\/BANNER\\/location_3.jpg\",\"source\":\"images\\/BANNER\\/mini\\/location_3.jpg\",\"alt\":\"\"},\"chess1\":{\"title\":\"\\u0411\\u043b\\u0438\\u0436\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0434\\u043e\\u0441\\u0442\\u043e\\u043f\\u0440\\u0438\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438\",\"text\":\"<ul>\\r\\n<li>\\u0418\\u0441\\u0430\\u0430\\u043a\\u0438\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0441\\u043e\\u0431\\u043e\\u0440;<\\/li>\\r\\n<li>\\u041c\\u0430\\u0440\\u0438\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0432\\u043e\\u0440\\u0435\\u0446;<\\/li>\\r\\n<li>\\u041c\\u0430\\u0440\\u0438\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0442\\u0435\\u0430\\u0442\\u0440;<\\/li>\\r\\n<li>\\u0412\\u044b\\u0441\\u0442\\u0430\\u0432\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043b \\u00ab\\u041c\\u0430\\u043d\\u0435\\u0436\\u00bb<\\/li>\\r\\n<li>\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 \\u043c\\u0443\\u0437\\u0435\\u0439;<\\/li>\\r\\n<li>\\u041a\\u0443\\u043d\\u0441\\u0442\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430;<\\/li>\\r\\n<li>\\u041a\\u0440\\u0435\\u0439\\u0441\\u0435\\u0440 \\u00ab\\u0410\\u0432\\u0440\\u043e\\u0440\\u0430\\u00bb;<\\/li>\\r\\n<li>\\u0421\\u043f\\u0430\\u0441 \\u043d\\u0430 \\u041a\\u0440\\u043e\\u0432\\u0438;<\\/li>\\r\\n<li>\\u041f\\u0435\\u0442\\u0440\\u043e\\u043f\\u0430\\u0432\\u043b\\u043e\\u0432\\u0441\\u043a\\u0443\\u044e \\u043a\\u0440\\u0435\\u043f\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n<li>\\u041d\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0435.<\\/li>\\r\\n<\\/ul>\",\"img\":\"images\\/BANNER\\/location.jpg\",\"source\":\"images\\/BANNER\\/mini\\/location.jpg\",\"alt\":\"\"},\"chess2\":{\"title\":\"\",\"text\":\"<p>\\u041f\\u0435\\u0440\\u0435\\u0434 \\u043f\\u0440\\u043e\\u0433\\u0443\\u043b\\u043a\\u043e\\u0439 \\u043f\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0443 \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u0438\\u043b\\u0438 \\u043f\\u043b\\u0430\\u043d \\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0430, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u0432\\u043e\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0435\\u0441\\u044c \\u0443\\u0441\\u043b\\u0443\\u0433\\u0430\\u043c\\u0438 \\u0433\\u0438\\u0434\\u0430, \\u0442\\u043e \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u043d\\u0435\\u0437\\u0430\\u0431\\u044b\\u0432\\u0430\\u0435\\u043c\\u0443\\u044e \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044e \\u043f\\u043e \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0443, \\u0443\\u0441\\u043b\\u044b\\u0448\\u0438\\u0442\\u0435 \\u043c\\u043d\\u043e\\u0433\\u043e \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0445 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0439 \\u0438 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0444\\u0430\\u043a\\u0442\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0414\\u043e \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0434\\u043e\\u0441\\u0442\\u043e\\u043f\\u0440\\u0438\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0435\\u0439 \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430 \\u0432\\u044b \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0434\\u043e\\u0431\\u0440\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0435\\u0442\\u0440\\u043e, \\u0441\\u043f\\u0443\\u0441\\u0442\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u0432 \\u043e\\u0434\\u043d\\u0443 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0433\\u043b\\u0443\\u0431\\u043e\\u043a\\u0438\\u0439 \\u0441\\u0442\\u0430\\u043d\\u0446\\u0438\\u0439 \\u043c\\u0435\\u0442\\u0440\\u043e \\u0432 \\u043c\\u0438\\u0440\\u0435 \\u2013 \\u0410\\u0434\\u043c\\u0438\\u0440\\u0430\\u043b\\u0442\\u0435\\u0439\\u0441\\u043a\\u0443\\u044e.<\\/p>\\r\\n<p>\\u0422\\u0430\\u043a \\u0432\\u044b \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0433\\u0443\\u043b\\u044f\\u0442\\u044c\\u0441\\u044f \\u043f\\u043e \\u041a\\u0440\\u0435\\u0441\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u043c\\u0443 \\u043e\\u0441\\u0442\\u0440\\u043e\\u0432\\u0443, \\u043f\\u043e\\u0441\\u0435\\u0442\\u0438\\u0442\\u044c \\u043c\\u0443\\u0437\\u0435\\u0439 \\u0410\\u0440\\u043a\\u0442\\u0438\\u043a\\u0438 \\u0438 \\u0410\\u043d\\u0442\\u0430\\u0440\\u043a\\u0442\\u0438\\u043a\\u0438, \\u0434\\u043e\\u043c-\\u043c\\u0443\\u0437\\u0435\\u0439 \\u0424.\\u041c. \\u0414\\u043e\\u0441\\u0442\\u043e\\u0435\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e, \\u043f\\u043e\\u0441\\u0435\\u0442\\u0438\\u0442\\u044c \\u043c\\u0443\\u0437\\u0435\\u0439 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0435 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u044b.<\\/p>\",\"img\":\"images\\/BANNER\\/location_2.jpg\",\"source\":\"images\\/BANNER\\/mini\\/location_2.jpg\",\"alt\":\"\"}}'),
(9, '5', '{\"gallery0\":{\"big\":\"images\\/Deluxe_room\\/mid\\/Deluxe_room.jpg\",\"mini\":\"\",\"alt\":\"Deluxe room\"}}'),
(6, '5', '25'),
(7, '5', '2'),
(12, '5', '<h4>Забронировать номер Deluxe в отеле Астория:</h4>\r\n<p>У вас есть уникальная возможность забронировать номер в пятизвездочном отеле Астория по супер низкой цене. Заполните форму обратной связи и получите уникальное предложение по стоимости. Забронировать номер вы также можете позвонив по телефонам, указанным на сайте.</p>'),
(9, '6', '{\"gallery0\":{\"big\":\"images\\/Superior_deluxe_room\\/mid\\/Superior_deluxe_room_1.jpg\",\"mini\":\"images\\/Superior_deluxe_room\\/mini\\/Superior_deluxe_room_1.jpg\",\"alt\":\"Superior deluxe room-1\"},\"gallery1\":{\"big\":\"images\\/Superior_deluxe_room\\/mid\\/Superior_deluxe_room_3.jpg\",\"mini\":\"images\\/Superior_deluxe_room\\/mini\\/Superior_deluxe_room_3.jpg\",\"alt\":\"Superior deluxe room-2\"}}'),
(6, '6', '25'),
(7, '6', '2'),
(12, '6', '<h4>Забронировать номер увеличенной площади в отеле Астория:</h4>\r\n<p>Бронирование гостиничного номера Superior deluxe в отеле Астория осуществляется по телефонам, указанным на сайте, или через форму заявки. Позвоните по указанному на сайте номеру, и получите уникальное предложение на бронирование этого номера на удобные даты.</p>'),
(6, '7', '44'),
(7, '7', '2'),
(9, '7', '{\"gallery0\":{\"big\":\"images\\/Studio_view_room\\/mid\\/Studio_view_room_1.jpg\",\"mini\":\"images\\/Studio_view_room\\/mini\\/Studio_view_room_1.jpg\",\"alt\":\"Studio view room-1\"},\"gallery1\":{\"big\":\"images\\/Studio_view_room\\/mid\\/Studio_view_room_2.jpg\",\"mini\":\"images\\/Studio_view_room\\/mini\\/Studio_view_room_2.jpg\",\"alt\":\"Studio view room-2\"},\"gallery2\":{\"big\":\"images\\/Studio_view_room\\/mid\\/Studio_view_room_3.jpg\",\"mini\":\"images\\/Studio_view_room\\/mini\\/Studio_view_room_3.jpg\",\"alt\":\"Studio view room-3\"}}'),
(12, '7', '<h4>Забронировать двухместный номер Studio room в отеле Астория:</h4>\r\n<p>Снять номер в отеле вы можете, заполнив форму обратной связи на сайте. Только сегодня при заказе апартаментов вы получаете уникальное ценовое предложение. Также снять номер в отеле в центре Петербурга вы можете по телефонам, указанным на сайте. Наши консультанты ответят на все ваши вопросы.</p>'),
(6, '8', '45'),
(7, '8', '2'),
(9, '8', '{\"gallery0\":{\"big\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_1.jpg\",\"mini\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_1.jpg\",\"alt\":\"Deluxe junior suite-1\"},\"gallery1\":{\"big\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_2.jpg\",\"mini\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_2.jpg\",\"alt\":\"Deluxe junior suite-2\"},\"gallery2\":{\"big\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_3.jpg\",\"mini\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_3.jpg\",\"alt\":\"Deluxe junior suite-3\"},\"gallery3\":{\"big\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_4.jpg\",\"mini\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_4.jpg\",\"alt\":\"Deluxe junior suite-4\"},\"gallery4\":{\"big\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_5.jpg\",\"mini\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_5.jpg\",\"alt\":\"Deluxe junior suite-5\"},\"gallery5\":{\"big\":\"images\\/Deluxe_junior_suite\\/mid\\/Deluxe_junior_suite_6.jpg\",\"mini\":\"images\\/Deluxe_junior_suite\\/mini\\/Deluxe_junior_suite_6.jpg\",\"alt\":\"Deluxe junior suite-6\"}}'),
(12, '8', '<h4>Забронировать полулюкс в отеле Астория:</h4>\r\n<p>Бронирование номера осуществляется после заполнения формы обратной связи на сайте. Только сегодня действует специальное предложение по цене на просторные апартаменты класса делюкс. Бронь номера также легко сделать по телефонам, указанным на сайте.</p>\r\n<p>Почувствуйте королевский комфорт, отдыхая в центре Санкт-Петербурга.</p>'),
(6, '9', '45'),
(7, '9', '2'),
(9, '9', '{\"gallery0\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_1.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_1.jpg\",\"alt\":\"Junior suite-1\"},\"gallery1\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_2.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_2.jpg\",\"alt\":\"Junior suite-2\"},\"gallery2\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_3.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_3.jpg\",\"alt\":\"Junior suite-3\"},\"gallery3\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_4.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_4.jpg\",\"alt\":\"Junior suite-4\"},\"gallery4\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_5.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_5.jpg\",\"alt\":\"Junior suite-5\"},\"gallery5\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_6.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_6.jpg\",\"alt\":\"Junior suite-6\"},\"gallery6\":{\"big\":\"images\\/Junior_suite\\/mid\\/Junior_suite_7.jpg\",\"mini\":\"images\\/Junior_suite\\/mini\\/Junior_suite_7.jpg\",\"alt\":\"Junior suite-7\"}}'),
(12, '9', '<h4>Забронировать одноместный или двухместный номер Junior suite в отеле Астория:</h4>\r\n<p>Узнайте цену гостиничного номера по телефонам, указанным на сайте или заполнив заявку по телефонам.</p>'),
(6, '10', '50'),
(7, '10', '2'),
(9, '10', '{\"gallery0\":{\"big\":\"images\\/Classic_suite\\/mid\\/Classic_suite_1.jpg\",\"mini\":\"images\\/Classic_suite\\/mini\\/Classic_suite_1.jpg\",\"alt\":\"Classic suite\"},\"gallery1\":{\"big\":\"images\\/Classic_suite\\/mid\\/Classic_suite_2.jpg\",\"mini\":\"images\\/Classic_suite\\/mini\\/Classic_suite_2.jpg\",\"alt\":\"Classic suite\"}}'),
(12, '10', '<p>&lt;h4&gt;Забронировать номер люкс в отеле Астория:&lt;/h4&gt;<br />&lt;p&gt;Узнайте стоимость номеров в гостинице Астория по телефонам, указанным на сайте. Заполните форму обратной связи и получите уникальное предложение по бронированию номера люкс в отеле в самом сердце города.&lt;/p&gt;</p>'),
(6, '11', '60'),
(7, '11', '2'),
(9, '11', '{\"gallery0\":{\"big\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_1.jpg\",\"mini\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_1.jpg\",\"alt\":\"Deluxe suite-1\"},\"gallery1\":{\"big\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_2.jpg\",\"mini\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_2.jpg\",\"alt\":\"Deluxe suite-2\"},\"gallery2\":{\"big\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_3.jpg\",\"mini\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_3.jpg\",\"alt\":\"Deluxe suite-3\"},\"gallery3\":{\"big\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_4.jpg\",\"mini\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_4.jpg\",\"alt\":\"Deluxe suite-4\"},\"gallery4\":{\"big\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_5.jpg\",\"mini\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_5.jpg\",\"alt\":\"Deluxe suite-5\"},\"gallery5\":{\"big\":\"images\\/Deluxe_suite\\/mid\\/Deluxe_suite_6.jpg\",\"mini\":\"images\\/Deluxe_suite\\/mini\\/Deluxe_suite_6.jpg\",\"alt\":\"Deluxe suite-6\"}}'),
(12, '11', '<h4>Забронировать номер люкс Deluxe suite в пятизвездочном отеле Астория СПб:</h4>\r\n<p>Бронирование номеров в пятизвездочном отеле Астория СПб осуществляется при заполнении формы на сайте или по звонку на телефон, указанный на сайте. Позвоните сегодня и получите уникальное ценовое предложение на номера в Астории СПб.</p>'),
(6, '12', '60'),
(7, '12', '2'),
(9, '12', '{\"gallery0\":{\"big\":\"images\\/Ambassador_suite\\/mid\\/Ambassador_suite_1.jpg\",\"mini\":\"images\\/Ambassador_suite\\/mini\\/Ambassador_suite_1.jpg\",\"alt\":\"Ambassador suite-1\"},\"gallery1\":{\"big\":\"images\\/Ambassador_suite\\/mid\\/Ambassador_suite_2.jpg\",\"mini\":\"images\\/Ambassador_suite\\/mini\\/Ambassador_suite_2.jpg\",\"alt\":\"Ambassador suite-2\"},\"gallery2\":{\"big\":\"images\\/Ambassador_suite\\/mid\\/Ambassador_suite_3.jpg\",\"mini\":\"images\\/Ambassador_suite\\/mini\\/Ambassador_suite_3.jpg\",\"alt\":\"Ambassador suite-3\"},\"gallery3\":{\"big\":\"images\\/Ambassador_suite\\/mid\\/Ambassador_suite_4.jpg\",\"mini\":\"images\\/Ambassador_suite\\/mini\\/Ambassador_suite_4.jpg\",\"alt\":\"Ambassador suite-4\"},\"gallery4\":{\"big\":\"images\\/Ambassador_suite\\/mid\\/Ambassador_suite_5.jpg\",\"mini\":\"images\\/Ambassador_suite\\/mini\\/Ambassador_suite_5.jpg\",\"alt\":\"Ambassador suite-5\"}}'),
(12, '12', '<h4>Забронировать премиум люкс в отеле Астория Санкт-Петербург:</h4>\r\n<p>В стоимость номеров в отеле Астория входит завтрак, глажка одной вещи, регистрация заезда в номере. Узнайте обо всех дополнительных услугах при бронировании номеров класса люкс.</p>\r\n<p>Гостиница Астория предлагает уникальное ценовое предложение при бронировании номеров через сайт или по указанным телефонам. Звоните или заполняйте форму обратного звонка и бронируйте номера в Астории по самым выгодным ценам в Санкт-Петербурге.</p>'),
(6, '13', '108'),
(7, '13', '4'),
(9, '13', '{\"gallery0\":{\"big\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_1.jpg\",\"mini\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_1.jpg\",\"alt\":\"Presidential suite-1\"},\"gallery1\":{\"big\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_2.jpg\",\"mini\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_2.jpg\",\"alt\":\"Presidential suite-2\"},\"gallery2\":{\"big\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_3.jpg\",\"mini\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_3.jpg\",\"alt\":\"Presidential suite-3\"},\"gallery3\":{\"big\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_4.jpg\",\"mini\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_4.jpg\",\"alt\":\"Presidential suite-4\"},\"gallery4\":{\"big\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_5.jpg\",\"mini\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_5.jpg\",\"alt\":\"Presidential suite-5\"},\"gallery5\":{\"big\":\"images\\/Presidential_suite\\/mid\\/Presidential_suite_6.jpg\",\"mini\":\"images\\/Presidential_suite\\/mini\\/Presidential_suite_6.jpg\",\"alt\":\"Presidential suite-6\"}}'),
(12, '13', '<h4>Забронировать президентский люкс в отеле Астория Санкт-Петербург:</h4>\r\n<p>На сайте есть возможность забронировать люкс по выгодной цене. Для этого необходимо заполнить форму обратной связи и дождаться звонка менеджера. Также забронировать люкс и получить персональное ценовое предложение вы можете, позвонив по телефонам, указанным на сайте.</p>'),
(6, '14', '108'),
(7, '14', '2'),
(9, '14', '{\"gallery0\":{\"big\":\"images\\/Royal_suite\\/mid\\/Royal_suite_1.jpg\",\"mini\":\"images\\/Royal_suite\\/mini\\/Royal_suite_1.jpg\",\"alt\":\"Royal suit-1\"},\"gallery1\":{\"big\":\"images\\/Royal_suite\\/mid\\/Royal_suite_2.jpg\",\"mini\":\"images\\/Royal_suite\\/mini\\/Royal_suite_2.jpg\",\"alt\":\"Royal suite-2\"},\"gallery2\":{\"big\":\"images\\/Royal_suite\\/mid\\/Royal_suite_3.jpg\",\"mini\":\"images\\/Royal_suite\\/Royal_suite_3.jpg\",\"alt\":\"Royal suite-3\"}}'),
(12, '14', '<h4>Забронировать королевский номер люкс в отеле Астория Санкт-Петербург:</h4>\r\n<p>Бронирование королевского номера люкс в отеле Астория осуществляется по телефонам или после заполнения формы обратного звонка на сайте. Получите уникальное предложение по бронированию номера класса люкс сегодня, позвонив по указанному на сайте номеру телефона.</p>'),
(6, '15', '310'),
(7, '15', '1'),
(9, '15', '{\"gallery0\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_10.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_10.jpg\",\"alt\":\"Tsar suite-1\"},\"gallery1\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_11.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_11.jpg\",\"alt\":\"Tsar suite-2\"},\"gallery2\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_12.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_12.jpg\",\"alt\":\"Tsar suite-3\"},\"gallery3\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_13.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_13.jpg\",\"alt\":\"Tsar suite-4\"},\"gallery4\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_14.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_13.jpg\",\"alt\":\"Tsar suite-5\"},\"gallery5\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_2.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_2.jpg\",\"alt\":\"Tsar suite-6\"},\"gallery6\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_3.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_3.jpg\",\"alt\":\"Tsar suite-7\"},\"gallery7\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_4.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_4.jpg\",\"alt\":\"Tsar suite-8\"},\"gallery8\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_5.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_5.jpg\",\"alt\":\"Tsar suite-9\"},\"gallery9\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_6.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_6.jpg\",\"alt\":\"Tsar suite-10\"},\"gallery10\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_7.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_7.jpg\",\"alt\":\"Tsar suite-11\"},\"gallery11\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_8.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_8.jpg\",\"alt\":\"Tsar suite-12\"},\"gallery12\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_9.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_9.jpg\",\"alt\":\"Tsar suite-13\"},\"gallery13\":{\"big\":\"images\\/Tsar_suite\\/mid\\/Tsar_suite_1.jpg\",\"mini\":\"images\\/Tsar_suite\\/Tsar_suite_1.jpg\",\"alt\":\"Tsar suite-14\"}}'),
(12, '15', '<h4>Забронировать Царский люкс в отеле Астория Санкт-Петербург:</h4>\r\n<p>У вас есть уникальная возможность забронировать номер в отеле Астория и получить выгодное предложение по цене. Для этого необходимо заполнить форму заявки. Также вы можете забронировать номер в отеле по телефонам, указанным на сайте.</p>'),
(8, '12', 'images/Ambassador_suite/plan/Ambassador_suite.jpg'),
(8, '10', 'images/Classic_suite/plan/Classic_suite.jpg'),
(8, '11', 'images/Deluxe_junior_suite/plan/Deluxe_junior_suite.jpg'),
(8, '9', 'images/Junior_suite/plan/Junior-Suite.jpg'),
(8, '13', 'images/Presidential_suite/plan/Presidential_suite.jpg'),
(8, '14', 'images/Royal_suite/plan/Royal_suite.jpg'),
(8, '15', 'images/Tsar_suite/plan/Tsar_suite.jpg'),
(5, '4', 'couch'),
(5, '4', 'loveseat'),
(5, '4', 'chair'),
(5, '4', 'keynote'),
(5, '4', 'calculator'),
(5, '4', 'sack-dollar'),
(5, '4', 'wind-warning'),
(5, '4', 'tv'),
(5, '4', 'mug-hot'),
(5, '4', 'wifi'),
(5, '4', 'weight'),
(10, '4', 'holly-berry'),
(10, '4', 'wind'),
(10, '4', 'shoe-prints'),
(10, '4', 'diagnoses'),
(5, '5', 'couch'),
(5, '5', 'loveseat'),
(5, '5', 'chair'),
(5, '5', 'keynote'),
(5, '5', 'calculator'),
(5, '5', 'sack-dollar'),
(5, '5', 'wind-warning'),
(5, '5', 'tv'),
(5, '5', 'glass-whiskey-rocks'),
(5, '5', 'mug-hot'),
(5, '5', 'weight'),
(10, '5', 'holly-berry'),
(10, '5', 'wind'),
(10, '5', 'shoe-prints'),
(10, '5', 'diagnoses'),
(5, '6', 'loveseat'),
(5, '6', 'keynote'),
(5, '6', 'calculator'),
(5, '6', 'sack-dollar'),
(5, '6', 'wind-warning'),
(5, '6', 'tv'),
(5, '6', 'glass-whiskey-rocks'),
(5, '6', 'wifi'),
(10, '6', 'holly-berry'),
(10, '6', 'wind'),
(10, '6', 'shoe-prints'),
(10, '6', 'diagnoses'),
(5, '7', 'couch'),
(5, '7', 'loveseat'),
(5, '7', 'chair'),
(5, '7', 'keynote'),
(5, '7', 'calculator'),
(5, '7', 'sack-dollar'),
(5, '7', 'wind-warning'),
(5, '7', 'tv'),
(5, '7', 'glass-whiskey-rocks'),
(5, '7', 'mug-hot'),
(5, '7', 'wifi'),
(5, '7', 'weight'),
(10, '7', 'holly-berry'),
(10, '7', 'wind'),
(10, '7', 'shoe-prints'),
(10, '7', 'diagnoses'),
(5, '9', 'couch'),
(5, '9', 'loveseat'),
(5, '9', 'calculator'),
(5, '9', 'cabinet-filing'),
(5, '9', 'sack-dollar'),
(5, '9', 'wind-warning'),
(5, '9', 'tv'),
(5, '9', 'glass-whiskey-rocks'),
(5, '9', 'blender'),
(5, '9', 'mug-hot'),
(5, '9', 'phone-office'),
(5, '9', 'wifi'),
(5, '9', 'phone-plus'),
(10, '9', 'holly-berry'),
(10, '9', 'wind'),
(10, '9', 'shoe-prints'),
(10, '9', 'diagnoses'),
(5, '8', 'couch'),
(5, '8', 'loveseat'),
(5, '8', 'keynote'),
(5, '8', 'calculator'),
(5, '8', 'sack-dollar'),
(5, '8', 'wind-warning'),
(5, '8', 'tv'),
(5, '8', 'glass-whiskey-rocks'),
(5, '8', 'mug-hot'),
(5, '8', 'wifi'),
(5, '8', 'weight'),
(10, '8', 'holly-berry'),
(10, '8', 'wind'),
(10, '8', 'shoe-prints'),
(10, '8', 'diagnoses'),
(5, '10', 'loveseat'),
(5, '10', 'keynote'),
(5, '10', 'calculator'),
(5, '10', 'sack-dollar'),
(5, '10', 'wind-warning'),
(5, '10', 'tv'),
(5, '10', 'glass-whiskey-rocks'),
(5, '10', 'blender'),
(5, '10', 'mug-hot');
INSERT INTO `klin_fields_values` (`field_id`, `item_id`, `value`) VALUES
(5, '10', 'wifi'),
(5, '10', 'weight'),
(5, '10', 'phone-plus'),
(10, '10', 'holly-berry'),
(10, '10', 'wind'),
(10, '10', 'shoe-prints'),
(10, '10', 'diagnoses'),
(5, '11', 'chair'),
(5, '11', 'keynote'),
(5, '11', 'calculator'),
(5, '11', 'sack-dollar'),
(5, '11', 'wind-warning'),
(5, '11', 'tv'),
(5, '11', 'glass-whiskey-rocks'),
(5, '11', 'mug-hot'),
(5, '11', 'wifi'),
(5, '11', 'weight'),
(10, '11', 'holly-berry'),
(10, '11', 'wind'),
(10, '11', 'shoe-prints'),
(10, '11', 'diagnoses'),
(5, '12', 'couch'),
(5, '12', 'loveseat'),
(5, '12', 'chair'),
(5, '12', 'keynote'),
(5, '12', 'calculator'),
(5, '12', 'sack-dollar'),
(5, '12', 'wind-warning'),
(5, '12', 'tv'),
(5, '12', 'mug-hot'),
(5, '12', 'wifi'),
(5, '12', 'weight'),
(10, '12', 'holly-berry'),
(10, '12', 'wind'),
(10, '12', 'shoe-prints'),
(10, '12', 'diagnoses'),
(5, '13', 'couch'),
(5, '13', 'loveseat'),
(5, '13', 'chair'),
(5, '13', 'sack-dollar'),
(5, '13', 'wind-warning'),
(5, '13', 'glass-whiskey-rocks'),
(5, '13', 'wifi'),
(5, '13', 'weight'),
(10, '13', 'holly-berry'),
(10, '13', 'wind'),
(10, '13', 'shoe-prints'),
(10, '13', 'diagnoses'),
(5, '14', 'couch'),
(5, '14', 'loveseat'),
(5, '14', 'chair'),
(5, '14', 'keynote'),
(5, '14', 'calculator'),
(5, '14', 'wind-warning'),
(5, '14', 'tv'),
(5, '14', 'glass-whiskey-rocks'),
(5, '14', 'mug-hot'),
(5, '14', 'wifi'),
(5, '14', 'weight'),
(10, '14', 'holly-berry'),
(10, '14', 'wind'),
(10, '14', 'shoe-prints'),
(10, '14', 'diagnoses'),
(5, '15', 'couch'),
(5, '15', 'loveseat'),
(5, '15', 'chair'),
(5, '15', 'calculator'),
(5, '15', 'sack-dollar'),
(5, '15', 'wind-warning'),
(5, '15', 'tv'),
(5, '15', 'glass-whiskey-rocks'),
(5, '15', 'blender'),
(5, '15', 'mug-hot'),
(5, '15', 'wifi'),
(5, '15', 'weight'),
(5, '15', 'coffee'),
(10, '15', 'holly-berry'),
(10, '15', 'wind'),
(10, '15', 'shoe-prints'),
(10, '15', 'diagnoses');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_filters`
--

CREATE TABLE `klin_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links`
--

CREATE TABLE `klin_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms0`
--

CREATE TABLE `klin_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms1`
--

CREATE TABLE `klin_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms2`
--

CREATE TABLE `klin_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms3`
--

CREATE TABLE `klin_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms4`
--

CREATE TABLE `klin_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms5`
--

CREATE TABLE `klin_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms6`
--

CREATE TABLE `klin_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms7`
--

CREATE TABLE `klin_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms8`
--

CREATE TABLE `klin_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_terms9`
--

CREATE TABLE `klin_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_termsa`
--

CREATE TABLE `klin_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_termsb`
--

CREATE TABLE `klin_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_termsc`
--

CREATE TABLE `klin_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_termsd`
--

CREATE TABLE `klin_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_termse`
--

CREATE TABLE `klin_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_links_termsf`
--

CREATE TABLE `klin_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_taxonomy`
--

CREATE TABLE `klin_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `klin_finder_taxonomy`
--

INSERT INTO `klin_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_taxonomy_map`
--

CREATE TABLE `klin_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_terms`
--

CREATE TABLE `klin_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_terms_common`
--

CREATE TABLE `klin_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `klin_finder_terms_common`
--

INSERT INTO `klin_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_tokens`
--

CREATE TABLE `klin_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_tokens_aggregate`
--

CREATE TABLE `klin_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_finder_types`
--

CREATE TABLE `klin_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_languages`
--

CREATE TABLE `klin_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_languages`
--

INSERT INTO `klin_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 60, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_menu`
--

CREATE TABLE `klin_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_menu`
--

INSERT INTO `klin_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 67, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'menu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"featured_categories\":[\"8\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"date\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"page_subheading\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":0,\"menu_show\":0,\"page_title\":\"\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0421\\u041f\\u0431\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\\u0413\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u00ab\\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\\u00bb, \\u0420\\u043e\\u0441\\u043a\\u043e\\u0448\\u043d\\u044b\\u0439 \\u041f\\u044f\\u0442\\u0438\\u0437\\u0432\\u0435\\u0437\\u0434\\u0447\\u043d\\u044b\\u0439 \\u041e\\u0442\\u0435\\u043b\\u044c \\u0432 \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0435. \\u0421 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043e\\u0442\\u0435\\u043b\\u044f \\u0432 1912 \\u0433\\u043e\\u0434\\u0443 \\u0438 \\u043f\\u043e \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f\\u0448\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043e\\u0442\\u0435\\u043b\\u044c \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u043b\\u0438\\u0446\\u0435\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u0438\\u0435\\u043c \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u0433\\u043e \\u0433\\u043e\\u0441\\u0442\\u0435\\u043f\\u0440\\u0438\\u0438\\u043c\\u0441\\u0442\\u0432\\u0430.\",\"menu-meta_keywords\":\"\\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433, \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0441\\u043f\\u0431, \\u0441\\u0430\\u0439\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u043e\\u0442\\u0435\\u043b\\u044c \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(142, 'menu', 'Об отеле', 'about', '', 'about', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"nav-link\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\\u041a \\u0443\\u0441\\u043b\\u0443\\u0433\\u0430\\u043c \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0432 \\u0421\\u041f\\u0431 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u0421\\u041f\\u0410-\\u0446\\u0435\\u043d\\u0442\\u0440, \\u0444\\u0438\\u0442\\u043d\\u0435\\u0441-\\u0437\\u0430\\u043b \\u0441 \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d\\u043e\\u043c, \\u0441\\u0430\\u043b\\u043e\\u043d \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u044b. \\u0422\\u0443\\u0440\\u0435\\u0446\\u043a\\u0430\\u044f \\u0438 \\u0444\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f \\u0431\\u0430\\u043d\\u044f, \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u0441\\u043c\\u0435\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\\u044b, \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u0438\\u0434\\u043e\\u0432 \\u043c\\u0430\\u0441\\u0441\\u0430\\u0436\\u0430 \\u0441\\u0434\\u0435\\u043b\\u0430\\u044e\\u0442 \\u0432\\u0430\\u0448 \\u043e\\u0442\\u0434\\u044b\\u0445 \\u043d\\u0435\\u0437\\u0430\\u0431\\u044b\\u0432\\u0430\\u0435\\u043c\\u044b\\u043c \\u0438 \\u043f\\u043e\\u043c\\u043e\\u0433\\u0443\\u0442 \\u0440\\u0430\\u0441\\u0441\\u043b\\u0430\\u0431\\u0438\\u0442\\u044c\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u043e\\u043b\\u0433\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0433\\u0443\\u043b\\u043e\\u043a \\u043f\\u043e \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0443.\",\"menu-meta_keywords\":\"\\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\\u043c\\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433, \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\\u043c\\u0441\\u043f\\u0431, \\u0441\\u0430\\u0439\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u043e\\u0442\\u0435\\u043b\\u044c \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\",\"robots\":\"\",\"secure\":0}', 43, 44, 0, '*', 0),
(143, 'menu', 'Номера', 'rooms', '', 'rooms', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"collector:room\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"nav-link\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0438\\u0437 83 \\u0440\\u043e\\u0441\\u043a\\u043e\\u0448\\u043d\\u044b\\u0445 \\u043d\\u043e\\u043c\\u0435\\u0440\\u043e\\u0432 \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430 \\u0431\\u044b\\u043b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u041e\\u043b\\u044c\\u0433\\u043e\\u0439 \\u041f\\u043e\\u043b\\u0438\\u0446\\u0446\\u0438. \\u041e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0438\\u0445 \\u0441\\u0442\\u0438\\u043b\\u044c \\u0438 \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442 \\u043e\\u0442\\u0434\\u0430\\u044e\\u0442 \\u0434\\u043e\\u043b\\u0436\\u043d\\u043e\\u0435 \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u0435 \\u0438 \\u043d\\u0430\\u0441\\u043b\\u0435\\u0434\\u0438\\u044e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430. \",\"menu-meta_keywords\":\"\\u043d\\u043e\\u043c\\u0435\\u0440\\u0430, \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433, \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430, \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0441\\u043f\\u0431, \\u043d\\u043e\\u043c\\u0435\\u0440\\u0430 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u043e\\u0442\\u0435\\u043b\\u044c \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\",\"robots\":\"\",\"secure\":0}', 45, 46, 0, '*', 0),
(144, 'menu', 'Бронирование номера', 'reservation', '', 'reservation', '/#reservation', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"nav-link\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 47, 48, 0, '*', 0),
(145, 'menu', 'Рестораны', 'restaurants', '', 'restaurants', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"nav-link\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\\u0420\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u044b \\u043e\\u0442\\u0435\\u043b\\u044f \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\\u041d\\u0430\\u0441\\u043b\\u0430\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0438\\u0437\\u044b\\u0441\\u043a\\u0430\\u043d\\u043d\\u044b\\u043c \\u0443\\u0436\\u0438\\u043d\\u043e\\u043c, \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0432\\u0438\\u043d\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u043e\\u0441\\u043b\\u0435\\u043e\\u0431\\u0435\\u0434\\u0435\\u043d\\u043d\\u044b\\u043c \\u0447\\u0430\\u0435\\u043c \\u0432 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u0430\\u0445 \\u0438 \\u0431\\u0430\\u0440\\u0430\\u0445, \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0432 \\u0440\\u043e\\u0441\\u043a\\u043e\\u0448\\u043d\\u043e\\u043c \\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0441\\u043a\\u043e\\u043c \\u043e\\u0442\\u0435\\u043b\\u0435 \\u00ab\\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f\\u00bb.\",\"menu-meta_keywords\":\"\\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0421\\u041f\\u0431, \\u043a\\u0430\\u0444\\u0435 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u043b\\u043e\\u0431\\u0431\\u0438 \\u0431\\u0430\\u0440, \\u043e\\u0442\\u0435\\u043b\\u044c \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u044b\",\"robots\":\"\",\"secure\":0}', 49, 50, 0, '*', 0),
(146, 'menu', 'Расположение', 'location', '', 'location', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"nav-link\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\\u0413\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u0410\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0440\\u0430\\u0439\\u043e\\u043d\\u0435 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430 \\u2013 \\u043d\\u0430 \\u0418\\u0441\\u0430\\u0430\\u043a\\u0438\\u0435\\u0432\\u0441\\u043a\\u043e\\u0439 \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u0438. \\u0420\\u044f\\u0434\\u043e\\u043c \\u0441 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0435\\u0439 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u044b \\u0434\\u043e\\u0441\\u0442\\u043e\\u043f\\u0440\\u0438\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430, \\u0431\\u043e\\u043b\\u044c\\u0448\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0438\\u0437 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u2013 \\u0432 \\u043f\\u0435\\u0448\\u0435\\u0439 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0441\\u0442\\u0438.\",\"menu-meta_keywords\":\"\\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430 \\u0430\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f, \\u0434\\u043e\\u0441\\u0442\\u043e\\u043f\\u0440\\u0438\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0430, \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044f \\u0441\\u0430\\u043d\\u043a\\u0442 \\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\",\"robots\":\"\",\"secure\":0}', 51, 52, 0, '*', 0),
(147, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 53, 64, 0, '', 1),
(148, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 1, 147, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1),
(149, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 1, 147, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1),
(150, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 'com-rsform-manage-directory-submissions', '', 'rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 1, 147, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1),
(151, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 1, 147, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1),
(152, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 1, 147, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 62, 63, 0, '', 1),
(153, 'main', 'COM_OSMAP_TITLE', 'com-osmap-title', '', 'com-osmap-title', 'index.php?option=com_osmap', 'component', 1, 1, 1, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 65, 66, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_menu_types`
--

CREATE TABLE `klin_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_menu_types`
--

INSERT INTO `klin_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 54, 'menu', 'Меню', 'Меню сайта', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_messages`
--

CREATE TABLE `klin_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_messages_cfg`
--

CREATE TABLE `klin_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_modules`
--

CREATE TABLE `klin_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_modules`
--

INSERT INTO `klin_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Главное меню', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '2019-03-29 12:18:32', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"menu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"navMain\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Форма авторизации', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"usesecure\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(8, 43, 'Панель инструментов', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(9, 44, 'Панель быстрого доступа', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_quickicon', 3, 1, '{\"context\":\"mod_quickicon\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(10, 45, 'Авторизованные пользователи', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '2019-05-06 07:55:51', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":5,\"name\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"automatic_title\":0,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(12, 46, 'Меню панели управления', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"menutype\":\"*\",\"preset\":\"joomla\",\"check\":1,\"shownew\":0,\"showhelp\":0,\"forum_url\":false,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(13, 47, 'Подменю панели управления', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(14, 48, 'Статус пользователя', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '2019-05-06 07:54:59', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '{\"show_viewsite\":1,\"show_viewadmin\":0,\"show_loggedin_users\":1,\"show_loggedin_users_admin\":1,\"show_messages\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(15, 49, 'Заголовок', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(79, 52, 'Мультиязычность', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(86, 53, 'Версия Joomla!', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(88, 58, 'Лог действий - последние', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '2019-05-06 07:55:45', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{\"count\":5,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"automatic_title\":0,\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(89, 59, 'Панель управления персональными данными', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_privacy_dashboard', 6, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(94, 81, 'Slider', '', '<div class=\"jumbotron slider-1\">\r\n<h1>Hotel Astoria</h1>\r\n<p>Роскошный отель в самом центре Петербурга</p>\r\n</div>\r\n<div class=\"jumbotron slider-2\">\r\n<h1>Hotel Astoria</h1>\r\n<p>Современный пятизвездочный отель</p>\r\n</div>\r\n<div class=\"jumbotron slider-3\">\r\n<h1>Hotel Astoria</h1>\r\n<p>Отель Астория в Петербурге</p>\r\n</div>', 1, 'panel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"collector:slider\",\"moduleclass_sfx\":\"slider\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"section\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(95, 82, 'Отель Астория', '', '<p>Отель Астория расположен в самом центре Санкт-Петербурга – на Исаакиевской площади. Вы сможете увидеть изысканную архитектуру и исторические памятники Северной столицы, прикоснуться к истории города. Рядом с пятизвездочным отелем Астория располагаются Эрмитаж, Невский проспект, Мариинский театр, Дворцовая площадь и другие достопримечательности.</p>\r\n<p>Построенная в 1912 году, гостиница стала излюбленным местом многих известных персон: артистов, писателей, политиков, общественных деятелей. В отеле Астория в разные годы останавливались такие известные личности как Федор Шаляпин, Сергей Дягилев, Михаил Булгаков, Лучиано Паваротти, Пьер Карден, Мадонна, президент Владимир Путин и другие.</p>', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"collector:banner\",\"moduleclass_sfx\":\"text-center\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"card-title\",\"style\":\"0\"}', 0, '*'),
(97, 85, 'Fond', '', '', 1, 'panel', 0, '0000-00-00 00:00:00', '2019-04-08 07:31:55', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"collector:panel\",\"moduleclass_sfx\":\"fond\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h1\",\"header_class\":\"page-header\",\"style\":\"0\"}', 0, '*'),
(98, 86, 'Найти номер', '', '', 1, 'events', 0, '0000-00-00 00:00:00', '2019-04-08 07:32:01', '0000-00-00 00:00:00', 1, 'mod_rsform', 1, 0, '{\"formId\":\"1\",\"moduleclass_sfx\":\"events col-lg-6\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h3\",\"header_class\":\"border-title\",\"style\":\"0\"}', 0, '*'),
(99, 87, 'Лучший тариф', '', '<p>Мы рады предложить Вам лучший тариф при бронировании номера отеля Астория на сайте!</p>\r\n<p>Заполните форму заявки, указав:</p>\r\n<ul>\r\n<li>дату заезда и выезда</li>\r\n<li>категорию номера</li>\r\n<li>количество гостей</li>\r\n<li>контактные данные (Ваше имя,телефон и электронная почта)</li>\r\n</ul>\r\n<p>Отправьте запрос и получите персональную скидку на бронирование номеров в Астории!</p>\r\n<p>С Вами свяжется специалист службы бронирования, уточнит все детали и пожелания, предложит оптимальный тариф и подтвердит бронирование номера.</p>', 1, 'events', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"scrap col-lg-6\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h3\",\"header_class\":\"border-title\",\"style\":\"0\"}', 0, '*'),
(100, 88, 'Номера', '', '', 1, 'main', 0, '0000-00-00 00:00:00', '2019-04-12 06:32:39', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{\"catid\":[8],\"image\":1,\"img_intro_full\":\"intro\",\"item_title\":1,\"link_titles\":1,\"item_heading\":\"h2\",\"triggerevents\":1,\"showLastSeparator\":1,\"show_introtext\":1,\"readmore\":0,\"count\":12,\"show_featured\":0,\"ordering\":\"a.created\",\"direction\":0,\"layout\":\"_:horizontal\",\"moduleclass_sfx\":\"items\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"section\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(102, 92, 'Нижний баннер', '', '<p>Вы также можете забронировать любой номер в отеле Астория по телефону: <a href=\"tel:+78129073850\">8 (812) 907‒38‒50</a></p>', 1, 'events', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"images\\/BANNER\\/Spilled-Blood-St-Petersburg.jpg\",\"layout\":\"collector:bottom-banner\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Protostar-no\"}', 0, '*'),
(103, 93, 'Гостиница Астория в Петербурге', '', '<p>Гостиница Астория распахнула свои двери для гостей на заре прошлого века. С момента основания отеля в 1912 году и по сегодняшний день этот отель является олицетворением русского гостеприимства.</p>\r\n<p>Судьба самого знаменитого отеля Петербурга тесно связана с историей города на Неве.</p>\r\n<p>Во время Первой мировой войны в этих стенах квартировались офицеры, и отель назывался Военным. После революции, в советское время, в гостинице жили партийные деятели и активисты.</p>', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"collector:banner\",\"moduleclass_sfx\":\"text-center\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"card-title\",\"style\":\"0\"}', 0, '*'),
(104, 94, 'Мероприятия', '', '<p>В стенах гостиницы проводятся художественные выставки, форумы, пресс-конференции и другие мероприятия. К услугам гостей представлены банкетные залы и переговорные комнаты.Сегодня отель Астория в Петербуге – изысканное и комфортабельное место проживания, сочетающее в себе русское гостеприимство и современный комфорт.</p>\r\n<p>Здесь каждый будет чувствовать себя как дома. На сайте отеля Астория есть возможность выбрать номер, получив самое выгодное предложение по бронированию. Вы также можете забронировать номер и узнать необходимую информацию по телефону.</p>', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"collector:banner\",\"moduleclass_sfx\":\"text-center\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"card-title\",\"style\":\"0\"}', 0, '*'),
(105, 108, 'Как добраться до гостиницы', '', '<ul class=\"list-group list-group-horizontal\">\r\n<li class=\"list-group-item flex-fill\">\r\n<dl>\r\n<dd>\r\n<div class=\"fal fa-map-marker-alt\"> </div>\r\n</dd>\r\n<dt><a href=\"https://yandex.ru/maps/2/saint-petersburg/?mode=orgpage&amp;ol=biz&amp;ll=30.309239%2C59.932901&amp;z=16&amp;oid=228213539690&amp;orgpage%5Bid%5D=228213539690\">Санкт-Петербург, ул. Большая Морская,39</a></dt>\r\n</dl>\r\n</li>\r\n<li class=\"list-group-item flex-fill\">\r\n<dl>\r\n<dd>\r\n<div class=\"fal fa-phone\"> </div>\r\n</dd>\r\n<dt><a href=\"tel:88129073850\">8 (812) 907‒38‒50</a></dt>\r\n</dl>\r\n</li>\r\n<li class=\"list-group-item flex-fill\">\r\n<dl>\r\n<dd>\r\n<div class=\"fal fa-envelope\"> </div>\r\n</dd>\r\n<dt><a href=\"mailto:info@astoria-booking.ru\">info@astoria-booking.ru</a></dt>\r\n</dl>\r\n</li>\r\n</ul>', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"collector:banner\",\"moduleclass_sfx\":\"text-center\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"card-title\",\"style\":\"System-none\"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_modules_menu`
--

CREATE TABLE `klin_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_modules_menu`
--

INSERT INTO `klin_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(88, 0),
(89, 0),
(94, 101),
(95, 101),
(97, 142),
(97, 143),
(97, 145),
(97, 146),
(98, 101),
(99, 101),
(100, 101),
(102, 142),
(103, 142),
(104, 145),
(105, 146);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_newsfeeds`
--

CREATE TABLE `klin_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_osmap_items_settings`
--

CREATE TABLE `klin_osmap_items_settings` (
  `sitemap_id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(100) NOT NULL DEFAULT '',
  `settings_hash` char(32) NOT NULL,
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'weekly',
  `priority` float NOT NULL DEFAULT '0.5',
  `format` tinyint(1) UNSIGNED DEFAULT '2' COMMENT 'Format of the setting: 1) Legacy Mode - UID Only; 2) Based on menu ID and UID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_osmap_sitemaps`
--

CREATE TABLE `klin_osmap_sitemaps` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `params` text,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  `links_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_osmap_sitemaps`
--

INSERT INTO `klin_osmap_sitemaps` (`id`, `name`, `params`, `is_default`, `published`, `created_on`, `links_count`) VALUES
(1, 'Default Sitemap', NULL, 1, 1, '2019-05-06 08:23:03', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_osmap_sitemap_menus`
--

CREATE TABLE `klin_osmap_sitemap_menus` (
  `sitemap_id` int(11) UNSIGNED NOT NULL,
  `menutype_id` int(11) NOT NULL,
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'weekly',
  `priority` float NOT NULL DEFAULT '0.5',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_osmap_sitemap_menus`
--

INSERT INTO `klin_osmap_sitemap_menus` (`sitemap_id`, `menutype_id`, `changefreq`, `priority`, `ordering`) VALUES
(1, 1, 'weekly', 0.5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_overrider`
--

CREATE TABLE `klin_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_phocacart_taglabels_related`
--

CREATE TABLE `klin_phocacart_taglabels_related` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_postinstall_messages`
--

CREATE TABLE `klin_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_postinstall_messages`
--

INSERT INTO `klin_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 0),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_privacy_consents`
--

CREATE TABLE `klin_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` int(10) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_privacy_requests`
--

CREATE TABLE `klin_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_redirect_links`
--

CREATE TABLE `klin_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_calculations`
--

CREATE TABLE `klin_rsform_calculations` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_components`
--

CREATE TABLE `klin_rsform_components` (
  `ComponentId` int(11) NOT NULL,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_components`
--

INSERT INTO `klin_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES
(23, 1, 6, 0, 1),
(24, 1, 3, 1, 1),
(25, 1, 1, 2, 1),
(26, 1, 1, 7, 1),
(27, 1, 6, 4, 1),
(28, 1, 3, 5, 1),
(29, 1, 3, 6, 1),
(30, 1, 1, 3, 1),
(31, 1, 2, 8, 1),
(32, 1, 8, 9, 1),
(33, 1, 13, 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_component_types`
--

CREATE TABLE `klin_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL,
  `ComponentTypeName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_component_types`
--

INSERT INTO `klin_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES
(1, 'textBox'),
(2, 'textArea'),
(3, 'selectList'),
(4, 'checkboxGroup'),
(5, 'radioGroup'),
(6, 'calendar'),
(7, 'button'),
(8, 'captcha'),
(9, 'fileUpload'),
(10, 'freeText'),
(11, 'hidden'),
(13, 'submitButton'),
(14, 'password'),
(15, 'ticket'),
(41, 'pageBreak'),
(211, 'birthDay'),
(212, 'gmaps'),
(355, 'rangeSlider'),
(411, 'jQueryCalendar');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_component_type_fields`
--

CREATE TABLE `klin_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` varchar(32) NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Properties` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_component_type_fields`
--

INSERT INTO `klin_rsform_component_type_fields` (`ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Properties`, `Ordering`) VALUES
(1, 'NAME', 'textbox', '', '', 1),
(1, 'CAPTION', 'textbox', '', '', 2),
(1, 'REQUIRED', 'select', 'NO\r\nYES', '', 3),
(1, 'SIZE', 'textbox', '20', 'numeric', 4),
(1, 'MAXSIZE', 'textbox', '', 'numeric', 5),
(1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 6),
(1, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 6),
(1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 7),
(1, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 8),
(1, 'DEFAULTVALUE', 'textarea', '', '', 9),
(1, 'PLACEHOLDER', 'textbox', '', '', 10),
(1, 'DESCRIPTION', 'textarea', '', '', 11),
(1, 'INPUTTYPE', 'select', 'text\r\nemail\r\ntel\r\nnumber\r\nrange\r\nurl', '{\"case\":{\"number\":{\"show\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"],\"hide\":[\"MAXSIZE\"]},\"range\":{\"show\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"],\"hide\":[\"MAXSIZE\"]},\"text\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]},\"email\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]},\"tel\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]},\"url\":{\"show\":[\"MAXSIZE\"],\"hide\":[\"ATTRMIN\",\"ATTRMAX\",\"ATTRSTEP\"]}}}', 0),
(1, 'ATTRMIN', 'textbox', '', 'float', 1),
(1, 'ATTRMAX', 'textbox', '', 'float', 2),
(1, 'ATTRSTEP', 'textbox', '1', 'float', 2),
(1, 'COMPONENTTYPE', 'hidden', '1', '', 15),
(1, 'VALIDATIONEXTRA', 'textbox', '', '', 6),
(2, 'NAME', 'textbox', '', '', 1),
(2, 'CAPTION', 'textbox', '', '', 2),
(2, 'REQUIRED', 'select', 'NO\r\nYES', '', 3),
(2, 'COLS', 'textbox', '50', 'numeric', 4),
(2, 'ROWS', 'textbox', '5', 'numeric', 5),
(2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 6),
(2, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 6),
(2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 7),
(2, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 8),
(2, 'DEFAULTVALUE', 'textarea', '', '', 9),
(2, 'DESCRIPTION', 'textarea', '', '', 10),
(2, 'COMPONENTTYPE', 'hidden', '2', '', 10),
(2, 'PLACEHOLDER', 'textbox', '', '', 10),
(2, 'WYSIWYG', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"WYSIWYGBUTTONS\"],\"hide\":[\"MAXSIZE\",\"SHOW_CHAR_COUNT\"]},\"NO\":{\"show\":[\"MAXSIZE\",\"SHOW_CHAR_COUNT\"],\"hide\":[\"WYSIWYGBUTTONS\"]}}}', 11),
(2, 'WYSIWYGBUTTONS', 'select', 'NO\r\nYES', '', 12),
(2, 'MAXSIZE', 'textbox', '', 'numeric', 13),
(2, 'SHOW_CHAR_COUNT', 'select', 'NO\r\nYES', '', 14),
(2, 'VALIDATIONEXTRA', 'textbox', '', '', 6),
(3, 'NAME', 'textbox', '', '', 1),
(3, 'CAPTION', 'textbox', '', '', 2),
(3, 'SIZE', 'textbox', '', 'numeric', 3),
(3, 'MULTIPLE', 'select', 'NO\r\nYES', '', 4),
(3, 'ITEMS', 'textarea', '', '', 5),
(3, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 6),
(3, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7),
(3, 'DESCRIPTION', 'textarea', '', '', 8),
(3, 'COMPONENTTYPE', 'hidden', '3', '', 10),
(3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(4, 'NAME', 'textbox', '', '', 1),
(4, 'CAPTION', 'textbox', '', '', 2),
(4, 'ITEMS', 'textarea', '', '', 3),
(4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL\r\nVERTICAL2COLUMNS\r\nVERTICAL3COlUMNS\r\nVERTICAL4COLUMNS\r\nVERTICAL6COLUMNS', '', 4),
(4, 'MAXSELECTIONS', 'textbox', '0', '', 5),
(4, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5),
(4, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6),
(4, 'DESCRIPTION', 'textarea', '', '', 6),
(4, 'COMPONENTTYPE', 'hidden', '4', '', 7),
(4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(5, 'NAME', 'textbox', '', '', 1),
(5, 'CAPTION', 'textbox', '', '', 2),
(5, 'ITEMS', 'textarea', '', '', 3),
(5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL\r\nVERTICAL2COLUMNS\r\nVERTICAL3COlUMNS\r\nVERTICAL4COLUMNS\r\nVERTICAL6COLUMNS', '', 4),
(5, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5),
(5, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6),
(5, 'DESCRIPTION', 'textarea', '', '', 6),
(5, 'COMPONENTTYPE', 'hidden', '5', '', 7),
(5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(6, 'NAME', 'textbox', '', '', 1),
(6, 'CAPTION', 'textbox', '', '', 2),
(6, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 3),
(6, 'VALIDATIONCALENDAR', 'select', '//<code>\r\nreturn RSFormProHelper::getOtherCalendars(6);\r\n//</code>', '', 4),
(6, 'VALIDATIONDATE', 'select', 'YES\r\nNO', '', 8),
(6, 'DATEFORMAT', 'textbox', 'd/m/Y', '', 4),
(6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', '{\"case\":{\"POPUP\":{\"show\":[\"READONLY\", \"POPUPLABEL\"],\"hide\":[]},\"FLAT\":{\"show\":[],\"hide\":[\"READONLY\", \"POPUPLABEL\"]}}}', 5),
(6, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6),
(6, 'DESCRIPTION', 'textarea', '', '', 7),
(6, 'COMPONENTTYPE', 'hidden', '6', '', 8),
(6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(6, 'READONLY', 'select', 'NO\r\nYES', '', 6),
(6, 'POPUPLABEL', 'textbox', '...', '', 6),
(6, 'MINDATE', 'textarea', '', '', 5),
(6, 'MAXDATE', 'textarea', '', '', 5),
(6, 'DEFAULTVALUE', 'textarea', '', '', 2),
(7, 'NAME', 'textbox', '', '', 1),
(7, 'CAPTION', 'textbox', '', '', 3),
(7, 'LABEL', 'textbox', '', '', 2),
(7, 'RESET', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"RESETLABEL\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"RESETLABEL\"]}}}', 4),
(7, 'RESETLABEL', 'textbox', '', '', 5),
(7, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6),
(7, 'DESCRIPTION', 'textarea', '', '', 7),
(7, 'COMPONENTTYPE', 'hidden', '7', '', 8),
(7, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 6),
(8, 'NAME', 'textbox', '', '', 1),
(8, 'CAPTION', 'textbox', '', '', 2),
(8, 'LENGTH', 'textbox', '4', '', 3),
(8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', '', 4),
(8, 'TEXTCOLOR', 'textbox', '#000000', '', 5),
(8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', '', 6),
(8, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7),
(8, 'DESCRIPTION', 'textarea', '', '', 9),
(8, 'COMPONENTTYPE', 'hidden', '8', '', 9),
(8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', '', 7),
(8, 'SHOWREFRESH', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"REFRESHTEXT\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"REFRESHTEXT\"]}}}', 8),
(8, 'REFRESHTEXT', 'textbox', 'REFRESH', '', 11),
(8, 'SIZE', 'textbox', '15', 'numeric', 12),
(8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', '{\"case\":{\"FREETYPE\":{\"show\":[\"BACKGROUNDCOLOR\",\"TEXTCOLOR\",\"TYPE\",\"FLOW\",\"LENGTH\"],\"hide\":[]},\"NOFREETYPE\":{\"show\":[\"BACKGROUNDCOLOR\",\"TEXTCOLOR\",\"TYPE\",\"FLOW\",\"LENGTH\"],\"hide\":[]},\"INVISIBLE\":{\"show\":[],\"hide\":[\"BACKGROUNDCOLOR\",\"TEXTCOLOR\",\"TYPE\",\"FLOW\",\"LENGTH\"]}}}', 3),
(9, 'NAME', 'textbox', '', '', 1),
(9, 'CAPTION', 'textbox', '', '', 2),
(9, 'FILESIZE', 'textbox', '', '', 3),
(9, 'REQUIRED', 'select', 'NO\r\nYES', '', 4),
(9, 'ACCEPTEDFILES', 'textarea', '', 'oneperline', 5),
(9, 'ACCEPTEDFILESIMAGES', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"THUMBSIZE\",\"THUMBQUALITY\"],\"hide\":[\"ACCEPTEDFILES\"]},\"NO\":{\"show\":[\"ACCEPTEDFILES\"],\"hide\":[\"THUMBSIZE\",\"THUMBQUALITY\"]}}}', 5),
(9, 'THUMBSIZE', 'textbox', '220', 'numeric', 5),
(9, 'THUMBQUALITY', 'textbox', '75', 'numeric', 5),
(9, 'DESTINATION', 'textbox', '//<code>\r\nreturn \'components/com_rsform/uploads/\';\r\n//</code>', '', 6),
(9, 'SANITIZEFILENAME', 'select', 'NO\r\nYES', '', 8),
(9, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7),
(9, 'DESCRIPTION', 'textarea', '', '', 8),
(9, 'COMPONENTTYPE', 'hidden', '9', '', 9),
(9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(9, 'PREFIX', 'textarea', '', '', 6),
(9, 'EMAILATTACH', 'emailattach', '', '', 102),
(10, 'NAME', 'textbox', '', '', 1),
(10, 'TEXT', 'textarea', '', '', 1),
(10, 'COMPONENTTYPE', 'hidden', '10', '', 9),
(11, 'NAME', 'textbox', '', '', 1),
(11, 'DEFAULTVALUE', 'textarea', '', '', 1),
(11, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 1),
(11, 'COMPONENTTYPE', 'hidden', '11', '', 9),
(13, 'NAME', 'textbox', '', '', 1),
(13, 'CAPTION', 'textbox', '', '', 3),
(13, 'LABEL', 'textbox', '', '', 2),
(13, 'RESET', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"RESETLABEL\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"RESETLABEL\"]}}}', 6),
(13, 'RESETLABEL', 'textbox', '', '', 7),
(13, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 9),
(13, 'COMPONENTTYPE', 'hidden', '13', '', 12),
(13, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 11),
(13, 'PREVBUTTON', 'textbox', '< Prev', '', 8),
(13, 'DISPLAYPROGRESS', 'select', 'NO\r\nAUTO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"DISPLAYPROGRESSMSG\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}, \"AUTO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}}}', 9),
(13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>', '', 10),
(14, 'NAME', 'textbox', '', '', 1),
(14, 'CAPTION', 'textbox', '', '', 2),
(14, 'REQUIRED', 'select', 'NO\r\nYES', '', 3),
(14, 'SIZE', 'textbox', '', 'numeric', 4),
(14, 'MAXSIZE', 'textbox', '', 'numeric', 5),
(14, 'DEFAULTVALUE', 'textarea', '', '', 6),
(14, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7),
(14, 'COMPONENTTYPE', 'hidden', '14', '', 8),
(14, 'DESCRIPTION', 'textarea', '', '', 100),
(14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100),
(14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 9),
(14, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 9),
(14, 'PLACEHOLDER', 'textbox', '', '', 10),
(14, 'VALIDATIONEXTRA', 'textbox', '', '', 6),
(15, 'NAME', 'textbox', '', '', 1),
(15, 'LENGTH', 'textbox', '8', '', 4),
(15, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7),
(15, 'COMPONENTTYPE', 'hidden', '15', '', 8),
(15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', '', 3),
(15, 'TICKETTYPE', 'select', 'RANDOM\r\nSEQUENTIAL', '{\"case\":{\"RANDOM\":{\"show\":[\"CHARACTERS\", \"LENGTH\"],\"hide\":[\"LEADINGZEROLENGTH\"]},\"SEQUENTIAL\":{\"show\":[\"LEADINGZEROLENGTH\"],\"hide\":[\"CHARACTERS\", \"LENGTH\"]}}}', 2),
(15, 'LEADINGZEROLENGTH', 'select', '0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', '', 5),
(41, 'NAME', 'textbox', '', '', 1),
(41, 'COMPONENTTYPE', 'hidden', '41', '', 5),
(41, 'NEXTBUTTON', 'textbox', 'Next >', '', 2),
(41, 'PREVBUTTON', 'textbox', '< Prev', '', 3),
(41, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 4),
(41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', '', 5),
(41, 'DISPLAYPROGRESS', 'select', 'NO\r\nAUTO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"DISPLAYPROGRESSMSG\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}, \"AUTO\":{\"show\":[],\"hide\":[\"DISPLAYPROGRESSMSG\"]}}}', 6),
(41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>', '', 7),
(41, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 8),
(211, 'VALIDATION_ALLOW_INCORRECT_DATE', 'select', 'NO\r\nYES', '', 0),
(211, 'NAME', 'textbox', '', '', 1),
(211, 'VALIDATIONRULE_DATE', 'select', '//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>', '', 1),
(211, 'CAPTION', 'textbox', '', '', 2),
(211, 'DESCRIPTION', 'textarea', '', '', 3),
(211, 'REQUIRED', 'select', 'NO\r\nYES', '', 4),
(211, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 5),
(211, 'DATEORDERING', 'select', 'DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM', '', 6),
(211, 'DATESEPARATOR', 'textbox', ' / ', '', 7),
(211, 'SHOWDAY', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"SHOWDAYPLEASE\" ,\"SHOWDAYTYPE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"SHOWDAYPLEASE\" ,\"SHOWDAYTYPE\"]}}}', 8),
(211, 'SHOWDAYPLEASE', 'textbox', 'Day', '', 9),
(211, 'SHOWDAYTYPE', 'select', 'DAY_TYPE_01\r\nDAY_TYPE_1', '', 10),
(211, 'SHOWMONTH', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"SHOWMONTHPLEASE\" ,\"SHOWMONTHTYPE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"SHOWMONTHPLEASE\" ,\"SHOWMONTHTYPE\"]}}}', 11),
(211, 'SHOWMONTHPLEASE', 'textbox', 'Month', '', 12),
(211, 'SHOWMONTHTYPE', 'select', 'MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG', '', 13),
(211, 'SHOWYEAR', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"SHOWYEARPLEASE\" ,\"STARTYEAR\", \"ENDYEAR\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"SHOWYEARPLEASE\" ,\"STARTYEAR\", \"ENDYEAR\"]}}}', 14),
(211, 'SHOWYEARPLEASE', 'textbox', 'Year', '', 15),
(211, 'STARTYEAR', 'textbox', '1960', '', 16),
(211, 'ENDYEAR', 'textbox', '2013', '', 17),
(211, 'STORELEADINGZERO', 'select', 'NO\r\nYES', '', 18),
(211, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 18),
(211, 'COMPONENTTYPE', 'hidden', '211', '', 19),
(212, 'NAME', 'textbox', '', '', 0),
(212, 'CAPTION', 'textbox', '', '', 1),
(212, 'DESCRIPTION', 'textarea', '', '', 3),
(212, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 4),
(212, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 5),
(212, 'DEFAULTVALUE', 'textarea', '', '', 2),
(212, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6),
(212, 'MAPWIDTH', 'textbox', '450px', '', 7),
(212, 'MAPHEIGHT', 'textbox', '300px', '', 8),
(212, 'MAPCENTER', 'textbox', '39.5500507,-105.7820674', '', 9),
(212, 'COMPONENTTYPE', 'hidden', '212', '', 12),
(212, 'SIZE', 'textbox', '20', 'numeric', 13),
(212, 'MAPZOOM', 'textbox', '10', 'numeric', 10),
(212, 'MAPRESULT', 'select', 'ADDRESS\r\nCOORDINATES', '', 12),
(212, 'MAPTYPE', 'select', 'ROADMAP\r\nSATELLITE\r\nHYBRID\r\nTERRAIN', '', 13),
(212, 'GEOLOCATION', 'select', 'NO\r\nYES', '', 11),
(411, 'NAME', 'textbox', '', '', 1),
(411, 'CAPTION', 'textbox', '', '', 2),
(411, 'DEFAULTVALUE', 'textarea', '', '', 3),
(411, 'DESCRIPTION', 'textarea', '', '', 4),
(411, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5),
(411, 'VALIDATIONCALENDAR', 'select', '//<code>\nreturn RSFormProHelper::getOtherCalendars(411);\n//</code>', '', 6),
(411, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 7),
(411, 'VALIDATIONDATE', 'select', 'YES\r\nNO', '', 8),
(411, 'DATEFORMAT', 'textbox', 'd/m/Y H:i', '', 8),
(411, 'MINDATEJQ', 'textarea', '', '', 9),
(411, 'MAXDATEJQ', 'textarea', '', '', 10),
(411, 'TIMEPICKER', 'select', 'YES\r\nNO', '{\"case\":{\"YES\":{\"show\":[\"TIMEPICKERFORMAT\", \"TIMESTEP\",\"MINTIMEJQ\", \"MAXTIMEJQ\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"TIMEPICKERFORMAT\", \"TIMESTEP\",\"MINTIMEJQ\", \"MAXTIMEJQ\"]}}}', 11),
(411, 'TIMEPICKERFORMAT', 'textbox', 'H:i', '', 12),
(411, 'TIMESTEP', 'textbox', '30', '', 13),
(411, 'MINTIMEJQ', 'textarea', '', '', 14),
(411, 'MAXTIMEJQ', 'textarea', '', '', 15),
(411, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 16),
(411, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', '{\"case\":{\"POPUP\":{\"show\":[\"READONLY\", \"POPUPLABEL\"],\"hide\":[]},\"FLAT\":{\"show\":[],\"hide\":[\"READONLY\", \"POPUPLABEL\"]}}}', 17),
(411, 'READONLY', 'select', 'NO\r\nYES', '', 18),
(411, 'POPUPLABEL', 'textbox', '...', '', 19),
(411, 'THEME', 'select', 'DEFAULT\r\nDARK', '', 20),
(411, 'COMPONENTTYPE', 'hidden', '411', '', 200),
(355, 'NAME', 'textbox', '', '', 1),
(355, 'CAPTION', 'textbox', '', '', 2),
(355, 'DEFAULTVALUE', 'textarea', '', '', 3),
(355, 'DESCRIPTION', 'textarea', '', '', 4),
(355, 'REQUIRED', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALIDATIONMESSAGE\"],\"hide\":[]},\"NO\":{\"show\":[],\"hide\":[\"VALIDATIONMESSAGE\"]}}}', 5),
(355, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 6),
(355, 'SLIDERTYPE', 'select', 'SINGLE\r\nDOUBLE', '{\"case\":{\"SINGLE\":{\"show\":[],\"hide\":[\"FROMFIXED\",\"TOFIXED\"]},\"DOUBLE\":{\"show\":[\"FROMFIXED\",\"TOFIXED\"],\"hide\":[]}}}', 7),
(355, 'SKIN', 'select', 'FLAT\r\nHTML5\r\nMODERN\r\nNICE\r\nSIMPLE', '', 8),
(355, 'USEVALUES', 'select', 'NO\r\nYES', '{\"case\":{\"YES\":{\"show\":[\"VALUES\"],\"hide\":[\"MINVALUE\", \"MAXVALUE\", \"GRIDSNAP\", \"GRIDSTEP\"]},\"NO\":{\"show\":[\"MINVALUE\", \"MAXVALUE\", \"GRIDSNAP\", \"GRIDSTEP\"],\"hide\":[\"VALUES\"]}}}', 9),
(355, 'VALUES', 'textarea', '', '', 10),
(355, 'MINVALUE', 'textbox', '0', 'numeric', 11),
(355, 'MAXVALUE', 'textbox', '100', 'numeric', 12),
(355, 'GRID', 'select', 'YES\r\nNO', '', 13),
(355, 'GRIDSNAP', 'select', 'NO\r\nYES', '', 14),
(355, 'GRIDSTEP', 'textbox', '10', 'numeric', 15),
(355, 'FORCEEDGES', 'select', 'YES\r\nNO', '', 16),
(355, 'FROMFIXED', 'select', 'NO\r\nYES', '', 17),
(355, 'TOFIXED', 'select', 'NO\r\nYES', '', 18),
(355, 'KEYBOARD', 'select', 'NO\r\nYES', '', 19),
(355, 'READONLY', 'select', 'NO\r\nYES', '', 20),
(355, 'COMPONENTTYPE', 'hidden', '355', '', 21);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_conditions`
--

CREATE TABLE `klin_rsform_conditions` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_condition_details`
--

CREATE TABLE `klin_rsform_condition_details` (
  `id` int(11) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_config`
--

CREATE TABLE `klin_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_config`
--

INSERT INTO `klin_rsform_config` (`SettingName`, `SettingValue`) VALUES
('allow_unsafe', '0'),
('backup.mask', 'backup-{domain}-{date}'),
('calculations.decimal', '.'),
('calculations.nodecimals', '2'),
('calculations.thousands', ','),
('deleteafter.interval', '10'),
('deleteafter.last_run', '1557136658'),
('global.codemirror', '0'),
('global.date_mask', 'Y-m-d H:i:s'),
('global.default_layout', 'bootstrap4'),
('global.default_load_layout_framework', '0'),
('global.disable_multilanguage', '0'),
('global.filtering', 'joomla'),
('global.register.code', ''),
('google.api_key', ''),
('request_timeout', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_directory`
--

CREATE TABLE `klin_rsform_directory` (
  `formId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT 'export.pdf',
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `EmailsCreatedScript` text NOT NULL,
  `groups` text NOT NULL,
  `DeletionGroups` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_directory_fields`
--

CREATE TABLE `klin_rsform_directory_fields` (
  `formId` int(11) NOT NULL,
  `componentId` int(11) NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_emails`
--

CREATE TABLE `klin_rsform_emails` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_forms`
--

CREATE TABLE `klin_rsform_forms` (
  `FormId` int(11) NOT NULL,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `GridLayout` mediumtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `LoadFormLayoutFramework` tinyint(1) NOT NULL DEFAULT '1',
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `FormLayoutFlow` tinyint(1) NOT NULL DEFAULT '0',
  `DisableSubmitButton` tinyint(1) NOT NULL DEFAULT '0',
  `RemoveCaptchaLogged` tinyint(1) NOT NULL DEFAULT '0',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowSystemMessage` tinyint(1) NOT NULL DEFAULT '1',
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `ScrollToThankYou` tinyint(1) NOT NULL DEFAULT '0',
  `ThankYouMessagePopUp` tinyint(1) NOT NULL DEFAULT '0',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `DeletionEmailText` text NOT NULL,
  `DeletionEmailTo` text NOT NULL,
  `DeletionEmailCC` varchar(255) NOT NULL,
  `DeletionEmailBCC` varchar(255) NOT NULL,
  `DeletionEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `DeletionEmailReplyTo` varchar(255) NOT NULL,
  `DeletionEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `DeletionEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `DeletionEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ScrollToError` tinyint(1) NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `KeepIP` tinyint(1) NOT NULL DEFAULT '1',
  `DeleteSubmissionsAfter` int(11) NOT NULL DEFAULT '0',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_forms`
--

INSERT INTO `klin_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `GridLayout`, `FormLayoutName`, `LoadFormLayoutFramework`, `FormLayoutAutogenerate`, `FormLayoutFlow`, `DisableSubmitButton`, `RemoveCaptchaLogged`, `CSS`, `JS`, `FormTitle`, `ShowFormTitle`, `Published`, `Lang`, `ReturnUrl`, `ShowSystemMessage`, `ShowThankyou`, `ScrollToThankYou`, `ThankYouMessagePopUp`, `Thankyou`, `ShowContinue`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `DeletionEmailText`, `DeletionEmailTo`, `DeletionEmailCC`, `DeletionEmailBCC`, `DeletionEmailFrom`, `DeletionEmailReplyTo`, `DeletionEmailFromName`, `DeletionEmailSubject`, `DeletionEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`, `UserEmailScript`, `AdminEmailScript`, `AdditionalEmailsScript`, `MetaTitle`, `MetaDesc`, `MetaKeywords`, `Required`, `ErrorMessage`, `MultipleSeparator`, `TextareaNewLines`, `CSSClass`, `CSSId`, `CSSName`, `CSSAction`, `CSSAdditionalAttributes`, `AjaxValidation`, `ScrollToError`, `Keepdata`, `KeepIP`, `DeleteSubmissionsAfter`, `Backendmenu`, `ConfirmSubmission`, `Access`) VALUES
(1, 'find-number', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formContainer\" id=\"rsform_{global:formid}_page_0\">\r\n	<div class=\"form-row\">\r\n		<div class=\"col-6\">\r\n			<div class=\"form-group rsform-block rsform-block-date-in{date_in:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{date_in:description}\" for=\"date_in\">{date_in:caption}</label>\r\n				<div class=\"formControls\">\r\n					{date_in:body}\r\n					<div><span class=\"formValidation\">{date_in:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-category-room{category_room:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{category_room:description}\" for=\"category_room\">{category_room:caption}</label>\r\n				<div class=\"formControls\">\r\n					{category_room:body}\r\n					<div><span class=\"formValidation\">{category_room:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-name{name:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{name:description}\" for=\"name\">{name:caption}</label>\r\n				<div class=\"formControls\">\r\n					{name:body}\r\n					<div><span class=\"formValidation\">{name:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-phone{phone:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{phone:description}\" for=\"phone\">{phone:caption}</label>\r\n				<div class=\"formControls\">\r\n					{phone:body}\r\n					<div><span class=\"formValidation\">{phone:validation}</span></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-6\">\r\n			<div class=\"form-group rsform-block rsform-block-date-out{date_out:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{date_out:description}\" for=\"date_out\">{date_out:caption}</label>\r\n				<div class=\"formControls\">\r\n					{date_out:body}\r\n					<div><span class=\"formValidation\">{date_out:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-grown{grown:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{grown:description}\" for=\"grown\">{grown:caption}</label>\r\n				<div class=\"formControls\">\r\n					{grown:body}\r\n					<div><span class=\"formValidation\">{grown:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-children{children:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{children:description}\" for=\"children\">{children:caption}</label>\r\n				<div class=\"formControls\">\r\n					{children:body}\r\n					<div><span class=\"formValidation\">{children:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-email{Email:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{Email:description}\" for=\"Email\">{Email:caption}</label>\r\n				<div class=\"formControls\">\r\n					{Email:body}\r\n					<div><span class=\"formValidation\">{Email:validation}</span></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"form-row\">\r\n		<div class=\"col-12\">\r\n			<div class=\"form-group rsform-block rsform-block-message{Message:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{Message:description}\" for=\"Message\">{Message:caption}</label>\r\n				<div class=\"formControls\">\r\n					{Message:body}\r\n					<div><span class=\"formValidation\">{Message:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-captcha{Captcha:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{Captcha:description}\" for=\"Captcha\">{Captcha:caption}</label>\r\n				<div class=\"formControls\">\r\n					{Captcha:body}\r\n					<div><span class=\"formValidation\">{Captcha:validation}</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"form-group rsform-block rsform-block-submit{Submit:errorClass}\">\r\n				<label class=\"control-label formControlLabel\" data-toggle=\"tooltip\" title=\"{Submit:description}\" for=\"Submit\">{Submit:caption}</label>\r\n				<div class=\"formControls\">\r\n					{Submit:body}\r\n					<div><span class=\"formValidation\">{Submit:validation}</span></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</fieldset>', '[[{\"columns\":[[\"23\",\"24\",\"25\",\"30\"],[\"27\",\"28\",\"29\",\"26\"]],\"sizes\":[\"6\",\"6\"]},{\"columns\":[[\"31\",\"32\",\"33\"]],\"sizes\":[\"12\"]}],[]]', 'bootstrap4', 0, 1, 1, 0, 0, '', '<script src=\"/media/com_rsform/js/calendar/calendar.js\"></script>\r\n<script src=\"/media/com_rsform/js/calendar/script.js\"></script>\r\n<script src=\"/templates/collector/js/com_rsform/data.js\"></script>', 'RSForm! Pro example', 1, 1, 'en-GB', '', 1, 1, 0, 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', '{global:mailfrom}', '', '{global:fromname}', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'info@astoria-booking.ru', '', '', 'info@astoria-booking.ru', '', '{FullName:value}', 'Contact', 1, '', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', 0, '', '', '', '', ', ', 1, '', 'userForm', '', '', '', 0, 0, 1, 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_mappings`
--

CREATE TABLE `klin_rsform_mappings` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `driver` varchar(16) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_posts`
--

CREATE TABLE `klin_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `fields` mediumtext NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_posts`
--

INSERT INTO `klin_rsform_posts` (`form_id`, `enabled`, `method`, `fields`, `silent`, `url`) VALUES
(1, 0, 1, '[]', 1, 'http://');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_properties`
--

CREATE TABLE `klin_rsform_properties` (
  `PropertyId` int(11) NOT NULL,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_properties`
--

INSERT INTO `klin_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES
(149, 23, 'NAME', 'date_in'),
(150, 23, 'CAPTION', 'Дата заезда'),
(151, 23, 'DEFAULTVALUE', ''),
(152, 23, 'DESCRIPTION', ''),
(153, 23, 'REQUIRED', 'YES'),
(154, 23, 'VALIDATIONCALENDAR', 'min 27'),
(155, 23, 'VALIDATIONDATE', 'YES'),
(156, 23, 'VALIDATIONMESSAGE', 'Неверный ввод'),
(157, 23, 'DATEFORMAT', 'd/m/Y'),
(158, 23, 'CALENDARLAYOUT', 'POPUP'),
(159, 23, 'MINDATE', '//<code>\r\nreturn date(\'m/d/Y\');\r\n//</code>'),
(160, 23, 'MAXDATE', '//<code>\r\nreturn date(\'m/d/Y\', strtotime(\"+62 days\"));\r\n//</code>'),
(161, 23, 'READONLY', 'NO'),
(162, 23, 'POPUPLABEL', 'Дата'),
(163, 23, 'ADDITIONALATTRIBUTES', ''),
(164, 23, 'EMAILATTACH', ''),
(165, 24, 'NAME', 'category_room'),
(166, 24, 'CAPTION', 'Номера'),
(167, 24, 'ITEMS', 'Любые Номера\r\nClassic Room\r\nDeluxe Room\r\nSuperior Deluxe Room\r\nStudio View Room\r\nJunior Suite\r\nDeluxe Junior Suite\r\nClassic Suite\r\nDeluxe Suite\r\nAmbassador Suite\r\nPresidential Suite\r\nRoyal Suite\r\nTsar Suite'),
(168, 24, 'DESCRIPTION', ''),
(169, 24, 'REQUIRED', 'YES'),
(170, 24, 'VALIDATIONMESSAGE', 'Выберете номер'),
(171, 24, 'SIZE', ''),
(172, 24, 'MULTIPLE', 'NO'),
(173, 24, 'ADDITIONALATTRIBUTES', ''),
(174, 24, 'EMAILATTACH', ''),
(175, 25, 'NAME', 'name'),
(176, 25, 'CAPTION', 'Имя'),
(177, 25, 'DEFAULTVALUE', ''),
(178, 25, 'DESCRIPTION', ''),
(179, 25, 'REQUIRED', 'YES'),
(180, 25, 'VALIDATIONEXTRA', '/^[^\\d\\<\\>\\[\\]\\{\\}\\=\\-\\)\\(]*$/'),
(181, 25, 'VALIDATIONRULE', 'regex'),
(182, 25, 'VALIDATIONMESSAGE', 'Введите только буквы'),
(183, 25, 'INPUTTYPE', 'text'),
(184, 25, 'ATTRMIN', ''),
(185, 25, 'ATTRMAX', ''),
(186, 25, 'ATTRSTEP', '1'),
(187, 25, 'SIZE', '20'),
(188, 25, 'MAXSIZE', '32'),
(189, 25, 'PLACEHOLDER', ''),
(190, 25, 'ADDITIONALATTRIBUTES', ''),
(191, 25, 'EMAILATTACH', ''),
(192, 26, 'NAME', 'Email'),
(193, 26, 'CAPTION', 'Email'),
(194, 26, 'DEFAULTVALUE', ''),
(195, 26, 'DESCRIPTION', ''),
(196, 26, 'REQUIRED', 'NO'),
(197, 26, 'VALIDATIONEXTRA', ''),
(198, 26, 'VALIDATIONRULE', 'email'),
(199, 26, 'VALIDATIONMESSAGE', 'Неверно заполнено поле'),
(200, 26, 'INPUTTYPE', 'email'),
(201, 26, 'ATTRMIN', ''),
(202, 26, 'ATTRMAX', ''),
(203, 26, 'ATTRSTEP', '1'),
(204, 26, 'SIZE', '20'),
(205, 26, 'MAXSIZE', '32'),
(206, 26, 'PLACEHOLDER', ''),
(207, 26, 'ADDITIONALATTRIBUTES', ''),
(208, 26, 'EMAILATTACH', ''),
(209, 27, 'NAME', 'date_out'),
(210, 27, 'CAPTION', 'Дата выезда'),
(211, 27, 'DEFAULTVALUE', ''),
(212, 27, 'DESCRIPTION', ''),
(213, 27, 'REQUIRED', 'YES'),
(214, 27, 'VALIDATIONCALENDAR', 'max 23'),
(215, 27, 'VALIDATIONDATE', 'YES'),
(216, 27, 'VALIDATIONMESSAGE', 'Неверный ввод'),
(217, 27, 'DATEFORMAT', 'd/m/Y'),
(218, 27, 'CALENDARLAYOUT', 'POPUP'),
(219, 27, 'MINDATE', ''),
(220, 27, 'MAXDATE', ''),
(221, 27, 'READONLY', 'NO'),
(222, 27, 'POPUPLABEL', 'Дата'),
(223, 27, 'ADDITIONALATTRIBUTES', ''),
(224, 27, 'EMAILATTACH', ''),
(225, 28, 'NAME', 'grown'),
(226, 28, 'CAPTION', 'Взрослые'),
(227, 28, 'ITEMS', '1\r\n2\r\n3\r\n4'),
(228, 28, 'DESCRIPTION', ''),
(229, 28, 'REQUIRED', 'YES'),
(230, 28, 'VALIDATIONMESSAGE', 'Выберете количество заезжающих'),
(231, 28, 'SIZE', ''),
(232, 28, 'MULTIPLE', 'NO'),
(233, 28, 'ADDITIONALATTRIBUTES', 'class=\"grown\"'),
(234, 28, 'EMAILATTACH', ''),
(235, 29, 'NAME', 'children'),
(236, 29, 'CAPTION', 'Дети'),
(237, 29, 'ITEMS', '0\r\n1\r\n2\r\n3'),
(238, 29, 'DESCRIPTION', ''),
(239, 29, 'REQUIRED', 'NO'),
(240, 29, 'VALIDATIONMESSAGE', 'Неверный ввод'),
(241, 29, 'SIZE', ''),
(242, 29, 'MULTIPLE', 'NO'),
(243, 29, 'ADDITIONALATTRIBUTES', 'class=\"children\"'),
(244, 29, 'EMAILATTACH', ''),
(245, 30, 'NAME', 'phone'),
(246, 30, 'CAPTION', 'Телефон'),
(247, 30, 'DEFAULTVALUE', ''),
(248, 30, 'DESCRIPTION', ''),
(249, 30, 'REQUIRED', 'YES'),
(250, 30, 'VALIDATIONEXTRA', '+,(,),-, '),
(251, 30, 'VALIDATIONRULE', 'numeric'),
(252, 30, 'VALIDATIONMESSAGE', 'Номер телефона. \r\nК примеру +7(999)999 99 99'),
(253, 30, 'INPUTTYPE', 'tel'),
(254, 30, 'ATTRMIN', ''),
(255, 30, 'ATTRMAX', ''),
(256, 30, 'ATTRSTEP', '1'),
(257, 30, 'SIZE', '20'),
(258, 30, 'MAXSIZE', '32'),
(259, 30, 'PLACEHOLDER', ''),
(260, 30, 'ADDITIONALATTRIBUTES', ''),
(261, 30, 'EMAILATTACH', ''),
(262, 31, 'NAME', 'Message'),
(263, 31, 'CAPTION', 'Ваши пожелания'),
(264, 31, 'DEFAULTVALUE', ''),
(265, 31, 'DESCRIPTION', ''),
(266, 31, 'REQUIRED', 'NO'),
(267, 31, 'VALIDATIONRULE', 'regex'),
(268, 31, 'VALIDATIONEXTRA', '/^[а-яА-ЯёЁ\\w\\!\\-\\,\\=\\;\\\"\\№\\:\\s\\.\\+\\(\\)\\-\\+\\%\\\\]++$/ui'),
(269, 31, 'VALIDATIONMESSAGE', 'Спецсимволы запрещены'),
(270, 31, 'COLS', '1'),
(271, 31, 'ROWS', '1'),
(272, 31, 'PLACEHOLDER', ''),
(273, 31, 'WYSIWYG', 'NO'),
(274, 31, 'WYSIWYGBUTTONS', 'NO'),
(275, 31, 'MAXSIZE', ''),
(276, 31, 'SHOW_CHAR_COUNT', 'NO'),
(277, 31, 'ADDITIONALATTRIBUTES', ''),
(278, 31, 'EMAILATTACH', ''),
(279, 32, 'NAME', 'Captcha'),
(280, 32, 'CAPTION', ''),
(281, 32, 'DESCRIPTION', ''),
(282, 32, 'VALIDATIONMESSAGE', 'Ok'),
(283, 32, 'LENGTH', '4'),
(284, 32, 'IMAGETYPE', 'INVISIBLE'),
(285, 32, 'BACKGROUNDCOLOR', '#FFFFFF'),
(286, 32, 'TEXTCOLOR', '#000000'),
(287, 32, 'TYPE', 'ALPHA'),
(288, 32, 'FLOW', 'VERTICAL'),
(289, 32, 'SHOWREFRESH', 'NO'),
(290, 32, 'REFRESHTEXT', 'Обновить'),
(291, 32, 'SIZE', '15'),
(292, 32, 'ADDITIONALATTRIBUTES', ''),
(293, 32, 'EMAILATTACH', ''),
(294, 33, 'NAME', 'Submit'),
(295, 33, 'LABEL', 'Отправить запрос'),
(296, 33, 'CAPTION', ''),
(297, 33, 'RESET', 'NO'),
(298, 33, 'RESETLABEL', ''),
(299, 33, 'PREVBUTTON', '<'),
(300, 33, 'DISPLAYPROGRESS', 'AUTO'),
(301, 33, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>'),
(302, 33, 'BUTTONTYPE', 'TYPEINPUT'),
(303, 33, 'ADDITIONALATTRIBUTES', ''),
(304, 33, 'EMAILATTACH', '');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_submissions`
--

CREATE TABLE `klin_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(255) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `SubmissionHash` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_submission_columns`
--

CREATE TABLE `klin_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_submission_values`
--

CREATE TABLE `klin_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_rsform_translations`
--

CREATE TABLE `klin_rsform_translations` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klin_rsform_translations`
--

INSERT INTO `klin_rsform_translations` (`id`, `form_id`, `lang_code`, `reference`, `reference_id`, `value`) VALUES
(1, 1, 'ru-RU', 'properties', '23.CAPTION', 'Дата заезда'),
(2, 1, 'ru-RU', 'properties', '23.DESCRIPTION', ''),
(3, 1, 'ru-RU', 'properties', '23.VALIDATIONMESSAGE', 'Неверный ввод'),
(4, 1, 'ru-RU', 'properties', '23.DEFAULTVALUE', ''),
(5, 1, 'ru-RU', 'properties', '23.POPUPLABEL', 'Дата'),
(6, 1, 'ru-RU', 'properties', '24.CAPTION', 'Номера'),
(7, 1, 'ru-RU', 'properties', '24.DESCRIPTION', ''),
(8, 1, 'ru-RU', 'properties', '24.VALIDATIONMESSAGE', 'Выберете номер'),
(9, 1, 'ru-RU', 'properties', '24.ITEMS', 'Classic Room\r\nDeluxe Room\r\nSuperior Deluxe Room\r\nStudio View Room\r\nJunior Suite\r\nDeluxe Junior Suite\r\nClassic Suite\r\nDeluxe Suite\r\nAmbassador Suite\r\nPresidential Suite\r\nRoyal Suite\r\nTsar Suite'),
(10, 1, 'ru-RU', 'properties', '25.CAPTION', 'Имя'),
(11, 1, 'ru-RU', 'properties', '25.DESCRIPTION', ''),
(12, 1, 'ru-RU', 'properties', '25.VALIDATIONMESSAGE', 'Введите только буквы'),
(13, 1, 'ru-RU', 'properties', '25.DEFAULTVALUE', ''),
(14, 1, 'ru-RU', 'properties', '25.PLACEHOLDER', ''),
(15, 1, 'ru-RU', 'properties', '26.CAPTION', 'Email'),
(16, 1, 'ru-RU', 'properties', '26.DESCRIPTION', ''),
(17, 1, 'ru-RU', 'properties', '26.VALIDATIONMESSAGE', 'Неверно заполнено поле'),
(18, 1, 'ru-RU', 'properties', '26.DEFAULTVALUE', ''),
(19, 1, 'ru-RU', 'properties', '26.PLACEHOLDER', ''),
(20, 1, 'ru-RU', 'properties', '27.CAPTION', 'Дата выезда'),
(21, 1, 'ru-RU', 'properties', '27.DESCRIPTION', ''),
(22, 1, 'ru-RU', 'properties', '27.VALIDATIONMESSAGE', 'Неверный ввод'),
(23, 1, 'ru-RU', 'properties', '27.DEFAULTVALUE', ''),
(24, 1, 'ru-RU', 'properties', '27.POPUPLABEL', 'Дата'),
(25, 1, 'ru-RU', 'properties', '28.CAPTION', 'Взрослые'),
(26, 1, 'ru-RU', 'properties', '28.DESCRIPTION', ''),
(27, 1, 'ru-RU', 'properties', '28.VALIDATIONMESSAGE', 'Выберете количество заезжающих'),
(28, 1, 'ru-RU', 'properties', '28.ITEMS', '1\r\n2\r\n3\r\n4'),
(29, 1, 'ru-RU', 'properties', '29.CAPTION', 'Дети'),
(30, 1, 'ru-RU', 'properties', '29.DESCRIPTION', ''),
(31, 1, 'ru-RU', 'properties', '29.VALIDATIONMESSAGE', 'Неверный ввод'),
(32, 1, 'ru-RU', 'properties', '29.ITEMS', '0\r\n1\r\n2\r\n3'),
(33, 1, 'ru-RU', 'properties', '30.CAPTION', 'Телефон'),
(34, 1, 'ru-RU', 'properties', '30.DESCRIPTION', ''),
(35, 1, 'ru-RU', 'properties', '30.VALIDATIONMESSAGE', 'Номер телефона. \r\nК примеру +7(999)999 99 99'),
(36, 1, 'ru-RU', 'properties', '30.DEFAULTVALUE', ''),
(37, 1, 'ru-RU', 'properties', '30.PLACEHOLDER', ''),
(38, 1, 'ru-RU', 'properties', '31.CAPTION', 'Ваши пожелания'),
(39, 1, 'ru-RU', 'properties', '31.DESCRIPTION', ''),
(40, 1, 'ru-RU', 'properties', '31.VALIDATIONMESSAGE', 'Спецсимволы запрещены'),
(41, 1, 'ru-RU', 'properties', '31.DEFAULTVALUE', ''),
(42, 1, 'ru-RU', 'properties', '31.PLACEHOLDER', ''),
(43, 1, 'ru-RU', 'properties', '32.CAPTION', ''),
(44, 1, 'ru-RU', 'properties', '32.DESCRIPTION', ''),
(45, 1, 'ru-RU', 'properties', '32.VALIDATIONMESSAGE', 'Ok'),
(46, 1, 'ru-RU', 'properties', '32.REFRESHTEXT', 'Обновить'),
(47, 1, 'ru-RU', 'properties', '33.LABEL', 'Отправить запрос'),
(48, 1, 'ru-RU', 'properties', '33.RESETLABEL', ''),
(49, 1, 'ru-RU', 'properties', '33.PREVBUTTON', '<'),
(50, 1, 'ru-RU', 'properties', '33.CAPTION', ''),
(51, 1, 'ru-RU', 'properties', '33.DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>'),
(52, 1, 'ru-RU', 'forms', 'ErrorMessage', '<p class=\"formRed\">Пожалуйста, заполните все необходимые поля!</p>'),
(53, 1, 'ru-RU', 'forms', 'Thankyou', '<p>Спасибо, Ваше сообщение отправлено.Наши менеджеры обязательно свяжутся с Вами.</p>'),
(54, 1, 'ru-RU', 'forms', 'FormTitle', 'Найти номер'),
(55, 1, 'ru-RU', 'forms', 'UserEmailFromName', '{global:sitename}'),
(56, 1, 'ru-RU', 'forms', 'UserEmailSubject', 'Форма обратной связи'),
(57, 1, 'ru-RU', 'forms', 'AdminEmailFromName', '{name:value}'),
(58, 1, 'ru-RU', 'forms', 'AdminEmailSubject', 'Найти номер'),
(59, 1, 'ru-RU', 'forms', 'DeletionEmailFromName', ''),
(60, 1, 'ru-RU', 'forms', 'DeletionEmailSubject', ''),
(61, 1, 'ru-RU', 'forms', 'MetaDesc', 'форма связи, обратная связь, написать письмо, регистрация отеля astoria-booking'),
(62, 1, 'ru-RU', 'forms', 'MetaKeywords', 'форма связи, обратная связь, написать письмо, регистрация отеля astoria-booking,astoriahotel.spb.'),
(63, 1, 'ru-RU', 'forms', 'UserEmailText', '<p>Здравствуйте {Name:value}</p>\r\n<p>Вопрос {Message:value}</p>'),
(64, 1, 'ru-RU', 'forms', 'AdminEmailText', '<table style=\"width: auto;\"><caption>\r\n<p style=\"text-align: left;\">Найти номер astoria-booking.ru</p>\r\n</caption>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Дата заезда:</span></em></p>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Дата выезда:</span></em></p>\r\n</td>\r\n<td>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{date_in:value}</span></strong></div>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{date_out:value}</span></strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Категория номера :</span></em></p>\r\n</td>\r\n<td>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{category_room:value}</span></strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Взрослых:</span></em></p>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Детей:</span></em></p>\r\n</td>\r\n<td>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{grown:value}</span></strong></div>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{children:value}</span></strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Имя :</span></em></p>\r\n</td>\r\n<td>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{name:value}</span></strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Email :</span></em></p>\r\n</td>\r\n<td>\r\n<div><strong><span style=\"background-color: initial; font-size: 1em;\">{Email:value}</span></strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><em>Телефон</em></p>\r\n</td>\r\n<td>\r\n<div><strong>{phone:value}</strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p><em><span style=\"background-color: initial; font-size: 1em;\">Сообщение :</span></em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>{Message:value}</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_schemas`
--

CREATE TABLE `klin_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_schemas`
--

INSERT INTO `klin_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.9.3-2019-02-07'),
(10011, '4.2.0');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_session`
--

CREATE TABLE `klin_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_session`
--

INSERT INTO `klin_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3030676a6d7437326a6b6169626233713936746e7635676a63726d7675713063, 0, 1, 1557127004, NULL, 0, ''),
(0x6366676e306b326476706a3130616b396d6663626a306e6c7675706237743371, 0, 1, 1557124354, NULL, 0, ''),
(0x6f76636f333571396f6a31726869686e6b65386b6569333364716b666d723837, 1, 1, 1557136357, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_tags`
--

CREATE TABLE `klin_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_tags`
--

INSERT INTO `klin_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 883, '2019-03-27 09:44:53', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_template_styles`
--

CREATE TABLE `klin_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_template_styles`
--

INSERT INTO `klin_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'collector', 0, '1', 'collector - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_ucm_base`
--

CREATE TABLE `klin_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_ucm_content`
--

CREATE TABLE `klin_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `klin_ucm_history`
--

CREATE TABLE `klin_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_updates`
--

CREATE TABLE `klin_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Дамп данных таблицы `klin_updates`
--

INSERT INTO `klin_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.4.3', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.0.3', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.0.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.4.2', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(34, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.3.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(37, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.3.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(38, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.4.3', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(39, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.3.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(40, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(41, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(42, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(43, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(44, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(45, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(46, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(47, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(48, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(49, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(50, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(51, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.4.2', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(52, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(53, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.1.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(54, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(55, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(56, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(57, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(58, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.4.2', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(59, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(60, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(61, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.3.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(62, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(63, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.2.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(64, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(65, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(66, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(67, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(68, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(69, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(70, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.4.2', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(71, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(72, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(73, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(74, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(75, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.3.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_update_sites`
--

CREATE TABLE `klin_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `klin_update_sites`
--

INSERT INTO `klin_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1557124260, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1554274069, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1555666251, ''),
(4, 'RSForm! Pro', 'extension', 'https://www.rsjoomla.com/updates/com_rsform/Component/com_rsform.xml', 1, 0, ''),
(5, 'RSForm! Pro - Module', 'extension', 'https://www.rsjoomla.com/updates/com_rsform/Modules/mod_rsform.xml', 1, 0, ''),
(6, 'RSForm! Pro - Content Plugin', 'extension', 'https://www.rsjoomla.com/updates/com_rsform/Plugins/plg_content.xml', 1, 0, ''),
(7, 'Joomlashack Framework', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/lib_allediaframework', 1, 0, ''),
(8, 'Joomlashack System Plugin', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/plg_system_ossystem', 1, 0, ''),
(9, 'OSMap', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/com_osmap', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_update_sites_extensions`
--

CREATE TABLE `klin_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `klin_update_sites_extensions`
--

INSERT INTO `klin_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10002),
(3, 28),
(4, 10004),
(5, 10009),
(6, 10010),
(7, 10012),
(8, 10013),
(9, 10011);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_usergroups`
--

CREATE TABLE `klin_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_usergroups`
--

INSERT INTO `klin_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `klin_users`
--

CREATE TABLE `klin_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_users`
--

INSERT INTO `klin_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(883, 'Super User', 'civil', 'netses@rambler.ru', '$2y$10$cNyxT8urwQHpCO0J5OlZougRh.8bG11kQYZlDqLwNX1Uz0M4gVgl.', 0, 1, '2019-03-27 09:44:54', '2019-05-06 09:52:37', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_user_keys`
--

CREATE TABLE `klin_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_user_notes`
--

CREATE TABLE `klin_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `klin_user_profiles`
--

CREATE TABLE `klin_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `klin_user_usergroup_map`
--

CREATE TABLE `klin_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_user_usergroup_map`
--

INSERT INTO `klin_user_usergroup_map` (`user_id`, `group_id`) VALUES
(883, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_utf8_conversion`
--

CREATE TABLE `klin_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_utf8_conversion`
--

INSERT INTO `klin_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `klin_viewlevels`
--

CREATE TABLE `klin_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `klin_viewlevels`
--

INSERT INTO `klin_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `klin_action_logs`
--
ALTER TABLE `klin_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Индексы таблицы `klin_action_logs_extensions`
--
ALTER TABLE `klin_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_action_logs_users`
--
ALTER TABLE `klin_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Индексы таблицы `klin_action_log_config`
--
ALTER TABLE `klin_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_assets`
--
ALTER TABLE `klin_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `klin_associations`
--
ALTER TABLE `klin_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `klin_banners`
--
ALTER TABLE `klin_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_banner_clients`
--
ALTER TABLE `klin_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `klin_banner_tracks`
--
ALTER TABLE `klin_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `klin_categories`
--
ALTER TABLE `klin_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_contact_details`
--
ALTER TABLE `klin_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `klin_content`
--
ALTER TABLE `klin_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Индексы таблицы `klin_contentitem_tag_map`
--
ALTER TABLE `klin_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `klin_content_frontpage`
--
ALTER TABLE `klin_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `klin_content_rating`
--
ALTER TABLE `klin_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `klin_content_types`
--
ALTER TABLE `klin_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `klin_extensions`
--
ALTER TABLE `klin_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `klin_fields`
--
ALTER TABLE `klin_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_fields_categories`
--
ALTER TABLE `klin_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Индексы таблицы `klin_fields_groups`
--
ALTER TABLE `klin_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_fields_values`
--
ALTER TABLE `klin_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Индексы таблицы `klin_finder_filters`
--
ALTER TABLE `klin_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `klin_finder_links`
--
ALTER TABLE `klin_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `klin_finder_links_terms0`
--
ALTER TABLE `klin_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms1`
--
ALTER TABLE `klin_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms2`
--
ALTER TABLE `klin_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms3`
--
ALTER TABLE `klin_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms4`
--
ALTER TABLE `klin_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms5`
--
ALTER TABLE `klin_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms6`
--
ALTER TABLE `klin_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms7`
--
ALTER TABLE `klin_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms8`
--
ALTER TABLE `klin_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_terms9`
--
ALTER TABLE `klin_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_termsa`
--
ALTER TABLE `klin_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_termsb`
--
ALTER TABLE `klin_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_termsc`
--
ALTER TABLE `klin_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_termsd`
--
ALTER TABLE `klin_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_termse`
--
ALTER TABLE `klin_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_links_termsf`
--
ALTER TABLE `klin_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `klin_finder_taxonomy`
--
ALTER TABLE `klin_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `klin_finder_taxonomy_map`
--
ALTER TABLE `klin_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `klin_finder_terms`
--
ALTER TABLE `klin_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `klin_finder_terms_common`
--
ALTER TABLE `klin_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `klin_finder_tokens`
--
ALTER TABLE `klin_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `klin_finder_tokens_aggregate`
--
ALTER TABLE `klin_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `klin_finder_types`
--
ALTER TABLE `klin_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `klin_languages`
--
ALTER TABLE `klin_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `klin_menu`
--
ALTER TABLE `klin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_menu_types`
--
ALTER TABLE `klin_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `klin_messages`
--
ALTER TABLE `klin_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `klin_messages_cfg`
--
ALTER TABLE `klin_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `klin_modules`
--
ALTER TABLE `klin_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_modules_menu`
--
ALTER TABLE `klin_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `klin_newsfeeds`
--
ALTER TABLE `klin_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `klin_osmap_items_settings`
--
ALTER TABLE `klin_osmap_items_settings`
  ADD PRIMARY KEY (`sitemap_id`,`uid`,`settings_hash`);

--
-- Индексы таблицы `klin_osmap_sitemaps`
--
ALTER TABLE `klin_osmap_sitemaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_idx` (`is_default`,`id`);

--
-- Индексы таблицы `klin_osmap_sitemap_menus`
--
ALTER TABLE `klin_osmap_sitemap_menus`
  ADD PRIMARY KEY (`sitemap_id`,`menutype_id`),
  ADD KEY `fk_sitemaps_idx` (`sitemap_id`),
  ADD KEY `ordering_idx` (`sitemap_id`,`ordering`);

--
-- Индексы таблицы `klin_overrider`
--
ALTER TABLE `klin_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_phocacart_taglabels_related`
--
ALTER TABLE `klin_phocacart_taglabels_related`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `i_file_id` (`item_id`,`tag_id`);

--
-- Индексы таблицы `klin_postinstall_messages`
--
ALTER TABLE `klin_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `klin_privacy_consents`
--
ALTER TABLE `klin_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Индексы таблицы `klin_privacy_requests`
--
ALTER TABLE `klin_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_redirect_links`
--
ALTER TABLE `klin_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `klin_rsform_calculations`
--
ALTER TABLE `klin_rsform_calculations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_rsform_components`
--
ALTER TABLE `klin_rsform_components`
  ADD UNIQUE KEY `ComponentId` (`ComponentId`),
  ADD KEY `ComponentTypeId` (`ComponentTypeId`),
  ADD KEY `FormId` (`FormId`);

--
-- Индексы таблицы `klin_rsform_component_types`
--
ALTER TABLE `klin_rsform_component_types`
  ADD PRIMARY KEY (`ComponentTypeId`);

--
-- Индексы таблицы `klin_rsform_component_type_fields`
--
ALTER TABLE `klin_rsform_component_type_fields`
  ADD KEY `ComponentTypeId` (`ComponentTypeId`);

--
-- Индексы таблицы `klin_rsform_conditions`
--
ALTER TABLE `klin_rsform_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `component_id` (`component_id`);

--
-- Индексы таблицы `klin_rsform_condition_details`
--
ALTER TABLE `klin_rsform_condition_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condition_id` (`condition_id`),
  ADD KEY `component_id` (`component_id`);

--
-- Индексы таблицы `klin_rsform_config`
--
ALTER TABLE `klin_rsform_config`
  ADD PRIMARY KEY (`SettingName`);

--
-- Индексы таблицы `klin_rsform_directory`
--
ALTER TABLE `klin_rsform_directory`
  ADD PRIMARY KEY (`formId`);

--
-- Индексы таблицы `klin_rsform_directory_fields`
--
ALTER TABLE `klin_rsform_directory_fields`
  ADD UNIQUE KEY `formId` (`formId`,`componentId`);

--
-- Индексы таблицы `klin_rsform_emails`
--
ALTER TABLE `klin_rsform_emails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_rsform_forms`
--
ALTER TABLE `klin_rsform_forms`
  ADD PRIMARY KEY (`FormId`);

--
-- Индексы таблицы `klin_rsform_mappings`
--
ALTER TABLE `klin_rsform_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klin_rsform_posts`
--
ALTER TABLE `klin_rsform_posts`
  ADD PRIMARY KEY (`form_id`);

--
-- Индексы таблицы `klin_rsform_properties`
--
ALTER TABLE `klin_rsform_properties`
  ADD UNIQUE KEY `PropertyId` (`PropertyId`),
  ADD KEY `ComponentId` (`ComponentId`);

--
-- Индексы таблицы `klin_rsform_submissions`
--
ALTER TABLE `klin_rsform_submissions`
  ADD PRIMARY KEY (`SubmissionId`),
  ADD KEY `FormId` (`FormId`),
  ADD KEY `SubmissionId` (`SubmissionId`,`FormId`,`DateSubmitted`),
  ADD KEY `SubmissionHash` (`SubmissionHash`);

--
-- Индексы таблицы `klin_rsform_submission_columns`
--
ALTER TABLE `klin_rsform_submission_columns`
  ADD PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`);

--
-- Индексы таблицы `klin_rsform_submission_values`
--
ALTER TABLE `klin_rsform_submission_values`
  ADD PRIMARY KEY (`SubmissionValueId`),
  ADD KEY `FormId` (`FormId`),
  ADD KEY `SubmissionId` (`SubmissionId`);

--
-- Индексы таблицы `klin_rsform_translations`
--
ALTER TABLE `klin_rsform_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Индексы таблицы `klin_schemas`
--
ALTER TABLE `klin_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `klin_session`
--
ALTER TABLE `klin_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `klin_tags`
--
ALTER TABLE `klin_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `klin_template_styles`
--
ALTER TABLE `klin_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `klin_ucm_base`
--
ALTER TABLE `klin_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `klin_ucm_content`
--
ALTER TABLE `klin_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `klin_ucm_history`
--
ALTER TABLE `klin_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `klin_updates`
--
ALTER TABLE `klin_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `klin_update_sites`
--
ALTER TABLE `klin_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `klin_update_sites_extensions`
--
ALTER TABLE `klin_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `klin_usergroups`
--
ALTER TABLE `klin_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `klin_users`
--
ALTER TABLE `klin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `klin_user_keys`
--
ALTER TABLE `klin_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `klin_user_notes`
--
ALTER TABLE `klin_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `klin_user_profiles`
--
ALTER TABLE `klin_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `klin_user_usergroup_map`
--
ALTER TABLE `klin_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `klin_viewlevels`
--
ALTER TABLE `klin_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `klin_action_logs`
--
ALTER TABLE `klin_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `klin_action_logs_extensions`
--
ALTER TABLE `klin_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `klin_action_log_config`
--
ALTER TABLE `klin_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `klin_assets`
--
ALTER TABLE `klin_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT для таблицы `klin_banners`
--
ALTER TABLE `klin_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_banner_clients`
--
ALTER TABLE `klin_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_categories`
--
ALTER TABLE `klin_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `klin_contact_details`
--
ALTER TABLE `klin_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_content`
--
ALTER TABLE `klin_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `klin_content_types`
--
ALTER TABLE `klin_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `klin_extensions`
--
ALTER TABLE `klin_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10015;

--
-- AUTO_INCREMENT для таблицы `klin_fields`
--
ALTER TABLE `klin_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `klin_fields_groups`
--
ALTER TABLE `klin_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `klin_finder_filters`
--
ALTER TABLE `klin_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_finder_links`
--
ALTER TABLE `klin_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_finder_taxonomy`
--
ALTER TABLE `klin_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `klin_finder_terms`
--
ALTER TABLE `klin_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_finder_types`
--
ALTER TABLE `klin_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_languages`
--
ALTER TABLE `klin_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `klin_menu`
--
ALTER TABLE `klin_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT для таблицы `klin_menu_types`
--
ALTER TABLE `klin_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `klin_messages`
--
ALTER TABLE `klin_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_modules`
--
ALTER TABLE `klin_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `klin_newsfeeds`
--
ALTER TABLE `klin_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_osmap_sitemaps`
--
ALTER TABLE `klin_osmap_sitemaps`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `klin_overrider`
--
ALTER TABLE `klin_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT для таблицы `klin_phocacart_taglabels_related`
--
ALTER TABLE `klin_phocacart_taglabels_related`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_postinstall_messages`
--
ALTER TABLE `klin_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `klin_privacy_consents`
--
ALTER TABLE `klin_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_privacy_requests`
--
ALTER TABLE `klin_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_redirect_links`
--
ALTER TABLE `klin_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_calculations`
--
ALTER TABLE `klin_rsform_calculations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_components`
--
ALTER TABLE `klin_rsform_components`
  MODIFY `ComponentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_component_types`
--
ALTER TABLE `klin_rsform_component_types`
  MODIFY `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_conditions`
--
ALTER TABLE `klin_rsform_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_condition_details`
--
ALTER TABLE `klin_rsform_condition_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_emails`
--
ALTER TABLE `klin_rsform_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_forms`
--
ALTER TABLE `klin_rsform_forms`
  MODIFY `FormId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_mappings`
--
ALTER TABLE `klin_rsform_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_properties`
--
ALTER TABLE `klin_rsform_properties`
  MODIFY `PropertyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_submissions`
--
ALTER TABLE `klin_rsform_submissions`
  MODIFY `SubmissionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_submission_values`
--
ALTER TABLE `klin_rsform_submission_values`
  MODIFY `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `klin_rsform_translations`
--
ALTER TABLE `klin_rsform_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `klin_tags`
--
ALTER TABLE `klin_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `klin_template_styles`
--
ALTER TABLE `klin_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `klin_ucm_content`
--
ALTER TABLE `klin_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_ucm_history`
--
ALTER TABLE `klin_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_updates`
--
ALTER TABLE `klin_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `klin_update_sites`
--
ALTER TABLE `klin_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `klin_usergroups`
--
ALTER TABLE `klin_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `klin_users`
--
ALTER TABLE `klin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=884;

--
-- AUTO_INCREMENT для таблицы `klin_user_keys`
--
ALTER TABLE `klin_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_user_notes`
--
ALTER TABLE `klin_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `klin_viewlevels`
--
ALTER TABLE `klin_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
