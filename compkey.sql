/*
 Navicat Premium Data Transfer

 Source Server         : Compkey
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : 47.120.5.170:57377
 Source Schema         : compkey

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 09/12/2023 14:56:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agencyword
-- ----------------------------
DROP TABLE IF EXISTS `agencyword`;
CREATE TABLE `agencyword`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '种子关键词的ID',
  `word` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '中介关键词名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agencyword
-- ----------------------------
INSERT INTO `agencyword` VALUES (1, 'note\n');
INSERT INTO `agencyword` VALUES (2, '机');
INSERT INTO `agencyword` VALUES (3, '手机');
INSERT INTO `agencyword` VALUES (4, '官网');
INSERT INTO `agencyword` VALUES (5, '版\n');
INSERT INTO `agencyword` VALUES (6, 'note');
INSERT INTO `agencyword` VALUES (7, 'max\n');
INSERT INTO `agencyword` VALUES (8, '版');
INSERT INTO `agencyword` VALUES (9, '开');
INSERT INTO `agencyword` VALUES (10, '卡\n');
INSERT INTO `agencyword` VALUES (11, '手环');
INSERT INTO `agencyword` VALUES (12, '手机\n');
INSERT INTO `agencyword` VALUES (13, '荣耀\n');
INSERT INTO `agencyword` VALUES (14, 'p9');
INSERT INTO `agencyword` VALUES (15, 'plus');
INSERT INTO `agencyword` VALUES (16, '荣耀');
INSERT INTO `agencyword` VALUES (17, 'plus\n');
INSERT INTO `agencyword` VALUES (18, 'mate8\n');
INSERT INTO `agencyword` VALUES (19, '电脑\n');
INSERT INTO `agencyword` VALUES (20, '6s\n');
INSERT INTO `agencyword` VALUES (21, '钱');
INSERT INTO `agencyword` VALUES (22, '电脑');
INSERT INTO `agencyword` VALUES (23, '图片\n');
INSERT INTO `agencyword` VALUES (24, '5s\n');
INSERT INTO `agencyword` VALUES (25, '6s');
INSERT INTO `agencyword` VALUES (26, '5s');
INSERT INTO `agencyword` VALUES (27, '皮肤');
INSERT INTO `agencyword` VALUES (28, '英雄');
INSERT INTO `agencyword` VALUES (29, '玩\n');
INSERT INTO `agencyword` VALUES (30, '赛');
INSERT INTO `agencyword` VALUES (31, '查询\n');
INSERT INTO `agencyword` VALUES (32, '玩');
INSERT INTO `agencyword` VALUES (33, '视频');
INSERT INTO `agencyword` VALUES (34, '官网\n');
INSERT INTO `agencyword` VALUES (35, '年');
INSERT INTO `agencyword` VALUES (36, '英雄\n');
INSERT INTO `agencyword` VALUES (37, '2016');
INSERT INTO `agencyword` VALUES (38, '连接');
INSERT INTO `agencyword` VALUES (39, '无线\n');
INSERT INTO `agencyword` VALUES (40, '无线');
INSERT INTO `agencyword` VALUES (41, '走红\n');
INSERT INTO `agencyword` VALUES (42, '游戏\n');
INSERT INTO `agencyword` VALUES (43, '剧');
INSERT INTO `agencyword` VALUES (44, '电视');
INSERT INTO `agencyword` VALUES (45, '电视\n');
INSERT INTO `agencyword` VALUES (46, '学院');
INSERT INTO `agencyword` VALUES (47, '职业\n');
INSERT INTO `agencyword` VALUES (48, '直播');
INSERT INTO `agencyword` VALUES (49, '在线\n');
INSERT INTO `agencyword` VALUES (50, '中秋');
INSERT INTO `agencyword` VALUES (51, '市\n');
INSERT INTO `agencyword` VALUES (52, '在线');
INSERT INTO `agencyword` VALUES (53, '节目\n');
INSERT INTO `agencyword` VALUES (54, '大学');
INSERT INTO `agencyword` VALUES (55, '中秋\n');
INSERT INTO `agencyword` VALUES (56, '网\n');
INSERT INTO `agencyword` VALUES (57, '网');
INSERT INTO `agencyword` VALUES (58, '线');
INSERT INTO `agencyword` VALUES (59, '站');
INSERT INTO `agencyword` VALUES (60, '路');
INSERT INTO `agencyword` VALUES (61, '线路\n');
INSERT INTO `agencyword` VALUES (62, '号线');
INSERT INTO `agencyword` VALUES (63, '路\n');
INSERT INTO `agencyword` VALUES (64, '号');
INSERT INTO `agencyword` VALUES (65, '图');
INSERT INTO `agencyword` VALUES (66, '线路');
INSERT INTO `agencyword` VALUES (67, '线路图\n');
INSERT INTO `agencyword` VALUES (68, '线\n');
INSERT INTO `agencyword` VALUES (69, '北京');
INSERT INTO `agencyword` VALUES (70, '广州\n');
INSERT INTO `agencyword` VALUES (71, '做');
INSERT INTO `agencyword` VALUES (72, '做法');
INSERT INTO `agencyword` VALUES (73, '炒');
INSERT INTO `agencyword` VALUES (74, '翅');
INSERT INTO `agencyword` VALUES (75, '炖\n');
INSERT INTO `agencyword` VALUES (76, '汤');
INSERT INTO `agencyword` VALUES (77, '店');
INSERT INTO `agencyword` VALUES (78, '面');
INSERT INTO `agencyword` VALUES (79, '大全\n');
INSERT INTO `agencyword` VALUES (80, '炖');
INSERT INTO `agencyword` VALUES (81, '面\n');
INSERT INTO `agencyword` VALUES (82, '吃\n');
INSERT INTO `agencyword` VALUES (83, '做法\n');
INSERT INTO `agencyword` VALUES (84, '炒\n');
INSERT INTO `agencyword` VALUES (85, '吃');
INSERT INTO `agencyword` VALUES (86, '汤\n');
INSERT INTO `agencyword` VALUES (87, '奥运');
INSERT INTO `agencyword` VALUES (88, '里');
INSERT INTO `agencyword` VALUES (89, '奥运会\n');
INSERT INTO `agencyword` VALUES (90, '中');
INSERT INTO `agencyword` VALUES (91, '奥运会');
INSERT INTO `agencyword` VALUES (92, '街头\n');
INSERT INTO `agencyword` VALUES (93, '时刻表\n');
INSERT INTO `agencyword` VALUES (94, '时刻表');
INSERT INTO `agencyword` VALUES (95, '公司');
INSERT INTO `agencyword` VALUES (96, '有限公司\n');
INSERT INTO `agencyword` VALUES (97, '站\n');
INSERT INTO `agencyword` VALUES (98, '学生');
INSERT INTO `agencyword` VALUES (99, '学校');
INSERT INTO `agencyword` VALUES (100, '新');
INSERT INTO `agencyword` VALUES (101, '高');
INSERT INTO `agencyword` VALUES (102, '高中');
INSERT INTO `agencyword` VALUES (103, '第一');
INSERT INTO `agencyword` VALUES (104, '年\n');
INSERT INTO `agencyword` VALUES (105, '实验');
INSERT INTO `agencyword` VALUES (106, '第一\n');
INSERT INTO `agencyword` VALUES (107, '新\n');
INSERT INTO `agencyword` VALUES (108, '钥匙');
INSERT INTO `agencyword` VALUES (109, '万能');
INSERT INTO `agencyword` VALUES (110, '破解');
INSERT INTO `agencyword` VALUES (111, '万能钥匙\n');
INSERT INTO `agencyword` VALUES (112, '密码');
INSERT INTO `agencyword` VALUES (113, '不上\n');
INSERT INTO `agencyword` VALUES (114, '密码\n');
INSERT INTO `agencyword` VALUES (115, '连接\n');
INSERT INTO `agencyword` VALUES (116, '万能钥匙');
INSERT INTO `agencyword` VALUES (117, '钥匙\n');
INSERT INTO `agencyword` VALUES (118, '敷\n');
INSERT INTO `agencyword` VALUES (119, '敷');
INSERT INTO `agencyword` VALUES (120, '脸');
INSERT INTO `agencyword` VALUES (121, '洗');
INSERT INTO `agencyword` VALUES (122, '洗脸\n');
INSERT INTO `agencyword` VALUES (123, '睡眠\n');
INSERT INTO `agencyword` VALUES (124, '补水\n');
INSERT INTO `agencyword` VALUES (125, '脸\n');
INSERT INTO `agencyword` VALUES (126, '水');
INSERT INTO `agencyword` VALUES (127, '完');
INSERT INTO `agencyword` VALUES (128, '洗脸');
INSERT INTO `agencyword` VALUES (129, '方法\n');
INSERT INTO `agencyword` VALUES (130, '爱奇艺');
INSERT INTO `agencyword` VALUES (131, '共享');
INSERT INTO `agencyword` VALUES (132, '免费');
INSERT INTO `agencyword` VALUES (133, '腾讯');
INSERT INTO `agencyword` VALUES (134, '优酷');
INSERT INTO `agencyword` VALUES (135, '超级');
INSERT INTO `agencyword` VALUES (136, '开\n');
INSERT INTO `agencyword` VALUES (137, 'qq');
INSERT INTO `agencyword` VALUES (138, '账号');
INSERT INTO `agencyword` VALUES (139, '卡');
INSERT INTO `agencyword` VALUES (140, '超级\n');
INSERT INTO `agencyword` VALUES (141, '腾讯\n');
INSERT INTO `agencyword` VALUES (142, '免费\n');
INSERT INTO `agencyword` VALUES (143, '账号\n');
INSERT INTO `agencyword` VALUES (144, '绑');
INSERT INTO `agencyword` VALUES (145, '绑定');
INSERT INTO `agencyword` VALUES (146, '支付');
INSERT INTO `agencyword` VALUES (147, '转\n');
INSERT INTO `agencyword` VALUES (148, '查');
INSERT INTO `agencyword` VALUES (149, '绑定\n');
INSERT INTO `agencyword` VALUES (150, '查\n');
INSERT INTO `agencyword` VALUES (151, '办');
INSERT INTO `agencyword` VALUES (152, '支付宝\n');
INSERT INTO `agencyword` VALUES (153, '号\n');
INSERT INTO `agencyword` VALUES (154, '钱\n');
INSERT INTO `agencyword` VALUES (155, '电');
INSERT INTO `agencyword` VALUES (156, '联想');
INSERT INTO `agencyword` VALUES (157, '盘');
INSERT INTO `agencyword` VALUES (158, '华硕');
INSERT INTO `agencyword` VALUES (159, '键');
INSERT INTO `agencyword` VALUES (160, '机\n');
INSERT INTO `agencyword` VALUES (161, '键\n');
INSERT INTO `agencyword` VALUES (162, '华硕\n');
INSERT INTO `agencyword` VALUES (163, '下载');
INSERT INTO `agencyword` VALUES (164, '苹果');
INSERT INTO `agencyword` VALUES (165, '软件\n');
INSERT INTO `agencyword` VALUES (166, 'store\n');
INSERT INTO `agencyword` VALUES (167, '下载\n');
INSERT INTO `agencyword` VALUES (168, '软件');
INSERT INTO `agencyword` VALUES (169, '直播\n');
INSERT INTO `agencyword` VALUES (170, 'store');
INSERT INTO `agencyword` VALUES (171, 'id\n');
INSERT INTO `agencyword` VALUES (172, '咬');
INSERT INTO `agencyword` VALUES (173, '咬人');
INSERT INTO `agencyword` VALUES (174, '两只\n');
INSERT INTO `agencyword` VALUES (175, '咬人\n');
INSERT INTO `agencyword` VALUES (176, '两只');
INSERT INTO `agencyword` VALUES (177, '狮子');
INSERT INTO `agencyword` VALUES (178, '动物\n');
INSERT INTO `agencyword` VALUES (179, '动物');
INSERT INTO `agencyword` VALUES (180, '动物园\n');
INSERT INTO `agencyword` VALUES (181, '咬\n');
INSERT INTO `agencyword` VALUES (182, '狮子\n');
INSERT INTO `agencyword` VALUES (183, '排行');
INSERT INTO `agencyword` VALUES (184, '排行榜\n');
INSERT INTO `agencyword` VALUES (185, '排行榜');
INSERT INTO `agencyword` VALUES (186, '车');
INSERT INTO `agencyword` VALUES (187, '国家');
INSERT INTO `agencyword` VALUES (188, '大全');
INSERT INTO `agencyword` VALUES (189, '鞋');
INSERT INTO `agencyword` VALUES (190, '十大');
INSERT INTO `agencyword` VALUES (191, '汽车');
INSERT INTO `agencyword` VALUES (192, '中国\n');
INSERT INTO `agencyword` VALUES (193, '手表');
INSERT INTO `agencyword` VALUES (194, '十大\n');
INSERT INTO `agencyword` VALUES (195, '中文');
INSERT INTO `agencyword` VALUES (196, '僵尸');
INSERT INTO `agencyword` VALUES (197, '大战');
INSERT INTO `agencyword` VALUES (198, '植物');
INSERT INTO `agencyword` VALUES (199, '游戏');
INSERT INTO `agencyword` VALUES (200, '安卓');
INSERT INTO `agencyword` VALUES (201, '内购');
INSERT INTO `agencyword` VALUES (202, '植物\n');
INSERT INTO `agencyword` VALUES (203, '僵尸\n');
INSERT INTO `agencyword` VALUES (204, '三国');
INSERT INTO `agencyword` VALUES (205, '中文\n');
INSERT INTO `agencyword` VALUES (206, '三国\n');

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('28079ff30aae');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `user_id` int NULL DEFAULT NULL COMMENT '用户的ID',
  `seedword_id` int NULL DEFAULT NULL COMMENT '种子关键词编号',
  `compword_id` int NULL DEFAULT NULL COMMENT '竞争关键词编号',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论的内容',
  `score` float NULL DEFAULT NULL COMMENT '所评的分数',
  `like` int NULL DEFAULT NULL COMMENT '点赞数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `compword_id`(`compword_id` ASC) USING BTREE,
  INDEX `seedword_id`(`seedword_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`compword_id`) REFERENCES `compword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`seedword_id`) REFERENCES `seedword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 1, NULL, '神中神', 10, 7, '2023-12-06 09:42:48');
INSERT INTO `comment` VALUES (2, 5, 1, 6, '你好', 9, 0, '2023-12-06 10:37:32');
INSERT INTO `comment` VALUES (4, 3, 1, 1, '999', 4, 0, '2023-12-06 11:12:37');
INSERT INTO `comment` VALUES (5, 3, 10, 50, '11', 8, 0, '2023-12-06 11:48:05');
INSERT INTO `comment` VALUES (6, 4, 1, NULL, '666', 8, 11, '2023-12-07 19:45:49');
INSERT INTO `comment` VALUES (7, 4, 1, NULL, 'hello', 4, 0, '2023-12-07 21:09:44');
INSERT INTO `comment` VALUES (8, 4, 1, NULL, '', 10, 0, '2023-12-07 21:18:36');
INSERT INTO `comment` VALUES (9, 4, 1, NULL, '', 8, 0, '2023-12-07 22:01:38');
INSERT INTO `comment` VALUES (10, 4, 1, NULL, '我们是冠军', 10, 0, '2023-12-07 22:01:51');

-- ----------------------------
-- Table structure for compword
-- ----------------------------
DROP TABLE IF EXISTS `compword`;
CREATE TABLE `compword`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '种子关键词的ID',
  `word` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '竞争关键词名称',
  `introduction` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '种子关键词的描述',
  `image` int NULL DEFAULT NULL COMMENT '竞争性关键词的图片，存的是oss对象的id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `image`(`image` ASC) USING BTREE,
  CONSTRAINT `compword_ibfk_1` FOREIGN KEY (`image`) REFERENCES `oss` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of compword
-- ----------------------------
INSERT INTO `compword` VALUES (1, '红米', '红米Note是小米公司旗下的经济型智能手机系列，以高性价比和良好的用户体验受到消费者欢迎。', 5);
INSERT INTO `compword` VALUES (2, '三星', '三星是韩国跨国公司，以生产电子设备著称，特别擅长制造高科技智能手机，其Note系列以大屏和手写笔功能受到用户喜爱。', 6);
INSERT INTO `compword` VALUES (3, '下载', '在手机官网下载最新版应用时，请确保来源正规，避免风险。', 7);
INSERT INTO `compword` VALUES (4, '魅蓝', '魅蓝是中国手机品牌魅族下的子品牌，专注于性价比，其产品线包括Note和Max系列，主打大屏幕和续航。', 8);
INSERT INTO `compword` VALUES (5, 'qq', 'QQ是一款由腾讯公司推出的即时通讯软件，支持多种平台，包括手机版。用户可以通过QQ进行文字、语音、视频沟通，还可以发表动态。', 9);
INSERT INTO `compword` VALUES (6, '苹果', '苹果公司是全球领先的科技企业，主打产品有iPhone智能手机、iPad平板电脑等。官网提供最新款式与系统版本信息。', 10);
INSERT INTO `compword` VALUES (7, '游戏', '手机游戏是可在智能手机上运行的电子游戏，为用户提供便携式娱乐体验，种类多样，从简单益智到复杂策略都有。', 11);
INSERT INTO `compword` VALUES (8, '华为', '华为是中国知名电子设备制造商，提供包括手机、手环在内的智能终端产品，详情可访问官网。其中，华为Mate和P系列手机深受用户喜爱。', 12);
INSERT INTO `compword` VALUES (9, '软件', '手机软件是安装在智能手机上的应用程序，用于扩展设备功能，如社交、娱乐、办公等。', 13);
INSERT INTO `compword` VALUES (10, '电脑', '电脑即计算机，是用于存储、处理、计算数据的电子设备，涵盖台式机、手机、平板，并可通过开机运行软件与执行任务。卡片可存储或拓展功能。', 14);
INSERT INTO `compword` VALUES (11, '王者', '王者荣耀是一款5V5多人在线竞技手机游戏，由腾讯游戏开发，以经典三路推塔玩法为核心。', 18);
INSERT INTO `compword` VALUES (12, '视频', '这个视频介绍了荣耀P9手机的一种版型，展示了其外观设计、主要功能和性能特点。', 19);
INSERT INTO `compword` VALUES (13, '玩', '荣耀手机提供丰富娱乐体验，适合游戏、社交媒体等，性能优良，用户界面友好。', 20);
INSERT INTO `compword` VALUES (14, 'oppo', 'OPPO是一家总部位于中国的消费电子与移动通讯公司，主要产品包括智能手机、智能设备及音频设备等。', 21);
INSERT INTO `compword` VALUES (15, '6s', '6S是一种质量管理工具，衍生于5S，加入了Safety（安全）成为整理、整顿、清扫、清洁、素养和安全的管理体系，旨在提升工作效率与安全。', 22);
INSERT INTO `compword` VALUES (16, 'plus', '6S指的是整理、整顿、清扫、清洁、素养、安全，是一种提升工作效率与质量的管理方法。', 26);
INSERT INTO `compword` VALUES (17, '开', '开机通常指启动设备，例如电脑开机是指打开电脑电源，使系统启动并运行。', 27);
INSERT INTO `compword` VALUES (18, '小米', '小米是中国著名的手机制造商，以性价比高的产品著称。5s是小米推出的一款智能手机型号。更多信息可访问官网。', 4);
INSERT INTO `compword` VALUES (19, '设置', '设置通常指调整设备(如手机6s、5s和电脑)的参数，以满足个性化需求，例如调整屏幕亮度、更改铃声或安装应用程序。', 29);
INSERT INTO `compword` VALUES (20, '联盟', '联盟是指一群共同参与某类活动的玩家组成的团体，他们可能因游戏中的英雄角色、皮肤收集等共同兴趣而聚集。', 33);
INSERT INTO `compword` VALUES (21, '号', '号在这里指的是赛事或比赛的具体编号或者查询系统中的一个识别代码。', 34);
INSERT INTO `compword` VALUES (22, '荣耀', '荣耀是一款多人在线战斗游戏，玩家可选择英雄，购买皮肤，参与视频赛事，通过官网了解资讯。', 35);
INSERT INTO `compword` VALUES (23, '快递', '快递查询指的是追踪物流配送过程，通过单号了解包裹实时位置和派送状态。', 36);
INSERT INTO `compword` VALUES (24, '手机', '手机是便携式通讯和娱乐设备，可用于打电话、玩游戏、拍摄视频，通过官网了解详情，插入SIM卡接入网络。', 37);
INSERT INTO `compword` VALUES (25, '钱', '钱在此指代皮肤保养方面的投资。随岁月流逝，皮肤需要细心护理，通过护肤品、护理程序或美容卡，投资于皮肤健康可以带来长久的好处。', 38);
INSERT INTO `compword` VALUES (26, '新', '皮肤是英雄在游戏中外观的可选装扮，常带有独特设计和效果，增加游戏趣味性。', 39);
INSERT INTO `compword` VALUES (27, '图片', '该图片可能展示了2016年某款游戏中的一位“英雄”角色，穿着具有特色的皮肤，手持卡牌，风格独特且具备辨识度。', 40);
INSERT INTO `compword` VALUES (28, '路由器', '路由器是连接不同网络设备的核心设备，支持有线与无线连接，实现数据传输与网络共享。', 44);
INSERT INTO `compword` VALUES (29, 'wifi', 'WiFi是一种无线网络技术，使得电脑等设备能够通过无线信号连接至互联网。', 45);
INSERT INTO `compword` VALUES (30, '赵丽颖', '赵丽颖是中国著名女演员，凭借多部电视剧如《花千骨》等作品在中國娱乐圈走红。', 46);
INSERT INTO `compword` VALUES (31, '坐姿', '坐姿走红一词指某种坐姿在网络或社交平台上流行起来，人们模仿或分享，成为一种时尚或社交趋势。', 47);
INSERT INTO `compword` VALUES (32, '版', '手机、电脑版指设备型号；游戏版指游戏版本。', 48);
INSERT INTO `compword` VALUES (33, '女保镖', '女保镖，指的是专业训练、负责个人或机构安保的女性保安人员。她们通常拥有身体格斗、危机应对等技能，在保护客户安全方面能力出众，近年来社会需求上升而走红。', 49);
INSERT INTO `compword` VALUES (34, '微微一笑', '《微微一笑很倾城》是一部改编自同名网络小说的电视剧，讲述了电竞高手肖奈与大学生贝微微通过游戏相识并坠入爱河的故事。', 50);
INSERT INTO `compword` VALUES (35, '舒心', '舒心，在这里指流行、受欢迎的意思。通常用来形容一种令人愉悦、备受推崇的事物或情绪。', 51);
INSERT INTO `compword` VALUES (36, '倾城', '《倾城》是一部情感剧，通常展现深刻的爱情故事，聚焦人物内心世界，呈现动人情感波澜。', 52);
INSERT INTO `compword` VALUES (37, '技术', '技术学院是提供职业技能教育的高等教育机构，致力于培养专业技术人才，满足社会职业需求。', 56);
INSERT INTO `compword` VALUES (38, '观看', '观看直播和在线视频是通过网络实时查看内容，无需下载，常用于教育、娱乐和新闻报道。', 57);
INSERT INTO `compword` VALUES (39, '年', '2016年的中秋节，各市举行了多种庆祝活动，家家户户团聚，共赏明月。', 58);
INSERT INTO `compword` VALUES (40, '卫视', '卫视是指卫星电视，向观众提供直播或在线节目的电视播放平台。', 59);
INSERT INTO `compword` VALUES (41, '科技', '科技在大学和学院中主要指应用科学技术培训专业人才，促进知识更新与技能发展，满足职业需求。', 60);
INSERT INTO `compword` VALUES (42, '官网', '官网通常指某大学或学院的官方网站，提供学校概况、专业介绍、招生信息与职业发展等内容。', 61);
INSERT INTO `compword` VALUES (43, '祝福', '中秋佳节，月圆人圆，愿你幸福安康，阖家欢乐。', 62);
INSERT INTO `compword` VALUES (44, '中国', '中国，具有悠久历史的国家，以丰富的文化和现代化大都市而闻名。2016年，网络技术在教育界大放异彩，中国大学通过互联网实现了知识的广泛传播。', 63);
INSERT INTO `compword` VALUES (45, '公交车', '公交车是城市集体交通工具，依照固定线路、站点行驶，方便市民沿途上下车，覆盖城市多条路线。', 67);
INSERT INTO `compword` VALUES (46, '无线', '无线，即不需电缆或导线的连接方式，依赖电磁波传输信号。常见于电话、网络等通信领域。', 68);
INSERT INTO `compword` VALUES (47, '车', '好的，号线、路指的往往是交通网络中的公交线路或者地铁线路，它们是城市交通系统中的重要组成部分，负责连接不同区域，为市民提供便捷的出行方式。', 69);
INSERT INTO `compword` VALUES (48, '查询', '查询线、号、路、线路通常指的是交通、通信或者分布的路径信息，如公交线路、电话号码、道路等。', 70);
INSERT INTO `compword` VALUES (49, '上海', '上海，中国大都市，拥有庞大复杂的地铁网络，覆盖众多号线与站点，路线纵横，线路图指引市民与游客出行。', 71);
INSERT INTO `compword` VALUES (50, '火车', '火车是一种铁路运输工具，连接不同城市，如北京至广州，方便人们快速旅行。主要依靠铁轨行驶，设有多个车站停靠。', 72);
INSERT INTO `compword` VALUES (51, '公交', '公交是公共交通的简称，由多条线路组成，设有固定的站点供人们上下车，是城市常见的交通方式。', 73);
INSERT INTO `compword` VALUES (52, '家常', '家常指的是普通家庭常见的烹饪方法，包括炒、炖等。比如，炒鸡翅是将鸡翅加热油快速翻炒；炖鸡翅则是将鸡翅与调料长时间小火煨煮至入味。', 77);
INSERT INTO `compword` VALUES (53, '好吃', '\"好吃\"指的是食物美味，例如，精心做的蛋炒饭香喷喷，火候适中的炖肉软烂鲜美，还有弹牙的手工拉面滑而不腻。', 78);
INSERT INTO `compword` VALUES (54, '药', '药物是用来治疗、预防疾病或调整生理功能的物质，通常经口服、注射等方式使用。', 79);
INSERT INTO `compword` VALUES (55, '鱼', '鱼是烹饪中常见的食材，通过烤、煮、炸等多种做法可以制作出美味佳肴。不同的烹饪技法能够使鱼肉的风味和口感有所不同。', 80);
INSERT INTO `compword` VALUES (56, '排骨', '排骨是猪肋骨部位的肉，常用炖的方式烹饪，肉质鲜美，汤汁浓郁。', 81);
INSERT INTO `compword` VALUES (57, '土豆', '土豆，多年生草本植物, 圆形或椭圆形。可作为多种菜肴食材，经典做法包括炒土豆丝、土豆炖肉等。', 82);
INSERT INTO `compword` VALUES (58, '肉', '肉，在这里指的是经过切割加工后用于炒制的动物性食材，如猪肉、牛肉、羊肉等，通常富含蛋白质和脂肪。', 83);
INSERT INTO `compword` VALUES (59, '豆腐', '豆腐是由大豆磨浆、加入凝固剂后形成的食品，可用多种做法烹制，包括炖，口感柔软，营养丰富。', 84);
INSERT INTO `compword` VALUES (60, '孕妇', '孕妇是指怀有胎儿的女性。在饮食方面，孕妇应注意营养均衡，适量喝汤可以补充水分和营养。', 85);
INSERT INTO `compword` VALUES (61, '约', '奥运，即奥林匹克运动会，是全球体育赛事，包括夏季奥运会和冬季奥运会，由国际奥委会组织。', 89);
INSERT INTO `compword` VALUES (62, '2016', '2016年里约奥运会吸引全球目光，成就精彩瞬间，各种图片和视频记录下了运动员的辛勤与荣耀。', 90);
INSERT INTO `compword` VALUES (63, '金牌', '金牌是奥运会中给予项目第一名的最高奖牌，象征体育竞赛的极致荣耀。', 91);
INSERT INTO `compword` VALUES (64, '斗殴', '斗殴是在街头发生的肢体冲突，通常涉及两个或多个参与者，由争执、敌对情绪或其他社会因素触发。', 92);
INSERT INTO `compword` VALUES (65, '德国', '德国在街头文化中，通常指涂鸦艺术、街舞、极限运动等元素，体现活力与创意。', 93);
INSERT INTO `compword` VALUES (66, '难民', '街头难民通常指无家可归者，他们因各种原因生活在城市街道上，没有固定住所，可能面临食物、安全和健康等基本生活需求的缺乏。', 94);
INSERT INTO `compword` VALUES (67, '金牌榜', '金牌榜指的是奥运会上，各参赛国家和地区赢得金牌数量的排行榜。', 95);
INSERT INTO `compword` VALUES (68, '女排', '女排是女子排球运动的简称，是奥运会中的重要比赛项目，吸引全球粉丝关注，体现团队协作与竞技水平。', 96);
INSERT INTO `compword` VALUES (69, '列车', '列车时刻表是指示列车运行时间、出发和到达车站的详细时间表，帮助乘客规划行程。', 100);
INSERT INTO `compword` VALUES (70, '高铁', '高铁，即高速铁路，是指速度超过250公里/小时的铁路运输方式。车站是乘客上下车的地点，时刻表显示列车出发和到达时间。', 101);
INSERT INTO `compword` VALUES (71, '次列车', '次列车是日本铁路时刻表中常见的用语，指的是接下来即将到达车站的一班列车。', 102);
INSERT INTO `compword` VALUES (72, '北京', '北京站作为中国重要的铁路枢纽，提供全国范围内的时刻表查询服务。多家有限公司总部设于此，是中国商业与交通的关键节点。', 103);
INSERT INTO `compword` VALUES (73, '地铁', '地铁指的是城市轨道交通系统，覆盖面广，便捷快速。\'站\'是乘客上下车的地点，分布于城市不同区域。', 66);
INSERT INTO `compword` VALUES (74, '动车', '动车即动车组，是一种高速铁路列车，具有电力推进功能，可依据时刻表规律运行，快速、舒适、准时。', 105);
INSERT INTO `compword` VALUES (75, '机场', '机场是飞机起降和旅客、货物转运的场所，设有航站楼，提供航班时刻表信息服务。', 106);
INSERT INTO `compword` VALUES (76, '大学', '大学是教育机构，侧重培养高素质学生；学校提供多样课程。新生适应教育环境，可访问官网获取信息。', 110);
INSERT INTO `compword` VALUES (77, '英语', '英语是使用广泛的语言，高中生通常在第一年开始学习新的英语知识。', 111);
INSERT INTO `compword` VALUES (78, '小学', '实验小学通常是与高等教育机构合作，以探索和应用新的教学方法和教育理念，提供更高质量教育的基础教育学校。', 112);
INSERT INTO `compword` VALUES (79, '月', '月是地球的唯一自然卫星，绕地球公转，影响潮汐，2016年新月标志着那年的一个月开始。', 113);
INSERT INTO `compword` VALUES (80, '开学', '开学指学校教育机构新学期开始，学生回归校园，继续接受教育培训的时刻。例如2016年第一学期开学通常在春季。', 114);
INSERT INTO `compword` VALUES (81, '级', '级在这里指的是年级，通常用于教育体系中，描述学生的学习阶段。', 115);
INSERT INTO `compword` VALUES (82, '作文', '作文是指用一定的文字组织语句，表达作者观点、情感或描述事物的文学形式。高中第一年的学生经常会被要求写作文，锻炼写作能力和思维表达。', 116);
INSERT INTO `compword` VALUES (83, '忘', '在密码学中，\"忘\"通常指忘记密码，是安全风险，需通过设定复杂密码并定期更换，使用密码管理工具等方法预防。', 120);
INSERT INTO `compword` VALUES (84, '机', '电脑是处理信息的电子设备，包括硬件和软件，执行数据输入、处理、存储和输出功能。', 121);
INSERT INTO `compword` VALUES (85, '改', '改密码的过程通常包含验证身份、输入当前密码、设置新密码以及确认新密码四个步骤。', 122);
INSERT INTO `compword` VALUES (86, '网络', '网络是由多个计算机设备通过电子通信线路相连，实现数据交换和资源共享的系统。', 43);
INSERT INTO `compword` VALUES (87, '热', '热敷是将温度较高的物品（如热水袋、暖宝宝）贴于身体某部位，以提高该部位血液循环，缓解疼痛或肌肉紧张。', 127);
INSERT INTO `compword` VALUES (88, '好处', '敷面膜后洗脸有助于清洁毛孔，促进肌肤吸收营养，提亮肤色，令面部肌肤更显光滑细腻。', 128);
INSERT INTO `compword` VALUES (89, '时间', '时间是日夜更替、季节交替的连续过程，它与敷面膜、安排睡眠有关时长和效果息息相关。', 129);
INSERT INTO `compword` VALUES (90, '护肤品', '护肤品用于日常保养, 补水产品能深层滋养肌肤, 保持水分平衡, 提升肤质光泽。常见形式有面霜、精华、喷雾等。', 130);
INSERT INTO `compword` VALUES (91, '长', '脸的长度通常指从额头最高点到下巴最低点的直线距离。', 131);
INSERT INTO `compword` VALUES (92, '多久', '敷面膜约15-20分钟，喝水建议每天8杯左右，洗手至少20秒，完事取决于具体情况，洗脸一般需要1-2分钟。', 132);
INSERT INTO `compword` VALUES (93, '吃', '\"吃\"在这里不是指摄取食物，而是代指水分摄取和充足的睡眠，对身体必需而言，相当摄取与休息。', 133);
INSERT INTO `compword` VALUES (94, '效果', '敷面膜可以有效补水，提升肌肤保湿度，使肌肤水润光滑。', 134);
INSERT INTO `compword` VALUES (95, '正确', '正确洗脸方法：用温水湿面，取适量洁面乳轻揉打圈，冲洗干净后拍干。', 135);
INSERT INTO `compword` VALUES (96, '保湿', '保湿即补水，通过使用护肤品为皮肤提供水分，锁住水分，使皮肤持续润泽。', 136);
INSERT INTO `compword` VALUES (97, 'vip', 'VIP账号指的是在腾讯、爱奇艺等视频平台上购买的高级会员服务，用户通过共享这些账号可以享受更多的专属内容和特权。', 140);
INSERT INTO `compword` VALUES (98, '阅读', '阅读是获取信息和知识的活动，可以通过书籍、文章等形式进行，且很多资源可以免费获取。', 141);
INSERT INTO `compword` VALUES (99, '云', '云是基于网络的资源共享平台，用户可以通过账号访问存储、计算等服务。', 142);
INSERT INTO `compword` VALUES (100, '百度', '百度是中国领先的互联网搜索公司，提供基于账号的个性化服务，支持共享信息和资源。', 143);
INSERT INTO `compword` VALUES (101, '全文', '本文提供关于“免费”相关的信息，重在介绍免费资源的利与弊。', 144);
INSERT INTO `compword` VALUES (102, '注册', '注册即创建账号，需要提供用户名、密码等信息，完成后方可使用特定服务或应用。', 145);
INSERT INTO `compword` VALUES (103, '微信', '微信是一款社交支付应用，通过手机绑定号码，可以实现朋友互转钱款、支付消费等功能。', 149);
INSERT INTO `compword` VALUES (104, '手机号', '手机号是一串数字组合，用于识别手机用户，常与个人信息绑定，用于通信及应用登录等。', 150);
INSERT INTO `compword` VALUES (105, '信用卡', '信用卡是银行发行的支付工具，用户在办理后可绑定至支付宝等平台，方便日常消费与账单管理。', 151);
INSERT INTO `compword` VALUES (106, '解除', '解除绑定通常指取消某物或某服务之间的关联。操作简单，通常需进入设置，找到绑定选项，选择解除即可。', 152);
INSERT INTO `compword` VALUES (107, '身份证', '身份证是公民法定身份证明，通过办理可以获得独一无二的身份号码，用以身份认证和日常生活中的各种绑定使用。', 153);
INSERT INTO `compword` VALUES (108, '账号', '账号是用户在平台上的身份识别，用于登录和接收服务。绑定账号可关联支付宝等支付工具，简化交易流程。', 154);
INSERT INTO `compword` VALUES (109, '淘宝', '淘宝是中国领先的电商平台，用户可绑定支付宝进行安全支付，享受便捷的购物体验。', 155);
INSERT INTO `compword` VALUES (110, '换', '“绑定”通常指将个人信息如手机号码、银行卡等与特定账户或服务连接，以实现资金操作等功能。', 156);
INSERT INTO `compword` VALUES (111, '开机', '开机指启动电脑，通电后按电源键，等待系统自检、加载至可操作状态。联想、华硕等品牌也遵循此流程。', 160);
INSERT INTO `compword` VALUES (112, '系统', '系统通常指操作系统，是电脑硬件运作的基础软件环境。联想、华硕等品牌生产搭载系统的电脑硬盘产品。', 161);
INSERT INTO `compword` VALUES (113, '连接', '连接通常指建立电子设备之间的联系，以实现数据或电能的传输。例如，电脑与外设通过数据线连接交换信息。', 162);
INSERT INTO `compword` VALUES (114, '显示', '显示指的是电脑屏幕上呈现信息的方式，包括文字、图像等内容的可视化。', 163);
INSERT INTO `compword` VALUES (115, 'txt', 'TXT是一种文本文件格式，可用于下载和在线浏览，通常含有未经格式化的文本内容。', 167);
INSERT INTO `compword` VALUES (116, 'itunes', 'iTunes Store是苹果公司的在线音乐、视频和应用程序商店，提供多媒体购买和下载服务。', 168);
INSERT INTO `compword` VALUES (117, '全集', '全集通常指某个作者的全部作品合集或某系列作品的完整集合。下载全集意味着通过互联网获取这些作品集的电子版本。', 169);
INSERT INTO `compword` VALUES (118, '小说', '小说这里指通过网络下载的软件，它能帮助用户从网上获取文学作品。', 170);
INSERT INTO `compword` VALUES (119, '免费', '免费下载软件指无需支付费用便可从互联网上获取软件程序的行为。', 171);
INSERT INTO `compword` VALUES (120, '狗', '狗是忠诚的伴侣动物，具备保护性，可能会因防卫或恐惧而咬人。饲养两只时需正确训练以避免攻击行为。', 175);
INSERT INTO `compword` VALUES (121, '蚊子', '蚊子是一类小型飞行昆虫，以吸食血液为生，通常通过咬人或动物来获得食物，其叮咬可能导致瘙痒和传播疾病。', 176);
INSERT INTO `compword` VALUES (122, '疯狂', '疯狂在此指动物园中异常行为的动物，可能因受困、疾病或应激反应导致非正常状态表现。', 177);
INSERT INTO `compword` VALUES (123, '梦见', '梦见被人或生物咬往往象征压力、恐惧或内心深处的冲突。两只动物咬人可能表示双重压力或冲突。', 178);
INSERT INTO `compword` VALUES (124, '虫', '虫子是指具有多样形态和生态的节肢动物，包括昆虫、蜘蛛和多足虫等。其中一些种类会通过咬来捕食、防御或是取食植物汁液。', 179);
INSERT INTO `compword` VALUES (125, '蛇', '蛇是爬行动物，能够通过咬来捕食或自卫，有的种类带毒。蛇与狮子无直接关联，但在文化象征中常代表隐秘和危险。', 180);
INSERT INTO `compword` VALUES (126, '猫', '猫是宠物，有时两只猫会因领地等原因互相咬，偶尔也可能因惊吓或疼痛咬人。', 181);
INSERT INTO `compword` VALUES (127, '虫子', '虫子是指广义上可咬人的小型节肢动物，如蚊、蚤。两只虫子可指它们成对出现。', 182);
INSERT INTO `compword` VALUES (128, '蟑螂', '蟑螂是昆虫纲等翅目的一种，多生活在温暖潮湿处。一般不咬人，但可能传播疾病。', 183);
INSERT INTO `compword` VALUES (129, '前十名', '前十名通常指某个领域或活动中排名靠前的最优秀的十个个体或团体，可涉及体育、教育、音乐等多个领域。具体含义依排行榜的类别而异。', 187);
INSERT INTO `compword` VALUES (130, '世界', '世界排行榜通过数据反映不同国家在各领域的相对地位，如经济、教育等，便于比较和了解国际动态。', 188);
INSERT INTO `compword` VALUES (131, '电影', '电影排行榜或大全通常列出流行或经典电影，依据不同标准如票房、评分等排序，为观众提供参考。', 189);
INSERT INTO `compword` VALUES (132, '10', '十大排行榜总结了特定领域内最突出的十个项目或人物，是衡量成功、流行或影响力的重要指标。', 190);
INSERT INTO `compword` VALUES (133, '销量', '销量排行榜展示了产品或品牌在市场上的销售成绩，通常以名次呈现，根据销售额或销售量进行排序，反映消费者偏好和市场趋势。', 191);
INSERT INTO `compword` VALUES (134, '大全', '《植物大战僵尸》游戏大全，含中文版及内购解锁内容，囊括策略搭配与游戏攻略。', 195);
INSERT INTO `compword` VALUES (135, '歌', '\"歌\"指的是音乐作品，通常包括旋律和词汇，通过声音艺术形式传达情感、故事或想法。', 196);

-- ----------------------------
-- Table structure for like_comment_user
-- ----------------------------
DROP TABLE IF EXISTS `like_comment_user`;
CREATE TABLE `like_comment_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `comment_id` int NULL DEFAULT NULL COMMENT '用户所点赞的评论的ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户的ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_id`(`comment_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `like_comment_user_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `like_comment_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of like_comment_user
-- ----------------------------
INSERT INTO `like_comment_user` VALUES (4, 1, 4);

-- ----------------------------
-- Table structure for oss
-- ----------------------------
DROP TABLE IF EXISTS `oss`;
CREATE TABLE `oss`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Oss对象的ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Oss的路径',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Oss对象的详细信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oss
-- ----------------------------
INSERT INTO `oss` VALUES (1, 'default.png', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/e744e4c2-9385-11ee-a9e0-2c8db1917c2a.png', '缺省值', '2023-12-05 23:50:14');
INSERT INTO `oss` VALUES (2, 'seedword_小米.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/7d5f531f-9386-11ee-ac83-2c8db1917c2a.png', '这是种子关键词小米的竞争性关键词词comp度对比图', '2023-12-05 23:54:07');
INSERT INTO `oss` VALUES (3, 'wordcloud_小米.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/80d13664-9386-11ee-97ea-2c8db1917c2a.png', '这是种子关键词小米的词云图', '2023-12-05 23:54:07');
INSERT INTO `oss` VALUES (4, '小米.jpg', 'https://source.unsplash.com/1280x720/?xiaomi,phone,note,official,edition,band,max,porridge,unlock,card', '这是种子关键词小米的图片', '2023-12-05 23:54:15');
INSERT INTO `oss` VALUES (5, '红米.jpg', 'https://source.unsplash.com/1280x720/?xiaomi-redmi-note', '这是竞争性关键词红米的图片', '2023-12-05 23:54:26');
INSERT INTO `oss` VALUES (6, '三星.jpg', 'https://source.unsplash.com/1280x720/?Samsung,phone,Note', '这是竞争性关键词三星的图片', '2023-12-05 23:54:38');
INSERT INTO `oss` VALUES (7, '下载.jpg', 'https://source.unsplash.com/1280x720/?technology', '这是竞争性关键词下载的图片', '2023-12-05 23:54:50');
INSERT INTO `oss` VALUES (8, '魅蓝.jpg', 'https://source.unsplash.com/1280x720/?blue,note,max', '这是竞争性关键词魅蓝的图片', '2023-12-05 23:54:58');
INSERT INTO `oss` VALUES (9, 'qq.jpg', 'https://source.unsplash.com/1280x720/?smartphone', '这是竞争性关键词qq的图片', '2023-12-05 23:55:08');
INSERT INTO `oss` VALUES (10, '苹果.jpg', 'https://source.unsplash.com/1280x720/?apple,device,official,version', '这是竞争性关键词苹果的图片', '2023-12-05 23:55:19');
INSERT INTO `oss` VALUES (11, '游戏.jpg', 'https://source.unsplash.com/1280x720/?gaming,mobile', '这是竞争性关键词游戏的图片', '2023-12-05 23:55:26');
INSERT INTO `oss` VALUES (12, '华为.jpg', 'https://source.unsplash.com/1280x720/?Huawei,phone,note,official,band,max', '这是竞争性关键词华为的图片', '2023-12-05 23:55:35');
INSERT INTO `oss` VALUES (13, '软件.jpg', 'https://source.unsplash.com/1280x720/?software,computer,smartphone', '这是竞争性关键词软件的图片', '2023-12-05 23:55:46');
INSERT INTO `oss` VALUES (14, '电脑.jpg', 'https://source.unsplash.com/1280x720/?computer', '这是竞争性关键词电脑的图片', '2023-12-05 23:55:54');
INSERT INTO `oss` VALUES (15, 'seedword_华为.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/74ee9f08-938b-11ee-b522-2c8db1917c2a.png', '这是种子关键词华为的竞争性关键词词comp度对比图', '2023-12-06 00:29:32');
INSERT INTO `oss` VALUES (16, 'wordcloud_华为.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/769ff469-938b-11ee-8f8e-2c8db1917c2a.png', '这是种子关键词华为的词云图', '2023-12-06 00:29:32');
INSERT INTO `oss` VALUES (17, '华为.jpg', 'https://source.unsplash.com/1280x720/?huawei,phones', '这是种子关键词华为的图片', '2023-12-06 00:29:35');
INSERT INTO `oss` VALUES (18, '王者.jpg', 'https://source.unsplash.com/1280x720/?glory', '这是竞争性关键词王者的图片', '2023-12-06 00:29:42');
INSERT INTO `oss` VALUES (19, '视频.jpg', 'https://source.unsplash.com/1280x720/?video,camera,honor,smartphone,p9,edition', '这是竞争性关键词视频的图片', '2023-12-06 00:29:54');
INSERT INTO `oss` VALUES (20, '玩.jpg', 'https://source.unsplash.com/1280x720/?gaming,phone,honor', '这是竞争性关键词玩的图片', '2023-12-06 00:30:05');
INSERT INTO `oss` VALUES (21, 'oppo.jpg', 'https://source.unsplash.com/1280x720/?oppo+plus', '这是竞争性关键词oppo的图片', '2023-12-06 00:30:15');
INSERT INTO `oss` VALUES (22, '6s.jpg', 'https://source.unsplash.com/1280x720/?plus', '这是竞争性关键词6s的图片', '2023-12-06 00:30:22');
INSERT INTO `oss` VALUES (23, 'seedword_苹果.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/157a8f13-938c-11ee-abaf-2c8db1917c2a.png', '这是种子关键词苹果的竞争性关键词词comp度对比图', '2023-12-06 00:33:58');
INSERT INTO `oss` VALUES (24, 'wordcloud_苹果.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/164c6496-938c-11ee-945d-2c8db1917c2a.png', '这是种子关键词苹果的词云图', '2023-12-06 00:33:58');
INSERT INTO `oss` VALUES (25, '苹果.jpg', 'https://source.unsplash.com/1280x720/?apple,technology,iphone,6s,money,model,official,6splus,5s,computer,photo', '这是种子关键词苹果的图片', '2023-12-06 00:34:04');
INSERT INTO `oss` VALUES (26, 'plus.jpg', 'https://source.unsplash.com/1280x720/?iphone-6s-plus', '这是竞争性关键词plus的图片', '2023-12-06 00:34:14');
INSERT INTO `oss` VALUES (27, '开.jpg', 'https://source.unsplash.com/1280x720/?computer', '这是竞争性关键词开的图片', '2023-12-06 00:34:28');
INSERT INTO `oss` VALUES (28, '小米.jpg', 'https://source.unsplash.com/1280x720/?xiaomi,phone,official,5s', '这是竞争性关键词小米的图片', '2023-12-06 00:34:34');
INSERT INTO `oss` VALUES (29, '设置.jpg', 'https://source.unsplash.com/1280x720/?technology,phone,6s,5s,computer', '这是竞争性关键词设置的图片', '2023-12-06 00:34:47');
INSERT INTO `oss` VALUES (30, 'seedword_lol.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/98e17701-938c-11ee-9f14-2c8db1917c2a.png', '这是种子关键词lol的竞争性关键词词comp度对比图', '2023-12-06 00:37:39');
INSERT INTO `oss` VALUES (31, 'wordcloud_lol.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/997ba96f-938c-11ee-b61f-2c8db1917c2a.png', '这是种子关键词lol的词云图', '2023-12-06 00:37:40');
INSERT INTO `oss` VALUES (32, 'lol.jpg', 'https://source.unsplash.com/1280x720/?skins,heroes,game,video,competition,search,official,year,2016,card', '这是种子关键词lol的图片', '2023-12-06 00:37:45');
INSERT INTO `oss` VALUES (33, '联盟.jpg', 'https://source.unsplash.com/1280x720/?league,skins,heroes,gaming', '这是竞争性关键词联盟的图片', '2023-12-06 00:37:53');
INSERT INTO `oss` VALUES (34, '号.jpg', 'https://source.unsplash.com/1280x720/?race,competition', '这是竞争性关键词号的图片', '2023-12-06 00:38:03');
INSERT INTO `oss` VALUES (35, '荣耀.jpg', 'https://source.unsplash.com/1280x720/?gaming,hero,play,competition,official', '这是竞争性关键词荣耀的图片', '2023-12-06 00:38:15');
INSERT INTO `oss` VALUES (36, '快递.jpg', 'https://source.unsplash.com/1280x720/?courier', '这是竞争性关键词快递的图片', '2023-12-06 00:38:24');
INSERT INTO `oss` VALUES (37, '手机.jpg', 'https://source.unsplash.com/1280x720/?smartphone,gaming,official,card', '这是竞争性关键词手机的图片', '2023-12-06 00:38:33');
INSERT INTO `oss` VALUES (38, '钱.jpg', 'https://source.unsplash.com/1280x720/?skin,year,card', '这是竞争性关键词钱的图片', '2023-12-06 00:38:42');
INSERT INTO `oss` VALUES (39, '新.jpg', 'https://source.unsplash.com/1280x720/?skin,hero', '这是竞争性关键词新的图片', '2023-12-06 00:38:57');
INSERT INTO `oss` VALUES (40, '图片.jpg', 'https://source.unsplash.com/1280x720/?skin,hero,2016,card', '这是竞争性关键词图片的图片', '2023-12-06 00:39:05');
INSERT INTO `oss` VALUES (41, 'seedword_网络.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/0f40a7c7-938d-11ee-a7d3-2c8db1917c2a.png', '这是种子关键词网络的竞争性关键词词comp度对比图', '2023-12-06 00:41:00');
INSERT INTO `oss` VALUES (42, 'wordcloud_网络.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/10f00ef8-938d-11ee-a2cb-2c8db1917c2a.png', '这是种子关键词网络的词云图', '2023-12-06 00:41:00');
INSERT INTO `oss` VALUES (43, '网络.jpg', 'https://source.unsplash.com/1280x720/?network,connection,cellphone,wireless,drama,computer,tv,viral,hug,grandmother,gaming', '这是种子关键词网络的图片', '2023-12-06 00:41:04');
INSERT INTO `oss` VALUES (44, '路由器.jpg', 'https://source.unsplash.com/1280x720/?router,connection,wireless', '这是竞争性关键词路由器的图片', '2023-12-06 00:41:13');
INSERT INTO `oss` VALUES (45, 'wifi.jpg', 'https://source.unsplash.com/1280x720/?connection,wireless,computer', '这是竞争性关键词wifi的图片', '2023-12-06 00:41:21');
INSERT INTO `oss` VALUES (46, '赵丽颖.jpg', 'https://source.unsplash.com/1280x720/?rising-star', '这是竞争性关键词赵丽颖的图片', '2023-12-06 00:41:28');
INSERT INTO `oss` VALUES (47, '坐姿.jpg', 'https://source.unsplash.com/1280x720/?sitting', '这是竞争性关键词坐姿的图片', '2023-12-06 00:41:37');
INSERT INTO `oss` VALUES (48, '版.jpg', 'https://source.unsplash.com/1280x720/?smartphone,computer,gaming', '这是竞争性关键词版的图片', '2023-12-06 00:41:46');
INSERT INTO `oss` VALUES (49, '女保镖.jpg', 'https://source.unsplash.com/1280x720/?female-bodyguard', '这是竞争性关键词女保镖的图片', '2023-12-06 00:41:51');
INSERT INTO `oss` VALUES (50, '微微一笑.jpg', 'https://source.unsplash.com/1280x720/?smile,drama,tv,game', '这是竞争性关键词微微一笑的图片', '2023-12-06 00:42:05');
INSERT INTO `oss` VALUES (51, '舒心.jpg', 'https://source.unsplash.com/1280x720/?comforting,relaxing', '这是竞争性关键词舒心的图片', '2023-12-06 00:42:17');
INSERT INTO `oss` VALUES (52, '倾城.jpg', 'https://source.unsplash.com/1280x720/?drama,TV-show', '这是竞争性关键词倾城的图片', '2023-12-06 00:42:37');
INSERT INTO `oss` VALUES (53, 'seedword_湖南.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/a94c4598-938d-11ee-93ca-2c8db1917c2a.png', '这是种子关键词湖南的竞争性关键词词comp度对比图', '2023-12-06 00:45:19');
INSERT INTO `oss` VALUES (54, 'wordcloud_湖南.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/aa893191-938d-11ee-90a5-2c8db1917c2a.png', '这是种子关键词湖南的词云图', '2023-12-06 00:45:19');
INSERT INTO `oss` VALUES (55, '湖南.jpg', 'https://source.unsplash.com/1280x720/?Hunan-University', '这是种子关键词湖南的图片', '2023-12-06 00:45:22');
INSERT INTO `oss` VALUES (56, '技术.jpg', 'https://source.unsplash.com/1280x720/?technology,academy,profession', '这是竞争性关键词技术的图片', '2023-12-06 00:45:29');
INSERT INTO `oss` VALUES (57, '观看.jpg', 'https://source.unsplash.com/1280x720/?streaming,live,online', '这是竞争性关键词观看的图片', '2023-12-06 00:45:37');
INSERT INTO `oss` VALUES (58, '年.jpg', 'https://source.unsplash.com/1280x720/?2016,Mid-Autumn,Festival,City', '这是竞争性关键词年的图片', '2023-12-06 00:45:48');
INSERT INTO `oss` VALUES (59, '卫视.jpg', 'https://source.unsplash.com/1280x720/?broadcast,live,television-program', '这是竞争性关键词卫视的图片', '2023-12-06 00:45:58');
INSERT INTO `oss` VALUES (60, '科技.jpg', 'https://source.unsplash.com/1280x720/?technology,university,college,career', '这是竞争性关键词科技的图片', '2023-12-06 00:46:04');
INSERT INTO `oss` VALUES (61, '官网.jpg', 'https://source.unsplash.com/1280x720/?university,college,career', '这是竞争性关键词官网的图片', '2023-12-06 00:46:14');
INSERT INTO `oss` VALUES (62, '祝福.jpg', 'https://source.unsplash.com/1280x720/?mid-autumn-festival', '这是竞争性关键词祝福的图片', '2023-12-06 00:46:24');
INSERT INTO `oss` VALUES (63, '中国.jpg', 'https://source.unsplash.com/1280x720/?China,University,2016,Internet,City', '这是竞争性关键词中国的图片', '2023-12-06 00:46:32');
INSERT INTO `oss` VALUES (64, 'seedword_地铁.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/3c4c60df-938e-11ee-99d4-2c8db1917c2a.png', '这是种子关键词地铁的竞争性关键词词comp度对比图', '2023-12-06 00:49:27');
INSERT INTO `oss` VALUES (65, 'wordcloud_地铁.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/3e10cb2f-938e-11ee-9b59-2c8db1917c2a.png', '这是种子关键词地铁的词云图', '2023-12-06 00:49:27');
INSERT INTO `oss` VALUES (66, '地铁.jpg', 'https://source.unsplash.com/1280x720/?subway', '这是种子关键词地铁的图片', '2023-12-06 00:49:29');
INSERT INTO `oss` VALUES (67, '公交车.jpg', 'https://source.unsplash.com/1280x720/?bus,line,station,route', '这是竞争性关键词公交车的图片', '2023-12-06 00:49:36');
INSERT INTO `oss` VALUES (68, '无线.jpg', 'https://source.unsplash.com/1280x720/?wireless', '这是竞争性关键词无线的图片', '2023-12-06 00:49:47');
INSERT INTO `oss` VALUES (69, '车.jpg', 'https://source.unsplash.com/1280x720/?car,road', '这是竞争性关键词车的图片', '2023-12-06 00:49:57');
INSERT INTO `oss` VALUES (70, '查询.jpg', 'https://source.unsplash.com/1280x720/?线,号,路,线路', '这是竞争性关键词查询的图片', '2023-12-06 00:50:06');
INSERT INTO `oss` VALUES (71, '上海.jpg', 'https://source.unsplash.com/1280x720/?Shanghai,subway,line,station,road,map', '这是竞争性关键词上海的图片', '2023-12-06 00:50:16');
INSERT INTO `oss` VALUES (72, '火车.jpg', 'https://source.unsplash.com/1280x720/?train,station,beijing,guangzhou', '这是竞争性关键词火车的图片', '2023-12-06 00:50:29');
INSERT INTO `oss` VALUES (73, '公交.jpg', 'https://source.unsplash.com/1280x720/?bus,station,road', '这是竞争性关键词公交的图片', '2023-12-06 00:50:39');
INSERT INTO `oss` VALUES (74, 'seedword_鸡.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/b9eb91cf-938e-11ee-bfca-2c8db1917c2a.png', '这是种子关键词鸡的竞争性关键词词comp度对比图', '2023-12-06 00:53:06');
INSERT INTO `oss` VALUES (75, 'wordcloud_鸡.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/bafd14a5-938e-11ee-a1ed-2c8db1917c2a.png', '这是种子关键词鸡的词云图', '2023-12-06 00:53:06');
INSERT INTO `oss` VALUES (76, '鸡.jpg', 'https://source.unsplash.com/1280x720/?chicken', '这是种子关键词鸡的图片', '2023-12-06 00:53:10');
INSERT INTO `oss` VALUES (77, '家常.jpg', 'https://source.unsplash.com/1280x720/?home-cooking,recipe,stir-fry,wings,stewed', '这是竞争性关键词家常的图片', '2023-12-06 00:53:20');
INSERT INTO `oss` VALUES (78, '好吃.jpg', 'https://source.unsplash.com/1280x720/?delicious,cook,stir,fry,stew,noodles', '这是竞争性关键词好吃的图片', '2023-12-06 00:53:36');
INSERT INTO `oss` VALUES (79, '药.jpg', 'https://source.unsplash.com/1280x720/?medicine,pills', '这是竞争性关键词药的图片', '2023-12-06 00:53:46');
INSERT INTO `oss` VALUES (80, '鱼.jpg', 'https://source.unsplash.com/1280x720/?fish-recipe', '这是竞争性关键词鱼的图片', '2023-12-06 00:53:55');
INSERT INTO `oss` VALUES (81, '排骨.jpg', 'https://source.unsplash.com/1280x720/?ribs,cooking,stew', '这是竞争性关键词排骨的图片', '2023-12-06 00:54:05');
INSERT INTO `oss` VALUES (82, '土豆.jpg', 'https://source.unsplash.com/1280x720/?potato,cooking,fry,stew', '这是竞争性关键词土豆的图片', '2023-12-06 00:54:14');
INSERT INTO `oss` VALUES (83, '肉.jpg', 'https://source.unsplash.com/1280x720/?fried-meat', '这是竞争性关键词肉的图片', '2023-12-06 00:54:24');
INSERT INTO `oss` VALUES (84, '豆腐.jpg', 'https://source.unsplash.com/1280x720/?tofu,cooking,stew', '这是竞争性关键词豆腐的图片', '2023-12-06 00:54:33');
INSERT INTO `oss` VALUES (85, '孕妇.jpg', 'https://source.unsplash.com/1280x720/?pregnant,eating,soup', '这是竞争性关键词孕妇的图片', '2023-12-06 00:54:43');
INSERT INTO `oss` VALUES (86, 'seedword_篮球.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/72489130-938f-11ee-bebd-2c8db1917c2a.png', '这是种子关键词篮球的竞争性关键词词comp度对比图', '2023-12-06 00:58:02');
INSERT INTO `oss` VALUES (87, 'wordcloud_篮球.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/731214df-938f-11ee-be07-2c8db1917c2a.png', '这是种子关键词篮球的词云图', '2023-12-06 00:58:03');
INSERT INTO `oss` VALUES (88, '篮球.jpg', 'https://source.unsplash.com/1280x720/?basketball', '这是种子关键词篮球的图片', '2023-12-06 00:58:06');
INSERT INTO `oss` VALUES (89, '约.jpg', 'https://source.unsplash.com/1280x720/?Olympics', '这是竞争性关键词约的图片', '2023-12-06 00:58:20');
INSERT INTO `oss` VALUES (90, '2016.jpg', 'https://source.unsplash.com/1280x720/?Rio-Olympics-2016', '这是竞争性关键词2016的图片', '2023-12-06 00:58:32');
INSERT INTO `oss` VALUES (91, '金牌.jpg', 'https://source.unsplash.com/1280x720/?Olympics,Gold-Medal', '这是竞争性关键词金牌的图片', '2023-12-06 00:58:41');
INSERT INTO `oss` VALUES (92, '斗殴.jpg', 'https://source.unsplash.com/1280x720/?street-fight', '这是竞争性关键词斗殴的图片', '2023-12-06 00:58:50');
INSERT INTO `oss` VALUES (93, '德国.jpg', 'https://source.unsplash.com/1280x720/?Germany,Street', '这是竞争性关键词德国的图片', '2023-12-06 00:59:07');
INSERT INTO `oss` VALUES (94, '难民.jpg', 'https://source.unsplash.com/1280x720/?refugee,street', '这是竞争性关键词难民的图片', '2023-12-06 00:59:14');
INSERT INTO `oss` VALUES (95, '金牌榜.jpg', 'https://source.unsplash.com/1280x720/?olympics,gold-medal', '这是竞争性关键词金牌榜的图片', '2023-12-06 00:59:25');
INSERT INTO `oss` VALUES (96, '女排.jpg', 'https://source.unsplash.com/1280x720/?olympics,womens-volleyball', '这是竞争性关键词女排的图片', '2023-12-06 00:59:32');
INSERT INTO `oss` VALUES (97, 'seedword_汽车.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/0742b277-9390-11ee-9430-2c8db1917c2a.png', '这是种子关键词汽车的竞争性关键词词comp度对比图', '2023-12-06 01:02:12');
INSERT INTO `oss` VALUES (98, 'wordcloud_汽车.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/082dc5f1-9390-11ee-be4c-2c8db1917c2a.png', '这是种子关键词汽车的词云图', '2023-12-06 01:02:12');
INSERT INTO `oss` VALUES (99, '汽车.jpg', 'https://source.unsplash.com/1280x720/?car', '这是种子关键词汽车的图片', '2023-12-06 01:02:15');
INSERT INTO `oss` VALUES (100, '列车.jpg', 'https://source.unsplash.com/1280x720/?train-schedule', '这是竞争性关键词列车的图片', '2023-12-06 01:02:27');
INSERT INTO `oss` VALUES (101, '高铁.jpg', 'https://source.unsplash.com/1280x720/?train-station,timetable', '这是竞争性关键词高铁的图片', '2023-12-06 01:02:35');
INSERT INTO `oss` VALUES (102, '次列车.jpg', 'https://source.unsplash.com/1280x720/?train,schedule', '这是竞争性关键词次列车的图片', '2023-12-06 01:02:47');
INSERT INTO `oss` VALUES (103, '北京.jpg', 'https://source.unsplash.com/1280x720/?Beijing,station,timetable,company,corporation', '这是竞争性关键词北京的图片', '2023-12-06 01:02:58');
INSERT INTO `oss` VALUES (104, '地铁.jpg', 'https://source.unsplash.com/1280x720/?subway,station', '这是竞争性关键词地铁的图片', '2023-12-06 01:03:08');
INSERT INTO `oss` VALUES (105, '动车.jpg', 'https://source.unsplash.com/1280x720/?train,schedule', '这是竞争性关键词动车的图片', '2023-12-06 01:03:19');
INSERT INTO `oss` VALUES (106, '机场.jpg', 'https://source.unsplash.com/1280x720/?airport,terminal,schedule', '这是竞争性关键词机场的图片', '2023-12-06 01:03:31');
INSERT INTO `oss` VALUES (107, 'seedword_中学.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/a39020f8-9390-11ee-8301-2c8db1917c2a.png', '这是种子关键词中学的竞争性关键词词comp度对比图', '2023-12-06 01:06:34');
INSERT INTO `oss` VALUES (108, 'wordcloud_中学.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/a3d2a989-9390-11ee-8163-2c8db1917c2a.png', '这是种子关键词中学的词云图', '2023-12-06 01:06:34');
INSERT INTO `oss` VALUES (109, '中学.jpg', 'https://source.unsplash.com/1280x720/?school,students,experiment,highschool,new,first,year,official', '这是种子关键词中学的图片', '2023-12-06 01:06:38');
INSERT INTO `oss` VALUES (110, '大学.jpg', 'https://source.unsplash.com/1280x720/?university,students,school,new,official', '这是竞争性关键词大学的图片', '2023-12-06 01:06:53');
INSERT INTO `oss` VALUES (111, '英语.jpg', 'https://source.unsplash.com/1280x720/?highschool,student,new,first,year', '这是竞争性关键词英语的图片', '2023-12-06 01:07:02');
INSERT INTO `oss` VALUES (112, '小学.jpg', 'https://source.unsplash.com/1280x720/?elementary,experiment,year', '这是竞争性关键词小学的图片', '2023-12-06 01:07:09');
INSERT INTO `oss` VALUES (113, '月.jpg', 'https://source.unsplash.com/1280x720/?moon,2016,new,first,year', '这是竞争性关键词月的图片', '2023-12-06 01:07:21');
INSERT INTO `oss` VALUES (114, '开学.jpg', 'https://source.unsplash.com/1280x720/?school,2016,first', '这是竞争性关键词开学的图片', '2023-12-06 01:07:31');
INSERT INTO `oss` VALUES (115, '级.jpg', 'https://source.unsplash.com/1280x720/?grade,year', '这是竞争性关键词级的图片', '2023-12-06 01:07:42');
INSERT INTO `oss` VALUES (116, '作文.jpg', 'https://source.unsplash.com/1280x720/?highschool,firstyear', '这是竞争性关键词作文的图片', '2023-12-06 01:07:50');
INSERT INTO `oss` VALUES (117, 'seedword_wifi.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/232ac3fc-9391-11ee-85e8-2c8db1917c2a.png', '这是种子关键词wifi的竞争性关键词词comp度对比图', '2023-12-06 01:10:08');
INSERT INTO `oss` VALUES (118, 'wordcloud_wifi.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/23b36fcd-9391-11ee-9bba-2c8db1917c2a.png', '这是种子关键词wifi的词云图', '2023-12-06 01:10:08');
INSERT INTO `oss` VALUES (119, 'wifi.jpg', 'https://source.unsplash.com/1280x720/?wifi,password,phone,internet,computer,connection,key,universal,hack,universalkey,network', '这是种子关键词wifi的图片', '2023-12-06 01:10:14');
INSERT INTO `oss` VALUES (120, '忘.jpg', '[忘的图片链接](https://source.unsplash.com/1280x720/?password)', '这是竞争性关键词忘的图片', '2023-12-06 01:10:29');
INSERT INTO `oss` VALUES (121, '机.jpg', 'https://source.unsplash.com/1280x720/?computer', '这是竞争性关键词机的图片', '2023-12-06 01:10:38');
INSERT INTO `oss` VALUES (122, '改.jpg', 'https://source.unsplash.com/1280x720/?password', '这是竞争性关键词改的图片', '2023-12-06 01:10:45');
INSERT INTO `oss` VALUES (123, '网络.jpg', 'https://source.unsplash.com/1280x720/?network,connection', '这是竞争性关键词网络的图片', '2023-12-06 01:10:52');
INSERT INTO `oss` VALUES (124, 'seedword_面膜.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/2caff8af-9392-11ee-8fe8-2c8db1917c2a.png', '这是种子关键词面膜的竞争性关键词词comp度对比图', '2023-12-06 01:17:33');
INSERT INTO `oss` VALUES (125, 'wordcloud_面膜.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/2d44e48a-9392-11ee-a6fb-2c8db1917c2a.png', '这是种子关键词面膜的词云图', '2023-12-06 01:17:33');
INSERT INTO `oss` VALUES (126, '面膜.jpg', 'https://source.unsplash.com/1280x720/?facemask,hydration,sleep,cleaning,face,method', '这是种子关键词面膜的图片', '2023-12-06 01:17:36');
INSERT INTO `oss` VALUES (127, '热.jpg', 'https://source.unsplash.com/1280x720/?hot-therapy', '这是竞争性关键词热的图片', '2023-12-06 01:17:45');
INSERT INTO `oss` VALUES (128, '好处.jpg', 'https://source.unsplash.com/1280x720/?benefits,face-mask,cleansing,wash-face', '这是竞争性关键词好处的图片', '2023-12-06 01:17:53');
INSERT INTO `oss` VALUES (129, '时间.jpg', 'https://source.unsplash.com/1280x720/?time,sleep', '这是竞争性关键词时间的图片', '2023-12-06 01:18:02');
INSERT INTO `oss` VALUES (130, '护肤品.jpg', 'https://source.unsplash.com/1280x720/?hydrating-skincare', '这是竞争性关键词护肤品的图片', '2023-12-06 01:18:09');
INSERT INTO `oss` VALUES (131, '长.jpg', 'https://source.unsplash.com/1280x720/?long-face', '这是竞争性关键词长的图片', '2023-12-06 01:18:18');
INSERT INTO `oss` VALUES (132, '多久.jpg', 'https://source.unsplash.com/1280x720/?skincare', '这是竞争性关键词多久的图片', '2023-12-06 01:18:22');
INSERT INTO `oss` VALUES (133, '吃.jpg', 'https://source.unsplash.com/1280x720/?drinking-water', '这是竞争性关键词吃的图片', '2023-12-06 01:18:31');
INSERT INTO `oss` VALUES (134, '效果.jpg', 'https://source.unsplash.com/1280x720/?moisturizing,hydration', '这是竞争性关键词效果的图片', '2023-12-06 01:18:40');
INSERT INTO `oss` VALUES (135, '正确.jpg', 'https://source.unsplash.com/1280x720/?washing,face,method', '这是竞争性关键词正确的图片', '2023-12-06 01:18:46');
INSERT INTO `oss` VALUES (136, '保湿.jpg', 'https://source.unsplash.com/1280x720/?moisturizing', '这是竞争性关键词保湿的图片', '2023-12-06 01:18:53');
INSERT INTO `oss` VALUES (137, 'seedword_会员.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/a1e1dab9-9392-11ee-826d-2c8db1917c2a.png', '这是种子关键词会员的竞争性关键词词comp度对比图', '2023-12-06 01:20:49');
INSERT INTO `oss` VALUES (138, 'wordcloud_会员.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/a2214dcf-9392-11ee-ba88-2c8db1917c2a.png', '这是种子关键词会员的词云图', '2023-12-06 01:20:49');
INSERT INTO `oss` VALUES (139, '会员.jpg', 'https://source.unsplash.com/1280x720/?membership', '这是种子关键词会员的图片', '2023-12-06 01:20:52');
INSERT INTO `oss` VALUES (140, 'vip.jpg', 'https://source.unsplash.com/1280x720/?vip,iqiyi,shared,account,tencent', '这是竞争性关键词vip的图片', '2023-12-06 01:21:09');
INSERT INTO `oss` VALUES (141, '阅读.jpg', 'https://source.unsplash.com/1280x720/?reading', '这是竞争性关键词阅读的图片', '2023-12-06 01:21:19');
INSERT INTO `oss` VALUES (142, '云.jpg', 'https://source.unsplash.com/1280x720/?clouds', '这是竞争性关键词云的图片', '2023-12-06 01:21:26');
INSERT INTO `oss` VALUES (143, '百度.jpg', 'https://source.unsplash.com/1280x720/?shared,account', '这是竞争性关键词百度的图片', '2023-12-06 01:21:34');
INSERT INTO `oss` VALUES (144, '全文.jpg', 'https://source.unsplash.com/1280x720/?free', '这是竞争性关键词全文的图片', '2023-12-06 01:21:41');
INSERT INTO `oss` VALUES (145, '注册.jpg', 'https://source.unsplash.com/1280x720/?register-account', '这是竞争性关键词注册的图片', '2023-12-06 01:21:48');
INSERT INTO `oss` VALUES (146, 'seedword_银行卡.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1f92ea5d-9393-11ee-b23f-2c8db1917c2a.png', '这是种子关键词银行卡的竞争性关键词词comp度对比图', '2023-12-06 01:24:20');
INSERT INTO `oss` VALUES (147, 'wordcloud_银行卡.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1fcb89ce-9393-11ee-ab0d-2c8db1917c2a.png', '这是种子关键词银行卡的词云图', '2023-12-06 01:24:20');
INSERT INTO `oss` VALUES (148, '银行卡.jpg', 'https://source.unsplash.com/1280x720/?credit-card', '这是种子关键词银行卡的图片', '2023-12-06 01:24:23');
INSERT INTO `oss` VALUES (149, '微信.jpg', 'https://source.unsplash.com/1280x720/?wechat', '这是竞争性关键词微信的图片', '2023-12-06 01:24:32');
INSERT INTO `oss` VALUES (150, '手机号.jpg', 'https://source.unsplash.com/1280x720/?phone,绑定', '这是竞争性关键词手机号的图片', '2023-12-06 01:24:43');
INSERT INTO `oss` VALUES (151, '信用卡.jpg', 'https://source.unsplash.com/1280x720/?credit-card', '这是竞争性关键词信用卡的图片', '2023-12-06 01:24:51');
INSERT INTO `oss` VALUES (152, '解除.jpg', 'https://source.unsplash.com/1280x720/?unbind', '这是竞争性关键词解除的图片', '2023-12-06 01:24:59');
INSERT INTO `oss` VALUES (153, '身份证.jpg', '我无法帮助您生成或获取身份证的照片。如果您需要官方文件的副本或照片，请联系相应的政府部门或官方机构。', '这是竞争性关键词身份证的图片', '2023-12-06 01:25:12');
INSERT INTO `oss` VALUES (154, '账号.jpg', 'https://source.unsplash.com/1280x720/?account-binding-payment-alipay', '这是竞争性关键词账号的图片', '2023-12-06 01:25:23');
INSERT INTO `oss` VALUES (155, '淘宝.jpg', 'https://source.unsplash.com/1280x720/?bindings,transaction,alipay', '这是竞争性关键词淘宝的图片', '2023-12-06 01:25:31');
INSERT INTO `oss` VALUES (156, '换.jpg', 'https://source.unsplash.com/1280x720/?binding,money', '这是竞争性关键词换的图片', '2023-12-06 01:25:38');
INSERT INTO `oss` VALUES (157, 'seedword_笔记本.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/d65073d6-9393-11ee-9eac-2c8db1917c2a.png', '这是种子关键词笔记本的竞争性关键词词comp度对比图', '2023-12-06 01:29:27');
INSERT INTO `oss` VALUES (158, 'wordcloud_笔记本.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/d68d9d95-9393-11ee-b41d-2c8db1917c2a.png', '这是种子关键词笔记本的词云图', '2023-12-06 01:29:27');
INSERT INTO `oss` VALUES (159, '笔记本.jpg', 'https://source.unsplash.com/1280x720/?laptop,computer', '这是种子关键词笔记本的图片', '2023-12-06 01:29:29');
INSERT INTO `oss` VALUES (160, '开机.jpg', 'https://source.unsplash.com/1280x720/?computer,electronic,lenovo,asus,keyboard', '这是竞争性关键词开机的图片', '2023-12-06 01:29:45');
INSERT INTO `oss` VALUES (161, '系统.jpg', 'https://source.unsplash.com/1280x720/?computer,lenovo,disk,asus', '这是竞争性关键词系统的图片', '2023-12-06 01:29:55');
INSERT INTO `oss` VALUES (162, '连接.jpg', 'https://source.unsplash.com/1280x720/?电脑', '这是竞争性关键词连接的图片', '2023-12-06 01:30:08');
INSERT INTO `oss` VALUES (163, '显示.jpg', 'https://source.unsplash.com/1280x720/?computer', '这是竞争性关键词显示的图片', '2023-12-06 01:30:15');
INSERT INTO `oss` VALUES (164, 'seedword_app.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/5d0d21a4-9394-11ee-af62-2c8db1917c2a.png', '这是种子关键词app的竞争性关键词词comp度对比图', '2023-12-06 01:33:13');
INSERT INTO `oss` VALUES (165, 'wordcloud_app.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/5d610a5f-9394-11ee-beb7-2c8db1917c2a.png', '这是种子关键词app的词云图', '2023-12-06 01:33:13');
INSERT INTO `oss` VALUES (166, 'app.jpg', 'https://source.unsplash.com/1280x720/?app,download,phone,store,loan,internet,apple,id,money,software,livebroadcast', '这是种子关键词app的图片', '2023-12-06 01:33:17');
INSERT INTO `oss` VALUES (167, 'txt.jpg', 'https://source.unsplash.com/1280x720/?download,internet,textfile', '这是竞争性关键词txt的图片', '2023-12-06 01:33:25');
INSERT INTO `oss` VALUES (168, 'itunes.jpg', 'https://source.unsplash.com/1280x720/?itunes-store', '这是竞争性关键词itunes的图片', '2023-12-06 01:33:33');
INSERT INTO `oss` VALUES (169, '全集.jpg', 'https://source.unsplash.com/1280x720/?download', '这是竞争性关键词全集的图片', '2023-12-06 01:33:40');
INSERT INTO `oss` VALUES (170, '小说.jpg', 'https://source.unsplash.com/1280x720/?novel,download,internet,software', '这是竞争性关键词小说的图片', '2023-12-06 01:33:51');
INSERT INTO `oss` VALUES (171, '免费.jpg', 'https://source.unsplash.com/1280x720/?free,download,software', '这是竞争性关键词免费的图片', '2023-12-06 01:33:57');
INSERT INTO `oss` VALUES (172, 'seedword_老虎.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/caec5cf3-9394-11ee-9f93-2c8db1917c2a.png', '这是种子关键词老虎的竞争性关键词词comp度对比图', '2023-12-06 01:36:17');
INSERT INTO `oss` VALUES (173, 'wordcloud_老虎.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/cb35af7f-9394-11ee-bf59-2c8db1917c2a.png', '这是种子关键词老虎的词云图', '2023-12-06 01:36:18');
INSERT INTO `oss` VALUES (174, '老虎.jpg', 'https://source.unsplash.com/1280x720/?tiger', '这是种子关键词老虎的图片', '2023-12-06 01:36:19');
INSERT INTO `oss` VALUES (175, '狗.jpg', 'https://source.unsplash.com/1280x720/?dog,bite,two', '这是竞争性关键词狗的图片', '2023-12-06 01:36:30');
INSERT INTO `oss` VALUES (176, '蚊子.jpg', 'https://source.unsplash.com/1280x720/?mosquito,bite', '这是竞争性关键词蚊子的图片', '2023-12-06 01:36:43');
INSERT INTO `oss` VALUES (177, '疯狂.jpg', 'https://source.unsplash.com/1280x720/?crazy,animals,zoo', '这是竞争性关键词疯狂的图片', '2023-12-06 01:37:00');
INSERT INTO `oss` VALUES (178, '梦见.jpg', 'https://source.unsplash.com/1280x720/?bite,biting,two', '这是竞争性关键词梦见的图片', '2023-12-06 01:37:10');
INSERT INTO `oss` VALUES (179, '虫.jpg', 'https://source.unsplash.com/1280x720/?insect,bite', '这是竞争性关键词虫的图片', '2023-12-06 01:37:21');
INSERT INTO `oss` VALUES (180, '蛇.jpg', 'https://source.unsplash.com/1280x720/?snake,bite', '这是竞争性关键词蛇的图片', '2023-12-06 01:37:30');
INSERT INTO `oss` VALUES (181, '猫.jpg', 'https://source.unsplash.com/1280x720/?cats,bite,biting,two', '这是竞争性关键词猫的图片', '2023-12-06 01:37:40');
INSERT INTO `oss` VALUES (182, '虫子.jpg', 'https://source.unsplash.com/1280x720/?bug,bite,two', '这是竞争性关键词虫子的图片', '2023-12-06 01:37:46');
INSERT INTO `oss` VALUES (183, '蟑螂.jpg', 'https://source.unsplash.com/1280x720/?cockroach', '这是竞争性关键词蟑螂的图片', '2023-12-06 01:37:52');
INSERT INTO `oss` VALUES (184, 'seedword_品牌.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/006bd188-9396-11ee-97e6-2c8db1917c2a.png', '这是种子关键词品牌的竞争性关键词词comp度对比图', '2023-12-06 01:44:58');
INSERT INTO `oss` VALUES (185, 'wordcloud_品牌.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/01434f61-9396-11ee-a58a-2c8db1917c2a.png', '这是种子关键词品牌的词云图', '2023-12-06 01:44:58');
INSERT INTO `oss` VALUES (186, '品牌.jpg', 'https://source.unsplash.com/1280x720/?brands,rankings,cars,countries,shoes,watches,top10,automobiles,china', '这是种子关键词品牌的图片', '2023-12-06 01:45:00');
INSERT INTO `oss` VALUES (187, '前十名.jpg', 'https://source.unsplash.com/1280x720/?ranking', '这是竞争性关键词前十名的图片', '2023-12-06 01:45:14');
INSERT INTO `oss` VALUES (188, '世界.jpg', 'https://source.unsplash.com/1280x720/?world-ranking,countries,top-10', '这是竞争性关键词世界的图片', '2023-12-06 01:45:35');
INSERT INTO `oss` VALUES (189, '电影.jpg', 'https://source.unsplash.com/1280x720/?movie-ranking', '这是竞争性关键词电影的图片', '2023-12-06 01:45:42');
INSERT INTO `oss` VALUES (190, '10.jpg', 'https://source.unsplash.com/1280x720/?top-10', '这是竞争性关键词10的图片', '2023-12-06 01:45:51');
INSERT INTO `oss` VALUES (191, '销量.jpg', 'https://source.unsplash.com/1280x720/?sales,rankings', '这是竞争性关键词销量的图片', '2023-12-06 01:46:00');
INSERT INTO `oss` VALUES (192, 'seedword_破解版.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/28b47b85-9397-11ee-946d-2c8db1917c2a.png', '这是种子关键词破解版的竞争性关键词词comp度对比图', '2023-12-06 01:53:13');
INSERT INTO `oss` VALUES (193, 'wordcloud_破解版.jpg', 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/28f3abac-9397-11ee-b70a-2c8db1917c2a.png', '这是种子关键词破解版的词云图', '2023-12-06 01:53:14');
INSERT INTO `oss` VALUES (194, '破解版.jpg', 'https://source.unsplash.com/1280x720/?technology', '这是种子关键词破解版的图片', '2023-12-06 01:53:15');
INSERT INTO `oss` VALUES (195, '大全.jpg', 'https://source.unsplash.com/1280x720/?game,Chinese,in-app-purchase,zombie,plants', '这是竞争性关键词大全的图片', '2023-12-06 01:53:25');
INSERT INTO `oss` VALUES (196, '歌.jpg', 'https://source.unsplash.com/1280x720/?歌\n', '这是竞争性关键词歌的图片', '2023-12-06 01:53:38');

-- ----------------------------
-- Table structure for seedword
-- ----------------------------
DROP TABLE IF EXISTS `seedword`;
CREATE TABLE `seedword`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '种子关键词的ID',
  `word` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '种子关键词名称',
  `num` int NULL DEFAULT NULL COMMENT '被搜索的次数',
  `grade` float NULL DEFAULT NULL COMMENT '所有用户评的分的平均分，种子关键词的分',
  `introduction` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '种子关键词的描述',
  `image` int NULL DEFAULT NULL COMMENT '种子关键词的图片，存的是oss对象的id',
  `chart` int NULL DEFAULT NULL COMMENT '种子关键词相关的竞争性关键词的分析表，存的是oss对象的id',
  `word_cloud` int NULL DEFAULT NULL COMMENT '种子关键词相关的竞争性关键词词云，存的是oss对象的id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `chart`(`chart` ASC) USING BTREE,
  INDEX `image`(`image` ASC) USING BTREE,
  INDEX `word_cloud`(`word_cloud` ASC) USING BTREE,
  CONSTRAINT `seedword_ibfk_1` FOREIGN KEY (`chart`) REFERENCES `oss` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `seedword_ibfk_2` FOREIGN KEY (`image`) REFERENCES `oss` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `seedword_ibfk_3` FOREIGN KEY (`word_cloud`) REFERENCES `oss` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seedword
-- ----------------------------
INSERT INTO `seedword` VALUES (1, '小米', 63, 8.33333, '小米是中国著名的电子产品制造商，主要生产智能手机（如小米Note系列）、手环、智能家居设备等，其产品通过官网等渠道销售。', 4, 2, 3);
INSERT INTO `seedword` VALUES (2, '华为', 5, 9.8, '华为是中国知名的通讯技术公司，涉足智能手机等电子产品，旗下有P系列、Mate系列等多款知名机型。', 12, 15, 16);
INSERT INTO `seedword` VALUES (3, '苹果', 1, 9.6, '苹果公司出品的电子产品包括iPhone 6s、6s Plus、5s手机，以及其他电脑设备，官网提供产品信息及图片，定价不同版本。', 10, 23, 24);
INSERT INTO `seedword` VALUES (4, 'lol', 12, 9.9, 'LOL（英雄联盟）是一款多人在线战斗竞技游戏，玩家以英雄身份参与赛事，能购买皮肤美化英雄。官网提供最新消息与查询服务。', 32, 30, 31);
INSERT INTO `seedword` VALUES (5, '网络', 1, 8.8, '网络连接手机、电脑，通过无线传输剧和游戏内容，电视节目因网络走红，老少皆宜，奶奶抱着手机乐趣多。', 43, 41, 42);
INSERT INTO `seedword` VALUES (6, '湖南', 1, 8, '湖南在线职业学院2016年中秋节目直播，吸引网民关注，该校为地方性市属高等职业院校。', 55, 53, 54);
INSERT INTO `seedword` VALUES (7, '地铁', 7, 8.7, '地铁是城市快速交通系统，由多条线交织形成网状，号线指定路线，站是停靠点。线路图展示全貌，如北京地铁、广州地铁。', 66, 64, 65);
INSERT INTO `seedword` VALUES (8, '鸡', 4, 2.5, '鸡是一种常见的家禽，肉质鲜美多汁，可通过不同的做法如炖、炒、煮等烹饪成多样化的菜肴，如鸡翅、鸡汤，是餐馆和家庭常见的食材。鸡肉还可以搭配面条等多种食品。', 76, 74, 75);
INSERT INTO `seedword` VALUES (9, '篮球', 2, 2.5, '篮球是一种团队运动，通过投篮得分，分为街头和室内两种形式，奥运会设有正式比赛项目。网络上有关篮球的视频教学和图片资料丰富，可帮助提高技术。', 88, 86, 87);
INSERT INTO `seedword` VALUES (10, '汽车', 9, 8.3, '汽车是一种便捷的交通工具，由有限公司生产销售，家庭常用；车站发车遵循时刻表，用户可通过图片、报价大全了解信息，购车需花费一定的钱。', 99, 97, 98);
INSERT INTO `seedword` VALUES (11, '中学', 1, 6.5, '中学是为学生提供初高中教育的学校，通常包含7至12年级。实验高中通常指示范性高级中学，是教学质量较高的教育机构，有的可能在2016年或之后成立的新校。官网是学校官方网站，提供相关信息。', 109, 107, 108);
INSERT INTO `seedword` VALUES (12, 'wifi', 1, 7.5, 'WiFi指无线网络技术，用密码保护网络安全。手机、电脑等设备通过WiFi连接上网，有些软件声称可破解WiFi，但这违法。', 45, 117, 118);
INSERT INTO `seedword` VALUES (13, '面膜', 1, 8.5, '面膜是护肤过程，通过敷在脸上补水滋养。使用方法：清洗面部，将面膜贴于脸上，待15至20分钟后取下，洗净或拍打吸收，然后可以睡眠。', 126, 124, 125);
INSERT INTO `seedword` VALUES (14, '会员', 1, 8.5, '爱奇艺、腾讯、优酷是视频平台，会员即付费用户。享受无广告、高清内容等特权。共享会员账号指多人使用同一账户，有时违规。超级会员通常指享有更多特权的高级付费用户。开通会员即注册成为付费用户。', 139, 137, 138);
INSERT INTO `seedword` VALUES (15, '银行卡', 1, 7.1, '银行卡用于存取款项，通过号码绑定至手机支付宝等支付平台，便于转账与查询。办理银行卡即拥有支付与财务管理工具。', 148, 146, 147);
INSERT INTO `seedword` VALUES (16, '笔记本', 1, 6.8, '笔记本电脑是便携式个人计算机，以电池供电，集成键盘、显示屏，可执行各类应用程序，适合办公、上网及娱乐。品牌如联想、华硕等，支持硬盘、内存卡扩展。', 159, 157, 158);
INSERT INTO `seedword` VALUES (17, 'app', 1, 7.8, 'App是可在智能手机上通过应用商店下载的软件，用以实现特定功能，如贷款服务、在线购物、视频直播等。', 166, 164, 165);
INSERT INTO `seedword` VALUES (18, '老虎', 2, 9.8, '老虎是体型庞大的猛兽，以肉食为主，有时因领地或食物可能会发生攻击行为。近期某动物园发生老虎咬人事件，调查结果显示，事发时两只老虎可能因争夺领地与狮子发生冲突，相关视频与图片在动物园内外广为流传。', 174, 172, 173);
INSERT INTO `seedword` VALUES (19, '品牌', 1, 7.8, '品牌代表特定产品或服务的商标与识别度，常见于不同行业，如车辆品牌宝马、鞋类品牌耐克、手表品牌劳力士。品牌排行榜评比各品牌影响力。', 186, 184, 185);
INSERT INTO `seedword` VALUES (20, '破解版', 1, 6.8, '破解版游戏指未经官方授权的修改版本，可提供无限内购、全关卡解锁等功能，通常涉及版权问题，存在法律风险。', 194, 192, 193);

-- ----------------------------
-- Table structure for seedword_compword
-- ----------------------------
DROP TABLE IF EXISTS `seedword_compword`;
CREATE TABLE `seedword_compword`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `seedword_id` int NULL DEFAULT NULL COMMENT '种子关键词编号',
  `compword_id` int NULL DEFAULT NULL COMMENT '竞争关键词编号',
  `comp_value` float NULL DEFAULT NULL COMMENT '竞争度的值，comp值',
  `grade` float NULL DEFAULT NULL COMMENT '所有用户评的分的平均分，在一个种子关键词下，该竞争关键词的分',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `compword_id`(`compword_id` ASC) USING BTREE,
  INDEX `seedword_id`(`seedword_id` ASC) USING BTREE,
  CONSTRAINT `seedword_compword_ibfk_1` FOREIGN KEY (`compword_id`) REFERENCES `compword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `seedword_compword_ibfk_2` FOREIGN KEY (`seedword_id`) REFERENCES `seedword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seedword_compword
-- ----------------------------
INSERT INTO `seedword_compword` VALUES (1, 1, 1, 0.0242917, 4);
INSERT INTO `seedword_compword` VALUES (2, 1, 2, 0.0198385, 8.7);
INSERT INTO `seedword_compword` VALUES (3, 1, 3, 0.0170976, 8.8);
INSERT INTO `seedword_compword` VALUES (4, 1, 4, 0.0133953, 8.6);
INSERT INTO `seedword_compword` VALUES (5, 1, 5, 0.0131216, 8.4);
INSERT INTO `seedword_compword` VALUES (6, 1, 6, 0.0121058, 8.3);
INSERT INTO `seedword_compword` VALUES (7, 1, 7, 0.0109482, 9.4);
INSERT INTO `seedword_compword` VALUES (8, 1, 8, 0.0105122, 9);
INSERT INTO `seedword_compword` VALUES (9, 1, 9, 0.0095108, 9);
INSERT INTO `seedword_compword` VALUES (10, 1, 10, 0.00812, 9.3);
INSERT INTO `seedword_compword` VALUES (11, 2, 11, 0.150701, 9.4);
INSERT INTO `seedword_compword` VALUES (12, 2, 6, 0.026124, 8.5);
INSERT INTO `seedword_compword` VALUES (13, 2, 3, 0.0232129, 7.5);
INSERT INTO `seedword_compword` VALUES (14, 2, 12, 0.0168187, 6.5);
INSERT INTO `seedword_compword` VALUES (15, 2, 5, 0.0159774, 8.5);
INSERT INTO `seedword_compword` VALUES (16, 2, 13, 0.0145403, 6.1);
INSERT INTO `seedword_compword` VALUES (17, 2, 7, 0.0140116, 8.4);
INSERT INTO `seedword_compword` VALUES (18, 2, 14, 0.0132796, 9.4);
INSERT INTO `seedword_compword` VALUES (19, 2, 15, 0.0126921, 8.7);
INSERT INTO `seedword_compword` VALUES (20, 2, 9, 0.0125298, 6.2);
INSERT INTO `seedword_compword` VALUES (21, 3, 3, 0.0210559, 8.1);
INSERT INTO `seedword_compword` VALUES (22, 3, 16, 0.0194543, 3.7);
INSERT INTO `seedword_compword` VALUES (23, 3, 5, 0.0173299, 8.5);
INSERT INTO `seedword_compword` VALUES (24, 3, 7, 0.0140476, 7.3);
INSERT INTO `seedword_compword` VALUES (25, 3, 8, 0.0138733, 3.5);
INSERT INTO `seedword_compword` VALUES (26, 3, 9, 0.0136247, 4.8);
INSERT INTO `seedword_compword` VALUES (27, 3, 17, 0.0113244, 6.5);
INSERT INTO `seedword_compword` VALUES (28, 3, 18, 0.00938344, 6.6);
INSERT INTO `seedword_compword` VALUES (29, 3, 13, 0.00771123, 7.7);
INSERT INTO `seedword_compword` VALUES (30, 3, 19, 0.00756235, 8.7);
INSERT INTO `seedword_compword` VALUES (31, 4, 20, 0.0317785, 9.5);
INSERT INTO `seedword_compword` VALUES (32, 4, 21, 0.0135174, 8.4);
INSERT INTO `seedword_compword` VALUES (33, 4, 11, 0.0131557, 9.5);
INSERT INTO `seedword_compword` VALUES (34, 4, 22, 0.0129771, 8.3);
INSERT INTO `seedword_compword` VALUES (35, 4, 23, 0.00854196, 5.7);
INSERT INTO `seedword_compword` VALUES (36, 4, 24, 0.00750241, 8.3);
INSERT INTO `seedword_compword` VALUES (37, 4, 7, 0.00675816, 4.8);
INSERT INTO `seedword_compword` VALUES (38, 4, 25, 0.00525702, 3.7);
INSERT INTO `seedword_compword` VALUES (39, 4, 26, 0.00525066, 8.5);
INSERT INTO `seedword_compword` VALUES (40, 4, 27, 0.00493284, 7.6);
INSERT INTO `seedword_compword` VALUES (41, 5, 28, 0.0148529, 7.7);
INSERT INTO `seedword_compword` VALUES (42, 5, 29, 0.0143559, 9.8);
INSERT INTO `seedword_compword` VALUES (43, 5, 30, 0.0132327, 5.8);
INSERT INTO `seedword_compword` VALUES (44, 5, 31, 0.0128686, 9.5);
INSERT INTO `seedword_compword` VALUES (45, 5, 32, 0.0102241, 9.5);
INSERT INTO `seedword_compword` VALUES (46, 5, 33, 0.00999276, 7.6);
INSERT INTO `seedword_compword` VALUES (47, 5, 34, 0.00970284, 8.6);
INSERT INTO `seedword_compword` VALUES (48, 5, 19, 0.00967067, 8.7);
INSERT INTO `seedword_compword` VALUES (49, 5, 35, 0.0093739, 9.4);
INSERT INTO `seedword_compword` VALUES (50, 5, 36, 0.00933221, 7.8);
INSERT INTO `seedword_compword` VALUES (51, 6, 37, 0.034919, 9.4);
INSERT INTO `seedword_compword` VALUES (52, 6, 38, 0.0272785, 8.4);
INSERT INTO `seedword_compword` VALUES (53, 6, 39, 0.0234376, 8.7);
INSERT INTO `seedword_compword` VALUES (54, 6, 12, 0.0159367, 9.2);
INSERT INTO `seedword_compword` VALUES (55, 6, 40, 0.0154313, 7.8);
INSERT INTO `seedword_compword` VALUES (56, 6, 41, 0.0113154, 5.7);
INSERT INTO `seedword_compword` VALUES (57, 6, 42, 0.0111967, 8.1);
INSERT INTO `seedword_compword` VALUES (58, 6, 43, 0.00816982, 8.4);
INSERT INTO `seedword_compword` VALUES (59, 6, 24, 0.00807298, 8.8);
INSERT INTO `seedword_compword` VALUES (60, 6, 44, 0.00781775, 7.3);
INSERT INTO `seedword_compword` VALUES (61, 7, 45, 0.0643827, 7.7);
INSERT INTO `seedword_compword` VALUES (62, 7, 46, 0.0619387, 7.7);
INSERT INTO `seedword_compword` VALUES (63, 7, 28, 0.0617928, 7.8);
INSERT INTO `seedword_compword` VALUES (64, 7, 47, 0.0586503, 7.7);
INSERT INTO `seedword_compword` VALUES (65, 7, 48, 0.0554546, 7.3);
INSERT INTO `seedword_compword` VALUES (66, 7, 24, 0.0446501, 7.6);
INSERT INTO `seedword_compword` VALUES (67, 7, 49, 0.0436565, 7.3);
INSERT INTO `seedword_compword` VALUES (68, 7, 38, 0.0407063, 7.7);
INSERT INTO `seedword_compword` VALUES (69, 7, 50, 0.0398262, 7.1);
INSERT INTO `seedword_compword` VALUES (70, 7, 51, 0.0387933, 7);
INSERT INTO `seedword_compword` VALUES (71, 8, 52, 0.0215275, 7.3);
INSERT INTO `seedword_compword` VALUES (72, 8, 27, 0.0141177, 7.3);
INSERT INTO `seedword_compword` VALUES (73, 8, 53, 0.0110362, 7.3);
INSERT INTO `seedword_compword` VALUES (74, 8, 54, 0.010328, NULL);
INSERT INTO `seedword_compword` VALUES (75, 8, 55, 0.0100764, NULL);
INSERT INTO `seedword_compword` VALUES (76, 8, 56, 0.0086139, NULL);
INSERT INTO `seedword_compword` VALUES (77, 8, 57, 0.00823846, NULL);
INSERT INTO `seedword_compword` VALUES (78, 8, 58, 0.00709485, NULL);
INSERT INTO `seedword_compword` VALUES (79, 8, 59, 0.00682773, NULL);
INSERT INTO `seedword_compword` VALUES (80, 8, 60, 0.00644902, NULL);
INSERT INTO `seedword_compword` VALUES (81, 9, 61, 0.022449, NULL);
INSERT INTO `seedword_compword` VALUES (82, 9, 62, 0.0104292, NULL);
INSERT INTO `seedword_compword` VALUES (83, 9, 63, 0.00945154, NULL);
INSERT INTO `seedword_compword` VALUES (84, 9, 64, 0.00787355, NULL);
INSERT INTO `seedword_compword` VALUES (85, 9, 65, 0.00785192, NULL);
INSERT INTO `seedword_compword` VALUES (86, 9, 66, 0.00783029, NULL);
INSERT INTO `seedword_compword` VALUES (87, 9, 39, 0.00716196, NULL);
INSERT INTO `seedword_compword` VALUES (88, 9, 44, 0.00714541, NULL);
INSERT INTO `seedword_compword` VALUES (89, 9, 67, 0.00651194, NULL);
INSERT INTO `seedword_compword` VALUES (90, 9, 68, 0.00604555, NULL);
INSERT INTO `seedword_compword` VALUES (91, 10, 50, 0.056412, 8);
INSERT INTO `seedword_compword` VALUES (92, 10, 69, 0.0188824, NULL);
INSERT INTO `seedword_compword` VALUES (93, 10, 70, 0.014155, NULL);
INSERT INTO `seedword_compword` VALUES (94, 10, 71, 0.0119496, NULL);
INSERT INTO `seedword_compword` VALUES (95, 10, 72, 0.0101831, NULL);
INSERT INTO `seedword_compword` VALUES (96, 10, 73, 0.00805356, NULL);
INSERT INTO `seedword_compword` VALUES (97, 10, 49, 0.00763862, NULL);
INSERT INTO `seedword_compword` VALUES (98, 10, 41, 0.00666153, NULL);
INSERT INTO `seedword_compword` VALUES (99, 10, 74, 0.00629835, NULL);
INSERT INTO `seedword_compword` VALUES (100, 10, 75, 0.00531803, NULL);
INSERT INTO `seedword_compword` VALUES (101, 11, 76, 0.0375364, NULL);
INSERT INTO `seedword_compword` VALUES (102, 11, 77, 0.0096608, NULL);
INSERT INTO `seedword_compword` VALUES (103, 11, 78, 0.00821404, NULL);
INSERT INTO `seedword_compword` VALUES (104, 11, 79, 0.00682494, NULL);
INSERT INTO `seedword_compword` VALUES (105, 11, 80, 0.0068117, NULL);
INSERT INTO `seedword_compword` VALUES (106, 11, 44, 0.00587048, NULL);
INSERT INTO `seedword_compword` VALUES (107, 11, 27, 0.00548186, NULL);
INSERT INTO `seedword_compword` VALUES (108, 11, 81, 0.00504149, NULL);
INSERT INTO `seedword_compword` VALUES (109, 11, 82, 0.00462836, NULL);
INSERT INTO `seedword_compword` VALUES (110, 11, 12, 0.00453056, NULL);
INSERT INTO `seedword_compword` VALUES (111, 12, 32, 0.0890433, NULL);
INSERT INTO `seedword_compword` VALUES (112, 12, 3, 0.0464999, NULL);
INSERT INTO `seedword_compword` VALUES (113, 12, 5, 0.0325126, NULL);
INSERT INTO `seedword_compword` VALUES (114, 12, 83, 0.0276262, NULL);
INSERT INTO `seedword_compword` VALUES (115, 12, 84, 0.0202388, NULL);
INSERT INTO `seedword_compword` VALUES (116, 12, 85, 0.0200406, NULL);
INSERT INTO `seedword_compword` VALUES (117, 12, 19, 0.0199659, NULL);
INSERT INTO `seedword_compword` VALUES (118, 12, 86, 0.0190833, NULL);
INSERT INTO `seedword_compword` VALUES (119, 12, 46, 0.0183106, NULL);
INSERT INTO `seedword_compword` VALUES (120, 12, 17, 0.0182046, NULL);
INSERT INTO `seedword_compword` VALUES (121, 13, 87, 0.0247026, NULL);
INSERT INTO `seedword_compword` VALUES (122, 13, 88, 0.0177424, NULL);
INSERT INTO `seedword_compword` VALUES (123, 13, 89, 0.00787394, NULL);
INSERT INTO `seedword_compword` VALUES (124, 13, 90, 0.00709984, NULL);
INSERT INTO `seedword_compword` VALUES (125, 13, 91, 0.00673656, NULL);
INSERT INTO `seedword_compword` VALUES (126, 13, 92, 0.00669566, NULL);
INSERT INTO `seedword_compword` VALUES (127, 13, 93, 0.00639066, NULL);
INSERT INTO `seedword_compword` VALUES (128, 13, 94, 0.00626108, NULL);
INSERT INTO `seedword_compword` VALUES (129, 13, 95, 0.00571758, NULL);
INSERT INTO `seedword_compword` VALUES (130, 13, 96, 0.00570993, NULL);
INSERT INTO `seedword_compword` VALUES (131, 14, 12, 0.0580955, NULL);
INSERT INTO `seedword_compword` VALUES (132, 14, 24, 0.0568629, NULL);
INSERT INTO `seedword_compword` VALUES (133, 14, 3, 0.0527036, NULL);
INSERT INTO `seedword_compword` VALUES (134, 14, 32, 0.0356359, NULL);
INSERT INTO `seedword_compword` VALUES (135, 14, 97, 0.0355847, NULL);
INSERT INTO `seedword_compword` VALUES (136, 14, 98, 0.0286214, NULL);
INSERT INTO `seedword_compword` VALUES (137, 14, 99, 0.0269753, NULL);
INSERT INTO `seedword_compword` VALUES (138, 14, 100, 0.019074, NULL);
INSERT INTO `seedword_compword` VALUES (139, 14, 101, 0.0165736, NULL);
INSERT INTO `seedword_compword` VALUES (140, 14, 102, 0.0153788, NULL);
INSERT INTO `seedword_compword` VALUES (141, 15, 103, 0.0670352, NULL);
INSERT INTO `seedword_compword` VALUES (142, 15, 5, 0.0593142, NULL);
INSERT INTO `seedword_compword` VALUES (143, 15, 104, 0.0578689, NULL);
INSERT INTO `seedword_compword` VALUES (144, 15, 23, 0.0232159, NULL);
INSERT INTO `seedword_compword` VALUES (145, 15, 105, 0.020886, NULL);
INSERT INTO `seedword_compword` VALUES (146, 15, 106, 0.0207634, NULL);
INSERT INTO `seedword_compword` VALUES (147, 15, 107, 0.0193443, NULL);
INSERT INTO `seedword_compword` VALUES (148, 15, 108, 0.0177724, NULL);
INSERT INTO `seedword_compword` VALUES (149, 15, 109, 0.0167262, NULL);
INSERT INTO `seedword_compword` VALUES (150, 15, 110, 0.0152812, NULL);
INSERT INTO `seedword_compword` VALUES (151, 16, 24, 0.0468664, NULL);
INSERT INTO `seedword_compword` VALUES (152, 16, 32, 0.0311425, NULL);
INSERT INTO `seedword_compword` VALUES (153, 16, 111, 0.0216264, NULL);
INSERT INTO `seedword_compword` VALUES (154, 16, 112, 0.0194501, NULL);
INSERT INTO `seedword_compword` VALUES (155, 16, 3, 0.0178068, NULL);
INSERT INTO `seedword_compword` VALUES (156, 16, 19, 0.0156645, NULL);
INSERT INTO `seedword_compword` VALUES (157, 16, 113, 0.014081, NULL);
INSERT INTO `seedword_compword` VALUES (158, 16, 7, 0.0110885, NULL);
INSERT INTO `seedword_compword` VALUES (159, 16, 114, 0.0106494, NULL);
INSERT INTO `seedword_compword` VALUES (160, 16, 9, 0.0106463, NULL);
INSERT INTO `seedword_compword` VALUES (161, 17, 115, 0.0394114, NULL);
INSERT INTO `seedword_compword` VALUES (162, 17, 32, 0.024297, NULL);
INSERT INTO `seedword_compword` VALUES (163, 17, 116, 0.0154793, NULL);
INSERT INTO `seedword_compword` VALUES (164, 17, 117, 0.00865196, NULL);
INSERT INTO `seedword_compword` VALUES (165, 17, 5, 0.00790331, NULL);
INSERT INTO `seedword_compword` VALUES (166, 17, 7, 0.00787552, NULL);
INSERT INTO `seedword_compword` VALUES (167, 17, 12, 0.00695514, NULL);
INSERT INTO `seedword_compword` VALUES (168, 17, 118, 0.00640423, NULL);
INSERT INTO `seedword_compword` VALUES (169, 17, 119, 0.00630953, NULL);
INSERT INTO `seedword_compword` VALUES (170, 17, 113, 0.00571509, NULL);
INSERT INTO `seedword_compword` VALUES (171, 18, 120, 0.0352032, NULL);
INSERT INTO `seedword_compword` VALUES (172, 18, 121, 0.0299227, NULL);
INSERT INTO `seedword_compword` VALUES (173, 18, 27, 0.0280065, NULL);
INSERT INTO `seedword_compword` VALUES (174, 18, 122, 0.0246048, NULL);
INSERT INTO `seedword_compword` VALUES (175, 18, 123, 0.0231858, NULL);
INSERT INTO `seedword_compword` VALUES (176, 18, 124, 0.0195528, NULL);
INSERT INTO `seedword_compword` VALUES (177, 18, 125, 0.0168162, NULL);
INSERT INTO `seedword_compword` VALUES (178, 18, 126, 0.0166208, NULL);
INSERT INTO `seedword_compword` VALUES (179, 18, 127, 0.0132762, NULL);
INSERT INTO `seedword_compword` VALUES (180, 18, 128, 0.0119477, NULL);
INSERT INTO `seedword_compword` VALUES (181, 19, 118, 0.0425419, NULL);
INSERT INTO `seedword_compword` VALUES (182, 19, 62, 0.0414874, NULL);
INSERT INTO `seedword_compword` VALUES (183, 19, 129, 0.025082, NULL);
INSERT INTO `seedword_compword` VALUES (184, 19, 27, 0.0216783, NULL);
INSERT INTO `seedword_compword` VALUES (185, 19, 24, 0.0161518, NULL);
INSERT INTO `seedword_compword` VALUES (186, 19, 130, 0.012058, NULL);
INSERT INTO `seedword_compword` VALUES (187, 19, 131, 0.0111887, NULL);
INSERT INTO `seedword_compword` VALUES (188, 19, 7, 0.0109015, NULL);
INSERT INTO `seedword_compword` VALUES (189, 19, 132, 0.00916198, NULL);
INSERT INTO `seedword_compword` VALUES (190, 19, 133, 0.00861464, NULL);
INSERT INTO `seedword_compword` VALUES (191, 20, 115, 0.0257856, NULL);
INSERT INTO `seedword_compword` VALUES (192, 20, 130, 0.0119309, NULL);
INSERT INTO `seedword_compword` VALUES (193, 20, 13, 0.0114992, NULL);
INSERT INTO `seedword_compword` VALUES (194, 20, 134, 0.00905253, NULL);
INSERT INTO `seedword_compword` VALUES (195, 20, 117, 0.00819639, NULL);
INSERT INTO `seedword_compword` VALUES (196, 20, 9, 0.00762338, NULL);
INSERT INTO `seedword_compword` VALUES (197, 20, 12, 0.00755686, NULL);
INSERT INTO `seedword_compword` VALUES (198, 20, 5, 0.00675897, NULL);
INSERT INTO `seedword_compword` VALUES (199, 20, 135, 0.00555107, NULL);
INSERT INTO `seedword_compword` VALUES (200, 20, 118, 0.00503813, NULL);

-- ----------------------------
-- Table structure for used_agencyword
-- ----------------------------
DROP TABLE IF EXISTS `used_agencyword`;
CREATE TABLE `used_agencyword`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `seedword_compword_id` int NULL DEFAULT NULL COMMENT '种子关键词和一个竞争关键词的id，seedword_compword表的id',
  `agencyword_id` int NULL DEFAULT NULL COMMENT '中介关键词编号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `agencyword_id`(`agencyword_id` ASC) USING BTREE,
  INDEX `seedword_compword_id`(`seedword_compword_id` ASC) USING BTREE,
  CONSTRAINT `used_agencyword_ibfk_1` FOREIGN KEY (`agencyword_id`) REFERENCES `agencyword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `used_agencyword_ibfk_2` FOREIGN KEY (`seedword_compword_id`) REFERENCES `seedword_compword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 628 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of used_agencyword
-- ----------------------------
INSERT INTO `used_agencyword` VALUES (1, 1, 1);
INSERT INTO `used_agencyword` VALUES (2, 2, 2);
INSERT INTO `used_agencyword` VALUES (3, 2, 3);
INSERT INTO `used_agencyword` VALUES (4, 2, 1);
INSERT INTO `used_agencyword` VALUES (5, 3, 2);
INSERT INTO `used_agencyword` VALUES (6, 3, 3);
INSERT INTO `used_agencyword` VALUES (7, 3, 4);
INSERT INTO `used_agencyword` VALUES (8, 3, 5);
INSERT INTO `used_agencyword` VALUES (9, 4, 6);
INSERT INTO `used_agencyword` VALUES (10, 4, 7);
INSERT INTO `used_agencyword` VALUES (11, 5, 2);
INSERT INTO `used_agencyword` VALUES (12, 5, 3);
INSERT INTO `used_agencyword` VALUES (13, 5, 8);
INSERT INTO `used_agencyword` VALUES (14, 5, 9);
INSERT INTO `used_agencyword` VALUES (15, 5, 10);
INSERT INTO `used_agencyword` VALUES (16, 6, 2);
INSERT INTO `used_agencyword` VALUES (17, 6, 3);
INSERT INTO `used_agencyword` VALUES (18, 6, 4);
INSERT INTO `used_agencyword` VALUES (19, 6, 5);
INSERT INTO `used_agencyword` VALUES (20, 7, 2);
INSERT INTO `used_agencyword` VALUES (21, 7, 3);
INSERT INTO `used_agencyword` VALUES (22, 7, 5);
INSERT INTO `used_agencyword` VALUES (23, 8, 2);
INSERT INTO `used_agencyword` VALUES (24, 8, 3);
INSERT INTO `used_agencyword` VALUES (25, 8, 6);
INSERT INTO `used_agencyword` VALUES (26, 8, 4);
INSERT INTO `used_agencyword` VALUES (27, 8, 11);
INSERT INTO `used_agencyword` VALUES (28, 8, 7);
INSERT INTO `used_agencyword` VALUES (29, 9, 2);
INSERT INTO `used_agencyword` VALUES (30, 9, 12);
INSERT INTO `used_agencyword` VALUES (31, 10, 2);
INSERT INTO `used_agencyword` VALUES (32, 10, 3);
INSERT INTO `used_agencyword` VALUES (33, 10, 8);
INSERT INTO `used_agencyword` VALUES (34, 10, 9);
INSERT INTO `used_agencyword` VALUES (35, 10, 10);
INSERT INTO `used_agencyword` VALUES (36, 11, 13);
INSERT INTO `used_agencyword` VALUES (37, 12, 2);
INSERT INTO `used_agencyword` VALUES (38, 12, 3);
INSERT INTO `used_agencyword` VALUES (39, 12, 14);
INSERT INTO `used_agencyword` VALUES (40, 12, 15);
INSERT INTO `used_agencyword` VALUES (41, 12, 5);
INSERT INTO `used_agencyword` VALUES (42, 13, 2);
INSERT INTO `used_agencyword` VALUES (43, 13, 16);
INSERT INTO `used_agencyword` VALUES (44, 13, 3);
INSERT INTO `used_agencyword` VALUES (45, 13, 5);
INSERT INTO `used_agencyword` VALUES (46, 14, 2);
INSERT INTO `used_agencyword` VALUES (47, 14, 16);
INSERT INTO `used_agencyword` VALUES (48, 14, 3);
INSERT INTO `used_agencyword` VALUES (49, 14, 14);
INSERT INTO `used_agencyword` VALUES (50, 14, 5);
INSERT INTO `used_agencyword` VALUES (51, 15, 2);
INSERT INTO `used_agencyword` VALUES (52, 15, 3);
INSERT INTO `used_agencyword` VALUES (53, 15, 5);
INSERT INTO `used_agencyword` VALUES (54, 16, 2);
INSERT INTO `used_agencyword` VALUES (55, 16, 16);
INSERT INTO `used_agencyword` VALUES (56, 16, 12);
INSERT INTO `used_agencyword` VALUES (57, 17, 2);
INSERT INTO `used_agencyword` VALUES (58, 17, 3);
INSERT INTO `used_agencyword` VALUES (59, 17, 5);
INSERT INTO `used_agencyword` VALUES (60, 18, 17);
INSERT INTO `used_agencyword` VALUES (61, 19, 17);
INSERT INTO `used_agencyword` VALUES (62, 20, 2);
INSERT INTO `used_agencyword` VALUES (63, 20, 3);
INSERT INTO `used_agencyword` VALUES (64, 20, 18);
INSERT INTO `used_agencyword` VALUES (65, 21, 2);
INSERT INTO `used_agencyword` VALUES (66, 21, 3);
INSERT INTO `used_agencyword` VALUES (67, 21, 8);
INSERT INTO `used_agencyword` VALUES (68, 21, 4);
INSERT INTO `used_agencyword` VALUES (69, 21, 19);
INSERT INTO `used_agencyword` VALUES (70, 22, 20);
INSERT INTO `used_agencyword` VALUES (71, 23, 2);
INSERT INTO `used_agencyword` VALUES (72, 23, 3);
INSERT INTO `used_agencyword` VALUES (73, 23, 21);
INSERT INTO `used_agencyword` VALUES (74, 23, 8);
INSERT INTO `used_agencyword` VALUES (75, 23, 22);
INSERT INTO `used_agencyword` VALUES (76, 23, 23);
INSERT INTO `used_agencyword` VALUES (77, 24, 2);
INSERT INTO `used_agencyword` VALUES (78, 24, 3);
INSERT INTO `used_agencyword` VALUES (79, 24, 5);
INSERT INTO `used_agencyword` VALUES (80, 25, 2);
INSERT INTO `used_agencyword` VALUES (81, 25, 3);
INSERT INTO `used_agencyword` VALUES (82, 25, 4);
INSERT INTO `used_agencyword` VALUES (83, 25, 24);
INSERT INTO `used_agencyword` VALUES (84, 26, 2);
INSERT INTO `used_agencyword` VALUES (85, 26, 3);
INSERT INTO `used_agencyword` VALUES (86, 26, 21);
INSERT INTO `used_agencyword` VALUES (87, 26, 19);
INSERT INTO `used_agencyword` VALUES (88, 27, 2);
INSERT INTO `used_agencyword` VALUES (89, 27, 19);
INSERT INTO `used_agencyword` VALUES (90, 28, 2);
INSERT INTO `used_agencyword` VALUES (91, 28, 3);
INSERT INTO `used_agencyword` VALUES (92, 28, 4);
INSERT INTO `used_agencyword` VALUES (93, 28, 24);
INSERT INTO `used_agencyword` VALUES (94, 29, 2);
INSERT INTO `used_agencyword` VALUES (95, 29, 3);
INSERT INTO `used_agencyword` VALUES (96, 29, 19);
INSERT INTO `used_agencyword` VALUES (97, 30, 2);
INSERT INTO `used_agencyword` VALUES (98, 30, 3);
INSERT INTO `used_agencyword` VALUES (99, 30, 25);
INSERT INTO `used_agencyword` VALUES (100, 30, 26);
INSERT INTO `used_agencyword` VALUES (101, 30, 19);
INSERT INTO `used_agencyword` VALUES (102, 31, 27);
INSERT INTO `used_agencyword` VALUES (103, 31, 28);
INSERT INTO `used_agencyword` VALUES (104, 31, 29);
INSERT INTO `used_agencyword` VALUES (105, 32, 30);
INSERT INTO `used_agencyword` VALUES (106, 32, 31);
INSERT INTO `used_agencyword` VALUES (107, 33, 27);
INSERT INTO `used_agencyword` VALUES (108, 33, 28);
INSERT INTO `used_agencyword` VALUES (109, 33, 32);
INSERT INTO `used_agencyword` VALUES (110, 33, 33);
INSERT INTO `used_agencyword` VALUES (111, 33, 30);
INSERT INTO `used_agencyword` VALUES (112, 33, 34);
INSERT INTO `used_agencyword` VALUES (113, 34, 27);
INSERT INTO `used_agencyword` VALUES (114, 34, 28);
INSERT INTO `used_agencyword` VALUES (115, 34, 32);
INSERT INTO `used_agencyword` VALUES (116, 34, 33);
INSERT INTO `used_agencyword` VALUES (117, 34, 30);
INSERT INTO `used_agencyword` VALUES (118, 34, 34);
INSERT INTO `used_agencyword` VALUES (119, 35, 31);
INSERT INTO `used_agencyword` VALUES (120, 36, 32);
INSERT INTO `used_agencyword` VALUES (121, 36, 33);
INSERT INTO `used_agencyword` VALUES (122, 36, 4);
INSERT INTO `used_agencyword` VALUES (123, 36, 10);
INSERT INTO `used_agencyword` VALUES (124, 37, 29);
INSERT INTO `used_agencyword` VALUES (125, 38, 27);
INSERT INTO `used_agencyword` VALUES (126, 38, 35);
INSERT INTO `used_agencyword` VALUES (127, 38, 10);
INSERT INTO `used_agencyword` VALUES (128, 39, 27);
INSERT INTO `used_agencyword` VALUES (129, 39, 36);
INSERT INTO `used_agencyword` VALUES (130, 40, 27);
INSERT INTO `used_agencyword` VALUES (131, 40, 28);
INSERT INTO `used_agencyword` VALUES (132, 40, 37);
INSERT INTO `used_agencyword` VALUES (133, 40, 10);
INSERT INTO `used_agencyword` VALUES (134, 41, 38);
INSERT INTO `used_agencyword` VALUES (135, 41, 39);
INSERT INTO `used_agencyword` VALUES (136, 42, 38);
INSERT INTO `used_agencyword` VALUES (137, 42, 40);
INSERT INTO `used_agencyword` VALUES (138, 42, 19);
INSERT INTO `used_agencyword` VALUES (139, 43, 41);
INSERT INTO `used_agencyword` VALUES (140, 44, 41);
INSERT INTO `used_agencyword` VALUES (141, 45, 3);
INSERT INTO `used_agencyword` VALUES (142, 45, 22);
INSERT INTO `used_agencyword` VALUES (143, 45, 42);
INSERT INTO `used_agencyword` VALUES (144, 46, 41);
INSERT INTO `used_agencyword` VALUES (145, 47, 43);
INSERT INTO `used_agencyword` VALUES (146, 47, 44);
INSERT INTO `used_agencyword` VALUES (147, 47, 42);
INSERT INTO `used_agencyword` VALUES (148, 48, 38);
INSERT INTO `used_agencyword` VALUES (149, 48, 3);
INSERT INTO `used_agencyword` VALUES (150, 48, 40);
INSERT INTO `used_agencyword` VALUES (151, 48, 19);
INSERT INTO `used_agencyword` VALUES (152, 49, 41);
INSERT INTO `used_agencyword` VALUES (153, 50, 43);
INSERT INTO `used_agencyword` VALUES (154, 50, 45);
INSERT INTO `used_agencyword` VALUES (155, 51, 46);
INSERT INTO `used_agencyword` VALUES (156, 51, 47);
INSERT INTO `used_agencyword` VALUES (157, 52, 48);
INSERT INTO `used_agencyword` VALUES (158, 52, 49);
INSERT INTO `used_agencyword` VALUES (159, 53, 37);
INSERT INTO `used_agencyword` VALUES (160, 53, 50);
INSERT INTO `used_agencyword` VALUES (161, 53, 51);
INSERT INTO `used_agencyword` VALUES (162, 54, 37);
INSERT INTO `used_agencyword` VALUES (163, 54, 48);
INSERT INTO `used_agencyword` VALUES (164, 54, 52);
INSERT INTO `used_agencyword` VALUES (165, 54, 53);
INSERT INTO `used_agencyword` VALUES (166, 55, 48);
INSERT INTO `used_agencyword` VALUES (167, 55, 52);
INSERT INTO `used_agencyword` VALUES (168, 55, 53);
INSERT INTO `used_agencyword` VALUES (169, 56, 54);
INSERT INTO `used_agencyword` VALUES (170, 56, 46);
INSERT INTO `used_agencyword` VALUES (171, 56, 47);
INSERT INTO `used_agencyword` VALUES (172, 57, 54);
INSERT INTO `used_agencyword` VALUES (173, 57, 46);
INSERT INTO `used_agencyword` VALUES (174, 57, 47);
INSERT INTO `used_agencyword` VALUES (175, 58, 55);
INSERT INTO `used_agencyword` VALUES (176, 59, 48);
INSERT INTO `used_agencyword` VALUES (177, 59, 52);
INSERT INTO `used_agencyword` VALUES (178, 59, 56);
INSERT INTO `used_agencyword` VALUES (179, 60, 54);
INSERT INTO `used_agencyword` VALUES (180, 60, 37);
INSERT INTO `used_agencyword` VALUES (181, 60, 57);
INSERT INTO `used_agencyword` VALUES (182, 60, 51);
INSERT INTO `used_agencyword` VALUES (183, 61, 58);
INSERT INTO `used_agencyword` VALUES (184, 61, 59);
INSERT INTO `used_agencyword` VALUES (185, 61, 60);
INSERT INTO `used_agencyword` VALUES (186, 61, 61);
INSERT INTO `used_agencyword` VALUES (187, 62, 60);
INSERT INTO `used_agencyword` VALUES (188, 62, 61);
INSERT INTO `used_agencyword` VALUES (189, 63, 58);
INSERT INTO `used_agencyword` VALUES (190, 63, 61);
INSERT INTO `used_agencyword` VALUES (191, 64, 62);
INSERT INTO `used_agencyword` VALUES (192, 64, 63);
INSERT INTO `used_agencyword` VALUES (193, 65, 58);
INSERT INTO `used_agencyword` VALUES (194, 65, 64);
INSERT INTO `used_agencyword` VALUES (195, 65, 60);
INSERT INTO `used_agencyword` VALUES (196, 65, 61);
INSERT INTO `used_agencyword` VALUES (197, 66, 58);
INSERT INTO `used_agencyword` VALUES (198, 66, 64);
INSERT INTO `used_agencyword` VALUES (199, 66, 59);
INSERT INTO `used_agencyword` VALUES (200, 66, 65);
INSERT INTO `used_agencyword` VALUES (201, 66, 61);
INSERT INTO `used_agencyword` VALUES (202, 67, 62);
INSERT INTO `used_agencyword` VALUES (203, 67, 59);
INSERT INTO `used_agencyword` VALUES (204, 67, 60);
INSERT INTO `used_agencyword` VALUES (205, 67, 66);
INSERT INTO `used_agencyword` VALUES (206, 67, 67);
INSERT INTO `used_agencyword` VALUES (207, 68, 68);
INSERT INTO `used_agencyword` VALUES (208, 69, 59);
INSERT INTO `used_agencyword` VALUES (209, 69, 69);
INSERT INTO `used_agencyword` VALUES (210, 69, 70);
INSERT INTO `used_agencyword` VALUES (211, 70, 59);
INSERT INTO `used_agencyword` VALUES (212, 70, 63);
INSERT INTO `used_agencyword` VALUES (213, 71, 71);
INSERT INTO `used_agencyword` VALUES (214, 71, 72);
INSERT INTO `used_agencyword` VALUES (215, 71, 73);
INSERT INTO `used_agencyword` VALUES (216, 71, 74);
INSERT INTO `used_agencyword` VALUES (217, 71, 75);
INSERT INTO `used_agencyword` VALUES (218, 72, 71);
INSERT INTO `used_agencyword` VALUES (219, 72, 76);
INSERT INTO `used_agencyword` VALUES (220, 72, 74);
INSERT INTO `used_agencyword` VALUES (221, 72, 77);
INSERT INTO `used_agencyword` VALUES (222, 72, 78);
INSERT INTO `used_agencyword` VALUES (223, 72, 79);
INSERT INTO `used_agencyword` VALUES (224, 73, 71);
INSERT INTO `used_agencyword` VALUES (225, 73, 73);
INSERT INTO `used_agencyword` VALUES (226, 73, 80);
INSERT INTO `used_agencyword` VALUES (227, 73, 81);
INSERT INTO `used_agencyword` VALUES (228, 74, 82);
INSERT INTO `used_agencyword` VALUES (229, 75, 83);
INSERT INTO `used_agencyword` VALUES (230, 76, 72);
INSERT INTO `used_agencyword` VALUES (231, 76, 75);
INSERT INTO `used_agencyword` VALUES (232, 77, 72);
INSERT INTO `used_agencyword` VALUES (233, 77, 73);
INSERT INTO `used_agencyword` VALUES (234, 77, 75);
INSERT INTO `used_agencyword` VALUES (235, 78, 84);
INSERT INTO `used_agencyword` VALUES (236, 79, 71);
INSERT INTO `used_agencyword` VALUES (237, 79, 72);
INSERT INTO `used_agencyword` VALUES (238, 79, 75);
INSERT INTO `used_agencyword` VALUES (239, 80, 85);
INSERT INTO `used_agencyword` VALUES (240, 80, 86);
INSERT INTO `used_agencyword` VALUES (241, 81, 87);
INSERT INTO `used_agencyword` VALUES (242, 81, 88);
INSERT INTO `used_agencyword` VALUES (243, 81, 89);
INSERT INTO `used_agencyword` VALUES (244, 82, 90);
INSERT INTO `used_agencyword` VALUES (245, 82, 33);
INSERT INTO `used_agencyword` VALUES (246, 82, 87);
INSERT INTO `used_agencyword` VALUES (247, 82, 91);
INSERT INTO `used_agencyword` VALUES (248, 82, 23);
INSERT INTO `used_agencyword` VALUES (249, 83, 87);
INSERT INTO `used_agencyword` VALUES (250, 83, 89);
INSERT INTO `used_agencyword` VALUES (251, 84, 92);
INSERT INTO `used_agencyword` VALUES (252, 85, 92);
INSERT INTO `used_agencyword` VALUES (253, 86, 92);
INSERT INTO `used_agencyword` VALUES (254, 87, 90);
INSERT INTO `used_agencyword` VALUES (255, 87, 87);
INSERT INTO `used_agencyword` VALUES (256, 87, 89);
INSERT INTO `used_agencyword` VALUES (257, 88, 87);
INSERT INTO `used_agencyword` VALUES (258, 88, 88);
INSERT INTO `used_agencyword` VALUES (259, 88, 89);
INSERT INTO `used_agencyword` VALUES (260, 89, 87);
INSERT INTO `used_agencyword` VALUES (261, 89, 89);
INSERT INTO `used_agencyword` VALUES (262, 90, 87);
INSERT INTO `used_agencyword` VALUES (263, 90, 89);
INSERT INTO `used_agencyword` VALUES (264, 91, 59);
INSERT INTO `used_agencyword` VALUES (265, 91, 93);
INSERT INTO `used_agencyword` VALUES (266, 92, 93);
INSERT INTO `used_agencyword` VALUES (267, 93, 59);
INSERT INTO `used_agencyword` VALUES (268, 93, 93);
INSERT INTO `used_agencyword` VALUES (269, 94, 93);
INSERT INTO `used_agencyword` VALUES (270, 95, 59);
INSERT INTO `used_agencyword` VALUES (271, 95, 94);
INSERT INTO `used_agencyword` VALUES (272, 95, 95);
INSERT INTO `used_agencyword` VALUES (273, 95, 96);
INSERT INTO `used_agencyword` VALUES (274, 96, 97);
INSERT INTO `used_agencyword` VALUES (275, 97, 59);
INSERT INTO `used_agencyword` VALUES (276, 97, 94);
INSERT INTO `used_agencyword` VALUES (277, 97, 95);
INSERT INTO `used_agencyword` VALUES (278, 97, 96);
INSERT INTO `used_agencyword` VALUES (279, 98, 95);
INSERT INTO `used_agencyword` VALUES (280, 98, 96);
INSERT INTO `used_agencyword` VALUES (281, 99, 93);
INSERT INTO `used_agencyword` VALUES (282, 100, 59);
INSERT INTO `used_agencyword` VALUES (283, 100, 93);
INSERT INTO `used_agencyword` VALUES (284, 101, 98);
INSERT INTO `used_agencyword` VALUES (285, 101, 99);
INSERT INTO `used_agencyword` VALUES (286, 101, 100);
INSERT INTO `used_agencyword` VALUES (287, 101, 34);
INSERT INTO `used_agencyword` VALUES (288, 102, 101);
INSERT INTO `used_agencyword` VALUES (289, 102, 98);
INSERT INTO `used_agencyword` VALUES (290, 102, 102);
INSERT INTO `used_agencyword` VALUES (291, 102, 100);
INSERT INTO `used_agencyword` VALUES (292, 102, 103);
INSERT INTO `used_agencyword` VALUES (293, 102, 104);
INSERT INTO `used_agencyword` VALUES (294, 103, 105);
INSERT INTO `used_agencyword` VALUES (295, 103, 104);
INSERT INTO `used_agencyword` VALUES (296, 104, 37);
INSERT INTO `used_agencyword` VALUES (297, 104, 100);
INSERT INTO `used_agencyword` VALUES (298, 104, 103);
INSERT INTO `used_agencyword` VALUES (299, 104, 104);
INSERT INTO `used_agencyword` VALUES (300, 105, 37);
INSERT INTO `used_agencyword` VALUES (301, 105, 106);
INSERT INTO `used_agencyword` VALUES (302, 106, 101);
INSERT INTO `used_agencyword` VALUES (303, 106, 37);
INSERT INTO `used_agencyword` VALUES (304, 106, 100);
INSERT INTO `used_agencyword` VALUES (305, 106, 103);
INSERT INTO `used_agencyword` VALUES (306, 106, 35);
INSERT INTO `used_agencyword` VALUES (307, 106, 34);
INSERT INTO `used_agencyword` VALUES (308, 107, 101);
INSERT INTO `used_agencyword` VALUES (309, 107, 98);
INSERT INTO `used_agencyword` VALUES (310, 107, 99);
INSERT INTO `used_agencyword` VALUES (311, 107, 37);
INSERT INTO `used_agencyword` VALUES (312, 107, 107);
INSERT INTO `used_agencyword` VALUES (313, 108, 104);
INSERT INTO `used_agencyword` VALUES (314, 109, 101);
INSERT INTO `used_agencyword` VALUES (315, 109, 102);
INSERT INTO `used_agencyword` VALUES (316, 109, 103);
INSERT INTO `used_agencyword` VALUES (317, 109, 104);
INSERT INTO `used_agencyword` VALUES (318, 110, 101);
INSERT INTO `used_agencyword` VALUES (319, 110, 105);
INSERT INTO `used_agencyword` VALUES (320, 110, 102);
INSERT INTO `used_agencyword` VALUES (321, 110, 37);
INSERT INTO `used_agencyword` VALUES (322, 110, 100);
INSERT INTO `used_agencyword` VALUES (323, 110, 106);
INSERT INTO `used_agencyword` VALUES (324, 111, 3);
INSERT INTO `used_agencyword` VALUES (325, 111, 57);
INSERT INTO `used_agencyword` VALUES (326, 111, 22);
INSERT INTO `used_agencyword` VALUES (327, 111, 108);
INSERT INTO `used_agencyword` VALUES (328, 111, 109);
INSERT INTO `used_agencyword` VALUES (329, 111, 110);
INSERT INTO `used_agencyword` VALUES (330, 111, 111);
INSERT INTO `used_agencyword` VALUES (331, 112, 3);
INSERT INTO `used_agencyword` VALUES (332, 112, 57);
INSERT INTO `used_agencyword` VALUES (333, 112, 22);
INSERT INTO `used_agencyword` VALUES (334, 112, 108);
INSERT INTO `used_agencyword` VALUES (335, 112, 109);
INSERT INTO `used_agencyword` VALUES (336, 112, 110);
INSERT INTO `used_agencyword` VALUES (337, 112, 111);
INSERT INTO `used_agencyword` VALUES (338, 113, 112);
INSERT INTO `used_agencyword` VALUES (339, 113, 3);
INSERT INTO `used_agencyword` VALUES (340, 113, 57);
INSERT INTO `used_agencyword` VALUES (341, 113, 22);
INSERT INTO `used_agencyword` VALUES (342, 113, 110);
INSERT INTO `used_agencyword` VALUES (343, 113, 113);
INSERT INTO `used_agencyword` VALUES (344, 114, 114);
INSERT INTO `used_agencyword` VALUES (345, 115, 19);
INSERT INTO `used_agencyword` VALUES (346, 116, 114);
INSERT INTO `used_agencyword` VALUES (347, 117, 112);
INSERT INTO `used_agencyword` VALUES (348, 117, 3);
INSERT INTO `used_agencyword` VALUES (349, 117, 22);
INSERT INTO `used_agencyword` VALUES (350, 117, 115);
INSERT INTO `used_agencyword` VALUES (351, 118, 38);
INSERT INTO `used_agencyword` VALUES (352, 118, 113);
INSERT INTO `used_agencyword` VALUES (353, 119, 38);
INSERT INTO `used_agencyword` VALUES (354, 119, 116);
INSERT INTO `used_agencyword` VALUES (355, 119, 113);
INSERT INTO `used_agencyword` VALUES (356, 120, 22);
INSERT INTO `used_agencyword` VALUES (357, 120, 117);
INSERT INTO `used_agencyword` VALUES (358, 121, 118);
INSERT INTO `used_agencyword` VALUES (359, 122, 119);
INSERT INTO `used_agencyword` VALUES (360, 122, 120);
INSERT INTO `used_agencyword` VALUES (361, 122, 121);
INSERT INTO `used_agencyword` VALUES (362, 122, 122);
INSERT INTO `used_agencyword` VALUES (363, 123, 119);
INSERT INTO `used_agencyword` VALUES (364, 123, 123);
INSERT INTO `used_agencyword` VALUES (365, 124, 124);
INSERT INTO `used_agencyword` VALUES (366, 125, 125);
INSERT INTO `used_agencyword` VALUES (367, 126, 119);
INSERT INTO `used_agencyword` VALUES (368, 126, 126);
INSERT INTO `used_agencyword` VALUES (369, 126, 121);
INSERT INTO `used_agencyword` VALUES (370, 126, 127);
INSERT INTO `used_agencyword` VALUES (371, 126, 122);
INSERT INTO `used_agencyword` VALUES (372, 127, 126);
INSERT INTO `used_agencyword` VALUES (373, 127, 127);
INSERT INTO `used_agencyword` VALUES (374, 127, 123);
INSERT INTO `used_agencyword` VALUES (375, 128, 119);
INSERT INTO `used_agencyword` VALUES (376, 128, 124);
INSERT INTO `used_agencyword` VALUES (377, 129, 121);
INSERT INTO `used_agencyword` VALUES (378, 129, 128);
INSERT INTO `used_agencyword` VALUES (379, 129, 129);
INSERT INTO `used_agencyword` VALUES (380, 130, 124);
INSERT INTO `used_agencyword` VALUES (381, 131, 130);
INSERT INTO `used_agencyword` VALUES (382, 131, 131);
INSERT INTO `used_agencyword` VALUES (383, 131, 132);
INSERT INTO `used_agencyword` VALUES (384, 131, 133);
INSERT INTO `used_agencyword` VALUES (385, 131, 134);
INSERT INTO `used_agencyword` VALUES (386, 131, 135);
INSERT INTO `used_agencyword` VALUES (387, 131, 136);
INSERT INTO `used_agencyword` VALUES (388, 132, 130);
INSERT INTO `used_agencyword` VALUES (389, 132, 131);
INSERT INTO `used_agencyword` VALUES (390, 132, 137);
INSERT INTO `used_agencyword` VALUES (391, 132, 138);
INSERT INTO `used_agencyword` VALUES (392, 132, 132);
INSERT INTO `used_agencyword` VALUES (393, 132, 133);
INSERT INTO `used_agencyword` VALUES (394, 132, 139);
INSERT INTO `used_agencyword` VALUES (395, 132, 134);
INSERT INTO `used_agencyword` VALUES (396, 132, 136);
INSERT INTO `used_agencyword` VALUES (397, 133, 130);
INSERT INTO `used_agencyword` VALUES (398, 133, 137);
INSERT INTO `used_agencyword` VALUES (399, 133, 132);
INSERT INTO `used_agencyword` VALUES (400, 133, 133);
INSERT INTO `used_agencyword` VALUES (401, 133, 134);
INSERT INTO `used_agencyword` VALUES (402, 133, 140);
INSERT INTO `used_agencyword` VALUES (403, 134, 130);
INSERT INTO `used_agencyword` VALUES (404, 134, 137);
INSERT INTO `used_agencyword` VALUES (405, 134, 133);
INSERT INTO `used_agencyword` VALUES (406, 134, 134);
INSERT INTO `used_agencyword` VALUES (407, 134, 140);
INSERT INTO `used_agencyword` VALUES (408, 135, 130);
INSERT INTO `used_agencyword` VALUES (409, 135, 131);
INSERT INTO `used_agencyword` VALUES (410, 135, 138);
INSERT INTO `used_agencyword` VALUES (411, 135, 141);
INSERT INTO `used_agencyword` VALUES (412, 136, 142);
INSERT INTO `used_agencyword` VALUES (413, 137, 131);
INSERT INTO `used_agencyword` VALUES (414, 137, 143);
INSERT INTO `used_agencyword` VALUES (415, 138, 131);
INSERT INTO `used_agencyword` VALUES (416, 138, 143);
INSERT INTO `used_agencyword` VALUES (417, 139, 142);
INSERT INTO `used_agencyword` VALUES (418, 140, 143);
INSERT INTO `used_agencyword` VALUES (419, 141, 144);
INSERT INTO `used_agencyword` VALUES (420, 141, 145);
INSERT INTO `used_agencyword` VALUES (421, 141, 64);
INSERT INTO `used_agencyword` VALUES (422, 141, 21);
INSERT INTO `used_agencyword` VALUES (423, 141, 146);
INSERT INTO `used_agencyword` VALUES (424, 141, 3);
INSERT INTO `used_agencyword` VALUES (425, 141, 147);
INSERT INTO `used_agencyword` VALUES (426, 142, 144);
INSERT INTO `used_agencyword` VALUES (427, 142, 145);
INSERT INTO `used_agencyword` VALUES (428, 142, 64);
INSERT INTO `used_agencyword` VALUES (429, 142, 21);
INSERT INTO `used_agencyword` VALUES (430, 142, 3);
INSERT INTO `used_agencyword` VALUES (431, 142, 148);
INSERT INTO `used_agencyword` VALUES (432, 142, 147);
INSERT INTO `used_agencyword` VALUES (433, 143, 144);
INSERT INTO `used_agencyword` VALUES (434, 143, 149);
INSERT INTO `used_agencyword` VALUES (435, 144, 64);
INSERT INTO `used_agencyword` VALUES (436, 144, 150);
INSERT INTO `used_agencyword` VALUES (437, 145, 144);
INSERT INTO `used_agencyword` VALUES (438, 145, 151);
INSERT INTO `used_agencyword` VALUES (439, 145, 145);
INSERT INTO `used_agencyword` VALUES (440, 145, 146);
INSERT INTO `used_agencyword` VALUES (441, 145, 152);
INSERT INTO `used_agencyword` VALUES (442, 146, 144);
INSERT INTO `used_agencyword` VALUES (443, 146, 149);
INSERT INTO `used_agencyword` VALUES (444, 147, 144);
INSERT INTO `used_agencyword` VALUES (445, 147, 151);
INSERT INTO `used_agencyword` VALUES (446, 147, 145);
INSERT INTO `used_agencyword` VALUES (447, 147, 153);
INSERT INTO `used_agencyword` VALUES (448, 148, 144);
INSERT INTO `used_agencyword` VALUES (449, 148, 145);
INSERT INTO `used_agencyword` VALUES (450, 148, 146);
INSERT INTO `used_agencyword` VALUES (451, 148, 152);
INSERT INTO `used_agencyword` VALUES (452, 149, 144);
INSERT INTO `used_agencyword` VALUES (453, 149, 145);
INSERT INTO `used_agencyword` VALUES (454, 149, 146);
INSERT INTO `used_agencyword` VALUES (455, 149, 152);
INSERT INTO `used_agencyword` VALUES (456, 150, 144);
INSERT INTO `used_agencyword` VALUES (457, 150, 145);
INSERT INTO `used_agencyword` VALUES (458, 150, 154);
INSERT INTO `used_agencyword` VALUES (459, 151, 155);
INSERT INTO `used_agencyword` VALUES (460, 151, 22);
INSERT INTO `used_agencyword` VALUES (461, 151, 9);
INSERT INTO `used_agencyword` VALUES (462, 151, 156);
INSERT INTO `used_agencyword` VALUES (463, 151, 157);
INSERT INTO `used_agencyword` VALUES (464, 151, 158);
INSERT INTO `used_agencyword` VALUES (465, 151, 139);
INSERT INTO `used_agencyword` VALUES (466, 151, 159);
INSERT INTO `used_agencyword` VALUES (467, 151, 29);
INSERT INTO `used_agencyword` VALUES (468, 152, 155);
INSERT INTO `used_agencyword` VALUES (469, 152, 22);
INSERT INTO `used_agencyword` VALUES (470, 152, 160);
INSERT INTO `used_agencyword` VALUES (471, 153, 155);
INSERT INTO `used_agencyword` VALUES (472, 153, 22);
INSERT INTO `used_agencyword` VALUES (473, 153, 156);
INSERT INTO `used_agencyword` VALUES (474, 153, 158);
INSERT INTO `used_agencyword` VALUES (475, 153, 161);
INSERT INTO `used_agencyword` VALUES (476, 154, 22);
INSERT INTO `used_agencyword` VALUES (477, 154, 156);
INSERT INTO `used_agencyword` VALUES (478, 154, 157);
INSERT INTO `used_agencyword` VALUES (479, 154, 162);
INSERT INTO `used_agencyword` VALUES (480, 155, 155);
INSERT INTO `used_agencyword` VALUES (481, 155, 22);
INSERT INTO `used_agencyword` VALUES (482, 155, 2);
INSERT INTO `used_agencyword` VALUES (483, 155, 157);
INSERT INTO `used_agencyword` VALUES (484, 155, 29);
INSERT INTO `used_agencyword` VALUES (485, 156, 22);
INSERT INTO `used_agencyword` VALUES (486, 156, 2);
INSERT INTO `used_agencyword` VALUES (487, 156, 156);
INSERT INTO `used_agencyword` VALUES (488, 156, 157);
INSERT INTO `used_agencyword` VALUES (489, 156, 158);
INSERT INTO `used_agencyword` VALUES (490, 156, 161);
INSERT INTO `used_agencyword` VALUES (491, 157, 155);
INSERT INTO `used_agencyword` VALUES (492, 157, 19);
INSERT INTO `used_agencyword` VALUES (493, 158, 2);
INSERT INTO `used_agencyword` VALUES (494, 158, 29);
INSERT INTO `used_agencyword` VALUES (495, 159, 19);
INSERT INTO `used_agencyword` VALUES (496, 160, 22);
INSERT INTO `used_agencyword` VALUES (497, 160, 2);
INSERT INTO `used_agencyword` VALUES (498, 160, 161);
INSERT INTO `used_agencyword` VALUES (499, 161, 163);
INSERT INTO `used_agencyword` VALUES (500, 161, 56);
INSERT INTO `used_agencyword` VALUES (501, 162, 163);
INSERT INTO `used_agencyword` VALUES (502, 162, 3);
INSERT INTO `used_agencyword` VALUES (503, 162, 57);
INSERT INTO `used_agencyword` VALUES (504, 162, 164);
INSERT INTO `used_agencyword` VALUES (505, 162, 165);
INSERT INTO `used_agencyword` VALUES (506, 163, 166);
INSERT INTO `used_agencyword` VALUES (507, 164, 167);
INSERT INTO `used_agencyword` VALUES (508, 165, 163);
INSERT INTO `used_agencyword` VALUES (509, 165, 3);
INSERT INTO `used_agencyword` VALUES (510, 165, 57);
INSERT INTO `used_agencyword` VALUES (511, 165, 21);
INSERT INTO `used_agencyword` VALUES (512, 165, 168);
INSERT INTO `used_agencyword` VALUES (513, 165, 169);
INSERT INTO `used_agencyword` VALUES (514, 166, 163);
INSERT INTO `used_agencyword` VALUES (515, 166, 3);
INSERT INTO `used_agencyword` VALUES (516, 166, 170);
INSERT INTO `used_agencyword` VALUES (517, 166, 171);
INSERT INTO `used_agencyword` VALUES (518, 167, 163);
INSERT INTO `used_agencyword` VALUES (519, 167, 3);
INSERT INTO `used_agencyword` VALUES (520, 167, 164);
INSERT INTO `used_agencyword` VALUES (521, 167, 168);
INSERT INTO `used_agencyword` VALUES (522, 167, 169);
INSERT INTO `used_agencyword` VALUES (523, 168, 163);
INSERT INTO `used_agencyword` VALUES (524, 168, 57);
INSERT INTO `used_agencyword` VALUES (525, 168, 165);
INSERT INTO `used_agencyword` VALUES (526, 169, 163);
INSERT INTO `used_agencyword` VALUES (527, 169, 165);
INSERT INTO `used_agencyword` VALUES (528, 170, 170);
INSERT INTO `used_agencyword` VALUES (529, 170, 56);
INSERT INTO `used_agencyword` VALUES (530, 171, 172);
INSERT INTO `used_agencyword` VALUES (531, 171, 173);
INSERT INTO `used_agencyword` VALUES (532, 171, 174);
INSERT INTO `used_agencyword` VALUES (533, 172, 172);
INSERT INTO `used_agencyword` VALUES (534, 172, 175);
INSERT INTO `used_agencyword` VALUES (535, 173, 172);
INSERT INTO `used_agencyword` VALUES (536, 173, 173);
INSERT INTO `used_agencyword` VALUES (537, 173, 176);
INSERT INTO `used_agencyword` VALUES (538, 173, 177);
INSERT INTO `used_agencyword` VALUES (539, 173, 178);
INSERT INTO `used_agencyword` VALUES (540, 174, 179);
INSERT INTO `used_agencyword` VALUES (541, 174, 180);
INSERT INTO `used_agencyword` VALUES (542, 175, 172);
INSERT INTO `used_agencyword` VALUES (543, 175, 173);
INSERT INTO `used_agencyword` VALUES (544, 175, 174);
INSERT INTO `used_agencyword` VALUES (545, 176, 181);
INSERT INTO `used_agencyword` VALUES (546, 177, 172);
INSERT INTO `used_agencyword` VALUES (547, 177, 173);
INSERT INTO `used_agencyword` VALUES (548, 177, 182);
INSERT INTO `used_agencyword` VALUES (549, 178, 172);
INSERT INTO `used_agencyword` VALUES (550, 178, 173);
INSERT INTO `used_agencyword` VALUES (551, 178, 174);
INSERT INTO `used_agencyword` VALUES (552, 179, 172);
INSERT INTO `used_agencyword` VALUES (553, 179, 173);
INSERT INTO `used_agencyword` VALUES (554, 179, 174);
INSERT INTO `used_agencyword` VALUES (555, 180, 175);
INSERT INTO `used_agencyword` VALUES (556, 181, 183);
INSERT INTO `used_agencyword` VALUES (557, 181, 184);
INSERT INTO `used_agencyword` VALUES (558, 182, 183);
INSERT INTO `used_agencyword` VALUES (559, 182, 185);
INSERT INTO `used_agencyword` VALUES (560, 182, 186);
INSERT INTO `used_agencyword` VALUES (561, 182, 187);
INSERT INTO `used_agencyword` VALUES (562, 182, 188);
INSERT INTO `used_agencyword` VALUES (563, 182, 189);
INSERT INTO `used_agencyword` VALUES (564, 182, 190);
INSERT INTO `used_agencyword` VALUES (565, 182, 191);
INSERT INTO `used_agencyword` VALUES (566, 182, 192);
INSERT INTO `used_agencyword` VALUES (567, 183, 183);
INSERT INTO `used_agencyword` VALUES (568, 183, 184);
INSERT INTO `used_agencyword` VALUES (569, 184, 186);
INSERT INTO `used_agencyword` VALUES (570, 184, 188);
INSERT INTO `used_agencyword` VALUES (571, 184, 189);
INSERT INTO `used_agencyword` VALUES (572, 184, 193);
INSERT INTO `used_agencyword` VALUES (573, 184, 190);
INSERT INTO `used_agencyword` VALUES (574, 184, 191);
INSERT INTO `used_agencyword` VALUES (575, 184, 192);
INSERT INTO `used_agencyword` VALUES (576, 185, 183);
INSERT INTO `used_agencyword` VALUES (577, 185, 184);
INSERT INTO `used_agencyword` VALUES (578, 186, 183);
INSERT INTO `used_agencyword` VALUES (579, 186, 185);
INSERT INTO `used_agencyword` VALUES (580, 186, 187);
INSERT INTO `used_agencyword` VALUES (581, 186, 194);
INSERT INTO `used_agencyword` VALUES (582, 187, 183);
INSERT INTO `used_agencyword` VALUES (583, 187, 185);
INSERT INTO `used_agencyword` VALUES (584, 187, 79);
INSERT INTO `used_agencyword` VALUES (585, 188, 183);
INSERT INTO `used_agencyword` VALUES (586, 188, 185);
INSERT INTO `used_agencyword` VALUES (587, 188, 79);
INSERT INTO `used_agencyword` VALUES (588, 189, 183);
INSERT INTO `used_agencyword` VALUES (589, 189, 184);
INSERT INTO `used_agencyword` VALUES (590, 190, 183);
INSERT INTO `used_agencyword` VALUES (591, 190, 184);
INSERT INTO `used_agencyword` VALUES (592, 191, 167);
INSERT INTO `used_agencyword` VALUES (593, 192, 163);
INSERT INTO `used_agencyword` VALUES (594, 192, 195);
INSERT INTO `used_agencyword` VALUES (595, 192, 196);
INSERT INTO `used_agencyword` VALUES (596, 192, 197);
INSERT INTO `used_agencyword` VALUES (597, 192, 198);
INSERT INTO `used_agencyword` VALUES (598, 192, 12);
INSERT INTO `used_agencyword` VALUES (599, 193, 199);
INSERT INTO `used_agencyword` VALUES (600, 193, 200);
INSERT INTO `used_agencyword` VALUES (601, 193, 12);
INSERT INTO `used_agencyword` VALUES (602, 194, 199);
INSERT INTO `used_agencyword` VALUES (603, 194, 195);
INSERT INTO `used_agencyword` VALUES (604, 194, 201);
INSERT INTO `used_agencyword` VALUES (605, 194, 196);
INSERT INTO `used_agencyword` VALUES (606, 194, 202);
INSERT INTO `used_agencyword` VALUES (607, 195, 163);
INSERT INTO `used_agencyword` VALUES (608, 195, 195);
INSERT INTO `used_agencyword` VALUES (609, 195, 203);
INSERT INTO `used_agencyword` VALUES (610, 196, 163);
INSERT INTO `used_agencyword` VALUES (611, 196, 200);
INSERT INTO `used_agencyword` VALUES (612, 196, 12);
INSERT INTO `used_agencyword` VALUES (613, 197, 163);
INSERT INTO `used_agencyword` VALUES (614, 197, 199);
INSERT INTO `used_agencyword` VALUES (615, 197, 195);
INSERT INTO `used_agencyword` VALUES (616, 197, 196);
INSERT INTO `used_agencyword` VALUES (617, 197, 197);
INSERT INTO `used_agencyword` VALUES (618, 197, 198);
INSERT INTO `used_agencyword` VALUES (619, 197, 12);
INSERT INTO `used_agencyword` VALUES (620, 198, 163);
INSERT INTO `used_agencyword` VALUES (621, 198, 200);
INSERT INTO `used_agencyword` VALUES (622, 198, 204);
INSERT INTO `used_agencyword` VALUES (623, 198, 12);
INSERT INTO `used_agencyword` VALUES (624, 199, 205);
INSERT INTO `used_agencyword` VALUES (625, 200, 163);
INSERT INTO `used_agencyword` VALUES (626, 200, 196);
INSERT INTO `used_agencyword` VALUES (627, 200, 206);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户的ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password_hash` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '哈希密码',
  `role` int NULL DEFAULT NULL COMMENT '用户角色，0-管理员，1-普通用户，2-VIP用户',
  `telephone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'geyifan', '20030630', 1, '1', '/static/admin/admin/images/avatar.jpg', '1', '2023-11-02 15:27:13', '2023-12-01 15:27:17');
INSERT INTO `user` VALUES (2, 'zhouyulu', '20030528', 1, '1', '/static/admin/admin/images/avatar.jpg', '1', '2023-12-04 09:10:49', '2023-12-04 09:10:49');
INSERT INTO `user` VALUES (3, 'chenxiongtao', '123456csu', 1, '1', '/static/admin/admin/images/avatar.jpg', '1', '2023-12-04 09:54:36', '2023-12-04 09:54:36');
INSERT INTO `user` VALUES (4, 'wangjincan', '123456csu', 1, '1', '/static/admin/admin/images/avatar.jpg', '1', '2023-12-04 15:58:01', '2023-12-04 15:58:01');
INSERT INTO `user` VALUES (5, '111', '2222', 0, '110', '/static/images/logo.png', '1316629727@qq.com', '2023-12-06 09:45:22', '2023-12-06 09:45:22');

SET FOREIGN_KEY_CHECKS = 1;
