#
# TABLE STRUCTURE FOR: cities
#

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `country_id` int(11) NOT NULL COMMENT 'Ссылка на страну',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название города',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Города';

INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (1, 1, 'rerum', '2015-05-13 20:53:36');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (2, 2, 'ducimus', '2015-03-23 14:58:48');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (3, 3, 'eaque', '2015-10-12 09:24:11');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (4, 4, 'est', '2019-05-14 22:00:18');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (5, 5, 'dolor', '2017-05-15 20:20:38');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (6, 6, 'voluptatem', '2016-03-09 11:16:07');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (7, 7, 'voluptatibus', '2013-03-06 10:16:32');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (8, 8, 'eos', '2017-05-18 13:58:46');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (9, 9, 'minima', '2017-02-19 12:42:00');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (10, 10, 'consequatur', '2019-06-15 18:07:06');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (11, 11, 'et', '2020-09-11 00:24:45');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (12, 12, 'numquam', '2014-04-02 10:29:07');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (13, 13, 'ut', '2014-01-10 13:23:37');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (14, 14, 'totam', '2019-02-06 22:34:25');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (15, 15, 'sunt', '2021-02-24 21:51:50');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (16, 16, 'odit', '2019-03-16 22:11:03');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (17, 17, 'aut', '2020-11-28 22:33:36');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (18, 18, 'molestias', '2014-06-28 06:38:00');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (19, 19, 'aliquam', '2017-09-11 10:57:07');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (20, 20, 'omnis', '2012-04-10 12:11:42');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (21, 21, 'fuga', '2015-07-10 07:39:06');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (22, 22, 'qui', '2017-07-23 01:07:23');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (23, 23, 'facilis', '2015-04-30 06:24:19');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (24, 24, 'sint', '2020-08-20 13:45:15');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (25, 25, 'quo', '2013-10-27 06:03:08');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (26, 26, 'expedita', '2019-12-14 23:13:06');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (27, 27, 'magnam', '2018-07-12 17:20:59');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (28, 28, 'maxime', '2015-08-25 21:37:03');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (29, 29, 'error', '2012-01-21 08:13:35');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (30, 30, 'aspernatur', '2013-09-26 22:15:52');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (31, 31, 'quia', '2021-01-26 06:12:41');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (32, 32, 'esse', '2018-06-08 10:39:50');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (33, 33, 'impedit', '2011-12-26 18:43:16');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (34, 34, 'reiciendis', '2015-12-06 21:13:00');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (35, 35, 'deleniti', '2019-05-15 20:02:18');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (36, 36, 'saepe', '2018-03-16 03:07:14');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (37, 37, 'eligendi', '2021-05-23 20:45:57');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (38, 38, 'in', '2017-05-09 16:05:51');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (39, 39, 'dolorem', '2013-08-04 01:55:27');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (40, 40, 'deserunt', '2013-04-21 02:30:25');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (41, 41, 'non', '2017-09-23 05:22:40');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (42, 42, 'debitis', '2019-05-01 21:22:24');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (43, 43, 'labore', '2011-09-06 12:15:34');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (44, 44, 'architecto', '2012-08-04 21:30:36');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (45, 45, 'tempore', '2015-01-11 15:08:43');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (46, 46, 'id', '2016-04-22 16:36:54');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (47, 47, 'voluptas', '2018-07-15 23:22:30');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (48, 48, 'molestiae', '2013-10-26 09:28:55');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (49, 49, 'commodi', '2012-07-16 05:32:15');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (50, 50, 'cum', '2019-03-19 16:29:55');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (51, 51, 'ipsam', '2017-03-09 20:37:40');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (52, 52, 'asperiores', '2012-10-19 23:21:29');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (53, 53, 'nesciunt', '2018-11-10 19:52:31');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (54, 54, 'culpa', '2018-01-04 18:33:09');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (55, 55, 'perspiciatis', '2015-12-12 07:36:36');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (56, 56, 'placeat', '2015-03-10 12:22:44');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (57, 57, 'sed', '2015-09-16 16:42:37');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (58, 58, 'inventore', '2020-10-28 11:08:25');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (59, 59, 'iste', '2012-07-09 21:13:37');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (60, 60, 'vel', '2017-01-19 23:02:35');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (61, 61, 'odio', '2020-08-29 19:23:03');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (62, 62, 'quis', '2019-07-11 01:13:14');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (63, 63, 'officia', '2011-07-06 09:16:58');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (64, 64, 'doloribus', '2012-01-14 07:58:27');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (65, 65, 'reprehenderit', '2015-05-13 01:00:46');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (66, 66, 'pariatur', '2015-03-25 20:50:51');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (67, 67, 'maiores', '2016-04-01 13:04:55');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (68, 68, 'facere', '2014-08-02 03:58:22');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (69, 69, 'repudiandae', '2016-02-12 23:03:25');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (70, 70, 'ad', '2014-11-20 01:24:59');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (71, 71, 'alias', '2013-11-14 00:28:48');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (72, 72, 'enim', '2012-03-06 15:42:19');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (73, 73, 'eveniet', '2011-10-06 16:19:24');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (74, 74, 'repellendus', '2013-02-23 15:00:46');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (75, 75, 'tempora', '2012-04-14 21:46:46');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (76, 76, 'ea', '2013-10-16 21:10:57');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (77, 77, 'a', '2018-09-18 16:36:43');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (78, 78, 'fugit', '2012-03-18 18:58:32');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (79, 79, 'nobis', '2012-11-20 20:32:26');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (80, 80, 'dolores', '2012-08-08 20:43:22');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (81, 81, 'laborum', '2017-05-19 08:11:45');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (82, 82, 'corrupti', '2013-08-19 02:23:23');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (83, 83, 'voluptatum', '2021-02-02 08:34:27');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (84, 84, 'soluta', '2020-02-23 11:34:43');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (85, 85, 'nulla', '2014-08-28 18:11:15');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (86, 86, 'eius', '2017-04-06 07:39:16');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (87, 87, 'necessitatibus', '2017-08-13 15:54:59');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (88, 88, 'hic', '2012-06-11 00:53:15');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (89, 89, 'possimus', '2016-02-01 08:49:40');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (90, 90, 'nisi', '2011-10-25 23:24:21');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (91, 91, 'excepturi', '2020-08-15 08:52:28');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (92, 92, 'autem', '2013-08-07 11:57:00');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (93, 93, 'doloremque', '2017-04-22 01:44:48');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (94, 94, 'illo', '2013-09-10 21:12:59');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (95, 95, 'veritatis', '2021-01-26 16:34:17');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (96, 96, 'natus', '2012-10-31 02:36:42');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (97, 97, 'amet', '2016-09-09 16:43:36');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (98, 98, 'sit', '2012-03-02 08:34:16');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (99, 99, 'assumenda', '2020-11-25 11:35:06');
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`) VALUES (100, 100, 'similique', '2021-06-14 23:23:27');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'rerum', '2020-12-11 14:21:42', '2020-11-30 12:56:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'aspernatur', '2020-10-12 08:29:33', '2020-11-12 12:26:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'architecto', '2020-08-17 22:42:35', '2020-08-08 04:02:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'maiores', '2021-03-26 23:02:30', '2020-11-23 22:13:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quam', '2021-02-04 18:34:41', '2020-09-13 01:56:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'deleniti', '2020-09-10 15:51:21', '2020-07-29 19:32:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'necessitatibus', '2020-12-29 04:01:24', '2020-09-08 01:36:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'eius', '2020-09-01 15:44:36', '2021-04-05 15:59:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'qui', '2021-03-26 19:23:16', '2020-08-03 09:56:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'ducimus', '2020-06-27 22:36:06', '2021-05-25 22:02:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'distinctio', '2020-10-03 20:44:02', '2020-11-13 09:21:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'aut', '2020-06-18 12:05:40', '2021-04-19 09:59:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'cupiditate', '2021-01-20 06:24:15', '2021-03-20 00:43:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'itaque', '2021-03-20 08:46:49', '2020-10-24 10:21:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'quo', '2021-04-23 10:45:49', '2020-09-12 06:27:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'fugiat', '2021-02-18 02:03:17', '2020-11-10 02:14:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'sint', '2021-06-14 02:57:52', '2020-09-06 18:39:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'dolorem', '2020-11-14 06:09:43', '2020-06-21 08:27:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'dolore', '2020-08-08 13:01:48', '2020-11-16 18:59:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'incidunt', '2020-09-19 19:39:56', '2020-07-13 13:23:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'natus', '2021-04-14 10:00:02', '2020-10-12 06:49:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'perspiciatis', '2020-12-09 23:06:45', '2020-07-03 09:09:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'officia', '2020-11-28 20:51:53', '2021-04-24 19:50:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'autem', '2021-02-12 09:03:37', '2021-05-21 04:24:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'molestiae', '2020-07-28 13:27:25', '2020-09-15 07:16:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'aperiam', '2020-11-17 05:21:32', '2021-06-08 01:51:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'iure', '2020-11-29 00:13:40', '2021-06-13 23:28:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'quibusdam', '2020-11-13 23:47:45', '2020-12-26 19:53:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'eum', '2020-07-21 23:08:58', '2020-10-26 16:39:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'consequuntur', '2020-12-23 08:14:04', '2021-01-11 04:53:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'nulla', '2020-08-12 16:48:31', '2020-06-30 00:32:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'quae', '2021-03-05 21:53:48', '2020-10-07 09:32:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'reiciendis', '2021-04-03 22:56:21', '2020-08-23 23:24:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'delectus', '2020-12-16 18:28:56', '2020-12-26 12:03:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'fuga', '2021-02-12 02:08:04', '2020-08-01 05:13:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'sed', '2020-10-21 20:28:10', '2021-04-27 05:40:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'suscipit', '2020-09-25 23:57:46', '2020-08-11 15:54:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'non', '2020-11-26 15:30:30', '2020-06-19 10:57:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'voluptatem', '2020-11-04 03:48:20', '2020-08-14 04:06:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'et', '2021-05-07 19:09:01', '2020-09-20 22:03:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'consectetur', '2021-03-18 04:50:40', '2020-11-28 06:13:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'id', '2020-12-01 01:01:31', '2020-12-08 22:03:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'ipsum', '2021-04-11 06:10:28', '2020-09-02 04:08:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'minus', '2020-12-02 13:31:52', '2020-08-04 09:26:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'labore', '2020-09-01 13:40:36', '2020-11-21 23:27:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'eveniet', '2020-06-27 01:13:27', '2021-01-10 07:53:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'velit', '2021-02-19 09:02:19', '2020-11-13 02:33:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'molestias', '2021-01-11 20:12:41', '2021-02-12 12:28:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'dolores', '2021-06-13 21:42:13', '2020-06-30 10:45:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'est', '2020-10-26 19:01:19', '2020-08-10 10:37:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'porro', '2021-03-12 23:02:59', '2021-03-09 04:50:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'illo', '2021-02-16 07:21:34', '2021-05-05 15:58:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'laudantium', '2020-07-20 17:25:47', '2021-06-02 08:34:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'quaerat', '2020-07-25 16:50:16', '2020-08-14 06:30:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'ad', '2020-08-03 20:25:35', '2020-11-29 02:17:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'debitis', '2020-08-18 03:16:23', '2020-11-16 06:57:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'temporibus', '2021-02-06 21:54:04', '2020-11-19 03:44:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'doloribus', '2020-12-30 08:54:00', '2020-09-18 14:55:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'praesentium', '2021-05-13 07:30:11', '2021-03-30 11:50:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'blanditiis', '2021-04-01 09:56:01', '2021-02-20 08:55:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'voluptates', '2020-08-29 07:17:46', '2020-09-03 13:19:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'voluptatum', '2020-09-02 04:06:30', '2021-02-08 00:00:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'laboriosam', '2021-02-03 14:41:27', '2020-09-25 10:15:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'quia', '2021-06-14 04:14:28', '2020-11-26 13:28:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'sit', '2021-01-10 01:02:50', '2020-11-20 05:22:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'enim', '2021-01-28 18:49:00', '2021-03-08 12:45:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'corrupti', '2021-05-15 19:22:33', '2020-12-11 15:55:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'nihil', '2021-05-21 03:27:44', '2020-07-30 01:53:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'optio', '2021-04-09 19:08:11', '2021-04-19 08:20:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'vitae', '2021-02-18 06:04:01', '2021-03-04 09:27:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'perferendis', '2021-02-27 06:29:23', '2021-03-04 21:28:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'soluta', '2020-11-06 12:49:29', '2020-09-26 16:19:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'ut', '2020-12-11 15:58:37', '2020-12-31 18:05:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'eaque', '2021-06-02 04:13:41', '2020-07-13 15:20:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'fugit', '2020-08-27 13:33:57', '2020-10-31 14:04:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'repellendus', '2020-09-03 00:37:35', '2020-12-20 20:49:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'harum', '2021-05-09 14:28:04', '2021-02-17 13:15:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'tenetur', '2021-04-20 14:46:28', '2021-01-30 14:56:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'inventore', '2021-03-24 23:08:21', '2020-10-02 07:03:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'voluptas', '2021-03-29 23:27:36', '2020-07-26 17:14:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'doloremque', '2020-12-12 17:09:02', '2021-01-06 13:24:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'a', '2021-03-07 15:55:56', '2020-06-22 02:30:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'laborum', '2021-02-27 15:21:44', '2020-07-20 22:27:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'quisquam', '2021-03-17 11:55:47', '2021-01-23 05:43:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'dignissimos', '2021-04-18 13:43:03', '2021-05-24 17:56:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'excepturi', '2020-07-16 00:22:20', '2020-11-17 12:37:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'omnis', '2021-05-02 00:42:45', '2021-04-09 07:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'quod', '2020-12-10 03:55:53', '2021-05-22 15:40:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'aliquid', '2021-01-06 14:35:53', '2020-07-12 14:44:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'in', '2021-06-09 19:26:09', '2020-10-23 21:36:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'dolorum', '2021-01-29 07:14:14', '2020-10-10 00:48:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'vero', '2021-03-20 18:06:21', '2021-02-18 03:51:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'repellat', '2020-11-04 10:42:23', '2020-07-08 16:44:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'libero', '2021-01-24 12:00:25', '2020-09-22 13:23:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'nobis', '2021-05-04 19:57:14', '2021-04-09 23:37:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'veritatis', '2021-04-24 19:03:51', '2021-05-06 22:53:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'explicabo', '2020-12-18 18:19:12', '2021-05-13 08:43:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'voluptate', '2021-03-04 17:06:59', '2020-09-04 09:35:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'corporis', '2021-02-22 18:25:00', '2021-06-04 19:17:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'mollitia', '2021-01-23 16:46:32', '2020-09-17 10:41:47');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2021-01-30 15:31:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2021-02-20 02:10:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2021-01-11 13:22:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2020-10-16 04:27:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2020-08-15 06:22:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2021-01-10 06:35:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2020-09-26 01:05:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2020-08-06 23:51:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2020-11-07 02:11:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2021-05-19 03:58:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2020-11-10 15:27:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2021-01-16 03:31:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2020-09-06 05:03:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2020-09-26 21:17:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2020-08-05 01:01:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '2020-06-20 15:15:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2020-10-30 03:55:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2021-05-25 13:03:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2020-12-29 14:09:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2020-12-01 09:49:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2021-05-07 04:05:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2021-01-06 20:36:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2020-09-08 15:12:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2021-06-15 13:44:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '2021-05-03 14:07:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2021-05-17 23:27:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2021-01-31 11:04:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '2020-11-17 19:55:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2021-01-25 00:27:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2020-11-23 17:58:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '2020-10-06 10:13:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2020-08-08 18:17:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2021-04-25 12:24:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2020-09-18 20:51:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2021-06-15 14:37:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2020-10-02 12:40:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2020-10-03 18:42:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '2021-02-12 10:31:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2021-04-28 00:59:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2021-01-27 04:55:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2020-08-05 14:24:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '2020-07-15 21:30:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2021-05-06 17:22:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2020-08-08 04:34:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2021-02-05 08:35:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2020-09-08 02:43:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2021-04-17 11:27:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2020-10-10 01:09:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2021-02-06 09:43:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2020-08-07 20:07:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2021-03-21 03:16:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '2020-11-05 04:51:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '2021-04-17 19:02:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2021-02-14 09:21:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2020-12-14 12:04:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '2020-10-18 11:24:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2020-10-28 22:07:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '2021-04-26 07:18:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '2020-07-26 10:13:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '2021-05-01 08:12:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2020-12-23 06:08:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '2021-05-10 00:59:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2021-01-09 06:04:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2020-07-15 01:55:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '2021-01-30 09:33:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2021-01-16 01:48:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2020-07-08 05:50:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2020-12-01 17:42:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2020-06-26 12:07:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2021-04-20 14:41:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2021-05-14 18:44:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2021-05-08 16:33:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '2020-10-30 18:08:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2021-05-29 03:48:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2021-01-18 18:09:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '2021-06-17 03:00:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2020-08-10 16:29:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2021-02-09 03:33:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2020-10-09 02:23:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '2020-12-18 10:30:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '2021-03-19 06:48:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2020-11-06 04:55:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2020-12-31 16:15:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2020-07-16 14:30:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '2021-04-11 10:02:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2020-10-11 18:42:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '2020-08-02 06:37:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2021-01-16 02:29:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '2020-09-25 06:18:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '2020-07-06 04:23:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2020-09-14 18:10:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '2021-03-22 11:19:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '2020-11-02 19:50:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '2020-11-10 13:14:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '2020-11-18 11:20:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '2020-08-05 04:40:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2021-01-24 01:50:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2020-09-18 13:18:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2021-04-03 16:35:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2021-05-16 09:08:29');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Страны';

INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (1, 'ex', '2020-07-09 13:00:18');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (2, 'ut', '2021-02-01 22:39:51');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (3, 'dolor', '2020-10-05 03:39:13');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (4, 'fugit', '2020-10-02 12:04:39');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (5, 'occaecati', '2021-01-31 19:17:49');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (6, 'voluptatem', '2020-07-16 21:56:45');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (7, 'praesentium', '2021-03-01 00:56:37');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (8, 'vel', '2021-06-15 00:43:46');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (9, 'placeat', '2021-04-21 18:05:37');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (10, 'vero', '2021-03-22 07:12:15');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (11, 'sit', '2020-06-21 07:20:27');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (12, 'eveniet', '2020-10-10 09:48:46');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (13, 'ullam', '2021-02-04 10:15:47');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (14, 'quae', '2020-09-27 21:08:55');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (15, 'nihil', '2020-12-19 02:44:46');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (16, 'enim', '2021-02-23 05:22:13');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (17, 'ipsa', '2020-11-18 05:03:36');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (18, 'est', '2021-01-07 14:50:25');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (19, 'aut', '2020-07-24 14:35:44');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (20, 'modi', '2020-12-20 13:52:41');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (21, 'provident', '2020-09-08 07:55:08');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (22, 'consequatur', '2021-04-20 08:12:23');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (23, 'nam', '2020-09-30 09:43:25');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (24, 'sunt', '2021-06-12 11:10:26');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (25, 'velit', '2020-12-01 08:20:30');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (26, 'sed', '2020-08-15 05:58:44');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (27, 'libero', '2020-09-15 02:02:59');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (28, 'voluptatum', '2020-07-22 13:03:11');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (29, 'reiciendis', '2021-02-01 03:28:56');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (30, 'ipsam', '2021-04-24 18:44:42');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (31, 'id', '2021-04-03 05:20:48');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (32, 'facere', '2021-06-12 13:20:38');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (33, 'excepturi', '2020-11-18 13:29:09');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (34, 'quis', '2021-01-04 10:48:32');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (35, 'illum', '2020-10-24 19:08:57');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (36, 'doloribus', '2021-02-06 14:43:21');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (37, 'itaque', '2021-03-27 09:32:28');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (38, 'vitae', '2021-06-08 04:56:40');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (39, 'maiores', '2020-07-22 16:10:59');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (40, 'eligendi', '2020-09-21 13:43:42');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (41, 'repellendus', '2021-03-30 13:15:24');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (42, 'officia', '2021-05-12 22:26:08');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (43, 'debitis', '2021-05-05 22:24:28');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (44, 'iste', '2021-03-14 11:11:20');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (45, 'illo', '2021-04-07 11:14:38');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (46, 'natus', '2021-02-08 15:05:15');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (47, 'in', '2020-12-28 20:48:31');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (48, 'quas', '2020-09-28 12:29:47');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (49, 'sint', '2021-05-13 01:31:40');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (50, 'dolorem', '2020-09-12 03:51:12');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (51, 'nesciunt', '2020-10-18 20:57:49');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (52, 'amet', '2021-01-24 21:43:12');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (53, 'tempore', '2020-10-21 22:15:02');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (54, 'labore', '2020-10-17 08:38:14');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (55, 'quia', '2020-08-17 00:41:28');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (56, 'autem', '2020-12-18 09:37:56');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (57, 'dignissimos', '2020-06-28 20:24:27');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (58, 'omnis', '2020-10-01 23:56:00');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (59, 'ea', '2021-01-09 02:57:24');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (60, 'ratione', '2020-10-21 15:54:30');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (61, 'laboriosam', '2021-03-30 19:39:52');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (62, 'cupiditate', '2021-02-01 07:09:41');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (63, 'saepe', '2020-11-19 13:58:44');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (64, 'nostrum', '2021-02-17 08:02:20');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (65, 'quod', '2020-09-14 07:03:34');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (66, 'impedit', '2020-08-01 05:09:22');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (67, 'asperiores', '2020-07-10 12:57:02');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (68, 'nobis', '2021-06-07 04:05:16');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (69, 'inventore', '2021-01-24 22:09:37');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (70, 'suscipit', '2020-07-18 10:38:01');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (71, 'fuga', '2020-10-12 08:02:47');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (72, 'exercitationem', '2020-09-20 01:02:58');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (73, 'facilis', '2020-09-07 10:40:22');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (74, 'et', '2021-05-09 19:32:58');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (75, 'nulla', '2021-06-11 08:58:38');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (76, 'rerum', '2020-12-28 20:12:43');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (77, 'cum', '2020-07-11 19:07:08');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (78, 'qui', '2021-02-01 08:26:17');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (79, 'aliquam', '2021-05-19 09:29:36');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (80, 'a', '2021-03-09 04:34:17');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (81, 'quasi', '2020-08-29 09:12:58');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (82, 'esse', '2021-06-06 16:55:45');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (83, 'maxime', '2021-04-21 14:04:22');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (84, 'ad', '2020-06-18 06:10:13');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (85, 'non', '2021-05-19 05:49:49');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (86, 'iusto', '2021-01-01 03:34:37');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (87, 'molestiae', '2020-12-15 22:56:25');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (88, 'rem', '2020-07-30 23:05:49');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (89, 'delectus', '2020-07-06 08:32:57');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (90, 'odio', '2021-04-10 10:59:48');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (91, 'repudiandae', '2020-07-26 11:45:17');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (92, 'voluptas', '2021-03-19 10:26:50');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (93, 'accusamus', '2020-10-14 04:37:28');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (94, 'unde', '2021-01-24 14:16:50');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (95, 'harum', '2020-09-01 19:37:29');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (96, 'dolores', '2021-01-27 22:45:12');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (97, 'eius', '2020-09-05 19:31:27');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (98, 'dolore', '2021-02-06 02:45:14');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (99, 'minima', '2021-04-27 01:42:31');
INSERT INTO `countries` (`id`, `name`, `created_at`) VALUES (100, 'laudantium', '2020-11-02 18:42:50');


#
# TABLE STRUCTURE FOR: entity_attachments
#

DROP TABLE IF EXISTS `entity_attachments`;

CREATE TABLE `entity_attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на медиа',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'К чему прикрепляется медиа. Ссылка на сущности. Ссылка на message, media ',
  `entity_type` int(10) unsigned NOT NULL COMMENT 'Тип того, к чему прикрепляется вложение (к примеру, пост или сообщение). Ссылка на типы сущностей',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица вложений';

INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (1, 1, 1, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (2, 2, 2, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (3, 3, 3, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (4, 4, 4, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (5, 5, 5, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (6, 6, 6, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (7, 7, 7, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (8, 8, 8, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (9, 9, 9, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (10, 10, 10, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (11, 11, 11, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (12, 12, 12, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (13, 13, 13, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (14, 14, 14, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (15, 15, 15, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (16, 16, 16, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (17, 17, 17, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (18, 18, 18, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (19, 19, 19, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (20, 20, 20, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (21, 21, 21, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (22, 22, 22, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (23, 23, 23, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (24, 24, 24, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (25, 25, 25, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (26, 26, 26, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (27, 27, 27, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (28, 28, 28, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (29, 29, 29, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (30, 30, 30, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (31, 31, 31, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (32, 32, 32, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (33, 33, 33, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (34, 34, 34, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (35, 35, 35, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (36, 36, 36, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (37, 37, 37, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (38, 38, 38, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (39, 39, 39, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (40, 40, 40, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (41, 41, 41, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (42, 42, 42, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (43, 43, 43, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (44, 44, 44, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (45, 45, 45, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (46, 46, 46, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (47, 47, 47, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (48, 48, 48, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (49, 49, 49, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (50, 50, 50, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (51, 51, 51, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (52, 52, 52, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (53, 53, 53, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (54, 54, 54, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (55, 55, 55, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (56, 56, 56, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (57, 57, 57, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (58, 58, 58, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (59, 59, 59, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (60, 60, 60, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (61, 61, 61, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (62, 62, 62, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (63, 63, 63, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (64, 64, 64, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (65, 65, 65, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (66, 66, 66, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (67, 67, 67, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (68, 68, 68, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (69, 69, 69, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (70, 70, 70, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (71, 71, 71, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (72, 72, 72, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (73, 73, 73, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (74, 74, 74, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (75, 75, 75, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (76, 76, 76, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (77, 77, 77, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (78, 78, 78, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (79, 79, 79, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (80, 80, 80, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (81, 81, 81, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (82, 82, 82, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (83, 83, 83, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (84, 84, 84, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (85, 85, 85, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (86, 86, 86, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (87, 87, 87, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (88, 88, 88, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (89, 89, 89, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (90, 90, 90, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (91, 91, 91, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (92, 92, 92, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (93, 93, 93, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (94, 94, 94, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (95, 95, 95, 5);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (96, 96, 96, 1);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (97, 97, 97, 2);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (98, 98, 98, 3);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (99, 99, 99, 4);
INSERT INTO `entity_attachments` (`id`, `media_id`, `entity_id`, `entity_type`) VALUES (100, 100, 100, 5);


#
# TABLE STRUCTURE FOR: entity_likes
#

DROP TABLE IF EXISTS `entity_likes`;

CREATE TABLE `entity_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `entity_type` int(10) unsigned NOT NULL COMMENT 'Тип сущности, к которй поставили лайк. К примеру, медиа, пользователь, пост',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Что лайкнулми, id поста, медиа или пользователя',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Кто поставил лайк',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков';

INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (1, 1, 1, 1, '2020-10-19 09:14:37');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (2, 2, 2, 2, '2021-05-26 13:50:38');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (3, 3, 3, 3, '2020-07-11 19:25:05');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (4, 4, 4, 4, '2021-03-02 04:33:43');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (5, 5, 5, 5, '2021-04-11 14:28:24');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (6, 1, 6, 6, '2020-10-25 07:19:31');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (7, 2, 7, 7, '2020-07-20 23:53:47');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (8, 3, 8, 8, '2020-11-22 00:20:24');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (9, 4, 9, 9, '2020-12-19 14:56:51');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (10, 5, 10, 10, '2021-03-17 20:46:54');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (11, 1, 11, 11, '2020-07-21 15:55:52');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (12, 2, 12, 12, '2020-07-12 12:14:25');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (13, 3, 13, 13, '2020-08-16 02:47:37');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (14, 4, 14, 14, '2020-07-15 16:24:18');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (15, 5, 15, 15, '2021-01-23 21:26:02');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (16, 1, 16, 16, '2020-11-12 01:44:42');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (17, 2, 17, 17, '2020-08-20 16:55:11');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (18, 3, 18, 18, '2021-02-11 04:21:27');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (19, 4, 19, 19, '2021-04-23 01:58:59');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (20, 5, 20, 20, '2020-08-14 01:07:11');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (21, 1, 21, 21, '2020-11-14 15:22:22');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (22, 2, 22, 22, '2021-01-28 02:46:51');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (23, 3, 23, 23, '2020-09-04 08:55:45');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (24, 4, 24, 24, '2021-04-01 18:09:14');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (25, 5, 25, 25, '2020-07-13 22:22:17');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (26, 1, 26, 26, '2021-03-24 09:19:46');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (27, 2, 27, 27, '2021-02-17 21:34:07');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (28, 3, 28, 28, '2021-05-25 22:31:59');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (29, 4, 29, 29, '2020-07-14 05:44:39');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (30, 5, 30, 30, '2020-11-13 20:00:24');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (31, 1, 31, 31, '2021-02-02 00:03:05');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (32, 2, 32, 32, '2021-05-14 01:43:10');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (33, 3, 33, 33, '2021-03-01 18:44:21');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (34, 4, 34, 34, '2021-05-18 03:51:03');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (35, 5, 35, 35, '2021-06-06 22:03:52');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (36, 1, 36, 36, '2021-01-26 21:55:08');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (37, 2, 37, 37, '2021-02-14 10:26:40');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (38, 3, 38, 38, '2020-10-09 13:48:04');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (39, 4, 39, 39, '2020-11-08 00:36:52');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (40, 5, 40, 40, '2021-01-06 19:12:47');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (41, 1, 41, 41, '2021-01-27 00:51:31');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (42, 2, 42, 42, '2020-07-10 04:59:56');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (43, 3, 43, 43, '2021-04-21 00:06:03');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (44, 4, 44, 44, '2021-06-17 07:27:37');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (45, 5, 45, 45, '2021-06-09 02:30:14');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (46, 1, 46, 46, '2021-02-25 23:33:41');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (47, 2, 47, 47, '2020-06-30 23:07:17');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (48, 3, 48, 48, '2020-07-31 18:35:16');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (49, 4, 49, 49, '2020-09-22 23:01:59');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (50, 5, 50, 50, '2021-06-06 18:28:49');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (51, 1, 51, 51, '2020-08-06 04:22:22');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (52, 2, 52, 52, '2021-06-16 17:33:42');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (53, 3, 53, 53, '2020-11-11 10:15:33');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (54, 4, 54, 54, '2020-10-06 22:57:40');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (55, 5, 55, 55, '2021-04-03 12:50:10');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (56, 1, 56, 56, '2021-04-01 13:42:17');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (57, 2, 57, 57, '2021-02-19 04:27:33');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (58, 3, 58, 58, '2021-01-19 16:21:35');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (59, 4, 59, 59, '2020-08-02 00:12:50');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (60, 5, 60, 60, '2020-06-21 21:58:54');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (61, 1, 61, 61, '2021-01-24 09:44:52');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (62, 2, 62, 62, '2020-12-19 06:55:34');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (63, 3, 63, 63, '2020-12-28 19:20:29');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (64, 4, 64, 64, '2020-07-26 19:35:21');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (65, 5, 65, 65, '2021-03-28 03:51:56');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (66, 1, 66, 66, '2020-12-17 11:52:47');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (67, 2, 67, 67, '2021-01-09 08:37:42');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (68, 3, 68, 68, '2021-06-09 13:36:52');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (69, 4, 69, 69, '2021-01-06 10:58:31');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (70, 5, 70, 70, '2020-07-09 03:37:26');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (71, 1, 71, 71, '2020-09-16 21:24:54');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (72, 2, 72, 72, '2020-09-25 00:35:58');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (73, 3, 73, 73, '2020-10-09 15:56:29');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (74, 4, 74, 74, '2021-01-06 18:54:34');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (75, 5, 75, 75, '2021-03-15 12:08:57');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (76, 1, 76, 76, '2020-07-14 13:46:23');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (77, 2, 77, 77, '2020-11-19 08:56:03');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (78, 3, 78, 78, '2020-12-16 04:44:11');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (79, 4, 79, 79, '2021-03-30 23:11:36');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (80, 5, 80, 80, '2020-08-13 07:40:55');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (81, 1, 81, 81, '2021-04-03 20:16:15');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (82, 2, 82, 82, '2021-01-30 23:01:24');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (83, 3, 83, 83, '2020-10-10 00:00:39');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (84, 4, 84, 84, '2021-04-11 10:28:31');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (85, 5, 85, 85, '2021-06-17 01:09:16');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (86, 1, 86, 86, '2020-07-18 08:45:35');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (87, 2, 87, 87, '2020-08-21 20:37:03');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (88, 3, 88, 88, '2020-10-16 21:13:15');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (89, 4, 89, 89, '2020-10-16 14:43:37');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (90, 5, 90, 90, '2021-04-12 04:40:33');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (91, 1, 91, 91, '2020-10-28 18:09:59');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (92, 2, 92, 92, '2021-04-27 01:45:14');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (93, 3, 93, 93, '2020-09-11 18:44:50');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (94, 4, 94, 94, '2021-06-10 05:03:03');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (95, 5, 95, 95, '2021-05-14 15:00:05');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (96, 1, 96, 96, '2021-01-18 07:20:33');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (97, 2, 97, 97, '2020-10-02 14:30:24');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (98, 3, 98, 98, '2021-05-05 14:04:47');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (99, 4, 99, 99, '2020-08-29 00:13:24');
INSERT INTO `entity_likes` (`id`, `entity_type`, `entity_id`, `user_id`, `created_at`) VALUES (100, 5, 100, 100, '2021-04-17 21:42:48');


#
# TABLE STRUCTURE FOR: entity_types
#

DROP TABLE IF EXISTS `entity_types`;

CREATE TABLE `entity_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название сущности, пост, медиа, сообщение, пользователь и тд',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица типов сущностей';

INSERT INTO `entity_types` (`id`, `name`, `created_at`) VALUES (1, 'User', '2021-06-17 18:22:11');
INSERT INTO `entity_types` (`id`, `name`, `created_at`) VALUES (2, 'Post', '2021-06-17 18:22:11');
INSERT INTO `entity_types` (`id`, `name`, `created_at`) VALUES (3, 'Сommunities', '2021-06-17 18:22:11');
INSERT INTO `entity_types` (`id`, `name`, `created_at`) VALUES (4, 'Media', '2021-06-17 18:22:11');
INSERT INTO `entity_types` (`id`, `name`, `created_at`) VALUES (5, 'Message', '2021-06-17 18:22:11');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2021-05-24 09:26:34', '2020-09-03 21:48:32', '2020-12-14 23:36:26', '2021-01-16 23:47:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2020-09-03 14:27:42', '2020-09-13 17:57:31', '2020-08-30 01:24:26', '2020-11-13 06:37:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2021-02-07 04:38:00', '2020-11-13 01:33:48', '2021-03-28 03:53:01', '2020-11-17 03:23:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 1, '2020-08-10 10:41:27', '2021-04-12 12:52:15', '2021-01-31 20:41:03', '2021-04-14 12:09:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 2, '2020-07-31 19:42:03', '2021-03-25 10:10:35', '2020-08-28 20:01:03', '2020-12-27 03:01:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 3, '2020-12-22 01:58:42', '2021-05-20 21:47:28', '2020-12-18 16:42:08', '2021-04-04 03:51:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 1, '2020-12-15 20:22:52', '2021-01-05 05:31:41', '2020-09-07 20:57:01', '2020-06-23 01:07:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 2, '2020-11-13 16:09:04', '2021-02-04 07:56:29', '2021-04-04 05:34:34', '2021-01-21 00:47:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 3, '2020-06-21 20:48:07', '2020-08-07 03:55:31', '2021-06-11 09:06:21', '2020-12-31 15:45:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 1, '2020-11-10 07:29:11', '2020-12-20 13:55:45', '2020-09-18 05:15:24', '2021-02-28 18:51:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 2, '2021-05-27 00:25:59', '2020-12-16 23:16:15', '2021-01-20 02:27:33', '2021-01-01 12:33:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 3, '2021-02-16 02:12:47', '2020-09-07 11:27:37', '2021-01-04 18:59:39', '2020-09-21 16:49:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 1, '2021-01-14 00:20:41', '2020-11-19 04:15:18', '2020-10-09 14:32:02', '2021-02-12 09:50:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 2, '2021-06-16 03:35:05', '2020-09-19 05:54:29', '2020-07-24 02:35:27', '2020-11-28 08:29:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 3, '2020-09-17 09:21:20', '2020-08-24 19:14:59', '2021-02-12 15:12:20', '2020-09-06 16:37:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 1, '2020-10-08 05:10:36', '2021-03-10 09:09:11', '2020-10-09 21:04:43', '2020-12-27 09:46:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 2, '2020-08-18 05:07:27', '2021-03-13 08:41:47', '2021-05-01 03:18:15', '2021-05-22 20:13:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 3, '2020-11-13 22:09:13', '2020-09-28 03:00:38', '2020-07-07 22:53:15', '2020-09-15 08:25:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 1, '2020-07-18 07:37:16', '2020-10-10 20:26:51', '2020-08-13 12:58:21', '2020-10-07 12:40:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 2, '2021-02-25 16:44:42', '2020-08-31 06:40:11', '2020-07-07 11:59:03', '2021-02-07 09:08:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 3, '2021-05-15 07:02:15', '2020-08-12 02:06:22', '2021-06-05 05:49:36', '2020-06-18 06:49:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 1, '2020-09-22 20:30:51', '2021-02-19 13:56:41', '2021-01-06 02:13:34', '2020-11-13 18:10:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 2, '2021-06-16 23:45:14', '2020-11-07 12:22:27', '2020-11-01 14:05:40', '2021-05-05 06:15:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 3, '2020-10-19 10:09:39', '2020-07-21 04:09:28', '2020-10-02 18:59:01', '2021-02-01 20:44:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 1, '2020-09-14 23:18:05', '2020-06-22 18:05:07', '2021-05-23 07:04:45', '2021-04-20 18:27:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '2021-05-23 12:46:01', '2020-07-03 15:54:21', '2021-03-27 17:45:20', '2020-12-18 19:38:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 3, '2021-01-30 09:47:25', '2020-07-10 23:15:45', '2021-06-13 12:05:03', '2021-03-05 04:44:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 1, '2020-08-30 15:59:21', '2020-07-16 15:46:52', '2020-11-21 03:27:04', '2021-06-13 10:04:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 2, '2021-03-29 02:52:32', '2021-06-01 05:45:21', '2020-12-07 00:39:06', '2020-10-01 10:48:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 3, '2020-07-24 12:47:45', '2020-10-28 09:33:54', '2021-02-09 07:44:56', '2020-10-05 11:51:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '2020-07-05 23:27:02', '2020-06-30 15:55:03', '2021-03-18 12:24:13', '2021-05-07 21:56:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '2020-06-21 11:05:24', '2020-10-19 10:58:00', '2020-11-05 17:03:02', '2020-10-03 17:19:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2020-10-28 17:15:55', '2020-07-22 10:59:17', '2020-08-17 21:20:04', '2021-04-20 10:33:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 1, '2021-05-30 04:34:14', '2021-04-07 14:40:10', '2021-04-12 06:51:46', '2020-07-06 07:16:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 2, '2020-07-02 07:45:28', '2021-05-29 13:29:18', '2021-05-13 09:18:34', '2020-09-13 02:24:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 3, '2020-07-26 09:33:02', '2021-06-09 09:29:56', '2021-04-30 21:06:57', '2020-12-02 20:59:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '2021-06-11 07:55:47', '2021-03-02 12:21:03', '2021-06-01 14:52:04', '2020-10-01 22:03:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 2, '2020-11-25 21:30:48', '2021-02-04 20:03:01', '2020-08-12 16:59:56', '2020-10-04 01:40:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 3, '2021-03-11 06:13:49', '2020-07-08 16:24:08', '2020-12-04 08:53:05', '2020-10-05 03:38:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 1, '2020-10-19 17:48:17', '2020-08-20 13:37:31', '2021-05-29 15:45:18', '2020-07-29 10:30:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 2, '2020-08-08 18:25:31', '2021-05-08 19:11:26', '2020-09-25 05:58:34', '2021-03-20 13:58:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 3, '2021-05-31 01:04:29', '2021-03-08 03:20:52', '2021-05-03 17:29:58', '2020-07-21 08:56:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 1, '2021-03-03 10:22:14', '2020-07-01 17:58:10', '2020-12-14 06:46:44', '2020-09-25 13:27:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 2, '2021-06-04 07:17:59', '2020-07-13 17:52:31', '2020-11-13 19:48:27', '2020-11-03 21:50:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 3, '2021-04-13 21:29:33', '2021-04-17 19:09:10', '2021-05-14 13:46:47', '2021-04-08 01:15:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 1, '2020-07-07 18:51:34', '2020-07-30 15:31:04', '2021-01-25 01:00:12', '2020-12-21 10:32:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '2021-03-29 08:11:42', '2020-10-30 07:07:47', '2020-07-22 11:23:52', '2020-07-18 18:57:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '2020-09-18 10:01:23', '2021-02-27 22:11:05', '2020-11-15 16:57:24', '2020-07-14 11:22:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '2020-08-29 12:22:28', '2020-12-08 21:27:20', '2021-05-28 20:22:18', '2020-07-12 02:43:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '2021-05-31 13:17:58', '2020-08-17 23:28:33', '2021-03-24 01:26:16', '2020-11-05 03:50:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 3, '2020-09-11 18:58:18', '2021-02-16 16:58:23', '2021-06-17 12:16:49', '2020-10-10 20:58:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 1, '2021-04-25 17:18:44', '2020-08-19 08:44:01', '2021-03-19 13:17:37', '2020-07-15 14:01:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 2, '2020-07-15 03:29:22', '2020-12-17 02:28:34', '2021-03-09 10:08:16', '2020-09-19 14:28:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 3, '2020-12-23 10:07:57', '2020-09-04 11:27:12', '2020-06-25 17:29:10', '2020-12-01 08:47:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 1, '2020-08-27 23:21:16', '2020-09-24 08:53:58', '2021-02-10 22:13:43', '2020-08-13 16:31:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 2, '2020-10-21 15:00:36', '2021-01-20 02:32:08', '2021-03-16 05:10:24', '2021-01-15 17:32:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 3, '2020-08-19 01:05:58', '2021-03-07 22:25:20', '2021-02-06 01:30:35', '2021-06-01 09:42:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 1, '2021-06-03 06:16:17', '2021-02-10 19:23:27', '2020-12-14 12:25:39', '2021-04-29 14:02:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 2, '2020-12-11 10:58:17', '2020-10-30 02:56:09', '2021-02-22 05:14:40', '2020-10-26 13:17:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 3, '2021-04-10 13:34:37', '2021-02-06 05:23:30', '2020-08-28 08:03:48', '2021-03-07 13:22:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2021-05-16 11:30:19', '2020-09-04 22:39:06', '2020-12-21 04:50:08', '2021-05-05 18:27:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '2020-12-01 14:07:21', '2021-06-03 15:34:54', '2020-10-06 12:06:10', '2021-03-20 13:53:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '2020-07-24 00:59:44', '2021-01-13 04:43:56', '2021-02-21 03:25:54', '2021-01-02 19:47:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 1, '2020-06-30 09:42:15', '2020-08-05 12:07:58', '2021-02-06 13:34:16', '2020-08-12 11:29:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 2, '2021-05-21 14:42:01', '2020-12-13 04:34:31', '2021-02-18 05:02:49', '2020-08-15 19:27:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 3, '2021-03-31 20:18:55', '2020-06-21 10:31:50', '2021-03-29 20:53:04', '2020-11-25 14:53:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 1, '2021-06-15 12:02:39', '2021-04-19 08:56:34', '2020-08-10 18:49:17', '2020-10-27 22:51:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 2, '2020-11-13 13:42:15', '2021-06-11 19:21:21', '2020-09-10 17:47:05', '2020-08-21 21:10:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 3, '2021-02-18 11:41:24', '2020-12-30 10:34:16', '2021-04-04 17:50:24', '2020-09-05 02:21:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 1, '2021-01-27 12:35:23', '2021-03-08 05:41:24', '2020-08-27 09:19:23', '2020-12-31 21:36:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 2, '2021-01-07 16:28:03', '2020-09-08 22:22:44', '2020-11-23 18:38:34', '2020-10-17 16:27:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 3, '2021-05-16 20:35:55', '2020-10-30 09:08:24', '2020-07-30 14:02:19', '2020-08-11 07:06:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '2020-09-16 17:30:57', '2021-05-30 03:14:56', '2021-05-06 10:54:58', '2020-07-23 07:54:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 2, '2020-07-16 23:40:04', '2021-05-13 04:32:21', '2021-01-01 06:51:26', '2021-02-13 21:00:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 3, '2021-01-14 15:50:11', '2021-05-19 18:47:25', '2021-01-24 14:17:06', '2020-07-02 04:16:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 1, '2020-10-05 06:55:55', '2021-03-10 02:19:19', '2021-02-04 04:02:31', '2020-08-29 22:51:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 2, '2020-11-11 17:48:34', '2021-02-22 13:35:35', '2020-08-04 13:06:20', '2020-08-15 17:23:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 3, '2021-05-02 08:57:42', '2021-04-09 12:05:59', '2020-09-22 09:21:55', '2020-09-14 04:09:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 1, '2020-10-03 11:46:18', '2021-01-07 07:25:29', '2020-09-10 13:33:40', '2020-10-05 00:07:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 2, '2021-04-20 21:16:37', '2020-09-25 14:06:01', '2020-08-16 00:40:20', '2020-12-10 07:39:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 3, '2021-03-22 14:07:15', '2021-03-05 09:15:16', '2021-01-04 15:39:51', '2020-07-13 03:45:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 1, '2020-11-21 18:26:18', '2020-12-13 19:06:27', '2021-05-09 08:53:07', '2021-05-02 10:13:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 2, '2020-10-29 15:30:36', '2021-01-25 13:31:41', '2020-07-14 12:04:38', '2020-12-03 07:43:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 3, '2020-11-21 21:24:13', '2020-08-17 21:14:25', '2020-09-12 19:34:20', '2020-10-24 22:15:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '2020-08-06 15:52:07', '2020-12-22 03:37:40', '2020-10-16 04:54:23', '2020-08-10 07:44:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 2, '2021-03-09 02:20:50', '2020-12-23 06:07:47', '2021-04-16 01:24:26', '2021-05-03 14:27:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 3, '2021-01-01 20:58:46', '2020-10-23 02:40:40', '2020-11-11 14:09:48', '2020-08-08 01:45:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 1, '2020-09-09 10:40:27', '2020-08-26 05:36:00', '2021-02-20 19:05:19', '2020-08-15 12:56:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 2, '2020-12-18 16:56:45', '2021-05-29 16:11:19', '2020-08-09 15:23:49', '2020-10-14 22:49:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 3, '2021-04-11 05:19:55', '2020-07-09 02:08:05', '2020-09-20 06:20:39', '2020-10-27 06:19:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '2021-01-09 20:47:45', '2021-04-08 12:40:49', '2020-12-28 02:14:23', '2021-05-15 12:20:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '2020-08-22 23:06:35', '2020-11-20 20:42:17', '2020-10-14 15:14:52', '2020-07-23 17:44:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 3, '2021-02-23 05:11:37', '2020-08-17 05:54:22', '2020-12-20 19:03:00', '2020-07-27 21:35:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 1, '2020-07-24 13:56:24', '2021-06-11 21:30:37', '2021-05-06 18:20:20', '2020-08-23 13:09:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 2, '2021-02-25 08:04:55', '2021-05-05 05:59:40', '2021-01-12 10:35:10', '2021-06-11 23:44:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 3, '2021-05-23 11:07:02', '2020-09-26 06:15:22', '2021-06-06 08:57:51', '2020-08-11 07:05:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 1, '2020-12-04 05:33:49', '2020-08-31 06:19:02', '2021-04-20 00:22:17', '2020-09-23 00:09:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 2, '2020-10-16 20:24:50', '2021-05-24 03:59:11', '2021-06-05 12:16:19', '2021-03-17 06:24:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 3, '2020-10-10 10:28:51', '2020-11-18 15:24:51', '2020-08-28 16:41:32', '2020-10-14 03:44:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 1, '2021-01-06 01:08:08', '2020-06-23 07:22:43', '2021-06-15 12:54:11', '2020-10-07 18:49:42');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Ожидает', '2021-06-17 18:22:11', '2021-06-17 18:22:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Отклонено', '2021-06-17 18:22:11', '2021-06-17 18:22:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Принято', '2021-06-17 18:22:11', '2021-06-17 18:22:11');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'non', 309, NULL, 1, '2020-10-19 17:36:38', '2020-09-27 02:23:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'qui', 2051430, NULL, 2, '2020-10-22 19:42:59', '2021-05-07 16:28:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'dolor', 756493230, NULL, 3, '2020-09-28 08:06:54', '2021-01-30 11:27:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'dolore', 685479, NULL, 4, '2020-08-28 13:59:59', '2020-09-05 00:30:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'dignissimos', 26, NULL, 5, '2020-10-06 16:53:32', '2021-06-06 13:40:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'et', 197, NULL, 1, '2021-01-01 12:01:53', '2021-03-18 07:37:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'dolore', 15956852, NULL, 2, '2021-04-29 07:55:05', '2020-07-27 07:02:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'a', 390242, NULL, 3, '2021-02-27 03:58:18', '2021-02-23 21:03:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'hic', 0, NULL, 4, '2020-09-17 03:49:36', '2021-04-18 07:39:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'officiis', 477, NULL, 5, '2020-12-30 02:33:40', '2020-11-21 04:56:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'laboriosam', 5, NULL, 1, '2021-03-19 11:09:25', '2020-12-23 11:07:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'in', 93803, NULL, 2, '2020-06-30 06:53:06', '2020-09-20 21:37:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'tempora', 0, NULL, 3, '2020-07-20 14:29:45', '2020-07-13 14:47:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'consequuntur', 748987, NULL, 4, '2021-02-03 12:51:10', '2020-08-14 20:49:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'et', 519, NULL, 5, '2020-08-13 05:49:44', '2020-10-13 04:42:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'dolore', 3188, NULL, 1, '2021-03-17 04:03:46', '2020-12-15 20:40:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'ratione', 683431, NULL, 2, '2020-12-19 01:28:32', '2020-11-27 05:07:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'sed', 5311272, NULL, 3, '2021-01-19 01:47:33', '2021-04-03 08:23:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'est', 2312957, NULL, 4, '2020-12-16 06:46:51', '2020-06-30 03:46:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'aspernatur', 976757, NULL, 5, '2020-06-19 08:39:30', '2021-04-07 10:06:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'veniam', 1, NULL, 1, '2021-03-07 18:22:30', '2021-03-21 14:57:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'debitis', 856511, NULL, 2, '2020-07-17 05:20:26', '2021-05-20 07:19:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'eum', 43140, NULL, 3, '2020-10-14 10:52:45', '2020-07-15 06:45:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'nobis', 824277822, NULL, 4, '2020-08-07 22:11:10', '2020-07-22 15:53:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'officia', 89684254, NULL, 5, '2020-10-21 08:41:03', '2021-05-30 02:08:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'deleniti', 4125, NULL, 1, '2021-02-01 11:30:54', '2021-01-11 08:20:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'necessitatibus', 534910, NULL, 2, '2020-10-04 18:32:35', '2020-10-02 20:40:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'at', 9833558, NULL, 3, '2021-02-20 00:37:42', '2020-08-19 18:23:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'non', 72, NULL, 4, '2020-12-02 04:36:46', '2020-08-26 23:29:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'delectus', 6, NULL, 5, '2020-12-13 00:03:14', '2021-05-19 07:23:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'quam', 42800493, NULL, 1, '2020-10-19 13:20:38', '2020-12-25 17:35:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'enim', 250798496, NULL, 2, '2020-12-29 09:26:57', '2021-01-27 17:56:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'qui', 7706686, NULL, 3, '2020-12-17 23:39:03', '2021-06-10 17:09:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'voluptatibus', 5062364, NULL, 4, '2020-12-19 16:55:26', '2021-02-01 22:27:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'ipsam', 7177678, NULL, 5, '2020-07-25 11:50:18', '2020-12-21 22:54:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'mollitia', 2, NULL, 1, '2021-01-31 12:51:04', '2021-06-12 08:22:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'dignissimos', 7962552, NULL, 2, '2021-03-03 12:11:40', '2020-09-04 15:50:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'dolor', 203, NULL, 3, '2021-04-21 18:55:53', '2021-01-12 03:47:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'voluptatem', 9244, NULL, 4, '2020-11-03 05:11:50', '2020-09-19 02:26:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'architecto', 457437, NULL, 5, '2020-07-11 11:31:17', '2021-06-16 21:20:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'quia', 77070765, NULL, 1, '2021-05-23 03:59:12', '2021-03-08 00:41:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'aspernatur', 1857, NULL, 2, '2020-07-01 20:40:35', '2020-11-24 13:28:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'recusandae', 93, NULL, 3, '2020-09-21 07:53:18', '2020-11-06 04:33:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'cum', 64, NULL, 4, '2020-10-06 02:32:48', '2020-12-14 03:52:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'neque', 5612, NULL, 5, '2021-05-21 16:49:53', '2021-02-16 18:10:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'nihil', 9, NULL, 1, '2020-08-20 22:40:02', '2021-03-14 00:28:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'error', 844, NULL, 2, '2020-11-01 01:12:07', '2021-04-20 23:02:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'ex', 6, NULL, 3, '2021-01-30 04:42:46', '2020-11-18 10:17:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'ea', 84620852, NULL, 4, '2020-06-30 20:15:53', '2021-02-06 05:30:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'architecto', 7, NULL, 5, '2020-12-11 06:42:52', '2021-06-06 12:24:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'quia', 22, NULL, 1, '2020-11-10 15:34:47', '2020-06-22 23:12:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'asperiores', 2552, NULL, 2, '2021-04-09 09:21:30', '2021-02-07 00:06:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'ut', 2, NULL, 3, '2020-08-30 19:31:34', '2020-09-09 20:15:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'a', 1, NULL, 4, '2021-05-02 07:26:45', '2020-09-09 18:47:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'est', 7246, NULL, 5, '2020-12-13 20:02:10', '2021-05-20 18:48:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'et', 492369625, NULL, 1, '2020-11-22 10:27:53', '2021-03-11 14:33:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'maiores', 7258513, NULL, 2, '2020-12-23 04:53:14', '2020-06-29 17:47:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'libero', 18, NULL, 3, '2020-11-28 14:32:45', '2020-06-29 10:55:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'impedit', 942474554, NULL, 4, '2021-05-24 14:10:44', '2021-01-07 23:15:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'dicta', 57, NULL, 5, '2021-06-09 00:10:47', '2020-07-16 11:58:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'autem', 21041, NULL, 1, '2021-01-07 01:40:30', '2021-04-27 09:54:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'dolores', 4787, NULL, 2, '2020-08-08 12:09:30', '2020-11-22 04:31:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'iste', 24316558, NULL, 3, '2021-03-03 00:46:12', '2020-08-02 23:41:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'tempora', 4245, NULL, 4, '2021-04-30 18:48:29', '2020-10-02 23:00:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'odit', 729, NULL, 5, '2020-07-02 00:50:24', '2021-06-10 02:46:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'totam', 0, NULL, 1, '2021-06-17 14:37:30', '2021-05-19 19:30:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'iste', 39, NULL, 2, '2021-04-13 10:39:23', '2020-09-09 18:02:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'in', 0, NULL, 3, '2020-06-20 06:44:38', '2020-09-28 17:14:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'optio', 30951404, NULL, 4, '2021-03-10 10:25:29', '2021-02-26 05:18:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'dolores', 877454408, NULL, 5, '2020-09-27 11:37:59', '2020-06-21 19:42:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'numquam', 1, NULL, 1, '2020-11-17 02:01:56', '2020-10-21 19:31:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'et', 68206, NULL, 2, '2021-05-19 15:37:46', '2021-06-02 02:27:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'repudiandae', 375719, NULL, 3, '2021-05-14 05:46:39', '2020-08-10 13:29:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'minima', 872, NULL, 4, '2020-08-11 01:01:01', '2020-09-20 20:22:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'veniam', 172560108, NULL, 5, '2020-09-23 01:00:31', '2021-04-13 23:34:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'et', 18, NULL, 1, '2020-12-24 02:33:08', '2020-07-12 06:09:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'odit', 8814, NULL, 2, '2021-05-24 00:50:01', '2020-10-07 07:57:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'porro', 392179982, NULL, 3, '2021-05-22 18:40:51', '2021-03-27 22:14:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'quam', 485116820, NULL, 4, '2020-10-18 16:14:41', '2020-11-18 02:04:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'eos', 114366, NULL, 5, '2021-03-10 10:10:32', '2021-03-03 12:27:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'sint', 846674, NULL, 1, '2021-05-15 22:32:24', '2020-12-03 10:59:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'eveniet', 94, NULL, 2, '2020-07-14 20:03:21', '2020-12-18 01:06:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'illum', 5250, NULL, 3, '2020-06-19 01:21:15', '2020-10-22 20:33:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'aut', 5847, NULL, 4, '2020-11-07 14:33:16', '2021-01-30 21:27:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'doloremque', 246, NULL, 5, '2020-08-16 18:05:01', '2020-09-13 05:36:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'earum', 6342, NULL, 1, '2021-01-10 23:24:52', '2021-03-12 04:15:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'itaque', 47108583, NULL, 2, '2021-02-07 04:45:57', '2021-05-14 08:38:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'optio', 18598, NULL, 3, '2021-03-14 21:51:51', '2021-04-04 18:37:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'iure', 66101448, NULL, 4, '2020-11-08 06:39:39', '2020-12-17 21:37:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'commodi', 574880, NULL, 5, '2020-12-26 21:03:53', '2020-11-16 23:49:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'labore', 5568, NULL, 1, '2021-01-25 17:27:27', '2020-09-30 09:04:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'ut', 50712330, NULL, 2, '2021-02-01 10:05:48', '2020-06-22 12:30:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'fugit', 857283098, NULL, 3, '2020-06-20 17:48:18', '2020-11-22 17:20:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'esse', 1, NULL, 4, '2021-02-28 08:02:56', '2021-05-08 12:43:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'nobis', 80, NULL, 5, '2020-10-23 12:32:20', '2021-03-23 19:08:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'eos', 191, NULL, 1, '2020-10-09 03:05:10', '2020-11-21 07:59:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'et', 881, NULL, 2, '2020-12-31 12:22:41', '2020-09-03 09:29:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'laborum', 0, NULL, 3, '2020-09-12 23:09:11', '2021-04-01 18:05:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'et', 77379, NULL, 4, '2020-08-22 01:38:00', '2021-04-01 13:24:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'perferendis', 464378, NULL, 5, '2021-01-29 12:23:40', '2021-04-05 09:22:19');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Image', '2021-06-17 18:22:11', '2021-06-17 18:22:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'GIF', '2021-06-17 18:22:11', '2021-06-17 18:22:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Document', '2021-06-17 18:22:11', '2021-06-17 18:22:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Audio', '2021-06-17 18:22:11', '2021-06-17 18:22:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Video', '2021-06-17 18:22:11', '2021-06-17 18:22:11');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текст сообщения, не NOT NULL так как может быть отправлено только медиа',
  `is_attachment` tinyint(1) DEFAULT NULL COMMENT 'Есть ли вложения из таблицы entity_attachments',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Rerum iure esse similique dolore unde. Qui asperiores quos illo sunt quia quo. Quam iure repellat molestiae nam expedita natus dolorem. Iste possimus quia sed quia nisi qui.', 0, 1, 1, '2021-05-09 20:27:37', '2020-10-01 18:27:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Sunt ut quia molestiae ipsum. Nostrum ea molestias aspernatur iste et.', 1, 1, 0, '2020-12-22 05:15:55', '2020-10-30 05:49:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Aut omnis aliquid reprehenderit atque. Nisi qui nihil eos ut nemo. Molestiae vitae sapiente et eos culpa est. Sapiente tenetur dicta illo odio sunt consequuntur.', 0, 0, 0, '2020-11-23 07:07:45', '2020-09-03 02:13:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Dolores sint nulla sit sit id error sunt. Dolorum sit autem deserunt ipsa id doloribus velit aliquid. Aspernatur debitis praesentium modi quod adipisci dolore et. Omnis occaecati est qui qui mollitia non eaque amet.', 0, 0, 0, '2021-05-21 20:23:57', '2021-04-02 17:26:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Quas voluptate vitae consequatur tempora ea. Non repellat totam sunt consequatur maxime tempore ea. Reiciendis ut qui quam aut consequatur. Quisquam quidem et tenetur et.', 0, 0, 0, '2020-12-12 09:23:45', '2021-01-31 22:54:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Accusamus fugiat consectetur quia. Voluptate nihil dicta corrupti placeat sunt cumque fugit aut. Nostrum consequatur aut ut in sed. Dolorum perferendis autem qui blanditiis doloribus et magni.', 0, 1, 0, '2021-03-09 13:13:43', '2020-12-01 01:20:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Aspernatur id ducimus totam eligendi atque. Dolorem dolorem consequatur illum sunt dolore. Dolores sint quaerat qui sed magnam. Sit nulla possimus facilis magni accusantium est.', 0, 1, 1, '2021-05-11 04:23:06', '2020-08-26 09:22:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Voluptatem fugiat voluptas sed asperiores ad aut unde in. Qui commodi asperiores voluptatem neque.', 0, 1, 0, '2020-12-03 14:48:24', '2021-03-04 00:59:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Temporibus magni aperiam fuga vitae. Natus voluptates perspiciatis labore nam eius qui. Ullam quo nulla in architecto reprehenderit suscipit.', 0, 1, 1, '2021-05-26 08:37:17', '2021-05-30 18:09:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Esse temporibus quod corporis esse qui rerum. Eveniet sit dolores non voluptas enim ipsa. Molestiae eos voluptatem blanditiis impedit dolorum in atque. Saepe est ea nisi exercitationem ipsam velit.', 1, 0, 1, '2020-09-19 09:59:24', '2020-12-23 02:02:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Laudantium molestiae pariatur aut deleniti aliquid cum. Et beatae voluptatem tenetur eum sint atque eos. Qui quis excepturi quas odio dolor.', 0, 1, 1, '2021-04-28 13:36:19', '2020-10-09 02:59:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Consequatur nostrum cumque sint id. Impedit odit voluptatem qui rem. Incidunt cupiditate incidunt natus ut sed.', 1, 1, 0, '2020-06-27 12:31:47', '2020-08-07 02:01:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Veritatis qui non atque. Deserunt sed quibusdam rerum asperiores eos veritatis fugiat est. Sint sed veniam distinctio vel facilis dolor tempora. Vel omnis dolore officia nihil non illum ea.', 0, 1, 0, '2020-08-27 10:52:02', '2021-05-10 01:15:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Voluptatem in explicabo eos iste officia incidunt. Ut sit veniam eos consequuntur ullam laborum veritatis. Nemo eius itaque accusamus earum unde inventore. Magni possimus quo quo quo sit odit.', 1, 0, 0, '2021-01-17 14:56:12', '2021-06-01 10:11:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Necessitatibus ratione voluptas soluta id veniam amet veniam. Aut nam incidunt itaque nam. Qui dicta cupiditate velit sit dolore quia explicabo.', 1, 0, 0, '2021-01-24 05:56:16', '2020-10-02 20:23:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Assumenda at eum id voluptatibus vel. Consequatur aut quas fuga porro voluptatem ducimus quo. Enim beatae id ex et harum explicabo quis. Eius laboriosam dicta nostrum aliquam. Quam ipsam id eligendi magni sed quibusdam.', 0, 0, 1, '2020-12-13 21:46:36', '2021-06-03 00:51:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Quos velit earum velit ullam. Id quibusdam eveniet doloribus cupiditate rerum. Dolorem quo minus quibusdam libero exercitationem nam culpa.', 0, 1, 0, '2021-06-01 03:19:20', '2021-05-29 12:17:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Omnis in suscipit officiis provident distinctio. Dolores cumque sapiente rerum cum. Aspernatur commodi alias excepturi dolores aliquam voluptates. Aliquid quod temporibus id inventore et.', 1, 1, 0, '2020-08-22 16:52:55', '2020-10-20 14:16:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Aperiam perspiciatis omnis eveniet explicabo dolor laboriosam sed. Beatae culpa doloribus qui voluptatibus quidem quaerat officia. Ut voluptatem odit sint quidem consequuntur magni.', 1, 0, 1, '2021-02-03 13:51:00', '2021-01-04 01:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Ipsa consequuntur ullam nihil. Ut nihil veniam aliquam placeat voluptatem sed. Eum dolores et voluptas. Perferendis iusto et error eaque itaque nesciunt.', 1, 0, 1, '2020-10-22 21:18:09', '2021-02-06 21:36:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Sint laudantium omnis repellat rerum provident voluptatem esse. Expedita sed officiis ut. Voluptatibus fugiat et ad non cum. Quasi earum saepe dolorem est sed sit.', 1, 0, 1, '2021-04-23 03:25:21', '2021-02-08 15:51:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Minima consequuntur sed ipsa repudiandae ut. Cum vel aut quasi odio quaerat et libero. Ullam velit laboriosam repellat provident.', 0, 0, 1, '2020-08-11 14:30:58', '2021-04-25 14:58:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Sunt ipsam itaque inventore esse enim. Aut vitae qui neque sequi. Odio odit ut blanditiis accusamus. Odit ut rerum molestiae repellendus quasi temporibus unde.', 1, 1, 0, '2020-12-27 00:08:24', '2021-02-06 09:42:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Rerum nesciunt deleniti impedit. Deserunt assumenda facilis qui ex labore labore quisquam doloribus. Ipsam facilis quis consectetur.', 0, 1, 0, '2021-03-12 08:19:36', '2020-08-20 18:08:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Facilis voluptatum et nam in in. Eius quisquam nam accusamus reiciendis voluptas voluptatem nam. Dignissimos quis consequatur rerum qui et ea velit. Minima dolor molestiae unde et maxime qui.', 0, 1, 0, '2020-12-30 22:14:27', '2020-08-17 02:07:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Perspiciatis repellat neque ut ea voluptatem. Doloribus nihil nisi nihil nesciunt eos aspernatur saepe. Non voluptas sint reiciendis exercitationem et veniam. Cupiditate corporis dicta eos ut fuga. Est eveniet aut a quo est ullam minima dolor.', 1, 0, 1, '2020-12-14 00:18:48', '2021-03-23 05:09:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Vel aliquid natus blanditiis incidunt. Autem modi ut et odit quo adipisci omnis. Porro consequuntur recusandae recusandae dolor aperiam atque sit.', 0, 1, 0, '2021-04-22 00:32:14', '2020-11-18 07:04:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Nam sed at quibusdam nihil corporis consequuntur error sit. Quod consequatur asperiores ut voluptas repudiandae aut id. Dolorem et amet debitis explicabo nobis. Alias est recusandae eligendi blanditiis.', 1, 1, 1, '2020-09-03 01:35:13', '2021-05-23 11:17:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Aliquam quis repellat consequatur numquam. Sed et error ab qui reiciendis sit distinctio delectus. Magnam inventore qui praesentium minus ipsam incidunt. Sed ex libero sit quasi numquam sit reiciendis.', 1, 0, 0, '2021-01-25 21:09:08', '2021-02-19 21:57:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Voluptatem blanditiis nisi cupiditate in. Debitis nihil occaecati perspiciatis magnam veritatis ipsa omnis nemo. Unde quia quo voluptatem. Quod molestias incidunt reprehenderit enim exercitationem.', 0, 1, 1, '2021-04-18 07:12:03', '2020-09-07 00:07:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Vitae quo distinctio debitis consequatur corporis vel animi fuga. Et et labore voluptatem neque nobis doloremque. Est consequatur vel vero laudantium.', 1, 1, 1, '2021-04-16 06:56:46', '2020-07-11 18:44:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Nostrum similique consequuntur dignissimos sed. Minima non fugit soluta culpa distinctio corporis. Optio consectetur omnis dignissimos. Praesentium numquam maxime voluptatum aut voluptatem amet.', 1, 0, 1, '2021-01-07 07:38:42', '2020-08-22 18:26:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Dolorum esse et dolorum aspernatur. Magni suscipit provident quidem est. Fuga placeat qui aut dolor.', 0, 1, 1, '2021-01-14 09:03:04', '2021-05-14 19:53:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Rerum aut aut doloremque accusantium molestias. Iste eveniet nemo non est aut quo eos nemo. Unde praesentium laudantium mollitia tempora qui reiciendis labore. Id rerum nostrum velit aut sint perspiciatis nisi. Non eveniet molestiae mollitia rerum quo et ea.', 0, 1, 1, '2020-10-26 16:49:44', '2020-11-20 23:43:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Quasi occaecati aliquam asperiores dignissimos non. Magnam corrupti perspiciatis necessitatibus asperiores laborum illo ut. Exercitationem quidem alias distinctio ut.', 1, 1, 0, '2020-07-16 19:53:37', '2020-10-17 08:34:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Non dignissimos nisi sunt sunt fuga. Accusamus architecto iste aut laudantium sit sit.', 1, 1, 1, '2020-09-20 12:57:01', '2021-02-03 10:28:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Aliquam numquam architecto atque occaecati eos sunt perspiciatis ea. Et et corporis quaerat harum eveniet consequatur rerum. Et qui pariatur nam. Omnis facilis consequatur id ipsam animi hic.', 0, 1, 1, '2021-01-29 00:17:14', '2020-09-21 01:15:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Voluptatem optio assumenda occaecati. Qui porro adipisci libero. Praesentium dolor dolor sapiente inventore voluptate quisquam corrupti.', 0, 1, 1, '2021-02-09 14:43:37', '2020-09-19 09:06:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Et a quaerat quia tempora veritatis quas praesentium. Sit saepe provident qui quo suscipit vel. Consequatur exercitationem inventore non aut necessitatibus.', 0, 0, 1, '2021-05-12 01:02:52', '2021-02-16 12:35:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Sapiente illum tempora eum quos ut assumenda itaque. Tempore soluta dolor dolores in. Voluptates esse sint distinctio fugiat facere incidunt.', 1, 0, 0, '2021-02-19 20:55:40', '2021-01-31 13:09:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Tempore dolores totam quaerat est nihil. Fugit quia et repellat sit nam aut numquam. Est rerum dolorum iste harum.', 0, 1, 0, '2021-04-25 10:00:46', '2020-11-21 05:02:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Ipsum in rerum eum nobis consequatur. Assumenda consequatur tempore sint autem eligendi laborum quo deleniti. Doloremque voluptas omnis nemo consequatur sint est accusamus. Reiciendis nostrum enim consequatur quis.', 1, 0, 1, '2020-12-31 12:03:13', '2021-01-28 23:09:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Odit numquam aspernatur officia vel dicta et. Omnis provident enim voluptate accusantium debitis voluptatem. Qui aut est iusto quis et.', 1, 1, 0, '2021-06-15 18:11:38', '2020-10-05 22:53:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Nulla voluptate ex suscipit expedita sit id. Laboriosam quasi alias ea vero tempore. Quae odio itaque cumque.', 0, 0, 0, '2020-08-21 01:59:45', '2020-12-03 18:24:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Sit pariatur delectus et qui velit ipsam vel maxime. Qui delectus nobis in iusto quos.', 0, 1, 1, '2021-03-29 02:50:21', '2021-03-06 09:36:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Ut incidunt itaque illo enim voluptates. Blanditiis fugiat quae quidem aliquid officia voluptas incidunt. Qui vitae illo qui autem. Expedita aut est voluptas.', 1, 1, 1, '2020-12-07 13:04:41', '2021-04-17 00:52:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Dolore est ut rerum facere et. Distinctio voluptatum voluptates quas quia unde autem provident. Voluptate iusto sed est. Maiores qui et quia enim libero qui tempora.', 0, 0, 0, '2021-04-17 21:41:00', '2020-09-19 12:16:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Officiis et vero non labore. Perferendis quasi ex id enim. Quia nihil similique ipsa et deleniti ut quibusdam voluptatem. Id inventore repellat inventore cumque aut facilis.', 0, 1, 1, '2020-12-07 15:07:19', '2021-02-08 19:39:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Sit repellendus et libero. Ratione id libero id rerum eum corporis. Eos ea et eos assumenda libero. Reprehenderit laborum et placeat voluptas in.', 0, 0, 1, '2020-07-11 19:21:14', '2021-02-08 11:32:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Nisi eos optio quos sit hic est dolor culpa. Neque ut nihil suscipit sunt. Eaque atque optio facere nostrum ut laboriosam et. A ducimus consectetur repudiandae. Ab et quia itaque esse a maiores cupiditate.', 1, 0, 1, '2020-09-25 15:42:44', '2020-09-21 07:41:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Tenetur excepturi possimus dolore voluptatibus inventore voluptatum. Debitis accusamus et ut error minus. Quia eum vitae non qui aut perferendis et.', 0, 0, 1, '2020-11-15 02:36:30', '2020-10-31 05:03:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Laudantium perferendis aut quae laborum et quaerat. Et repudiandae sunt ullam quod ut qui reprehenderit. Et ipsa rerum nisi nesciunt tenetur rerum consequuntur.', 0, 1, 0, '2020-09-20 01:48:07', '2021-04-12 21:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Est quis voluptatem at voluptates perferendis corporis animi. In sit laboriosam voluptate perspiciatis ab. Ipsum molestiae illo et aut voluptas quia.', 0, 1, 1, '2021-04-20 22:29:45', '2021-06-06 05:26:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Voluptatem illum odio iste et. Illo facere nesciunt ut at cumque. Voluptas natus fuga eos perferendis totam fugiat. In eum optio rerum consequuntur.', 0, 1, 1, '2020-12-26 12:15:25', '2020-09-25 03:35:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Delectus nostrum sint quibusdam non et inventore praesentium. Earum cumque quidem adipisci. Quia qui repellat aliquid quas corporis enim. Non sint voluptas animi consequatur omnis commodi.', 1, 0, 0, '2021-01-20 14:24:49', '2020-10-14 21:37:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Ex voluptas iure esse velit dolor itaque sunt officia. Quae tempore rerum illo dolorum earum temporibus ut. Debitis temporibus et nemo et accusantium.', 1, 0, 1, '2020-06-20 01:08:00', '2020-12-24 02:18:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Veniam dolore exercitationem non ex aliquid sed similique. Et est veritatis fuga eveniet. Cum nisi aut sunt commodi. Placeat ipsa aut qui perspiciatis earum. Sit qui ratione consequatur ipsa.', 0, 0, 0, '2021-03-10 01:06:36', '2020-09-06 13:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Maxime voluptates perspiciatis deleniti quisquam ad qui minus vel. Qui molestiae ut eos commodi et eius sunt. Dolorem eligendi aspernatur omnis ex. Eaque rem quo voluptatibus consequuntur in.', 1, 0, 0, '2020-09-23 10:15:17', '2020-12-13 02:32:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Culpa officia et voluptatem nulla magnam provident. Quia corporis iusto dolores qui cumque aut. Inventore rem ut id beatae unde impedit. Quam sint et consectetur et autem voluptatum quidem deserunt.', 0, 0, 0, '2020-10-27 12:32:09', '2021-01-01 23:20:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Temporibus beatae voluptas nihil est aut. Qui porro blanditiis ratione doloremque quibusdam rerum. Aut et dolores et dolorem aspernatur numquam voluptas.', 1, 0, 0, '2020-10-24 13:18:49', '2020-08-10 21:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Perspiciatis praesentium illum dignissimos omnis sed. Ea cumque quidem maxime ab ea. Eum rerum eos qui omnis amet vero explicabo ex. Excepturi tempora est similique quibusdam quia.', 1, 1, 0, '2021-04-05 20:32:54', '2020-07-03 05:10:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Eos consequuntur non tenetur eveniet ea voluptatibus. Doloremque error et earum cum et fugit. Voluptatem ab rerum et et. Reprehenderit nesciunt vero corrupti quod consectetur veniam.', 1, 1, 1, '2021-02-07 12:31:55', '2021-01-29 16:55:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Ducimus voluptatem reiciendis dolorem dignissimos quasi aut. Ad voluptatem quibusdam quos non. Dolorem quas debitis veniam quisquam.', 1, 0, 1, '2021-02-06 04:22:55', '2021-03-01 19:54:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Consequatur ad sunt dolores aperiam est est eaque. Facilis necessitatibus est non temporibus. Qui illo necessitatibus non voluptatem quis quia repellat. Soluta deleniti omnis iure vel et sapiente quis.', 1, 1, 0, '2020-07-17 22:26:33', '2020-12-09 16:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Sint optio et rem consequatur est fugiat. Laborum asperiores est laboriosam earum autem velit. Dolorem ut similique voluptatem qui.', 0, 0, 0, '2020-11-10 07:27:22', '2020-08-15 13:36:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Ipsum deleniti totam vel non a et. Dolorum quae est dicta dolorum quo ab. Eum itaque debitis delectus et. Unde et neque quia dolorem assumenda sint facilis. Delectus est praesentium quo nostrum nulla similique est consequatur.', 0, 1, 1, '2021-04-02 13:30:10', '2020-12-11 00:50:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Non aut adipisci corrupti explicabo et nesciunt impedit. Aut ut beatae nesciunt. Officiis aut suscipit quas vitae. Amet sunt enim ipsa quia dignissimos impedit.', 1, 1, 0, '2020-10-16 11:12:27', '2021-04-19 06:27:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Vero sit quis et. Incidunt voluptatum ut nulla facilis reiciendis sed. Aliquam ut error corrupti laborum rerum ut. Itaque quae blanditiis qui in.', 0, 1, 0, '2020-10-25 15:58:51', '2020-08-20 19:51:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Fugit veritatis sequi quis architecto voluptatem sit eaque. Illo deleniti debitis laudantium fugiat. Cupiditate iure aut molestiae dolor. Tempora quibusdam ut a. Architecto maiores veniam ullam aut expedita eos.', 1, 0, 1, '2020-10-03 07:24:32', '2020-07-20 02:37:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Quia velit corrupti nihil sit. Dolores est exercitationem officiis minima ut inventore voluptatum. Voluptatem tempore distinctio et error incidunt. Et est officiis libero inventore laboriosam velit officia.', 0, 1, 0, '2020-11-18 14:29:14', '2020-08-14 14:19:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Ab consequatur quibusdam placeat voluptatem voluptatem. Quos ut occaecati ad. Qui aut blanditiis error sint.', 1, 1, 1, '2020-07-08 05:28:12', '2020-09-06 14:47:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Cupiditate dolores blanditiis laboriosam. Asperiores id nulla mollitia excepturi vero in veritatis. Nostrum nesciunt a exercitationem ut. Voluptatum repudiandae optio ut dolores.', 1, 1, 0, '2021-04-14 11:38:33', '2021-05-21 01:32:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Cumque modi recusandae quidem architecto. Repellat dolor dolorem dicta. Sint assumenda sed corrupti ut accusantium non iure ex.', 0, 0, 0, '2020-11-12 13:18:10', '2020-06-22 00:35:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Eos impedit sed iure facere. Pariatur repellendus eum voluptas sed. Consequatur tenetur deserunt numquam id.', 1, 0, 0, '2020-08-28 12:45:56', '2021-02-03 16:30:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Sequi ullam quasi nesciunt et aspernatur amet amet. Reiciendis adipisci non facere natus molestiae veritatis recusandae. Esse neque molestiae qui consequuntur non quisquam laudantium.', 0, 1, 0, '2020-11-02 20:41:53', '2020-11-15 07:58:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Sed facere minus suscipit esse voluptatem voluptatem. Dignissimos ipsum officiis quasi aut sit iusto neque. Et dolores ea molestias. Libero officia incidunt eaque quia quo provident blanditiis. Qui recusandae doloremque cumque cum.', 0, 0, 0, '2020-06-30 23:04:21', '2021-05-25 00:29:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Rerum sit veniam quia ut et aut praesentium. Iure molestias ut aliquam suscipit cumque minima. Qui illum natus iste vel officiis.', 1, 0, 1, '2021-05-08 08:05:22', '2020-08-15 08:26:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Quia repudiandae qui harum quis nam qui. Est autem repellat sed nihil voluptatem omnis similique. Magnam voluptatem ut tenetur dolore rem. Ut est voluptatem et reprehenderit.', 1, 1, 0, '2021-04-09 17:52:56', '2020-07-23 15:15:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Quibusdam qui facere maiores reprehenderit voluptate. Itaque voluptas nesciunt id et molestiae. Soluta aliquid mollitia enim ex. Ullam magni voluptatem vel.', 0, 1, 0, '2021-01-25 02:38:13', '2020-09-24 10:03:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Dolores perspiciatis voluptatem laborum ab molestias voluptate. Optio reiciendis in culpa esse occaecati aspernatur. Adipisci fugit at sunt voluptatem placeat. Labore voluptatibus quis dolorem cupiditate.', 1, 1, 1, '2021-06-09 04:15:35', '2021-01-10 18:22:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Et nulla voluptatem error quis omnis. Minima perferendis placeat omnis nemo molestiae temporibus eum quo. Nam earum sunt ipsum nam odit beatae ex nobis.', 1, 0, 0, '2020-08-26 11:31:27', '2020-07-16 04:02:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Quis aspernatur deserunt et. Qui quae architecto atque numquam necessitatibus qui laudantium. Consectetur accusamus a incidunt voluptatem ab.', 0, 0, 1, '2020-12-20 17:11:46', '2021-05-22 18:13:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Repellat qui commodi ut repellendus. Iste rerum autem a aut impedit omnis. Nesciunt provident eum eum provident velit veniam. Amet sit dicta eius non dolor sit maxime.', 1, 0, 0, '2021-03-19 09:31:53', '2020-08-27 16:05:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Ut ab alias ipsam blanditiis quia. Officia dolores earum asperiores. Excepturi asperiores magni iusto. Iusto perferendis saepe magnam et in itaque inventore.', 1, 1, 1, '2021-03-23 09:06:38', '2021-01-22 00:27:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Doloremque odio maiores aspernatur ea nobis. Maxime aut tenetur eum. Quia voluptatem rerum aperiam ex libero aspernatur.', 1, 0, 1, '2021-06-17 00:09:06', '2021-06-03 15:10:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Sequi enim saepe et dolorem aut. Nisi praesentium cupiditate harum quibusdam est eos voluptatibus. Incidunt quisquam accusantium libero non ea et. Doloremque voluptate tempore sit aliquid voluptatum.', 0, 1, 0, '2021-05-09 19:57:28', '2021-03-22 23:34:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Maiores et autem provident a. Dignissimos nihil excepturi quis. Reiciendis optio occaecati earum quod sit voluptas id modi. Eos ullam doloremque repellat porro.', 0, 0, 0, '2021-04-02 06:46:35', '2020-07-25 11:26:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'Vitae sit ut repudiandae dolorum cum odit. Culpa expedita voluptates eum quia. Consectetur corrupti aspernatur eligendi aut dolores vero eaque.', 0, 1, 0, '2021-05-26 06:06:17', '2020-09-17 03:35:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Aut id velit sunt fugit a exercitationem. Est expedita nihil maxime accusamus necessitatibus molestias vitae. In consequatur et et quia laudantium.', 1, 1, 1, '2021-05-17 11:11:58', '2020-06-21 20:02:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Et in beatae quam. Odio culpa facilis nisi adipisci eaque a explicabo. Voluptatem voluptatibus veniam laudantium similique. Voluptatum eveniet aliquam voluptatem perspiciatis.', 1, 0, 1, '2020-09-26 00:06:12', '2020-09-02 02:54:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Est sed maiores corporis vero minus aut. Itaque tempore voluptatibus eos qui. Eius voluptas voluptas fuga sed eos quae.', 1, 0, 1, '2020-09-30 14:10:11', '2020-06-29 05:42:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Voluptatem quis totam praesentium odit vel nulla. Sunt sed sint non quam perferendis voluptatem. Quis aliquam fuga velit aspernatur similique.', 0, 1, 1, '2020-07-06 02:01:58', '2021-02-14 14:00:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Sed non sunt est vitae saepe. Provident repellat quis possimus accusantium quisquam amet atque. Dolor aut et vel labore eaque eveniet pariatur. Occaecati repellat dolorum excepturi qui atque est.', 1, 1, 1, '2020-12-16 04:20:41', '2020-08-05 01:54:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Nam at quas molestias non earum illo. Quis ut fuga voluptatibus odio. Nemo et libero aut.', 0, 0, 0, '2020-12-04 14:18:13', '2021-01-02 13:21:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Et necessitatibus assumenda quia dolorum est. Voluptatem maxime non deleniti voluptatem enim omnis laboriosam. Provident et necessitatibus fugiat. Quisquam quia rem aliquid voluptatum asperiores.', 0, 1, 1, '2020-06-24 17:30:41', '2020-07-12 07:31:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Animi excepturi eos deleniti non iste enim consequuntur aliquam. Quo sit soluta facere et sit. Impedit debitis rerum dolorem. Nostrum minima sunt et velit eligendi dolorem.', 1, 0, 1, '2021-03-04 20:47:33', '2021-02-10 21:55:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Et deserunt vitae dolores est voluptates alias. Dolor fugit et perspiciatis non consequuntur. Esse et non facilis repellat nihil.', 1, 1, 1, '2021-04-22 16:52:46', '2020-07-12 02:13:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Ex voluptates eos voluptatum omnis laboriosam. Voluptates magni explicabo qui ullam molestiae. Saepe necessitatibus vel magni magnam commodi repudiandae quo sunt.', 0, 0, 1, '2020-10-19 23:04:41', '2020-11-06 00:35:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Ut veniam debitis est adipisci consequatur molestiae velit. Nihil exercitationem vel est quo fugit ut sed voluptas. Laboriosam culpa in ratione voluptatum cupiditate.', 1, 1, 0, '2020-11-24 23:28:37', '2020-10-08 19:21:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_attachment`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Harum quia qui quae et. Blanditiis dolorem quae corrupti soluta dolores eligendi unde ut. Ipsa perferendis unde quas et nam velit ea. Enim sint est unde.', 0, 1, 0, '2020-07-25 02:07:16', '2021-04-05 11:01:44');


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текст поста',
  `to_entity_type` int(10) unsigned NOT NULL COMMENT 'Тип сущности у кого пост из entity_types',
  `to_entity_id` int(10) unsigned NOT NULL COMMENT 'profiles.id или communities.id',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Кто создал пост',
  `is_attachments` tinyint(1) DEFAULT NULL COMMENT 'Есть ли вложения из таблицы entity_attachments',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица постов';

INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (1, 'Quia optio dolor alias quo dolorem rerum nisi. Non nesciunt et at. Architecto molestiae nostrum odio necessitatibus nemo. Velit id ipsam ab id iusto aperiam sed.', 1, 1, 1, 1, '2020-11-22 23:11:00', '2020-09-06 17:19:37');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (2, 'In numquam necessitatibus labore labore. Numquam animi velit saepe blanditiis aut. Ullam libero fugit laborum tempore hic et ipsum. Excepturi ut ut non est sunt cupiditate deserunt.', 2, 2, 2, 0, '2020-07-18 07:29:44', '2021-01-26 08:01:54');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (3, 'Ut omnis cumque ducimus animi qui. Enim asperiores ipsam voluptatibus provident quia quisquam eos qui. Dicta vitae officia similique minus qui et. Voluptatum impedit delectus dolores sapiente delectus et enim nesciunt. Ab consequatur architecto explicabo eius in cupiditate inventore et.', 3, 3, 3, 1, '2021-04-14 02:40:22', '2021-01-28 19:11:19');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (4, 'Qui reiciendis et numquam amet in consequuntur. Asperiores harum non porro ratione.', 4, 4, 4, 0, '2020-10-20 19:52:19', '2020-08-16 05:54:48');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (5, 'Sunt incidunt hic rerum omnis est quia enim dolorem. Quibusdam quasi sint earum.', 5, 5, 5, 1, '2020-10-31 14:22:41', '2020-09-22 06:20:38');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (6, 'Amet cum similique sint et commodi velit quis. Dolorem omnis beatae adipisci. Est autem consequuntur sed perspiciatis ea.', 1, 6, 6, 0, '2021-05-20 07:15:49', '2021-05-04 12:30:42');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (7, 'Eum ea eius sequi fuga id. Doloribus culpa enim veritatis officia maiores et.', 2, 7, 7, 0, '2021-02-09 21:28:34', '2021-01-18 13:40:47');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (8, 'Numquam nisi eum officiis in est. Molestiae aut sint voluptatem sed dolorem accusamus vitae. Accusamus quasi cum commodi quam doloribus esse minima.', 3, 8, 8, 1, '2021-06-15 08:58:01', '2021-03-19 22:27:17');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (9, 'Vero et perspiciatis illum sunt occaecati voluptate. Repudiandae ullam dicta atque et in quo eveniet. Voluptas et ea quo mollitia. Non eius pariatur sapiente sit voluptatibus ducimus est.', 4, 9, 9, 1, '2021-05-20 10:37:17', '2020-07-02 03:12:36');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (10, 'Culpa fugit ex quo repudiandae aut ipsum. Veniam explicabo quo fuga iste doloremque rerum. Qui et aspernatur pariatur consequatur. Et repudiandae sint voluptate odio ullam velit suscipit. Et in quos saepe quam praesentium et soluta.', 5, 10, 10, 0, '2020-10-21 20:41:53', '2021-01-26 19:39:59');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (11, 'Architecto quod modi ea suscipit consequuntur facilis asperiores. Magnam quis maxime quidem sint est minima. Amet ut minima harum magnam veritatis in quibusdam. Deserunt quia nisi pariatur rem voluptatem voluptatem maiores soluta.', 1, 11, 11, 1, '2021-01-19 05:54:03', '2020-11-26 21:13:23');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (12, 'Qui eaque et tenetur numquam quaerat. Vitae beatae quis ea aperiam qui dignissimos. Provident dolores voluptatem ut. Quasi ipsam aut asperiores ut delectus numquam.', 2, 12, 12, 0, '2020-11-12 12:57:21', '2020-09-22 15:51:01');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (13, 'Repudiandae quis est et sunt quo. Omnis sapiente accusantium ex dignissimos quia tenetur.', 3, 13, 13, 1, '2021-03-03 12:03:49', '2021-06-05 08:33:13');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (14, 'Et asperiores deleniti delectus fugiat. Modi quam eligendi repellendus ut. Sequi fuga nisi ipsam aut eaque sed velit. Libero maxime sunt hic dolore et impedit et rerum.', 4, 14, 14, 0, '2021-03-12 20:41:22', '2020-08-30 17:05:08');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (15, 'Dolorem dolorum maiores quidem amet illo et impedit. Neque consequuntur fugiat veritatis magni. Ut aut neque placeat sint.', 5, 15, 15, 1, '2020-08-13 03:35:10', '2021-05-02 08:58:41');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (16, 'Et quibusdam rerum facere aspernatur voluptatem est et tempore. Rerum possimus occaecati dolorem rerum. Deleniti ex ducimus ut non quis. Repudiandae accusantium voluptate perspiciatis vitae.', 1, 16, 16, 0, '2020-09-17 09:04:08', '2021-01-19 22:11:52');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (17, 'Aut ut culpa deleniti est voluptas sequi maiores. Error nesciunt laudantium id similique quis. Corporis natus aut consectetur velit totam cum unde eius. Facilis odio adipisci amet expedita.', 2, 17, 17, 0, '2021-01-30 00:17:30', '2021-04-27 03:13:08');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (18, 'Sed et libero nam provident sit. Iusto quia sit dolorem doloremque aliquid qui vero. Et doloribus deleniti corrupti quo sit qui.', 3, 18, 18, 0, '2021-01-29 18:59:57', '2020-12-16 17:07:35');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (19, 'Ut deserunt doloremque cumque ullam ducimus est. Ut rem aut placeat explicabo reiciendis ut. Quia id est est eligendi consequatur enim ut.', 4, 19, 19, 1, '2020-11-24 00:58:02', '2021-04-24 02:37:33');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (20, 'Expedita fuga et porro tempora sapiente. Aliquam inventore nemo aut et sit. Deleniti quisquam maxime molestiae quibusdam velit ut.', 5, 20, 20, 1, '2020-07-16 17:29:19', '2021-05-23 14:24:14');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (21, 'Error deleniti distinctio at. Sunt voluptatem quos architecto. Saepe quia autem doloribus quia quisquam excepturi enim. Praesentium eligendi sed reiciendis natus.', 1, 21, 21, 1, '2020-11-06 23:18:33', '2020-09-12 11:59:40');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (22, 'Voluptatem labore et est quis non. Tempore et eius commodi quaerat rerum quaerat corrupti sit. Perferendis consequatur porro reprehenderit iste.', 2, 22, 22, 0, '2021-01-19 20:30:35', '2021-06-11 18:07:35');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (23, 'Sunt possimus rerum fugit autem repellat et et. Distinctio quis omnis dolor aut. Ut impedit maiores in modi pariatur vitae voluptatum. Velit magni odit tenetur placeat.', 3, 23, 23, 1, '2020-10-25 12:12:52', '2020-10-16 22:29:28');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (24, 'Et voluptatum possimus quia sapiente quis. Magni dolor ut nemo odio facilis architecto quae. Aspernatur et consectetur occaecati aliquam optio.', 4, 24, 24, 1, '2020-08-27 09:49:03', '2021-03-18 23:40:25');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (25, 'Eaque quae tempore repellat expedita eum. Vero fugiat ut error perferendis in facilis quia. Et sequi neque omnis ut eum consequatur animi. Repellat perferendis repudiandae maxime temporibus voluptates.', 5, 25, 25, 1, '2021-01-21 19:06:35', '2020-08-22 18:26:08');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (26, 'Quo accusantium qui autem esse. Omnis distinctio dicta hic quis nisi voluptas. Quia fugit et perspiciatis molestiae ipsum.', 1, 26, 26, 1, '2021-02-28 16:06:15', '2020-08-08 19:52:40');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (27, 'Deserunt nulla est numquam perferendis. Ut ipsam eaque dolores qui eum alias. Vel est nihil nihil magnam. Ullam quas voluptatem reprehenderit et quam.', 2, 27, 27, 0, '2021-03-03 01:13:01', '2020-11-10 06:24:18');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (28, 'Et consequatur excepturi et aliquam et. Non magni magnam veniam consequatur. Voluptatem beatae mollitia excepturi ducimus. Dolorem consequatur officia minus. Quo autem veritatis officiis consequatur fugiat corporis sed.', 3, 28, 28, 0, '2021-03-06 11:01:43', '2021-02-24 07:53:23');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (29, 'Nesciunt eius aperiam iste omnis aut deserunt. Non quasi fugit commodi. Eum laudantium voluptates autem porro atque earum neque. Ut non libero iure quia vel enim quidem.', 4, 29, 29, 1, '2021-03-27 00:13:28', '2021-01-29 06:55:36');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (30, 'Voluptatem ratione delectus dignissimos sint corporis accusamus magni sit. Facere facere ad aut ducimus et repudiandae qui. Aliquid aliquid ex ad.', 5, 30, 30, 0, '2020-07-04 11:57:32', '2020-11-22 16:53:15');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (31, 'Quia officiis quam quis possimus molestiae. Illo laborum aut ut. Provident autem repudiandae neque aut numquam. Vel nisi sed dolores neque nam.', 1, 31, 31, 1, '2021-06-02 20:04:35', '2021-04-12 10:35:52');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (32, 'Eum vel enim voluptatem. Et qui provident assumenda et. Et iusto corporis dignissimos quia officiis earum labore recusandae. Ut animi placeat aut voluptatem aut provident.', 2, 32, 32, 1, '2021-04-01 03:05:47', '2021-04-09 01:03:12');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (33, 'Similique sapiente magnam laborum consequatur non eaque sequi facilis. Possimus cum veniam iure rerum aut. Ipsum numquam et officia ab est.', 3, 33, 33, 1, '2020-11-26 22:58:39', '2020-11-27 16:35:05');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (34, 'Quia ad quia debitis necessitatibus beatae. Voluptatum aspernatur est molestiae est perferendis.', 4, 34, 34, 0, '2020-11-21 09:29:01', '2020-09-07 04:32:02');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (35, 'Nulla et debitis veritatis consequatur beatae. Ad suscipit aut error rerum non debitis voluptatem. Laudantium dolores aut enim veritatis.', 5, 35, 35, 0, '2020-08-29 02:14:23', '2021-01-30 23:10:10');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (36, 'Repellendus consectetur nam aspernatur quos doloremque dicta est qui. Et sed dolorum quia et exercitationem. Quasi suscipit enim vitae cumque perspiciatis.', 1, 36, 36, 0, '2021-03-02 03:38:32', '2020-10-18 12:05:38');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (37, 'Rerum consectetur aspernatur ipsa quisquam ipsum ratione perspiciatis. Qui et doloremque quia enim. Fugiat totam repudiandae nam ut eum placeat consequuntur. Iure et ea saepe voluptatem nobis.', 2, 37, 37, 0, '2020-11-01 14:58:26', '2020-11-18 03:59:36');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (38, 'Est sit ut provident magnam eum porro. In eos officiis accusamus inventore officiis rem. Eos eum delectus iste et similique.', 3, 38, 38, 0, '2021-04-13 11:05:41', '2021-06-05 00:04:45');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (39, 'Ea quasi illo corrupti. Officiis et sequi minima deleniti labore esse ut aut. Qui dolore rerum sit et fuga.', 4, 39, 39, 1, '2020-07-30 15:15:14', '2020-09-28 06:43:21');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (40, 'Et sapiente rerum quo aut. Consequatur voluptate eligendi illo cupiditate architecto et libero. Non libero saepe et eligendi nisi nam. Blanditiis delectus voluptates consequatur omnis numquam fuga.', 5, 40, 40, 0, '2020-06-27 03:57:46', '2021-01-03 16:32:42');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (41, 'Veniam qui veritatis velit in qui rerum. Ut enim amet officiis ratione nesciunt neque quae. Id ipsa et reprehenderit nisi distinctio voluptatibus et quaerat.', 1, 41, 41, 0, '2020-11-12 19:48:29', '2021-01-31 23:52:01');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (42, 'Ut voluptatem maiores incidunt sed similique. Quisquam et aut quod fugit beatae autem in in. Aperiam voluptas dolorem quia deleniti.', 2, 42, 42, 0, '2020-10-20 20:45:07', '2020-06-21 01:27:55');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (43, 'Autem qui eius facere sint. Voluptates perspiciatis enim sint molestias rerum nesciunt.', 3, 43, 43, 0, '2020-06-30 18:19:36', '2020-10-17 22:30:14');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (44, 'Doloremque iusto dolorum et beatae rerum consequatur eveniet. Quia suscipit sed neque dolor eaque rerum. Voluptate ea labore autem. Consectetur esse magni doloribus sunt aut sit suscipit.', 4, 44, 44, 1, '2020-10-01 07:25:51', '2020-06-23 03:16:00');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (45, 'Numquam vel unde amet consequatur aliquid veniam et. Et veritatis ut ea laudantium nobis dolore. Enim voluptas sint modi.', 5, 45, 45, 1, '2020-07-06 20:33:05', '2021-03-15 00:38:10');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (46, 'Ratione a et aut enim praesentium voluptate. Nostrum minus quae soluta sequi. Vel hic aut qui voluptatem rerum placeat earum.', 1, 46, 46, 0, '2020-08-19 05:18:54', '2021-02-15 12:34:57');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (47, 'Neque cupiditate dolores et sint necessitatibus hic unde. Quia minima dolor ducimus impedit animi voluptas. Eos ducimus sequi ea dolorem.', 2, 47, 47, 1, '2021-03-30 04:33:11', '2020-06-22 16:45:47');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (48, 'Laudantium eligendi asperiores dolores exercitationem nemo. Et dolor et repellendus aut sapiente. Aut minima cumque rem enim libero voluptatum quia ipsam.', 3, 48, 48, 1, '2020-11-03 22:16:31', '2021-05-21 21:33:37');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (49, 'Iste ducimus voluptas quas consequatur. Cum fuga earum omnis itaque. Occaecati velit praesentium dolor quisquam. Sed vel nihil repellendus excepturi sit minus aliquid.', 4, 49, 49, 0, '2020-12-21 23:01:39', '2020-08-10 15:06:22');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (50, 'Rerum quisquam et assumenda voluptatem explicabo repellendus accusantium. Error aut impedit nemo eum ut dignissimos. Enim et dolore officia soluta vel.', 5, 50, 50, 1, '2021-05-23 16:23:19', '2020-07-21 01:47:40');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (51, 'Doloribus delectus eos repellendus. Odit deserunt dicta velit sint qui itaque. Autem nihil ut omnis aliquid nulla molestias soluta. Voluptates quod tempora eaque ut minus ipsa et.', 1, 51, 51, 0, '2020-09-24 16:26:25', '2020-10-15 00:33:13');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (52, 'Aliquid velit sapiente ut vero aliquid repellat. Voluptatem voluptatum eveniet voluptate molestias. Sunt beatae quisquam quasi et possimus autem est qui.', 2, 52, 52, 0, '2021-05-06 11:52:08', '2021-02-27 12:47:06');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (53, 'Modi consequuntur consectetur quo officia. Temporibus nesciunt iste illum maiores natus et voluptatibus.', 3, 53, 53, 0, '2021-01-10 04:36:43', '2020-10-09 02:47:42');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (54, 'Unde quas dolor in ea sunt. Dolorem fugiat tenetur aperiam nihil. Accusamus voluptatem consequatur sint fugit temporibus. Tempore accusamus natus molestias repudiandae dolores aliquam.', 4, 54, 54, 0, '2020-08-18 05:54:26', '2020-12-10 02:10:42');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (55, 'Reiciendis culpa earum incidunt excepturi. Inventore magni omnis non quae possimus in quia. Ipsa non unde reiciendis sit tenetur debitis. Doloremque autem assumenda quos facilis perspiciatis adipisci.', 5, 55, 55, 0, '2020-11-01 12:11:21', '2021-03-17 02:16:09');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (56, 'Voluptas eos necessitatibus voluptates et sint. Et ut sapiente sunt rerum quasi ea. Et sint mollitia rem sint. Deleniti libero itaque ratione voluptatum ex deleniti saepe.', 1, 56, 56, 1, '2020-09-18 23:21:13', '2020-12-08 21:25:52');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (57, 'Nihil nam aut quo maxime et dolorem alias. Perferendis ut quasi iste aspernatur. Dolorem dignissimos deleniti qui. Neque architecto magnam eius atque reiciendis laudantium ut. Molestiae quia alias id soluta vel pariatur.', 2, 57, 57, 1, '2021-03-21 11:06:48', '2021-01-04 02:03:37');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (58, 'Earum quia officiis ut eligendi dolorum nemo aut. Qui ea natus commodi facilis laborum eum. Qui voluptatem sit saepe ut.', 3, 58, 58, 1, '2021-02-12 05:47:35', '2020-07-13 20:33:16');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (59, 'Quam vero est enim repellendus porro facere. A sit veniam cum labore blanditiis.', 4, 59, 59, 1, '2021-05-08 04:28:49', '2021-01-01 17:02:17');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (60, 'Dolores minus optio id cum exercitationem officiis ut. Qui qui quod totam aut numquam laudantium. Omnis amet non dolores ullam laborum. Sunt dolores voluptate ipsum magnam.', 5, 60, 60, 1, '2020-09-23 19:26:00', '2020-07-23 06:34:34');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (61, 'Sed eligendi possimus minima voluptatem esse. Dolor rerum quod occaecati et placeat nesciunt. Eos fuga quia rerum eaque sit. Dolores molestiae quo quisquam enim laborum aut et.', 1, 61, 61, 1, '2020-07-25 10:54:28', '2020-07-04 07:03:56');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (62, 'Quidem error quis id sed. Qui itaque esse ut dolorem ut natus laboriosam et.', 2, 62, 62, 1, '2020-10-05 18:02:48', '2020-06-23 08:17:36');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (63, 'Fugit sit modi est minus perspiciatis corporis. Asperiores facilis id voluptas autem veritatis illo aut. Culpa voluptatem iure vero quam unde alias. Facilis non eius molestiae ut labore dolores ab.', 3, 63, 63, 0, '2020-07-10 07:09:35', '2021-05-03 21:20:50');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (64, 'Praesentium non sint rem. Ducimus beatae perferendis nostrum porro. Fugiat aliquid voluptas corporis qui non. Maiores libero qui blanditiis explicabo enim.', 4, 64, 64, 1, '2020-08-02 01:47:46', '2021-04-05 08:26:21');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (65, 'Tempora tenetur consequatur voluptatem voluptas. Sunt nihil qui vel quia et nemo. Autem excepturi molestiae et quis minus explicabo similique fugiat. Explicabo nihil sit ea quis sint commodi est.', 5, 65, 65, 1, '2021-06-06 07:19:08', '2021-03-16 05:41:01');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (66, 'Sint quo debitis modi placeat repellendus. Et sed quam fugit sapiente et. Numquam qui dolores et rerum. Aut voluptatem nihil dolor.', 1, 66, 66, 0, '2021-01-13 17:20:12', '2020-07-07 19:51:14');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (67, 'Aperiam voluptate quasi id earum et labore. Magni officiis quas sit earum amet occaecati. Et rem sunt incidunt voluptatum architecto neque. Occaecati maxime iste consectetur necessitatibus excepturi autem eaque.', 2, 67, 67, 0, '2020-09-26 11:07:04', '2020-10-25 04:58:43');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (68, 'Ut tempore a nostrum nihil vero. Dolor illum voluptatem sunt omnis qui. Voluptate deserunt eum tempora. Aut quia est voluptas rerum.', 3, 68, 68, 1, '2021-04-22 15:02:30', '2020-09-30 04:42:27');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (69, 'Quo ea non quia vitae iste facere. Eius illo vel expedita enim fugiat est ratione amet. Id nulla ullam qui nemo et veniam alias. Consequatur ut perspiciatis et tempora numquam voluptates suscipit.', 4, 69, 69, 0, '2021-01-05 20:12:25', '2020-11-15 16:22:59');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (70, 'Veritatis occaecati eum numquam odio odio omnis voluptatem. Accusamus id impedit est minima et dolorum deleniti laudantium. Maxime qui rerum labore possimus repellat voluptas tempore. Id ut illum voluptatum at delectus consequatur atque.', 5, 70, 70, 1, '2021-02-12 20:57:06', '2021-01-24 13:42:28');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (71, 'Molestiae distinctio et dolorem ipsam est recusandae. Quia molestiae sit doloremque debitis enim velit eos. Excepturi atque voluptates et totam eligendi aut quibusdam. Aliquid voluptatibus officia odio aliquid sunt nisi voluptas.', 1, 71, 71, 1, '2021-04-23 23:31:54', '2020-07-18 15:05:27');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (72, 'Voluptatum quas non hic in. Facere itaque laboriosam officiis eligendi voluptatum.', 2, 72, 72, 1, '2020-09-27 10:08:01', '2020-10-08 23:11:54');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (73, 'Ut corporis eos est omnis cupiditate perspiciatis. Adipisci nisi sed odit deserunt ratione assumenda mollitia corporis. Quia harum et ut vel velit voluptas.', 3, 73, 73, 1, '2020-08-22 17:53:47', '2021-03-26 18:57:19');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (74, 'Omnis earum reprehenderit dicta aliquid deleniti eligendi dolore. Consectetur eum quo qui nisi illo optio nam. Sint et est tempora et itaque aperiam esse.', 4, 74, 74, 1, '2021-04-07 23:26:19', '2020-10-30 20:48:27');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (75, 'Architecto quo accusamus a sed. Sequi illo vel delectus nihil aut illo magni soluta. Rerum enim sapiente expedita aut voluptatem reiciendis sint.', 5, 75, 75, 0, '2021-04-15 08:00:12', '2021-01-25 10:52:57');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (76, 'Ducimus cum rerum impedit quia vel. Eum aut reprehenderit deleniti nam ea qui dicta voluptatem. Repellat libero maiores nostrum qui voluptatum quisquam reprehenderit.', 1, 76, 76, 0, '2021-03-04 02:58:11', '2021-03-01 17:39:00');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (77, 'Sed non odit porro architecto enim. Quia iure omnis beatae veritatis quasi aperiam. Blanditiis hic consequatur tempora explicabo beatae et atque labore.', 2, 77, 77, 1, '2020-10-17 13:23:55', '2020-10-14 23:33:48');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (78, 'Qui illo qui qui omnis aut est expedita. Odio cumque perspiciatis ullam et repellendus cumque nesciunt. Quia a et molestiae inventore dignissimos sed. Quis temporibus iste est quo.', 3, 78, 78, 1, '2020-08-14 22:33:18', '2020-08-10 08:49:19');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (79, 'Atque necessitatibus voluptatem nobis maxime et. Sit reiciendis ad sint consequatur enim. Atque consequatur voluptas aut sunt delectus est. Consequuntur ducimus beatae quia necessitatibus quam eaque. Libero eos itaque et esse.', 4, 79, 79, 1, '2021-04-05 22:07:31', '2021-01-14 09:54:54');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (80, 'Illo minus ipsam facilis blanditiis beatae quisquam. Consequuntur neque illo ab quis vero. Quas nemo ipsum voluptatem.', 5, 80, 80, 0, '2020-12-13 08:14:44', '2020-07-26 08:47:13');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (81, 'Eius voluptatibus dolor perferendis voluptas sequi. Aut illum eos ipsum molestias facilis. Explicabo aut neque quam numquam. Nisi quaerat provident iure excepturi. Dolor est fuga neque ab dolor modi.', 1, 81, 81, 0, '2020-12-12 09:21:15', '2021-02-14 16:16:07');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (82, 'Nam soluta eaque autem libero. Maxime omnis praesentium asperiores nulla cum. Velit aut quas eum inventore iure a totam. Qui minus sunt voluptas qui voluptatem.', 2, 82, 82, 0, '2020-10-05 09:20:21', '2020-11-06 07:02:43');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (83, 'Et voluptatibus distinctio eius qui voluptatem quis. Eum vitae iste explicabo voluptatum. Impedit voluptates hic alias quidem voluptatem quo vel. Ab ut non inventore placeat sequi ipsum velit laboriosam. Vitae ducimus debitis exercitationem ut.', 3, 83, 83, 1, '2021-05-23 14:53:41', '2020-08-29 03:21:32');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (84, 'Iusto inventore esse rerum. Et est aut consequatur ipsa quo enim. Autem accusantium dolores odit et omnis autem autem. Exercitationem praesentium quo totam et ratione ut.', 4, 84, 84, 1, '2020-07-16 06:41:11', '2021-01-31 01:06:46');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (85, 'Vel laborum expedita autem sed velit. Saepe voluptas vero doloribus ipsa aut excepturi ratione. Dolores non omnis nobis necessitatibus cumque qui nam. Repudiandae qui natus voluptatum. Nostrum accusantium amet excepturi harum necessitatibus.', 5, 85, 85, 0, '2021-04-11 08:10:56', '2020-12-03 15:47:46');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (86, 'Fugiat ipsam veritatis qui et et quas. Sed consequatur suscipit autem ipsam qui magnam optio. Necessitatibus qui qui cupiditate. Laudantium sint optio quibusdam et natus est. Mollitia voluptas molestiae reprehenderit voluptas quia rerum earum.', 1, 86, 86, 1, '2021-01-26 14:47:45', '2020-07-01 04:34:04');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (87, 'Eligendi esse distinctio facilis ducimus ea provident et. Doloremque animi aut qui dignissimos rerum ea sit.', 2, 87, 87, 0, '2020-09-05 08:07:57', '2020-08-04 06:41:55');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (88, 'Repellendus enim consequatur temporibus aut suscipit. Debitis tempora repellendus maiores rerum quibusdam facere. Molestiae possimus similique eligendi non cupiditate consequuntur.', 3, 88, 88, 1, '2021-06-09 09:06:13', '2021-04-05 05:15:55');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (89, 'Provident iure qui eveniet itaque. Aspernatur et magni quod quo rerum perspiciatis.', 4, 89, 89, 0, '2020-06-17 22:37:14', '2021-04-21 18:03:41');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (90, 'Ut quo ducimus et nostrum. Velit qui ut numquam laudantium rerum eveniet beatae fuga. Repellat minima veritatis voluptas quia. Quasi molestiae repudiandae qui sunt aut totam officia aut.', 5, 90, 90, 1, '2020-11-15 22:30:24', '2020-07-23 04:06:20');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (91, 'Error culpa ut distinctio velit facere. Voluptatibus minus molestiae deleniti voluptates. Quis vero qui voluptas ea assumenda dicta. Ipsum voluptatem totam accusantium. Alias assumenda iure molestiae et ipsa.', 1, 91, 91, 0, '2021-04-01 07:00:53', '2020-10-04 00:54:31');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (92, 'Quaerat facilis aut quia eaque molestiae. Sit reprehenderit in omnis repellendus soluta quos. Commodi vero fugiat ab tempora. Fuga saepe hic ab.', 2, 92, 92, 0, '2020-07-26 18:10:29', '2021-05-10 09:19:38');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (93, 'Illo tempore deserunt soluta architecto incidunt non dolorem. Eligendi ut natus unde veniam et omnis dolor eveniet. Maxime aliquam pariatur perspiciatis est. Aliquid non qui quis natus consectetur est qui commodi. Est quam temporibus iusto id aliquam sed repellendus.', 3, 93, 93, 1, '2020-07-10 08:21:31', '2021-05-21 23:38:03');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (94, 'Temporibus harum excepturi rem sed. Adipisci nihil fugit atque dolores eos nostrum aut. Quia quia voluptatem adipisci aut.', 4, 94, 94, 0, '2021-01-09 19:08:25', '2020-10-26 06:32:27');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (95, 'Rerum voluptatem similique ea rem. Autem rerum iusto voluptatibus. Minus quia laudantium tenetur occaecati.', 5, 95, 95, 1, '2020-10-16 16:06:55', '2020-11-29 07:00:14');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (96, 'Dolorum sunt repellendus cupiditate quasi temporibus maiores voluptatem. Et autem facere veniam dicta. Nesciunt qui quo vitae rerum.', 1, 96, 96, 0, '2020-10-08 15:57:52', '2021-03-03 07:47:00');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (97, 'Odit nihil minima iste consequatur est. Non et aut perspiciatis commodi aliquid sit corrupti possimus. Magnam hic vel possimus et minima odio. Sint quae alias maxime ipsum.', 2, 97, 97, 0, '2020-10-22 12:27:23', '2021-04-06 23:49:14');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (98, 'Omnis et omnis odit aliquid sit mollitia quibusdam. Neque voluptatem vel vitae quae qui ducimus et. Sit pariatur assumenda rem ullam.', 3, 98, 98, 0, '2020-10-17 18:00:25', '2020-11-12 18:11:35');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (99, 'Veniam iusto dolorem provident qui quae. Voluptatem eius eius vitae exercitationem. Aut asperiores fugiat occaecati eum. Dolor quo dolor laboriosam.', 4, 99, 99, 0, '2020-11-22 20:46:15', '2021-05-04 18:27:19');
INSERT INTO `posts` (`id`, `body`, `to_entity_type`, `to_entity_id`, `created_by`, `is_attachments`, `created_at`, `updated_at`) VALUES (100, 'Sunt veritatis inventore ex. Possimus unde tempore odio repellendus nostrum et praesentium reiciendis. Corporis porro sequi accusantium earum. Et asperiores inventore quaerat totam perferendis reprehenderit molestiae.', 5, 100, 100, 1, '2020-11-28 00:59:21', '2021-03-08 19:40:23');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на город',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (1, 'm', '2012-03-14', 0, 'Exercitationem sit consequatur', 1, '2020-08-13 19:18:40', '2020-08-11 23:35:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (2, 'm', '1993-05-16', 0, 'Nobis laborum iure rerum amet ', 2, '2021-03-06 03:59:27', '2021-01-08 13:54:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (3, 'm', '1975-11-14', 0, 'Illo vel facere deleniti quo c', 3, '2021-04-04 19:04:11', '2020-12-01 19:00:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (4, 'f', '2001-03-17', 0, 'Ut in aliquid in optio nemo te', 4, '2020-06-29 08:17:02', '2020-08-18 03:47:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (5, 'f', '1991-08-05', 0, 'Harum excepturi ipsam possimus', 5, '2020-12-05 05:17:47', '2021-01-24 10:19:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (6, 'f', '2010-07-06', 0, 'Placeat non blanditiis tempori', 6, '2021-01-05 08:18:14', '2021-06-04 22:31:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (7, 'f', '2008-05-16', 0, 'Molestiae ullam aliquid dolore', 7, '2020-07-19 20:12:39', '2020-12-16 11:23:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (8, 'f', '2000-05-18', 0, 'Quia labore adipisci quo aut e', 8, '2020-07-09 19:33:07', '2021-03-20 21:30:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (9, 'f', '1975-10-12', 0, 'Qui natus qui illum qui repell', 9, '2020-12-30 17:04:43', '2021-01-09 07:42:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (10, 'm', '1986-11-13', 0, 'Eligendi sint vitae culpa sed.', 10, '2021-05-25 14:02:31', '2020-10-11 00:25:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (11, 'm', '1972-09-29', 0, 'Consequatur et iure et. Repreh', 11, '2020-12-21 19:23:31', '2021-02-16 09:19:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (12, 'f', '2003-08-08', 0, 'Asperiores blanditiis id volup', 12, '2020-11-11 15:12:11', '2020-09-23 10:13:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (13, 'm', '2007-06-06', 0, 'Nihil magni quo nobis illo nec', 13, '2021-06-14 23:06:11', '2020-06-22 10:06:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (14, 'm', '1986-01-06', 0, 'Laudantium non sequi laudantiu', 14, '2020-12-05 08:00:25', '2021-04-20 09:26:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (15, 'm', '2006-10-23', 0, 'Quas et architecto deserunt au', 15, '2021-04-14 08:30:22', '2021-05-10 04:57:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (16, 'm', '1982-01-19', 0, 'Doloremque reprehenderit labor', 16, '2020-11-21 14:06:36', '2021-05-02 20:26:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (17, 'f', '1999-12-13', 0, 'Optio similique tenetur itaque', 17, '2021-06-04 08:28:36', '2020-09-07 03:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (18, 'f', '2019-03-31', 0, 'Et ad molestiae qui saepe id p', 18, '2020-12-05 15:09:47', '2020-07-25 11:29:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (19, 'm', '1979-07-18', 0, 'Eum vel nam id cum veritatis e', 19, '2021-02-18 12:16:41', '2021-01-29 02:57:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (20, 'f', '1981-02-14', 0, 'Rerum et in possimus voluptate', 20, '2021-01-23 05:13:05', '2021-02-07 06:32:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (21, 'f', '1977-02-07', 0, 'Qui provident consequatur itaq', 21, '2021-01-28 18:32:33', '2020-10-13 02:59:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (22, 'f', '2019-10-03', 0, 'Dolores aut libero voluptatem ', 22, '2021-05-13 03:16:46', '2021-03-09 04:12:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (23, 'f', '2014-12-11', 0, 'Error hic commodi ut est debit', 23, '2020-06-18 16:06:58', '2020-08-12 22:22:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (24, 'f', '2002-04-17', 0, 'Vitae ab amet itaque provident', 24, '2021-01-20 23:32:30', '2021-06-01 22:52:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (25, 'f', '1982-07-06', 0, 'Assumenda temporibus et sit la', 25, '2020-07-22 23:02:29', '2020-12-14 16:36:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (26, 'm', '1995-09-18', 0, 'Omnis voluptatem quia tenetur ', 26, '2021-06-08 18:44:35', '2020-07-05 18:23:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (27, 'f', '1971-12-14', 0, 'Enim aliquid omnis sit. A ut e', 27, '2020-11-13 16:26:50', '2020-10-23 09:21:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (28, 'm', '1973-06-04', 0, 'Quae cumque non omnis eos atqu', 28, '2021-03-06 07:15:05', '2021-04-19 19:17:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (29, 'f', '1978-07-26', 0, 'Quo nostrum minima enim autem ', 29, '2020-10-08 13:55:35', '2020-10-11 19:48:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (30, 'm', '2017-10-27', 0, 'Repellendus omnis asperiores a', 30, '2020-11-09 06:48:07', '2020-12-20 18:49:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (31, 'f', '1976-12-09', 0, 'Consequatur est tenetur occaec', 31, '2020-09-28 18:22:05', '2021-03-14 08:38:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (32, 'm', '2020-12-10', 0, 'Autem corrupti laboriosam iust', 32, '2020-12-30 08:58:40', '2020-10-20 16:07:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (33, 'f', '1977-09-23', 0, 'Assumenda esse enim ratione ex', 33, '2020-12-19 21:37:48', '2021-05-13 09:45:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (34, 'm', '2013-12-30', 0, 'Suscipit ea asperiores et quia', 34, '2021-05-31 09:48:26', '2020-12-06 17:40:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (35, 'f', '1983-09-23', 0, 'Enim qui eligendi nemo vero qu', 35, '2021-01-25 14:43:56', '2021-06-01 19:45:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (36, 'm', '2015-07-19', 0, 'Debitis quaerat rerum voluptat', 36, '2021-06-05 06:22:59', '2020-12-16 16:42:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (37, 'm', '1993-10-19', 0, 'Nihil laborum sunt dolorem opt', 37, '2020-09-04 07:07:55', '2020-12-25 12:41:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (38, 'f', '1995-05-21', 0, 'Dicta ipsa corrupti officiis i', 38, '2020-12-12 13:55:15', '2021-01-14 20:21:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (39, 'f', '1979-07-12', 0, 'Facere sint amet nobis quaerat', 39, '2020-06-23 01:59:17', '2021-05-04 11:54:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (40, 'm', '2020-07-16', 0, 'Aut ipsum dolores quod. Possim', 40, '2020-07-06 01:32:58', '2020-10-28 01:26:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (41, 'f', '2016-05-04', 0, 'Nemo et rem architecto laudant', 41, '2021-01-03 14:14:46', '2021-04-12 01:22:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (42, 'f', '2015-11-16', 0, 'Recusandae aspernatur fuga ut ', 42, '2020-10-11 21:38:34', '2021-05-19 00:27:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (43, 'f', '2014-05-20', 0, 'Consectetur placeat et nihil s', 43, '2021-04-20 03:39:31', '2020-11-13 12:03:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (44, 'f', '2012-02-21', 0, 'Autem qui est voluptas velit i', 44, '2020-08-02 22:00:25', '2020-09-24 10:59:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (45, 'm', '2012-09-05', 0, 'Ipsa ut vero ab ullam dolorum ', 45, '2020-06-22 10:26:48', '2021-03-31 10:27:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (46, 'm', '2001-10-29', 0, 'Blanditiis deleniti placeat se', 46, '2020-11-12 07:51:03', '2020-07-01 19:39:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (47, 'm', '1984-08-23', 0, 'Sapiente beatae sunt molestias', 47, '2021-05-28 12:59:35', '2020-08-11 16:55:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (48, 'm', '1989-04-06', 0, 'Ducimus ratione minima volupta', 48, '2020-09-09 09:20:41', '2021-06-02 01:11:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (49, 'm', '1981-12-30', 0, 'Aut sed delectus perferendis m', 49, '2021-01-21 11:35:07', '2021-04-04 20:06:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (50, 'f', '1998-03-05', 0, 'Laboriosam vero aut eius quia.', 50, '2021-01-15 16:22:41', '2021-05-26 01:11:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (51, 'f', '1992-01-30', 0, 'Voluptatem possimus eius adipi', 51, '2020-07-30 20:17:44', '2020-12-13 12:29:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (52, 'f', '1998-09-29', 0, 'Voluptates error minima cumque', 52, '2021-06-16 22:15:22', '2020-08-03 07:56:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (53, 'f', '2003-12-04', 0, 'Sit odio aut deleniti repudian', 53, '2020-12-08 19:59:35', '2020-11-02 14:18:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (54, 'm', '1975-11-16', 0, 'Possimus magni debitis accusan', 54, '2020-11-20 16:38:46', '2021-06-12 20:30:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (55, 'm', '2013-12-25', 0, 'Facilis fugiat quidem aspernat', 55, '2020-07-01 03:32:05', '2021-05-15 13:15:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (56, 'f', '1974-07-03', 0, 'Consectetur molestias dolores ', 56, '2021-01-03 19:48:34', '2020-12-24 12:42:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (57, 'm', '2005-01-12', 0, 'Quis eos minima cum et et ipsa', 57, '2021-04-07 14:06:00', '2020-07-20 08:57:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (58, 'm', '1985-06-13', 0, 'Esse et perferendis assumenda ', 58, '2021-02-26 01:52:43', '2020-10-08 05:36:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (59, 'm', '2018-02-14', 0, 'Animi eos quidem nihil provide', 59, '2021-01-09 01:13:29', '2020-09-30 20:07:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (60, 'm', '1988-05-30', 0, 'Cum occaecati qui illum provid', 60, '2021-01-01 05:55:07', '2020-12-13 21:37:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (61, 'f', '1971-10-03', 0, 'Eaque est voluptate pariatur c', 61, '2021-05-27 03:59:48', '2021-06-12 18:15:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (62, 'f', '1980-06-10', 0, 'Aliquid corporis illum blandit', 62, '2020-07-23 14:06:00', '2020-09-22 11:07:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (63, 'f', '2005-10-21', 0, 'Nisi dicta est architecto beat', 63, '2021-02-11 18:44:41', '2021-06-10 23:43:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (64, 'm', '2010-01-28', 0, 'Consequatur iste architecto as', 64, '2021-05-18 18:09:05', '2021-02-06 05:43:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (65, 'm', '1981-02-02', 0, 'Magni dolorem eius possimus ve', 65, '2021-04-13 23:29:49', '2021-05-06 14:44:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (66, 'f', '2004-03-19', 0, 'Consequatur nostrum minus pari', 66, '2021-05-31 16:44:30', '2021-01-08 06:22:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (67, 'm', '1989-11-20', 0, 'Aut qui qui dolorum. Omnis qui', 67, '2021-03-20 23:14:21', '2021-05-07 15:03:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (68, 'm', '1977-05-26', 0, 'Eum ullam unde aut blanditiis ', 68, '2021-03-23 11:48:13', '2021-02-13 08:02:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (69, 'm', '1975-05-16', 0, 'Voluptatem a dolorum assumenda', 69, '2020-10-31 08:15:53', '2020-09-25 18:42:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (70, 'm', '1979-01-07', 0, 'Nihil sunt aut recusandae eos ', 70, '2021-04-15 01:04:23', '2021-01-31 23:46:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (71, 'f', '1998-08-26', 0, 'Natus sint harum molestias vit', 71, '2021-03-05 21:16:59', '2020-11-25 19:45:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (72, 'm', '2014-08-12', 0, 'Animi aut odio et quo. Eveniet', 72, '2020-07-03 20:25:42', '2021-03-21 23:09:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (73, 'm', '2011-09-23', 0, 'Aspernatur sunt omnis praesent', 73, '2020-09-28 12:37:26', '2021-01-12 10:18:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (74, 'f', '2020-05-14', 0, 'Tempora consequatur hic mollit', 74, '2021-06-14 13:57:32', '2020-09-16 09:20:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (75, 'f', '2010-03-27', 0, 'Et optio harum quia eos quis i', 75, '2021-05-24 22:29:00', '2020-11-05 16:12:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (76, 'm', '1974-03-09', 0, 'Molestiae necessitatibus fugia', 76, '2020-11-20 12:15:10', '2020-08-08 19:48:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (77, 'm', '1974-10-21', 0, 'Et repellendus enim ad ea. Lib', 77, '2020-11-08 22:11:09', '2021-04-23 22:56:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (78, 'm', '2006-01-18', 0, 'Velit earum voluptates vero et', 78, '2020-10-22 02:32:58', '2021-05-07 09:10:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (79, 'm', '1979-01-30', 0, 'Sit dolorem at qui nemo conseq', 79, '2020-12-02 12:52:36', '2021-04-08 23:30:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (80, 'm', '2007-01-19', 0, 'Molestiae debitis distinctio s', 80, '2020-06-22 08:40:08', '2021-02-19 10:56:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (81, 'f', '1972-08-09', 0, 'Qui vero accusantium ut quas e', 81, '2021-01-16 07:45:49', '2021-04-04 02:54:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (82, 'm', '1982-11-24', 0, 'Necessitatibus et et amet non ', 82, '2021-05-03 09:46:07', '2020-12-01 19:39:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (83, 'f', '2005-12-31', 0, 'Vel molestiae dolorem doloribu', 83, '2020-07-10 23:24:23', '2021-04-21 10:29:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (84, 'm', '1995-04-17', 0, 'Nostrum blanditiis et ut quis.', 84, '2020-08-17 15:59:58', '2020-12-23 21:16:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (85, 'f', '1978-09-16', 0, 'Sit maxime iure commodi mollit', 85, '2020-08-22 22:04:42', '2021-06-14 04:01:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (86, 'f', '1996-08-02', 0, 'Occaecati enim commodi eum eum', 86, '2021-04-05 21:41:52', '2021-04-24 21:16:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (87, 'f', '1995-03-17', 0, 'Autem atque soluta quidem eius', 87, '2020-11-19 14:20:50', '2020-07-07 03:37:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (88, 'f', '2020-11-25', 0, 'Quibusdam et omnis similique n', 88, '2021-01-12 02:42:24', '2020-11-04 09:34:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (89, 'f', '1973-10-27', 0, 'Doloribus cum adipisci labore ', 89, '2021-02-14 01:00:00', '2021-03-01 21:17:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (90, 'm', '2008-01-13', 0, 'Aliquam molestiae ea amet ab d', 90, '2021-06-09 06:45:12', '2021-02-13 05:46:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (91, 'f', '1986-07-12', 0, 'Eos consequuntur nobis et exer', 91, '2021-03-23 08:38:04', '2020-11-26 10:05:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (92, 'm', '2007-01-29', 0, 'Aut rerum molestiae saepe beat', 92, '2020-08-12 08:28:36', '2020-10-11 19:44:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (93, 'm', '2010-07-27', 0, 'Quos accusamus labore vel qui.', 93, '2021-05-14 00:13:32', '2020-12-14 22:48:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (94, 'f', '1976-08-19', 0, 'Minus eos est ut perspiciatis ', 94, '2021-03-07 16:44:39', '2020-12-28 14:56:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (95, 'f', '1993-08-03', 0, 'Labore placeat est molestias d', 95, '2021-02-12 07:06:17', '2020-11-24 16:55:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (96, 'm', '1985-08-19', 0, 'Sed ullam qui quam animi labor', 96, '2020-12-08 04:09:43', '2021-03-03 11:55:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (97, 'f', '1996-12-28', 0, 'Eum veniam fugiat officiis sit', 97, '2021-02-27 08:57:15', '2021-05-27 15:10:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (98, 'm', '1977-05-16', 0, 'Voluptatibus ea quae aliquam m', 98, '2020-10-01 12:25:19', '2020-12-06 01:24:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (99, 'm', '1972-12-19', 0, 'Et sed eligendi accusamus arch', 99, '2020-11-03 08:29:13', '2020-08-12 10:41:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES (100, 'm', '2016-08-03', 0, 'Est quia voluptatibus aut aliq', 100, '2020-11-24 12:09:34', '2021-04-24 11:36:41');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  `deleted_at` DATETIME COMMENT "Время удаления пользователя",
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Alberta', 'O\'Kon', 'sanford.felix@example.net', '04349663240', '2020-09-21 16:38:09', '2021-04-19 11:12:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Kallie', 'Rice', 'zshields@example.org', '(777)996-1483x87295', '2020-12-13 01:48:22', '2020-09-18 06:47:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Ryann', 'Stehr', 'qwyman@example.org', '06771341838', '2020-12-01 05:02:05', '2021-06-09 02:22:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Florence', 'Russel', 'd\'amore.ted@example.net', '(148)482-5135x857', '2020-11-20 13:54:05', '2021-01-30 06:49:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Deborah', 'Renner', 'lvandervort@example.com', '(104)875-1999', '2020-12-31 22:29:09', '2020-08-17 22:51:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Ahmed', 'Wyman', 'zlesch@example.org', '785.752.7387', '2021-03-12 02:41:49', '2020-08-21 16:27:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Fannie', 'Hahn', 'kendra27@example.com', '023.552.2143x5092', '2020-06-27 14:29:47', '2021-04-18 20:36:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Zelda', 'Hammes', 'krodriguez@example.com', '751.334.7715x8339', '2021-01-20 16:47:02', '2020-07-11 02:17:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Arnulfo', 'Doyle', 'jschmidt@example.org', '06379682058', '2020-06-27 23:49:54', '2020-09-05 07:23:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Alphonso', 'Stiedemann', 'roberts.zion@example.com', '1-475-910-5847', '2020-11-20 05:55:49', '2021-02-09 18:48:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Arthur', 'Boyle', 'olen.daniel@example.net', '248-183-0839x7804', '2020-10-01 06:57:33', '2021-04-05 08:31:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Isai', 'Spencer', 'ljohns@example.net', '+95(3)7046019329', '2020-12-04 12:41:06', '2020-11-20 16:26:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Garland', 'Schiller', 'abernier@example.net', '361-346-1608x8325', '2020-08-26 18:12:19', '2021-01-30 11:36:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Turner', 'Marquardt', 'moen.katelyn@example.com', '643-247-5071x285', '2020-12-02 14:56:13', '2021-03-30 06:34:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Frankie', 'Kuphal', 'lavonne.cartwright@example.com', '(077)859-6890x259', '2020-11-26 23:41:21', '2020-11-03 19:35:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Madaline', 'Swift', 'aemard@example.org', '1-045-587-5904', '2021-05-02 05:06:26', '2021-01-10 03:40:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Lynn', 'Schmitt', 'amara.gusikowski@example.net', '(116)021-3337x482', '2020-12-01 13:33:29', '2020-07-26 12:09:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Ashtyn', 'Wolff', 'twitting@example.net', '(391)849-8521', '2020-09-15 15:55:17', '2020-07-20 10:07:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Fredrick', 'Parisian', 'thagenes@example.org', '340-481-0248x926', '2020-08-19 11:40:25', '2021-05-06 06:00:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Zora', 'Parker', 'janessa89@example.org', '1-235-973-4709x614', '2021-01-16 23:01:48', '2021-04-12 14:53:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Dianna', 'Runte', 'davonte.conroy@example.com', '+35(9)6949065402', '2020-10-12 17:26:43', '2021-02-11 03:35:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Rosa', 'Stamm', 'eriberto.pagac@example.com', '1-588-268-6120x9995', '2020-09-26 03:28:25', '2021-04-26 11:32:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Nicklaus', 'VonRueden', 'gottlieb.christ@example.net', '(041)190-5857x5666', '2020-09-08 09:08:53', '2021-05-29 22:15:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Mara', 'Senger', 'monte59@example.org', '760.632.8164x307', '2021-05-14 10:11:32', '2021-03-16 17:22:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Gwendolyn', 'O\'Kon', 'lueilwitz.maryjane@example.com', '1-988-130-3504', '2020-12-11 12:19:11', '2020-12-07 00:13:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Wendell', 'Padberg', 'walter02@example.org', '621.829.1905', '2021-04-16 14:34:25', '2021-04-25 02:14:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Trinity', 'Bruen', 'jean58@example.com', '1-591-223-8296x091', '2020-11-02 06:01:15', '2021-05-19 05:19:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Bennie', 'Mante', 'brandy98@example.org', '(282)504-6430x5846', '2021-05-01 05:14:24', '2021-04-14 03:16:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Josiane', 'Larson', 'daphney.yundt@example.net', '059-499-6994', '2020-09-11 00:41:52', '2021-01-17 04:18:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Cedrick', 'Lemke', 'anika.hammes@example.com', '(008)524-0476x0486', '2020-09-28 16:23:58', '2020-12-22 17:37:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Clemens', 'Pagac', 'ugerhold@example.org', '(744)317-3721x9394', '2021-05-19 21:23:55', '2020-07-20 00:12:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Zander', 'O\'Keefe', 'russell.hoeger@example.org', '1-411-423-8127x71100', '2020-08-26 23:01:25', '2020-07-22 15:50:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Wellington', 'Jakubowski', 'gardner36@example.org', '(003)434-5973x26044', '2021-03-20 08:35:52', '2021-01-23 17:01:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Dennis', 'Gutkowski', 'wilfred60@example.net', '839-176-3052', '2020-07-06 13:22:45', '2021-05-24 10:24:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Shanny', 'Crist', 'holden04@example.com', '572.531.1946x824', '2021-06-02 20:44:06', '2021-05-21 07:38:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Clark', 'Metz', 'margot.swift@example.com', '354.940.9974', '2020-12-28 07:17:19', '2020-10-11 09:24:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Cleta', 'Gerlach', 'suzanne.will@example.com', '1-929-521-4793x365', '2020-12-03 10:26:13', '2021-06-07 06:46:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jaeden', 'Metz', 'habbott@example.org', '153.311.3628', '2021-04-26 02:28:44', '2021-03-09 22:18:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Dean', 'O\'Reilly', 'jany.farrell@example.net', '088-374-7871', '2021-02-24 13:16:47', '2020-10-08 13:22:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Coy', 'Paucek', 'damien13@example.net', '968-691-8944', '2020-10-30 00:10:27', '2021-01-31 07:52:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Demario', 'Champlin', 'allen55@example.net', '1-413-672-3667x07956', '2020-12-07 19:06:47', '2021-01-23 00:56:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Haven', 'Bogan', 'mosciski.daphnee@example.net', '+75(9)0020916992', '2020-12-07 12:47:46', '2021-04-18 05:47:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Rosalyn', 'Russel', 'henri52@example.com', '08943231821', '2020-09-22 07:07:31', '2020-12-30 06:38:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Alisa', 'Robel', 'khowell@example.net', '(790)482-6867', '2020-09-19 05:23:46', '2021-03-01 14:05:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Elena', 'Bednar', 'micah85@example.com', '(061)211-0280x767', '2020-12-19 22:03:14', '2021-03-16 16:23:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Violette', 'O\'Keefe', 'oschimmel@example.com', '03339407307', '2021-04-03 02:37:28', '2021-03-01 01:01:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Julian', 'Eichmann', 'emard.santino@example.com', '1-287-598-2987x70053', '2020-07-25 03:32:53', '2020-10-01 15:06:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Adelia', 'Bogisich', 'mollie.altenwerth@example.org', '(414)624-9631x26978', '2020-11-09 17:35:47', '2020-10-23 10:54:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Geraldine', 'Grady', 'stanton.genoveva@example.net', '338.828.5858x293', '2020-07-11 10:48:56', '2020-09-22 16:33:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Wyatt', 'Stanton', 'uschuster@example.net', '873.399.9981x940', '2021-05-18 13:53:12', '2020-09-15 06:46:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Delmer', 'Gerhold', 'veum.meredith@example.org', '326.809.4064x1152', '2020-09-26 13:53:01', '2020-07-19 09:26:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Elliott', 'Wiza', 'steuber.max@example.org', '+32(3)9230790557', '2021-03-10 21:25:44', '2020-06-23 03:15:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Kari', 'Bashirian', 'lenora.thiel@example.com', '(317)319-7789', '2020-09-17 21:53:59', '2020-09-22 23:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Myrl', 'Ondricka', 'ernest52@example.net', '171-261-9705x70985', '2021-05-18 04:18:18', '2021-05-18 19:00:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Lyda', 'Langworth', 'walton.predovic@example.org', '(293)572-5548', '2020-09-04 09:30:30', '2021-04-06 20:54:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Erling', 'Carroll', 'wrice@example.net', '369.347.3089', '2020-09-16 04:21:11', '2021-04-12 02:47:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Gerardo', 'Ziemann', 'steuber.jody@example.org', '1-944-205-1564x124', '2021-01-05 21:02:31', '2020-09-19 12:58:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Josiane', 'Lockman', 'leola31@example.net', '804-905-5557', '2021-01-19 19:55:27', '2020-09-30 13:22:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Khalil', 'Cartwright', 'jamaal71@example.net', '(117)819-9767', '2021-02-23 14:33:03', '2021-05-23 01:24:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Ryann', 'Quitzon', 'jazmin.bartoletti@example.com', '1-977-222-6120x68363', '2020-09-08 20:26:34', '2021-02-06 12:43:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jalen', 'Abshire', 'rosina41@example.org', '1-946-721-2359x45221', '2020-12-02 17:49:31', '2020-08-17 19:31:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Elisabeth', 'Jacobi', 'friesen.kaia@example.net', '(210)734-8996', '2021-04-21 01:06:21', '2021-02-08 07:22:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Kathryn', 'Veum', 'annamae.dach@example.org', '+20(9)2357673243', '2020-10-12 22:03:21', '2021-01-10 23:33:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Garnett', 'Hahn', 'sschmidt@example.net', '705.884.4160x8222', '2020-10-30 10:45:03', '2020-09-22 19:14:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Twila', 'Bruen', 'kulas.myah@example.com', '356.007.4328', '2021-03-01 09:24:36', '2020-12-16 09:40:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Jarrett', 'Tremblay', 'jacinthe75@example.net', '892.646.6509x415', '2021-01-06 07:57:39', '2020-12-16 04:22:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Kurt', 'Boyle', 'johnnie.hayes@example.net', '891-415-3459', '2020-10-22 11:17:04', '2021-02-27 03:40:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Will', 'Bayer', 'laurel.olson@example.org', '(817)207-3579', '2021-02-05 15:08:06', '2020-12-16 15:43:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Gardner', 'Kunze', 'jeff.veum@example.org', '1-583-232-6832', '2021-03-09 18:06:42', '2020-08-01 01:51:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Trace', 'Rau', 'nolan.pattie@example.com', '+57(5)3605386931', '2021-01-22 21:54:13', '2021-01-31 18:14:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Lew', 'Fay', 'asipes@example.net', '1-569-944-3515x7480', '2020-11-12 13:28:36', '2020-10-07 22:29:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Sim', 'Heaney', 'jewell45@example.com', '840-564-5127x03980', '2021-03-07 01:12:56', '2020-12-19 06:35:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Elroy', 'McCullough', 'alberta.bins@example.net', '(867)441-7737x11775', '2021-04-11 06:13:01', '2021-01-12 20:15:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Aiden', 'Heathcote', 'crona.astrid@example.org', '079.579.5932x53245', '2020-09-24 21:26:47', '2021-01-17 06:31:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Graham', 'Zemlak', 'vo\'connell@example.org', '158.043.5125', '2020-07-18 18:48:57', '2021-03-21 17:09:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Lois', 'Reichel', 'hobart.daugherty@example.org', '1-011-823-7365x4220', '2020-08-06 21:16:42', '2021-02-19 07:06:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Vella', 'Rempel', 'dickinson.margie@example.com', '854.924.3718', '2021-02-05 00:06:45', '2020-10-03 15:57:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Dovie', 'Lindgren', 'yswaniawski@example.com', '001-070-8098', '2021-05-09 17:45:33', '2020-10-02 02:26:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Juliet', 'Kilback', 'franz34@example.org', '1-449-029-3900x64353', '2020-11-14 11:12:54', '2021-01-28 05:27:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Henderson', 'Leuschke', 'franco31@example.org', '1-948-332-4060', '2020-08-25 03:37:15', '2020-07-12 13:24:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Karen', 'Mosciski', 'deckow.felipa@example.org', '(577)876-1230x5744', '2020-07-04 04:30:57', '2020-07-19 23:50:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Olin', 'Fahey', 'celia.wintheiser@example.com', '(571)836-0605x17606', '2020-09-05 13:09:21', '2021-03-18 21:00:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Misty', 'Pagac', 'kiehn.kiarra@example.org', '(505)146-4890x80308', '2020-12-04 05:45:20', '2020-12-12 10:12:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Shirley', 'Sanford', 'fahey.kraig@example.com', '(040)220-9425', '2021-01-29 22:39:34', '2021-05-06 15:11:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Bertha', 'Prohaska', 'dooley.paris@example.net', '231-959-9328x17587', '2021-03-20 23:45:37', '2020-10-30 03:50:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Florencio', 'Hammes', 'bonnie.dietrich@example.org', '(717)170-4706x825', '2021-04-18 11:44:16', '2020-12-17 06:34:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Alvis', 'Kovacek', 'matilde.aufderhar@example.net', '712.514.2185x61347', '2021-06-09 18:54:07', '2020-08-15 10:04:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Bennie', 'Gutkowski', 'raoul.osinski@example.net', '1-646-827-5656', '2020-06-28 11:01:40', '2020-09-21 14:35:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'William', 'Ward', 'ifarrell@example.net', '(116)107-2218x90831', '2020-10-23 08:00:11', '2021-01-27 06:01:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Danny', 'Mante', 'hboyer@example.net', '(211)252-2243x0159', '2021-05-25 05:50:38', '2020-09-03 21:25:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Frederick', 'Ankunding', 'ena.cormier@example.org', '552-154-8631x632', '2020-08-16 21:47:21', '2020-07-25 06:48:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Oscar', 'Windler', 'wilfredo.gorczany@example.net', '1-773-963-3259x8877', '2020-07-16 20:43:35', '2020-08-30 21:12:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Hoyt', 'Schaden', 'nmclaughlin@example.org', '442-372-7617', '2021-04-14 23:26:35', '2021-05-06 11:36:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Maria', 'Oberbrunner', 'alexander68@example.org', '(574)027-6569x1681', '2021-02-17 08:11:40', '2020-09-05 11:09:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Alverta', 'Schimmel', 'herzog.pierre@example.org', '562.808.2828x3074', '2021-06-03 00:57:53', '2021-03-27 14:31:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Kaylee', 'Rowe', 'penelope.rice@example.org', '+34(5)5680556731', '2021-05-11 09:40:16', '2021-02-24 13:56:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Ernest', 'Schumm', 'waters.rolando@example.org', '+01(9)4878305940', '2021-01-01 21:28:10', '2021-04-11 14:38:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Rosa', 'Harris', 'boehm.declan@example.org', '808-640-6490', '2020-12-22 23:54:55', '2021-04-15 03:42:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Kaci', 'Heller', 'reba.marvin@example.net', '557-939-4891x6931', '2021-04-23 12:43:21', '2020-11-09 06:23:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Emilie', 'Nolan', 'kstrosin@example.net', '234-517-7990x8728', '2020-10-12 00:30:58', '2020-07-06 22:54:24');


