-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2021 at 07:06 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitnami_redmine`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'production', '2021-12-09 10:07:14', '2021-12-09 10:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int NOT NULL,
  `container_id` int DEFAULT NULL,
  `container_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disk_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` bigint NOT NULL DEFAULT '0',
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `digest` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `downloads` int NOT NULL DEFAULT '0',
  `author_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk_directory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `container_id`, `container_type`, `filename`, `disk_filename`, `filesize`, `content_type`, `digest`, `downloads`, `author_id`, `created_on`, `description`, `disk_directory`) VALUES
(1, 2, 'Project', 'issues-1.pdf', '211222161507_issues-1.pdf', 147021, 'application/pdf', 'ef77b9dc3c4aa0fbbbad066af869c99e05f0705c964bec6d2f96c4a4eea18d3d', 0, 1, '2021-12-22 09:15:07', '', '2021/12'),
(2, 2, 'Project', 'issues.csv', '211222161858_issues.csv', 4710, 'application/vnd.ms-excel', '3890f0d63c14cf17e0840da7e9b50331bc8247098ce0305d5c99a621de4b0f6f', 0, 1, '2021-12-22 09:18:58', '', '2021/12');

-- --------------------------------------------------------

--
-- Table structure for table `auth_sources`
--

CREATE TABLE `auth_sources` (
  `id` int NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `host` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `base_dn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_login` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_mail` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` text COLLATE utf8mb4_unicode_ci,
  `timeout` int DEFAULT NULL,
  `verify_peer` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `topics_count` int NOT NULL DEFAULT '0',
  `messages_count` int NOT NULL DEFAULT '0',
  `last_message_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `id` int NOT NULL,
  `changeset_id` int NOT NULL,
  `action` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_path` text COLLATE utf8mb4_unicode_ci,
  `from_revision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changesets`
--

CREATE TABLE `changesets` (
  `id` int NOT NULL,
  `repository_id` int NOT NULL,
  `revision` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `committer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changesets_issues`
--

CREATE TABLE `changesets_issues` (
  `changeset_id` int NOT NULL,
  `issue_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changeset_parents`
--

CREATE TABLE `changeset_parents` (
  `changeset_id` int NOT NULL,
  `parent_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `commented_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `commented_id` int NOT NULL DEFAULT '0',
  `author_id` int NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field_format` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `possible_values` text COLLATE utf8mb4_unicode_ci,
  `regexp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `min_length` int DEFAULT NULL,
  `max_length` int DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  `format_store` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `type`, `name`, `field_format`, `possible_values`, `regexp`, `min_length`, `max_length`, `is_required`, `is_for_all`, `is_filter`, `position`, `searchable`, `default_value`, `editable`, `visible`, `multiple`, `format_store`, `description`) VALUES
(1, 'IssueCustomField', 'New', 'string', NULL, '', NULL, NULL, 0, 0, 0, 1, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(2, 'IssueCustomField', 'Open', 'string', NULL, '', NULL, NULL, 0, 0, 0, 2, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_projects`
--

CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_roles`
--

CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_trackers`
--

CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int NOT NULL DEFAULT '0',
  `tracker_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_enumerations`
--

CREATE TABLE `custom_field_enumerations` (
  `id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `position` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_values`
--

CREATE TABLE `custom_values` (
  `id` int NOT NULL,
  `customized_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customized_id` int NOT NULL DEFAULT '0',
  `custom_field_id` int NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int NOT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `user_id`, `address`, `is_default`, `notify`, `created_on`, `updated_on`) VALUES
(1, 1, 'dh51805715@student.stu.edu.vn', 1, 1, '2021-12-09 10:07:13', '2021-12-09 10:07:13'),
(2, 5, 'user1@gmail.com', 1, 1, '2021-12-09 10:47:26', '2021-12-09 10:47:26'),
(3, 6, 'user2@gmail.com', 1, 1, '2021-12-09 10:48:54', '2021-12-09 10:48:54'),
(4, 7, 'user3@gmail.com', 1, 1, '2021-12-09 10:49:50', '2021-12-09 10:49:50'),
(5, 8, 'trankhanhvy73@gmail.com', 1, 1, '2021-12-21 23:19:49', '2021-12-21 23:19:49'),
(6, 9, 'trankhanhvy7@gmail.com', 1, 1, '2021-12-21 23:25:50', '2021-12-21 23:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `enabled_modules`
--

CREATE TABLE `enabled_modules` (
  `id` int NOT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enabled_modules`
--

INSERT INTO `enabled_modules` (`id`, `project_id`, `name`) VALUES
(1, 1, 'issue_tracking'),
(2, 1, 'time_tracking'),
(3, 1, 'news'),
(4, 1, 'documents'),
(5, 1, 'files'),
(6, 1, 'wiki'),
(7, 1, 'repository'),
(8, 1, 'boards'),
(9, 1, 'calendar'),
(10, 1, 'gantt'),
(11, 2, 'issue_tracking'),
(12, 2, 'time_tracking'),
(13, 2, 'news'),
(14, 2, 'documents'),
(15, 2, 'files'),
(16, 2, 'wiki'),
(17, 2, 'repository'),
(18, 2, 'boards'),
(19, 2, 'calendar'),
(20, 2, 'gantt');

-- --------------------------------------------------------

--
-- Table structure for table `enumerations`
--

CREATE TABLE `enumerations` (
  `id` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `position_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enumerations`
--

INSERT INTO `enumerations` (`id`, `name`, `position`, `is_default`, `type`, `active`, `project_id`, `parent_id`, `position_name`) VALUES
(1, 'Low', 1, 0, 'IssuePriority', 1, NULL, NULL, 'lowest'),
(2, 'Normal', 2, 1, 'IssuePriority', 1, NULL, NULL, 'default'),
(3, 'High', 3, 0, 'IssuePriority', 1, NULL, NULL, 'high3'),
(4, 'Urgent', 4, 0, 'IssuePriority', 1, NULL, NULL, 'high2'),
(5, 'Immediate', 5, 0, 'IssuePriority', 1, NULL, NULL, 'highest'),
(6, 'User documentation', 1, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(7, 'Technical documentation', 2, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(8, 'Design', 1, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(9, 'Development', 2, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE `groups_users` (
  `group_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `total_items` int DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `type`, `user_id`, `filename`, `settings`, `total_items`, `finished`, `created_at`, `updated_at`) VALUES
(1, 'UserImport', 1, '0dfd2caaf579d5996c59bd593bbe3bb9', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: ISO-8859-1\ndate_format: \"%m/%d/%Y\"\nnotifications: \'0\'\n', NULL, 0, '2021-12-22 16:14:11', '2021-12-22 16:14:11'),
(2, 'IssueImport', 1, '9d92b50bcd38ed28b377554e067c493e', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: ISO-8859-1\ndate_format: \"%m/%d/%Y\"\nnotifications: \'0\'\nmapping: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  project_id: \'2\'\n  tracker: \'\'\n  status: \'\'\n  subject: \'\'\n  description: \'\'\n  priority: \'\'\n  category: \'\'\n  assigned_to: \'\'\n  fixed_version: \'\'\n  is_private: \'\'\n  start_date: \'\'\n  due_date: \'\'\n  estimated_hours: \'\'\n  done_ratio: \'\'\n  unique_id: \'\'\n  parent_issue_id: \'\'\n  relation_duplicates: \'\'\n  relation_duplicated: \'\'\n  relation_blocks: \'\'\n  relation_blocked: \'\'\n  relation_relates: \'\'\n  relation_precedes: \'\'\n  relation_follows: \'\'\n  relation_copied_to: \'\'\n  relation_copied_from: \'\'\n', 14, 1, '2021-12-22 16:19:33', '2021-12-22 16:20:34'),
(3, 'IssueImport', 1, 'c0cc86b87cd66bf6bd456d4086e8cf99', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: ISO-8859-1\ndate_format: \"%m/%d/%Y\"\nnotifications: \'0\'\nmapping: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  project_id: \'1\'\n  tracker: \'\'\n  status: \'\'\n  subject: \'\'\n  description: \'\'\n  priority: \'\'\n  category: \'\'\n  assigned_to: \'\'\n  fixed_version: \'\'\n  is_private: \'\'\n  start_date: \'\'\n  due_date: \'\'\n  estimated_hours: \'\'\n  done_ratio: \'\'\n  unique_id: \'\'\n  parent_issue_id: \'\'\n  relation_duplicates: \'\'\n  relation_duplicated: \'\'\n  relation_blocks: \'\'\n  relation_blocked: \'\'\n  relation_relates: \'\'\n  relation_precedes: \'\'\n  relation_follows: \'\'\n  relation_copied_to: \'\'\n  relation_copied_from: \'\'\n', 14, 1, '2021-12-22 16:22:45', '2021-12-22 16:22:52'),
(4, 'IssueImport', 1, '2164ea8ba9330c77577926e0f4189777', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: UTF-8\ndate_format: \"%m/%d/%Y\"\nnotifications: \'0\'\nmapping: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  project_id: \'2\'\n  tracker: \'\'\n  status: \'\'\n  subject: \'\'\n  description: \'\'\n  priority: \'\'\n  category: \'\'\n  assigned_to: \'\'\n  fixed_version: \'\'\n  is_private: \'\'\n  start_date: \'\'\n  due_date: \'\'\n  estimated_hours: \'\'\n  done_ratio: \'\'\n  unique_id: \'\'\n  parent_issue_id: \'\'\n  relation_duplicates: \'\'\n  relation_duplicated: \'\'\n  relation_blocks: \'\'\n  relation_blocked: \'\'\n  relation_relates: \'\'\n  relation_precedes: \'\'\n  relation_follows: \'\'\n  relation_copied_to: \'\'\n  relation_copied_from: \'\'\n', 14, 1, '2021-12-22 16:24:43', '2021-12-22 16:25:06'),
(5, 'IssueImport', 1, 'db5a4d39af1605f5690bf903f268e4e2', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: UTF-8\ndate_format: \"%m/%d/%Y\"\nnotifications: \'0\'\nmapping: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  project_id: \'2\'\n  tracker: \'0\'\n  status: \'0\'\n  subject: \'0\'\n  description: \'\'\n  priority: \'\'\n  category: \'\'\n  assigned_to: \'\'\n  fixed_version: \'\'\n  is_private: \'\'\n  start_date: \'\'\n  due_date: \'\'\n  estimated_hours: \'\'\n  done_ratio: \'\'\n  unique_id: \'\'\n  parent_issue_id: \'\'\n  relation_duplicates: \'\'\n  relation_duplicated: \'\'\n  relation_blocks: \'\'\n  relation_blocked: \'\'\n  relation_relates: \'\'\n  relation_precedes: \'\'\n  relation_follows: \'\'\n  relation_copied_to: \'\'\n  relation_copied_from: \'\'\n', 14, 1, '2021-12-22 16:25:28', '2021-12-22 16:26:16'),
(6, 'IssueImport', 1, 'da5fc5b1c38acbbf9b9ff3593aa6b473', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: UTF-8\ndate_format: \"%d/%m/%Y\"\nnotifications: \'0\'\nmapping: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  project_id: \'1\'\n  tracker: \'1\'\n  status: \'1\'\n  subject: \'1\'\n  description: \'1\'\n  priority: \'1\'\n  category: \'1\'\n  create_categories: \'1\'\n  assigned_to: \'\'\n  fixed_version: \'\'\n  is_private: \'\'\n  start_date: \'\'\n  due_date: \'\'\n  estimated_hours: \'\'\n  done_ratio: \'\'\n  unique_id: \'\'\n  parent_issue_id: \'\'\n  relation_duplicates: \'\'\n  relation_duplicated: \'\'\n  relation_blocks: \'\'\n  relation_blocked: \'\'\n  relation_relates: \'\'\n  relation_precedes: \'\'\n  relation_follows: \'\'\n  relation_copied_to: \'\'\n  relation_copied_from: \'\'\n', 14, 1, '2021-12-22 16:50:19', '2021-12-22 16:51:21'),
(7, 'IssueImport', 1, 'a9b17c733eba5e9dd2ac99b1c82ee1e0', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: UTF-8\ndate_format: \"%d-%m-%Y\"\nnotifications: \'1\'\nmapping:\n  project_id: 2\n', NULL, 0, '2021-12-22 17:37:23', '2021-12-22 17:37:28'),
(8, 'IssueImport', 1, '4ebcc9238535b050af4b04488bf5b8c1', '---\nseparator: \",\"\nwrapper: \"\\\"\"\nencoding: UTF-8\ndate_format: \"%m/%d/%Y\"\nnotifications: \'0\'\nmapping:\n  project_id: 2\n', NULL, 0, '2021-12-22 17:38:56', '2021-12-22 17:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `import_items`
--

CREATE TABLE `import_items` (
  `id` int NOT NULL,
  `import_id` int NOT NULL,
  `position` int NOT NULL,
  `obj_id` int DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_items`
--

INSERT INTO `import_items` (`id`, `import_id`, `position`, `obj_id`, `message`, `unique_id`) VALUES
(1, 2, 1, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(2, 2, 2, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(3, 2, 3, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(4, 2, 4, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(5, 2, 5, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(6, 2, 6, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(7, 2, 7, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(8, 2, 8, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(9, 2, 9, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(10, 2, 10, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(11, 2, 11, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(12, 2, 12, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(13, 2, 13, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(14, 2, 14, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(15, 3, 1, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(16, 3, 2, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(17, 3, 3, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(18, 3, 4, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(19, 3, 5, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(20, 3, 6, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(21, 3, 7, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(22, 3, 8, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(23, 3, 9, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(24, 3, 10, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(25, 3, 11, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(26, 3, 12, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(27, 3, 13, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(28, 3, 14, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(29, 4, 1, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(30, 4, 2, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(31, 4, 3, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(32, 4, 4, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(33, 4, 5, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(34, 4, 6, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(35, 4, 7, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(36, 4, 8, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(37, 4, 9, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(38, 4, 10, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(39, 4, 11, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(40, 4, 12, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(41, 4, 13, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(42, 4, 14, NULL, 'Subject cannot be blank\nTracker cannot be blank\nStatus cannot be blank', NULL),
(43, 5, 1, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(44, 5, 2, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(45, 5, 3, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(46, 5, 4, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(47, 5, 5, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(48, 5, 6, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(49, 5, 7, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(50, 5, 8, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(51, 5, 9, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(52, 5, 10, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(53, 5, 11, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(54, 5, 12, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(55, 5, 13, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(56, 5, 14, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(57, 6, 1, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(58, 6, 2, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(59, 6, 3, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(60, 6, 4, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(61, 6, 5, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(62, 6, 6, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(63, 6, 7, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(64, 6, 8, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(65, 6, 9, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(66, 6, 10, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(67, 6, 11, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(68, 6, 12, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(69, 6, 13, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL),
(70, 6, 14, NULL, 'Tracker cannot be blank\nStatus cannot be blank', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int NOT NULL,
  `tracker_id` int NOT NULL,
  `project_id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `due_date` date DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `assigned_to_id` int DEFAULT NULL,
  `priority_id` int NOT NULL,
  `fixed_version_id` int DEFAULT NULL,
  `author_id` int NOT NULL,
  `lock_version` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`, `closed_on`) VALUES
(1, 1, 1, 'kết nối với database', 'không thể tạo kết nối với database, không hiện thị kết nối, kết nối bị lỗi', NULL, NULL, 2, NULL, 2, NULL, 5, 1, '2021-12-09 04:06:46', '2021-12-09 04:15:43', '2021-12-09', 0, NULL, NULL, 1, 1, 2, 0, NULL),
(4, 1, 1, 'chức năng', 'chức năng thêm xóa sửa không thể thực hiuện đk', NULL, NULL, 2, NULL, 2, NULL, 5, 1, '2021-12-09 04:13:49', '2021-12-09 04:15:35', '2021-12-09', 0, NULL, NULL, 4, 1, 2, 0, NULL),
(5, 1, 2, 'kết nối với database', 'kết nối với database được nhưng lại không thể lấy dữ liệu từ databse để hiện thị lên hệ thống', NULL, 2, 2, 1, 2, NULL, 1, 5, '2021-12-22 09:56:14', '2021-12-22 16:57:00', '2021-12-22', 100, NULL, NULL, 5, 1, 2, 0, NULL),
(6, 1, 2, 'Lấy thông tin đối tượng từ trang Thành viên về trang phiếu mượn sách không được', 'Không thể lấy thông tin từ trang thành viên về trang mượn sách để tạo phiếu mượn sách của thành viên đó', NULL, 4, 2, 9, 2, NULL, 1, 6, '2021-12-22 10:01:42', '2021-12-22 16:57:19', '2021-12-22', 100, NULL, NULL, 6, 1, 2, 0, NULL),
(7, 1, 2, 'Xử lý đăng nhập', '', NULL, 4, 2, 9, 2, NULL, 1, 5, '2021-12-22 10:04:18', '2021-12-22 16:52:42', '2021-12-22', 100, NULL, NULL, 7, 1, 2, 0, NULL),
(8, 1, 2, 'Lấy thông tin đối tượng từ nhiều trang', 'Muốn tạo phiếu mượn sách thì cần lấy thông tin thành viên và thông tin sách những mỗi lần lấy thông tin thành viên thì mọi thông tin trước đó đều bị xóa mất, nếu đã lấy thông tin thành viên chuyển sang lấy thông tin sách thì sau khi lấy đưuọc thông tin sách thì thông tin thành viên lại bị xóa', NULL, 4, 2, 9, 3, NULL, 1, 3, '2021-12-22 10:10:59', '2021-12-22 16:52:03', '2021-12-22', 0, NULL, NULL, 8, 1, 2, 0, NULL),
(9, 1, 2, 'Cảnh báo đăng nhập không thành công', '', NULL, 4, 10, 1, 2, NULL, 1, 2, '2021-12-22 16:54:37', '2021-12-22 17:17:03', '2021-12-22', 0, NULL, NULL, 9, 1, 2, 0, NULL),
(10, 1, 2, 'Thẻm phiếu mượn sách', '', NULL, 4, 10, 9, 2, NULL, 1, 2, '2021-12-22 16:55:53', '2021-12-22 17:17:10', '2021-12-22', 0, NULL, NULL, 10, 1, 2, 0, NULL),
(11, 1, 2, 'Cảnh báo xóa đầu sách', '', NULL, 4, 10, 1, 2, NULL, 1, 2, '2021-12-22 16:56:38', '2021-12-22 17:17:17', '2021-12-22', 0, NULL, NULL, 11, 1, 2, 0, NULL),
(12, 1, 2, 'Hiển thị thông tin từ database', '', NULL, 2, 10, 1, 2, NULL, 1, 2, '2021-12-22 16:57:46', '2021-12-22 17:17:20', '2021-12-22', 0, NULL, NULL, 12, 1, 2, 0, NULL),
(13, 1, 2, 'Cập nhật đồng hồ hiện thị thời gian ở trang chủ', 'Đông hồ hiện thị thời gian ở trnag chủ không tháy đổi thời gian theo thức tế mà chỉ khi mở lại trang chủ thì thời gian mới cập nhật', NULL, 3, 10, 9, 2, NULL, 1, 2, '2021-12-22 16:59:44', '2021-12-22 17:17:22', '2021-12-22', 0, NULL, NULL, 13, 1, 2, 0, NULL),
(14, 1, 2, 'Chuyển giữa các trang giao diện với nhau', '', NULL, 3, 10, 1, 2, NULL, 1, 3, '2021-12-22 17:00:31', '2021-12-22 17:17:25', '2021-12-22', 0, NULL, NULL, 14, 1, 2, 0, NULL),
(15, 1, 2, 'Chức năng liên kết với internet', '', NULL, 5, 10, 9, 2, NULL, 1, 4, '2021-12-22 17:02:31', '2021-12-22 17:17:28', '2021-12-23', 0, NULL, NULL, 15, 1, 2, 0, NULL),
(16, 1, 2, 'Thông báo kho đăng nhập không thành công', '', NULL, 4, 2, 9, 2, NULL, 1, 1, '2021-12-22 18:47:57', '2021-12-22 18:48:11', '2021-12-23', 0, NULL, NULL, 16, 1, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issue_categories`
--

CREATE TABLE `issue_categories` (
  `id` int NOT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `assigned_to_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_categories`
--

INSERT INTO `issue_categories` (`id`, `project_id`, `name`, `assigned_to_id`) VALUES
(1, 1, 'QuanLyThuVien', NULL),
(2, 2, 'TuongTacDatabase', NULL),
(3, 2, 'GiaoDien', NULL),
(4, 2, 'ChucNang', NULL),
(5, 2, 'PhatTrienHeThong', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issue_relations`
--

CREATE TABLE `issue_relations` (
  `id` int NOT NULL,
  `issue_from_id` int NOT NULL,
  `issue_to_id` int NOT NULL,
  `relation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `delay` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_statuses`
--

CREATE TABLE `issue_statuses` (
  `id` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `default_done_ratio` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_statuses`
--

INSERT INTO `issue_statuses` (`id`, `name`, `is_closed`, `position`, `default_done_ratio`) VALUES
(1, 'Open', 0, 1, NULL),
(2, 'In Progress', 0, 3, NULL),
(8, 'ToDo', 0, 2, NULL),
(9, 'Review', 0, 4, NULL),
(10, 'Done', 0, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` int NOT NULL,
  `journalized_id` int NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `journalized_id`, `journalized_type`, `user_id`, `notes`, `created_on`, `private_notes`) VALUES
(1, 4, 'Issue', 1, '', '2021-12-09 11:15:35', 0),
(2, 1, 'Issue', 1, NULL, '2021-12-09 11:15:43', 0),
(3, 5, 'Issue', 1, NULL, '2021-12-22 16:56:37', 0),
(4, 5, 'Issue', 1, NULL, '2021-12-22 16:56:50', 0),
(5, 5, 'Issue', 1, NULL, '2021-12-22 16:56:58', 0),
(6, 6, 'Issue', 1, NULL, '2021-12-22 17:02:04', 0),
(7, 6, 'Issue', 1, NULL, '2021-12-22 17:02:11', 0),
(8, 6, 'Issue', 1, NULL, '2021-12-22 17:02:21', 0),
(9, 5, 'Issue', 1, NULL, '2021-12-22 17:02:30', 0),
(10, 7, 'Issue', 1, 'Trong khi đăng nhập, nếu nhập mật khẩu sai thì thông báo sai mật khẩu và yêu cầu nhập lại, còn nếu tài khoản sai thì thông báo tài khoản không tồn tại và yêu cầu nhập lại', '2021-12-22 17:05:56', 0),
(11, 7, 'Issue', 1, '', '2021-12-22 17:07:55', 0),
(12, 6, 'Issue', 1, NULL, '2021-12-22 17:08:09', 0),
(13, 8, 'Issue', 9, NULL, '2021-12-22 17:13:09', 0),
(14, 7, 'Issue', 9, NULL, '2021-12-22 17:13:19', 0),
(15, 6, 'Issue', 9, NULL, '2021-12-22 17:13:36', 0),
(16, 7, 'Issue', 1, '', '2021-12-22 17:23:20', 0),
(17, 8, 'Issue', 1, '', '2021-12-22 23:52:03', 0),
(18, 7, 'Issue', 1, '', '2021-12-22 23:52:42', 0),
(19, 5, 'Issue', 1, '', '2021-12-22 23:57:00', 0),
(20, 6, 'Issue', 1, '', '2021-12-22 23:57:19', 0),
(21, 9, 'Issue', 1, NULL, '2021-12-23 00:08:26', 0),
(22, 10, 'Issue', 1, NULL, '2021-12-23 00:08:33', 0),
(23, 11, 'Issue', 1, NULL, '2021-12-23 00:08:37', 0),
(24, 12, 'Issue', 1, NULL, '2021-12-23 00:08:46', 0),
(25, 13, 'Issue', 1, NULL, '2021-12-23 00:08:53', 0),
(26, 14, 'Issue', 1, '', '2021-12-23 00:09:14', 0),
(27, 14, 'Issue', 1, NULL, '2021-12-23 00:09:27', 0),
(28, 15, 'Issue', 1, NULL, '2021-12-23 00:09:35', 0),
(29, 15, 'Issue', 1, NULL, '2021-12-23 00:14:15', 0),
(30, 15, 'Issue', 1, NULL, '2021-12-23 00:14:20', 0),
(31, 9, 'Issue', 1, NULL, '2021-12-23 00:17:03', 0),
(32, 10, 'Issue', 1, NULL, '2021-12-23 00:17:10', 0),
(33, 11, 'Issue', 1, NULL, '2021-12-23 00:17:17', 0),
(34, 12, 'Issue', 1, NULL, '2021-12-23 00:17:20', 0),
(35, 13, 'Issue', 1, NULL, '2021-12-23 00:17:22', 0),
(36, 14, 'Issue', 1, NULL, '2021-12-23 00:17:25', 0),
(37, 15, 'Issue', 1, NULL, '2021-12-23 00:17:28', 0),
(38, 16, 'Issue', 1, NULL, '2021-12-23 01:48:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `journal_details`
--

CREATE TABLE `journal_details` (
  `id` int NOT NULL,
  `journal_id` int NOT NULL DEFAULT '0',
  `property` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prop_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `old_value` longtext COLLATE utf8mb4_unicode_ci,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_details`
--

INSERT INTO `journal_details` (`id`, `journal_id`, `property`, `prop_key`, `old_value`, `value`) VALUES
(1, 1, 'attr', 'status_id', '1', '2'),
(2, 2, 'attr', 'status_id', '1', '2'),
(3, 3, 'attr', 'status_id', '1', '2'),
(4, 4, 'attr', 'assigned_to_id', NULL, '1'),
(5, 5, 'attr', 'done_ratio', '0', '80'),
(6, 6, 'attr', 'assigned_to_id', NULL, '1'),
(7, 7, 'attr', 'status_id', '1', '2'),
(8, 8, 'attr', 'done_ratio', '0', '70'),
(9, 9, 'attr', 'done_ratio', '80', '100'),
(10, 11, 'attr', 'subject', 'Thông báo khi đang nhập sai', 'Thông báo khi đăng nhập khôgn thành công'),
(11, 11, 'attr', 'status_id', '1', '2'),
(12, 11, 'attr', 'assigned_to_id', NULL, '9'),
(13, 11, 'attr', 'done_ratio', '0', '70'),
(14, 12, 'attr', 'assigned_to_id', '1', '9'),
(15, 13, 'attr', 'status_id', '1', '2'),
(16, 14, 'attr', 'done_ratio', '70', '100'),
(17, 15, 'attr', 'done_ratio', '70', '100'),
(18, 16, 'attr', 'subject', 'Thông báo khi đăng nhập khôgn thành công', 'Thông báo khi đăng nhập không thành công'),
(19, 17, 'attr', 'category_id', NULL, '4'),
(20, 18, 'attr', 'subject', 'Thông báo khi đăng nhập không thành công', 'Xử lý đăng nhập'),
(21, 18, 'attr', 'category_id', NULL, '4'),
(22, 19, 'attr', 'tracker_id', '2', '1'),
(23, 19, 'attr', 'category_id', NULL, '2'),
(24, 20, 'attr', 'tracker_id', '2', '1'),
(25, 20, 'attr', 'category_id', NULL, '4'),
(26, 21, 'attr', 'assigned_to_id', NULL, '1'),
(27, 22, 'attr', 'assigned_to_id', NULL, '9'),
(28, 23, 'attr', 'assigned_to_id', NULL, '1'),
(29, 24, 'attr', 'assigned_to_id', NULL, '1'),
(30, 25, 'attr', 'assigned_to_id', NULL, '9'),
(31, 26, 'attr', 'subject', 'Chuyênr giữ các trang giao diện với nhau', 'Chuyển giữa các trang giao diện với nhau'),
(32, 27, 'attr', 'assigned_to_id', NULL, '1'),
(33, 28, 'attr', 'assigned_to_id', NULL, '9'),
(34, 29, 'attr', 'status_id', '1', '2'),
(35, 30, 'attr', 'status_id', '2', '1'),
(36, 31, 'attr', 'status_id', '1', '10'),
(37, 32, 'attr', 'status_id', '1', '10'),
(38, 33, 'attr', 'status_id', '1', '10'),
(39, 34, 'attr', 'status_id', '1', '10'),
(40, 35, 'attr', 'status_id', '1', '10'),
(41, 36, 'attr', 'status_id', '1', '10'),
(42, 37, 'attr', 'status_id', '1', '10'),
(43, 38, 'attr', 'status_id', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `project_id`, `created_on`, `mail_notification`) VALUES
(1, 5, 1, '2021-12-09 03:57:24', 0),
(2, 6, 1, '2021-12-09 03:57:34', 0),
(4, 9, 2, '2021-12-22 10:07:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_roles`
--

CREATE TABLE `member_roles` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `role_id` int NOT NULL,
  `inherited_from` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_roles`
--

INSERT INTO `member_roles` (`id`, `member_id`, `role_id`, `inherited_from`) VALUES
(1, 1, 6, NULL),
(2, 2, 7, NULL),
(5, 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `board_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `author_id` int DEFAULT NULL,
  `replies_count` int NOT NULL DEFAULT '0',
  `last_reply_id` int DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `project_id` int DEFAULT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `comments_count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `open_id_authentication_associations`
--

CREATE TABLE `open_id_authentication_associations` (
  `id` int NOT NULL,
  `issued` int DEFAULT NULL,
  `lifetime` int DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assoc_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_url` blob,
  `secret` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `open_id_authentication_nonces`
--

CREATE TABLE `open_id_authentication_nonces` (
  `id` int NOT NULL,
  `timestamp` int NOT NULL,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `homepage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT '0',
  `default_version_id` int DEFAULT NULL,
  `default_assigned_to_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `homepage`, `is_public`, `parent_id`, `created_on`, `updated_on`, `identifier`, `status`, `lft`, `rgt`, `inherit_members`, `default_version_id`, `default_assigned_to_id`) VALUES
(1, 'DoAnChuyenNganh', 'Bug về đồ án chuyên ngành có thẻ gặp', '', 0, NULL, '2021-12-09 03:42:30', '2021-12-09 04:01:16', 'doanchuyennganh', 1, 1, 2, 0, NULL, NULL),
(2, 'QuanLyThuVien', 'Quản lý bugs cho phần mền quản lý thư viện', '', 0, NULL, '2021-12-21 11:30:27', '2021-12-21 11:30:27', 'quanlythuvien', 1, 3, 4, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_trackers`
--

CREATE TABLE `projects_trackers` (
  `project_id` int NOT NULL DEFAULT '0',
  `tracker_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_trackers`
--

INSERT INTO `projects_trackers` (`project_id`, `tracker_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int NOT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filters` text COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL DEFAULT '0',
  `column_names` text COLLATE utf8mb4_unicode_ci,
  `sort_criteria` text COLLATE utf8mb4_unicode_ci,
  `group_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` int DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `project_id`, `name`, `filters`, `user_id`, `column_names`, `sort_criteria`, `group_by`, `type`, `visibility`, `options`) VALUES
(1, NULL, 'Issues assigned to me', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nassigned_to_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - priority\n  - desc\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(2, NULL, 'Reported issues', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nauthor_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(3, NULL, 'Updated issues', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nupdated_by:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(4, NULL, 'Watched issues', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nwatcher_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(5, NULL, 'My projects', '---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\nid:\n  :operator: \"=\"\n  :values:\n  - mine\n', 0, NULL, NULL, NULL, 'ProjectQuery', 2, NULL),
(6, NULL, 'My bookmarks', '---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\nid:\n  :operator: \"=\"\n  :values:\n  - bookmarks\n', 0, NULL, NULL, NULL, 'ProjectQuery', 2, NULL),
(7, NULL, 'Spent time', '---\nspent_on:\n  :operator: \"*\"\n  :values:\n  - \'\'\nuser_id:\n  :operator: \"=\"\n  :values:\n  - me\n', 0, NULL, '---\n- - spent_on\n  - desc\n', NULL, 'TimeEntryQuery', 2, '---\n:totalable_names:\n- :hours\n');

-- --------------------------------------------------------

--
-- Table structure for table `queries_roles`
--

CREATE TABLE `queries_roles` (
  `query_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repositories`
--

CREATE TABLE `repositories` (
  `id` int NOT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `root_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_encoding` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_encoding` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` longtext COLLATE utf8mb4_unicode_ci,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int DEFAULT NULL,
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `issues_visibility` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `users_visibility` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `time_entries_visibility` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `all_roles_managed` tinyint(1) NOT NULL DEFAULT '1',
  `settings` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `position`, `assignable`, `builtin`, `permissions`, `issues_visibility`, `users_visibility`, `time_entries_visibility`, `all_roles_managed`, `settings`) VALUES
(1, 'Non member', 0, 1, 1, '---\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n'),
(2, 'Anonymous', 0, 1, 2, '---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default', 'all', 'all', 1, NULL),
(3, 'Manager', 1, 1, 0, '---\n- :add_project\n- :edit_project\n- :close_project\n- :delete_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :view_issues\n- :add_issues\n- :edit_issues\n- :edit_own_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_categories\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :log_time_for_other_users\n- :import_time_entries\n- :view_news\n- :manage_news\n- :comment_news\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_message_watchers\n- :add_message_watchers\n- :delete_message_watchers\n- :manage_boards\n- :view_calendar\n- :view_gantt\n', 'all', 'all', 'all', 1, NULL),
(4, 'Developer', 2, 1, 0, '---\n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :view_private_notes\n- :set_notes_private\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n', 'default', 'all', 'all', 1, NULL),
(5, 'Reporter', 3, 1, 0, '---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default', 'all', 'all', 1, NULL),
(6, 'user1', 4, 1, 0, '---\n- :close_project\n- :view_messages\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :view_news\n- :comment_news\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(7, 'user2', 5, 1, 0, '---\n- :view_messages\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :view_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n');

-- --------------------------------------------------------

--
-- Table structure for table `roles_managed_roles`
--

CREATE TABLE `roles_managed_roles` (
  `role_id` int NOT NULL,
  `managed_role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('1'),
('10'),
('100'),
('101'),
('102'),
('103'),
('104'),
('105'),
('106'),
('107'),
('108'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('19'),
('2'),
('20'),
('20090214190337'),
('20090312172426'),
('20090312194159'),
('20090318181151'),
('20090323224724'),
('20090401221305'),
('20090401231134'),
('20090403001910'),
('20090406161854'),
('20090425161243'),
('20090503121501'),
('20090503121505'),
('20090503121510'),
('20090614091200'),
('20090704172350'),
('20090704172355'),
('20090704172358'),
('20091010093521'),
('20091017212227'),
('20091017212457'),
('20091017212644'),
('20091017212938'),
('20091017213027'),
('20091017213113'),
('20091017213151'),
('20091017213228'),
('20091017213257'),
('20091017213332'),
('20091017213444'),
('20091017213536'),
('20091017213642'),
('20091017213716'),
('20091017213757'),
('20091017213835'),
('20091017213910'),
('20091017214015'),
('20091017214107'),
('20091017214136'),
('20091017214236'),
('20091017214308'),
('20091017214336'),
('20091017214406'),
('20091017214440'),
('20091017214519'),
('20091017214611'),
('20091017214644'),
('20091017214720'),
('20091017214750'),
('20091025163651'),
('20091108092559'),
('20091114105931'),
('20091123212029'),
('20091205124427'),
('20091220183509'),
('20091220183727'),
('20091220184736'),
('20091225164732'),
('20091227112908'),
('20100129193402'),
('20100129193813'),
('20100221100219'),
('20100313132032'),
('20100313171051'),
('20100705164950'),
('20100819172912'),
('20101104182107'),
('20101107130441'),
('20101114115114'),
('20101114115359'),
('20110220160626'),
('20110223180944'),
('20110223180953'),
('20110224000000'),
('20110226120112'),
('20110226120132'),
('20110227125750'),
('20110228000000'),
('20110228000100'),
('20110401192910'),
('20110408103312'),
('20110412065600'),
('20110511000000'),
('20110902000000'),
('20111201201315'),
('20120115143024'),
('20120115143100'),
('20120115143126'),
('20120127174243'),
('20120205111326'),
('20120223110929'),
('20120301153455'),
('20120422150750'),
('20120705074331'),
('20120707064544'),
('20120714122000'),
('20120714122100'),
('20120714122200'),
('20120731164049'),
('20120930112914'),
('20121026002032'),
('20121026003537'),
('20121209123234'),
('20121209123358'),
('20121213084931'),
('20130110122628'),
('20130201184705'),
('20130202090625'),
('20130207175206'),
('20130207181455'),
('20130215073721'),
('20130215111127'),
('20130215111141'),
('20130217094251'),
('20130602092539'),
('20130710182539'),
('20130713104233'),
('20130713111657'),
('20130729070143'),
('20130911193200'),
('20131004113137'),
('20131005100610'),
('20131124175346'),
('20131210180802'),
('20131214094309'),
('20131215104612'),
('20131218183023'),
('20140228130325'),
('20140903143914'),
('20140920094058'),
('20141029181752'),
('20141029181824'),
('20141109112308'),
('20141122124142'),
('20150113194759'),
('20150113211532'),
('20150113213922'),
('20150113213955'),
('20150208105930'),
('20150510083747'),
('20150525103953'),
('20150526183158'),
('20150528084820'),
('20150528092912'),
('20150528093249'),
('20150725112753'),
('20150730122707'),
('20150730122735'),
('20150921204850'),
('20150921210243'),
('20151020182334'),
('20151020182731'),
('20151021184614'),
('20151021185456'),
('20151021190616'),
('20151024082034'),
('20151025072118'),
('20151031095005'),
('20160404080304'),
('20160416072926'),
('20160529063352'),
('20161001122012'),
('20161002133421'),
('20161010081301'),
('20161010081528'),
('20161010081600'),
('20161126094932'),
('20161220091118'),
('20170207050700'),
('20170302015225'),
('20170309214320'),
('20170320051650'),
('20170418090031'),
('20170419144536'),
('20170723112801'),
('20180501132547'),
('20180913072918'),
('20180923082945'),
('20180923091603'),
('20190315094151'),
('20190315102101'),
('20190510070108'),
('20190620135549'),
('20200826153401'),
('20200826153402'),
('21'),
('22'),
('23'),
('24'),
('25'),
('26'),
('27'),
('28'),
('29'),
('3'),
('30'),
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('4'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('48'),
('49'),
('5'),
('50'),
('51'),
('52'),
('53'),
('54'),
('55'),
('56'),
('57'),
('58'),
('59'),
('6'),
('60'),
('61'),
('62'),
('63'),
('64'),
('65'),
('66'),
('67'),
('68'),
('69'),
('7'),
('70'),
('71'),
('72'),
('73'),
('74'),
('75'),
('76'),
('77'),
('78'),
('79'),
('8'),
('80'),
('81'),
('82'),
('83'),
('84'),
('85'),
('86'),
('87'),
('88'),
('89'),
('9'),
('90'),
('91'),
('92'),
('93'),
('94'),
('95'),
('96'),
('97'),
('98'),
('99');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `updated_on`) VALUES
(1, 'default_projects_tracker_ids', '---\n- \'1\'\n- \'2\'\n- \'3\'\n', '2021-12-09 03:07:24'),
(2, 'cross_project_issue_relations', '0', '2021-12-22 17:07:19'),
(3, 'link_copied_issue', 'ask', '2021-12-22 17:07:19'),
(4, 'cross_project_subtasks', 'tree', '2021-12-22 17:07:19'),
(5, 'close_duplicate_issues', '1', '2021-12-22 17:07:19'),
(6, 'issue_group_assignment', '0', '2021-12-22 17:07:19'),
(7, 'default_issue_start_date_to_creation_date', '1', '2021-12-22 17:07:19'),
(8, 'display_subprojects_issues', '1', '2021-12-22 17:07:19'),
(9, 'issue_done_ratio', 'issue_status', '2021-12-22 17:07:19'),
(10, 'non_working_week_days', '---\n- \'1\'\n- \'2\'\n- \'3\'\n- \'4\'\n- \'5\'\n- \'6\'\n- \'7\'\n', '2021-12-22 17:07:19'),
(11, 'issues_export_limit', '500', '2021-12-22 17:07:19'),
(12, 'gantt_items_limit', '500', '2021-12-22 17:07:19'),
(13, 'gantt_months_limit', '24', '2021-12-22 17:07:19'),
(14, 'parent_issue_dates', 'derived', '2021-12-22 17:07:19'),
(15, 'parent_issue_priority', 'derived', '2021-12-22 17:07:19'),
(16, 'parent_issue_done_ratio', 'derived', '2021-12-22 17:07:19'),
(17, 'issue_list_default_columns', '---\n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n', '2021-12-22 17:07:19'),
(18, 'issue_list_default_totals', '--- []\n', '2021-12-22 17:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `time_entries`
--

CREATE TABLE `time_entries` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `issue_id` int DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` int NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int NOT NULL,
  `tmonth` int NOT NULL,
  `tweek` int NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `action` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `action`, `value`, `created_on`, `updated_on`) VALUES
(2, 1, 'feeds', 'acccf2ef9b5fd0a23fb5d5a0d02d1867fd1db75e', '2021-12-09 10:41:07', '2021-12-09 03:41:07'),
(4, 5, 'feeds', '5be2c12d65bf1bcf512cd35674af99f7f5e4da53', '2021-12-09 10:58:03', '2021-12-09 03:58:03'),
(6, 6, 'feeds', 'f6237199880b25d1cde2bad80008f5b99f4b0783', '2021-12-09 10:58:20', '2021-12-09 03:58:20'),
(8, 7, 'feeds', 'da905fc090bc2217dfd7ef7d6b3ac7955c9eec72', '2021-12-09 10:59:02', '2021-12-09 03:59:02'),
(22, 1, 'session', '8d4336b0fd40f08cf479a2a772954cec308ad548', '2021-12-09 11:15:01', '2021-12-09 04:32:01'),
(23, 1, 'session', 'da2c0645d58acf9866238f4b14258f79d687febb', '2021-12-21 18:29:14', '2021-12-21 16:54:29'),
(24, 1, 'session', 'ab946b561079f5205f6477c0295dc2683ef26408', '2021-12-22 03:12:23', '2021-12-21 20:12:43'),
(27, 9, 'feeds', 'd3f08eed0141e11811b3fb3063133382a148ba6f', '2021-12-22 17:11:48', '2021-12-22 10:11:48'),
(30, 1, 'session', '4cdefe7822d958f9140519b90d49dc8e71ae1f93', '2021-12-22 17:38:13', '2021-12-22 19:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `trackers`
--

CREATE TABLE `trackers` (
  `id` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int DEFAULT '0',
  `default_status_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trackers`
--

INSERT INTO `trackers` (`id`, `name`, `description`, `is_in_chlog`, `position`, `is_in_roadmap`, `fields_bits`, `default_status_id`) VALUES
(1, 'Bug', NULL, 1, 1, 0, 0, 1),
(2, 'Feature', NULL, 1, 2, 1, 0, 1),
(3, 'Support', NULL, 0, 3, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hashed_password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `auth_source_id` int DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT '0',
  `passwd_changed_on` datetime DEFAULT NULL,
  `twofa_scheme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twofa_totp_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twofa_totp_last_used_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `hashed_password`, `firstname`, `lastname`, `admin`, `status`, `last_login_on`, `language`, `auth_source_id`, `created_on`, `updated_on`, `type`, `identity_url`, `mail_notification`, `salt`, `must_change_passwd`, `passwd_changed_on`, `twofa_scheme`, `twofa_totp_key`, `twofa_totp_last_used_at`) VALUES
(1, 'ngothuong', '76efb67039dcf98a67fed85b29ba4b0cf056cc88', 'Ngo Thuong', 'Admin', 1, 1, '2021-12-22 17:38:13', 'en', NULL, '2021-12-09 03:07:00', '2021-12-22 10:38:22', 'User', NULL, 'all', '2cd2055158e6262514ddb087cf7eaccc', 0, NULL, NULL, NULL, NULL),
(2, '', '', '', 'Anonymous users', 0, 1, NULL, '', NULL, '2021-12-09 03:07:12', '2021-12-09 03:07:12', 'GroupAnonymous', NULL, '', NULL, 0, NULL, NULL, NULL, NULL),
(3, '', '', '', 'Non member users', 0, 1, NULL, '', NULL, '2021-12-09 03:07:12', '2021-12-09 03:07:12', 'GroupNonMember', NULL, '', NULL, 0, NULL, NULL, NULL, NULL),
(4, '', '', '', 'Anonymous', 0, 0, NULL, '', NULL, '2021-12-09 03:07:25', '2021-12-09 03:07:25', 'AnonymousUser', NULL, 'only_my_events', NULL, 0, NULL, NULL, NULL, NULL),
(5, 'user1', '070d43ff2972c0bc5c0b1d2441484641a5df0f60', 'User', '1', 0, 3, '2021-12-09 11:13:22', 'en', NULL, '2021-12-09 03:47:26', '2021-12-22 10:47:41', 'User', NULL, 'only_my_events', '3354dae2ffa86b334bd619cb876fb03c', 0, '2021-12-09 10:47:26', NULL, NULL, NULL),
(6, 'user2', 'ce71acc69ff79f137a8904bdbae090599f6807d8', 'User', '2', 0, 3, '2021-12-09 11:03:25', 'en', NULL, '2021-12-09 03:48:54', '2021-12-22 10:47:43', 'User', NULL, 'only_my_events', 'eb6f33af01bbcfe050db774735c6727c', 0, '2021-12-09 10:48:54', NULL, NULL, NULL),
(7, 'user3', 'b99696f82a7a39245272caa5f2205ec9ca695960', 'User', '3', 0, 3, '2021-12-09 11:03:58', 'en', NULL, '2021-12-09 03:49:50', '2021-12-22 10:47:44', 'User', NULL, 'only_my_events', '323278e3f5a59eac7222f3276ed0f721', 0, '2021-12-09 10:49:50', NULL, NULL, NULL),
(8, 'vytran', 'c5dc333cd1813c7026d8974dfdb86caf0f8e0a9f', 'Vy', 'Tran', 0, 3, NULL, 'en', NULL, '2021-12-21 16:19:49', '2021-12-21 16:20:58', 'User', NULL, 'only_my_events', '3e05abda3155dff7dabc65abcc292e64', 0, '2021-12-21 23:19:49', NULL, NULL, NULL),
(9, 'vytrann', '001bc92bbbedea50e43bf2f97760f17c169e5188', 'Vy', 'Tran', 0, 1, '2021-12-22 17:11:47', 'en', NULL, '2021-12-21 16:25:50', '2021-12-21 16:25:50', 'User', NULL, 'only_my_events', '808c6c62d7f66f821352c32ae9924f54', 0, '2021-12-21 23:25:50', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `others` text COLLATE utf8mb4_unicode_ci,
  `hide_mail` tinyint(1) DEFAULT '1',
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `others`, `hide_mail`, `time_zone`) VALUES
(1, 1, '---\n:no_self_notified: \'1\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'2,1\'\n:gantt_zoom: 2\n:gantt_months: 6\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n', 1, ''),
(2, 5, '---\n:no_self_notified: \'1\'\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'1\'\n', 1, ''),
(3, 6, '---\n:no_self_notified: \'1\'\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(4, 7, '---\n:no_self_notified: \'1\'\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'1\'\n', 1, ''),
(5, 8, '---\n:no_self_notified: \'1\'\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(6, 9, '---\n:no_self_notified: \'1\'\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'2\'\n', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int NOT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `wiki_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `sharing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watchers`
--

CREATE TABLE `watchers` (
  `id` int NOT NULL,
  `watchable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `watchable_id` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wikis`
--

CREATE TABLE `wikis` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `start_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wikis`
--

INSERT INTO `wikis` (`id`, `project_id`, `start_page`, `status`) VALUES
(1, 1, 'Wiki', 1),
(2, 2, 'Wiki', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wiki_contents`
--

CREATE TABLE `wiki_contents` (
  `id` int NOT NULL,
  `page_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `comments` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wiki_content_versions`
--

CREATE TABLE `wiki_content_versions` (
  `id` int NOT NULL,
  `wiki_content_id` int NOT NULL,
  `page_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comments` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wiki_pages`
--

CREATE TABLE `wiki_pages` (
  `id` int NOT NULL,
  `wiki_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wiki_redirects`
--

CREATE TABLE `wiki_redirects` (
  `id` int NOT NULL,
  `wiki_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirects_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `redirects_to_wiki_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE `workflows` (
  `id` int NOT NULL,
  `tracker_id` int NOT NULL DEFAULT '0',
  `old_status_id` int NOT NULL DEFAULT '0',
  `new_status_id` int NOT NULL DEFAULT '0',
  `role_id` int NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflows`
--

INSERT INTO `workflows` (`id`, `tracker_id`, `old_status_id`, `new_status_id`, `role_id`, `assignee`, `author`, `type`, `field_name`, `rule`) VALUES
(6, 1, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(31, 2, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(36, 2, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(61, 3, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(66, 3, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(91, 1, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(104, 2, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(117, 3, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(145, 1, 1, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(146, 1, 8, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(147, 1, 2, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(148, 1, 9, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(149, 1, 9, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_attachments_on_author_id` (`author_id`),
  ADD KEY `index_attachments_on_created_on` (`created_on`),
  ADD KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  ADD KEY `index_attachments_on_disk_filename` (`disk_filename`);

--
-- Indexes for table `auth_sources`
--
ALTER TABLE `auth_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_auth_sources_on_id_and_type` (`id`,`type`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_project_id` (`project_id`),
  ADD KEY `index_boards_on_last_message_id` (`last_message_id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changesets_changeset_id` (`changeset_id`);

--
-- Indexes for table `changesets`
--
ALTER TABLE `changesets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  ADD KEY `index_changesets_on_user_id` (`user_id`),
  ADD KEY `index_changesets_on_repository_id` (`repository_id`),
  ADD KEY `index_changesets_on_committed_on` (`committed_on`),
  ADD KEY `changesets_repos_scmid` (`repository_id`,`scmid`);

--
-- Indexes for table `changesets_issues`
--
ALTER TABLE `changesets_issues`
  ADD UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`),
  ADD KEY `index_changesets_issues_on_issue_id` (`issue_id`);

--
-- Indexes for table `changeset_parents`
--
ALTER TABLE `changeset_parents`
  ADD KEY `changeset_parents_changeset_ids` (`changeset_id`),
  ADD KEY `changeset_parents_parent_ids` (`parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  ADD KEY `index_comments_on_author_id` (`author_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_custom_fields_on_id_and_type` (`id`,`type`);

--
-- Indexes for table `custom_fields_projects`
--
ALTER TABLE `custom_fields_projects`
  ADD UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`);

--
-- Indexes for table `custom_fields_roles`
--
ALTER TABLE `custom_fields_roles`
  ADD UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`);

--
-- Indexes for table `custom_fields_trackers`
--
ALTER TABLE `custom_fields_trackers`
  ADD UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`);

--
-- Indexes for table `custom_field_enumerations`
--
ALTER TABLE `custom_field_enumerations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_values`
--
ALTER TABLE `custom_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_values_customized` (`customized_type`,`customized_id`),
  ADD KEY `index_custom_values_on_custom_field_id` (`custom_field_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_project_id` (`project_id`),
  ADD KEY `index_documents_on_category_id` (`category_id`),
  ADD KEY `index_documents_on_created_on` (`created_on`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_email_addresses_on_user_id` (`user_id`);

--
-- Indexes for table `enabled_modules`
--
ALTER TABLE `enabled_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled_modules_project_id` (`project_id`);

--
-- Indexes for table `enumerations`
--
ALTER TABLE `enumerations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_enumerations_on_project_id` (`project_id`),
  ADD KEY `index_enumerations_on_id_and_type` (`id`,`type`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_items`
--
ALTER TABLE `import_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_import_items_on_import_id_and_unique_id` (`import_id`,`unique_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_project_id` (`project_id`),
  ADD KEY `index_issues_on_status_id` (`status_id`),
  ADD KEY `index_issues_on_category_id` (`category_id`),
  ADD KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  ADD KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  ADD KEY `index_issues_on_tracker_id` (`tracker_id`),
  ADD KEY `index_issues_on_priority_id` (`priority_id`),
  ADD KEY `index_issues_on_author_id` (`author_id`),
  ADD KEY `index_issues_on_created_on` (`created_on`),
  ADD KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  ADD KEY `index_issues_on_parent_id` (`parent_id`);

--
-- Indexes for table `issue_categories`
--
ALTER TABLE `issue_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_categories_project_id` (`project_id`),
  ADD KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`);

--
-- Indexes for table `issue_relations`
--
ALTER TABLE `issue_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  ADD KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  ADD KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`);

--
-- Indexes for table `issue_statuses`
--
ALTER TABLE `issue_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_issue_statuses_on_position` (`position`),
  ADD KEY `index_issue_statuses_on_is_closed` (`is_closed`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  ADD KEY `index_journals_on_user_id` (`user_id`),
  ADD KEY `index_journals_on_journalized_id` (`journalized_id`),
  ADD KEY `index_journals_on_created_on` (`created_on`);

--
-- Indexes for table `journal_details`
--
ALTER TABLE `journal_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_details_journal_id` (`journal_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  ADD KEY `index_members_on_user_id` (`user_id`),
  ADD KEY `index_members_on_project_id` (`project_id`);

--
-- Indexes for table `member_roles`
--
ALTER TABLE `member_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_member_roles_on_member_id` (`member_id`),
  ADD KEY `index_member_roles_on_role_id` (`role_id`),
  ADD KEY `index_member_roles_on_inherited_from` (`inherited_from`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_board_id` (`board_id`),
  ADD KEY `messages_parent_id` (`parent_id`),
  ADD KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  ADD KEY `index_messages_on_author_id` (`author_id`),
  ADD KEY `index_messages_on_created_on` (`created_on`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_project_id` (`project_id`),
  ADD KEY `index_news_on_author_id` (`author_id`),
  ADD KEY `index_news_on_created_on` (`created_on`);

--
-- Indexes for table `open_id_authentication_associations`
--
ALTER TABLE `open_id_authentication_associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_id_authentication_nonces`
--
ALTER TABLE `open_id_authentication_nonces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_projects_on_lft` (`lft`),
  ADD KEY `index_projects_on_rgt` (`rgt`);

--
-- Indexes for table `projects_trackers`
--
ALTER TABLE `projects_trackers`
  ADD UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  ADD KEY `projects_trackers_project_id` (`project_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_queries_on_project_id` (`project_id`),
  ADD KEY `index_queries_on_user_id` (`user_id`);

--
-- Indexes for table `queries_roles`
--
ALTER TABLE `queries_roles`
  ADD UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`);

--
-- Indexes for table `repositories`
--
ALTER TABLE `repositories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_repositories_on_project_id` (`project_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_managed_roles`
--
ALTER TABLE `roles_managed_roles`
  ADD UNIQUE KEY `index_roles_managed_roles_on_role_id_and_managed_role_id` (`role_id`,`managed_role_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_settings_on_name` (`name`);

--
-- Indexes for table `time_entries`
--
ALTER TABLE `time_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_entries_project_id` (`project_id`),
  ADD KEY `time_entries_issue_id` (`issue_id`),
  ADD KEY `index_time_entries_on_activity_id` (`activity_id`),
  ADD KEY `index_time_entries_on_user_id` (`user_id`),
  ADD KEY `index_time_entries_on_created_on` (`created_on`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_value` (`value`),
  ADD KEY `index_tokens_on_user_id` (`user_id`);

--
-- Indexes for table `trackers`
--
ALTER TABLE `trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_users_on_id_and_type` (`id`,`type`),
  ADD KEY `index_users_on_auth_source_id` (`auth_source_id`),
  ADD KEY `index_users_on_type` (`type`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_preferences_on_user_id` (`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versions_project_id` (`project_id`),
  ADD KEY `index_versions_on_sharing` (`sharing`);

--
-- Indexes for table `watchers`
--
ALTER TABLE `watchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  ADD KEY `index_watchers_on_user_id` (`user_id`),
  ADD KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`);

--
-- Indexes for table `wikis`
--
ALTER TABLE `wikis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wikis_project_id` (`project_id`);

--
-- Indexes for table `wiki_contents`
--
ALTER TABLE `wiki_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_contents_page_id` (`page_id`),
  ADD KEY `index_wiki_contents_on_author_id` (`author_id`);

--
-- Indexes for table `wiki_content_versions`
--
ALTER TABLE `wiki_content_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  ADD KEY `index_wiki_content_versions_on_updated_on` (`updated_on`);

--
-- Indexes for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  ADD KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  ADD KEY `index_wiki_pages_on_parent_id` (`parent_id`);

--
-- Indexes for table `wiki_redirects`
--
ALTER TABLE `wiki_redirects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  ADD KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`);

--
-- Indexes for table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  ADD KEY `index_workflows_on_old_status_id` (`old_status_id`),
  ADD KEY `index_workflows_on_role_id` (`role_id`),
  ADD KEY `index_workflows_on_new_status_id` (`new_status_id`),
  ADD KEY `index_workflows_on_tracker_id` (`tracker_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_sources`
--
ALTER TABLE `auth_sources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `changes`
--
ALTER TABLE `changes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `changesets`
--
ALTER TABLE `changesets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_field_enumerations`
--
ALTER TABLE `custom_field_enumerations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_values`
--
ALTER TABLE `custom_values`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_addresses`
--
ALTER TABLE `email_addresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enabled_modules`
--
ALTER TABLE `enabled_modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `enumerations`
--
ALTER TABLE `enumerations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `import_items`
--
ALTER TABLE `import_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `issue_categories`
--
ALTER TABLE `issue_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issue_relations`
--
ALTER TABLE `issue_relations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_statuses`
--
ALTER TABLE `issue_statuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `journal_details`
--
ALTER TABLE `journal_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_roles`
--
ALTER TABLE `member_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `open_id_authentication_associations`
--
ALTER TABLE `open_id_authentication_associations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `open_id_authentication_nonces`
--
ALTER TABLE `open_id_authentication_nonces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `repositories`
--
ALTER TABLE `repositories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `time_entries`
--
ALTER TABLE `time_entries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `trackers`
--
ALTER TABLE `trackers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watchers`
--
ALTER TABLE `watchers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wikis`
--
ALTER TABLE `wikis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wiki_contents`
--
ALTER TABLE `wiki_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wiki_content_versions`
--
ALTER TABLE `wiki_content_versions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wiki_redirects`
--
ALTER TABLE `wiki_redirects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
