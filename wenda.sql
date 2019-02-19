/*
Navicat MySQL Data Transfer

Source Server         : MysqlCon
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : wenda

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2019-02-19 19:51:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_type` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entity_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '别吧老哥\r\n忍一时风平浪静', '3', '14', '1', '2019-02-10 03:36:50', '0');
INSERT INTO `comment` VALUES ('2', '不可理喻', '3', '14', '1', '2019-02-10 03:40:53', '0');
INSERT INTO `comment` VALUES ('3', '这。。。\r\n别吧', '12', '14', '1', '2019-02-10 03:42:59', '0');
INSERT INTO `comment` VALUES ('4', '哈哈哈', '12', '12', '1', '2019-02-10 03:43:11', '0');
INSERT INTO `comment` VALUES ('5', '好的', '12', '11', '1', '2019-02-12 03:10:32', '0');
INSERT INTO `comment` VALUES ('6', 'hahaha', '13', '14', '1', '2019-02-14 01:56:03', '0');
INSERT INTO `comment` VALUES ('7', '？？？', '13', '13', '1', '2019-02-15 12:51:48', '0');
INSERT INTO `comment` VALUES ('8', '???', '14', '14', '1', '2019-02-16 14:08:38', '0');

-- ----------------------------
-- Table structure for feed
-- ----------------------------
DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` tinytext,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feed
-- ----------------------------
INSERT INTO `feed` VALUES ('1', '2019-02-16 14:44:43', '2', '{\"userHead\":\"http://images.nowcoder.com/head/711t.png\",\"questionId\":\"17\",\"questionTitle\":\"为何啊\",\"userName\":\"USER1\",\"userId\":\"2\"}', '4');
INSERT INTO `feed` VALUES ('2', '2019-02-16 14:49:02', '5', '{\"userHead\":\"http://images.nowcoder.com/head/612t.png\",\"questionId\":\"17\",\"questionTitle\":\"为何啊\",\"userName\":\"USER4\",\"userId\":\"5\"}', '4');
INSERT INTO `feed` VALUES ('3', '2019-02-16 14:49:41', '7', '{\"userHead\":\"http://images.nowcoder.com/head/978t.png\",\"questionId\":\"17\",\"questionTitle\":\"为何啊\",\"userName\":\"USER6\",\"userId\":\"7\"}', '4');
INSERT INTO `feed` VALUES ('4', '2019-02-16 14:49:48', '7', '{\"userHead\":\"http://images.nowcoder.com/head/978t.png\",\"questionId\":\"17\",\"questionTitle\":\"为何啊\",\"userName\":\"USER6\",\"userId\":\"7\"}', '4');
INSERT INTO `feed` VALUES ('5', '2019-02-16 14:49:53', '9', '{\"userHead\":\"http://images.nowcoder.com/head/954t.png\",\"questionId\":\"17\",\"questionTitle\":\"为何啊\",\"userName\":\"USER8\",\"userId\":\"9\"}', '4');
INSERT INTO `feed` VALUES ('6', '2019-02-16 14:50:18', '10', '{\"userHead\":\"http://images.nowcoder.com/head/121t.png\",\"questionId\":\"16\",\"questionTitle\":\"时间\",\"userName\":\"USER9\",\"userId\":\"10\"}', '4');
INSERT INTO `feed` VALUES ('7', '2019-02-16 14:55:48', '1', '{\"userHead\":\"http://images.nowcoder.com/head/179t.png\",\"questionId\":\"16\",\"questionTitle\":\"时间\",\"userName\":\"USER0\",\"userId\":\"1\"}', '4');
INSERT INTO `feed` VALUES ('8', '2019-02-16 14:56:00', '9', '{\"userHead\":\"http://images.nowcoder.com/head/954t.png\",\"questionId\":\"14\",\"questionTitle\":\"想去***\",\"userName\":\"USER8\",\"userId\":\"9\"}', '4');
INSERT INTO `feed` VALUES ('9', '2019-02-16 14:56:02', '2', '{\"userHead\":\"http://images.nowcoder.com/head/711t.png\",\"questionId\":\"12\",\"questionTitle\":\"瓦特\",\"userName\":\"USER1\",\"userId\":\"2\"}', '4');
INSERT INTO `feed` VALUES ('10', '2019-02-16 14:57:52', '14', '{\"userHead\":\"http://images.nowcoder.com/head/543t.png\",\"questionId\":\"17\",\"questionTitle\":\"为何啊\",\"userName\":\"lining\",\"userId\":\"14\"}', '4');
INSERT INTO `feed` VALUES ('11', '2019-02-16 14:57:59', '14', '{\"userHead\":\"http://images.nowcoder.com/head/543t.png\",\"questionId\":\"12\",\"questionTitle\":\"瓦特\",\"userName\":\"lining\",\"userId\":\"14\"}', '4');

-- ----------------------------
-- Table structure for login_ticket
-- ----------------------------
DROP TABLE IF EXISTS `login_ticket`;
CREATE TABLE `login_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ticket` varchar(45) NOT NULL,
  `expired` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_UNIQUE` (`ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_ticket
-- ----------------------------
INSERT INTO `login_ticket` VALUES ('1', '12', '606541f278074375985b64add8d4f1cc', '2019-02-07 02:49:05', '0');
INSERT INTO `login_ticket` VALUES ('2', '12', 'ee4977a6799f4facabf007e469ae07f8', '2019-02-07 02:49:48', '0');
INSERT INTO `login_ticket` VALUES ('3', '12', '8abeb3c8a4d64bb881f67045285222c1', '2019-02-07 02:50:19', '0');
INSERT INTO `login_ticket` VALUES ('4', '12', 'efbf39618c4d42268aa7c3d409e112ca', '2019-02-07 04:05:13', '1');
INSERT INTO `login_ticket` VALUES ('5', '12', '85d67c4a917944b786929e4e757bd6d6', '2019-02-07 04:12:31', '1');
INSERT INTO `login_ticket` VALUES ('6', '12', '925d2e1b2ca644758add3002c3ea23a2', '2019-02-07 09:28:10', '1');
INSERT INTO `login_ticket` VALUES ('7', '12', 'fc496e689e59435da430ba539aa36c83', '2019-02-07 10:06:13', '1');
INSERT INTO `login_ticket` VALUES ('8', '12', 'dda94d624aae435a8c3a23833c6f9032', '2019-02-09 13:43:41', '1');
INSERT INTO `login_ticket` VALUES ('9', '12', 'de88747a6c1e4300aed5bc93bdbc7a3c', '2019-02-09 14:18:10', '1');
INSERT INTO `login_ticket` VALUES ('10', '12', 'a104c26bc40d44da96291d99c6554701', '2019-02-09 14:18:35', '1');
INSERT INTO `login_ticket` VALUES ('11', '12', '604acdcc7a9b41f0bc35ea58599353f6', '2019-02-09 14:19:06', '1');
INSERT INTO `login_ticket` VALUES ('12', '12', '41d1529920e54c4bab66daea249a19fc', '2019-02-09 14:20:25', '1');
INSERT INTO `login_ticket` VALUES ('13', '12', '15d850069a4f45d79a796da9334fd490', '2019-02-09 14:21:14', '1');
INSERT INTO `login_ticket` VALUES ('14', '12', '11c7bd92af19472081b13925eaa671fd', '2019-02-09 14:31:31', '1');
INSERT INTO `login_ticket` VALUES ('15', '12', '44e8d60962a747d1ae49f7e4edf089ed', '2019-02-09 14:31:39', '0');
INSERT INTO `login_ticket` VALUES ('16', '12', 'e543aa88300047938547b32b22440afd', '2019-02-11 03:42:25', '1');
INSERT INTO `login_ticket` VALUES ('17', '13', '03f50b3a3dca476ca87a513312580633', '2019-02-11 11:13:13', '1');
INSERT INTO `login_ticket` VALUES ('18', '12', 'fdeef04170eb459db25b7f915b207492', '2019-02-11 11:16:15', '0');
INSERT INTO `login_ticket` VALUES ('19', '12', '9902cf1fbcb2481f9b8b73c964a9c59a', '2019-02-12 12:44:21', '1');
INSERT INTO `login_ticket` VALUES ('20', '13', 'ac42b912767d4f399dd42fe1b56092fe', '2019-02-13 03:04:55', '1');
INSERT INTO `login_ticket` VALUES ('21', '12', 'edac8b0fd2dd438c9c613ce85708f8aa', '2019-02-13 03:05:26', '1');
INSERT INTO `login_ticket` VALUES ('22', '13', 'aa545dac65414ef1a27e51a4eaca7a84', '2019-02-13 03:45:44', '1');
INSERT INTO `login_ticket` VALUES ('23', '12', '9858771b321a457ab7162f4937d350ba', '2019-02-13 03:46:16', '1');
INSERT INTO `login_ticket` VALUES ('24', '13', '13ea984b5e2e48fda9fed5ef2e3b85e2', '2019-02-13 03:46:25', '0');
INSERT INTO `login_ticket` VALUES ('25', '12', '265179c205f342b19875a736d9f0d6ef', '2019-02-14 09:23:47', '1');
INSERT INTO `login_ticket` VALUES ('26', '13', 'e7853b5911ff478490c9b144667bea99', '2019-02-15 01:55:58', '1');
INSERT INTO `login_ticket` VALUES ('27', '12', '184f577fe5d74dd69b05ba6bd95d6dac', '2019-02-15 01:56:25', '0');
INSERT INTO `login_ticket` VALUES ('28', '12', 'c36396ee0ee94d76b8c1bbbc02808560', '2019-02-16 17:41:57', '1');
INSERT INTO `login_ticket` VALUES ('29', '13', '5063e0f0dc8940bf89282e26e1c1098d', '2019-02-16 17:48:46', '1');
INSERT INTO `login_ticket` VALUES ('30', '12', '6c5ad5d5dd764b4ca5202812458c6d06', '2019-02-16 21:11:16', '1');
INSERT INTO `login_ticket` VALUES ('31', '13', '92b27772f50148f593edae38a8ba6bab', '2019-02-16 21:16:43', '1');
INSERT INTO `login_ticket` VALUES ('32', '14', 'ebed7ed275854efb8789ed3a7ecc61a6', '2019-02-16 21:23:51', '1');
INSERT INTO `login_ticket` VALUES ('33', '12', '325fc9b231eb4fa6844effdf8845793a', '2019-02-16 21:41:13', '0');
INSERT INTO `login_ticket` VALUES ('34', '12', '749c20f7c51f4ecbb4bf0e858e63fc30', '2019-02-16 14:48:23', '0');
INSERT INTO `login_ticket` VALUES ('35', '13', 'c46e883eead440a9a02a92568eced072', '2019-02-17 02:40:58', '1');
INSERT INTO `login_ticket` VALUES ('36', '14', 'db8f387678ad4af9bd61daa2ea8aab06', '2019-02-17 02:48:15', '1');
INSERT INTO `login_ticket` VALUES ('37', '12', 'e8ccc1a375e742a4b3ec2e2b0030ce1d', '2019-02-17 14:50:10', '1');
INSERT INTO `login_ticket` VALUES ('38', '14', '9ff9a0029dab4d3c88511334661cd735', '2019-02-17 14:55:44', '1');
INSERT INTO `login_ticket` VALUES ('39', '12', '5913d1a31035411dbff888c593b4187f', '2019-02-17 14:56:12', '1');
INSERT INTO `login_ticket` VALUES ('40', '14', 'c3d9af6029a84b3e82b60ecb59692239', '2019-02-17 14:57:50', '1');
INSERT INTO `login_ticket` VALUES ('41', '12', 'c3b4abfe69624ff987edf0df1710fef2', '2019-02-17 14:58:10', '0');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `content` text,
  `created_date` datetime DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `conversation_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_index` (`conversation_id`),
  KEY `created_date` (`created_date`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '13', '12', 'i love you', '2019-02-10 11:13:37', '0', '12_13');
INSERT INTO `message` VALUES ('2', '12', '13', 'i love you too', '2019-02-10 11:16:36', '0', '12_13');
INSERT INTO `message` VALUES ('3', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-11 20:46:37', '0', '4_12');
INSERT INTO `message` VALUES ('4', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-11 20:46:56', '0', '3_4');
INSERT INTO `message` VALUES ('5', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:11:17', '0', '4_12');
INSERT INTO `message` VALUES ('6', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:11:24', '0', '4_12');
INSERT INTO `message` VALUES ('7', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:11:25', '0', '3_4');
INSERT INTO `message` VALUES ('8', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:11:39', '0', '3_4');
INSERT INTO `message` VALUES ('9', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:11:56', '0', '3_4');
INSERT INTO `message` VALUES ('10', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:13:09', '0', '3_4');
INSERT INTO `message` VALUES ('11', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-12 11:15:49', '0', '3_4');
INSERT INTO `message` VALUES ('12', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-14 01:55:04', '0', '4_12');
INSERT INTO `message` VALUES ('13', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-14 01:55:29', '0', '4_12');
INSERT INTO `message` VALUES ('14', '4', '12', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-14 01:56:10', '0', '4_12');
INSERT INTO `message` VALUES ('15', '4', '13', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-14 01:56:29', '0', '4_13');
INSERT INTO `message` VALUES ('16', '4', '12', '用户USER4关注了你,http://127.0.0.1:8080/user/5', '2019-02-15 18:59:46', '0', '4_12');
INSERT INTO `message` VALUES ('17', '4', '13', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 18:59:46', '0', '4_13');
INSERT INTO `message` VALUES ('18', '4', '13', '用户USER0关注了你,http://127.0.0.1:8080/user/1', '2019-02-15 18:59:46', '0', '4_13');
INSERT INTO `message` VALUES ('19', '4', '13', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 12:38:06', '0', '4_13');
INSERT INTO `message` VALUES ('20', '4', '13', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/13', '2019-02-15 12:51:51', '0', '4_13');
INSERT INTO `message` VALUES ('21', '4', '12', '用户USER3关注了你,http://127.0.0.1:8080/user/4', '2019-02-15 21:14:02', '0', '4_12');
INSERT INTO `message` VALUES ('22', '4', '13', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:14:02', '0', '4_13');
INSERT INTO `message` VALUES ('23', '4', '13', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/13', '2019-02-15 21:14:02', '0', '4_13');
INSERT INTO `message` VALUES ('24', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:15:51', '0', '4_12');
INSERT INTO `message` VALUES ('25', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:15:57', '0', '3_4');
INSERT INTO `message` VALUES ('26', '4', '12', '用户USER7关注了你,http://127.0.0.1:8080/user/8', '2019-02-15 21:23:08', '0', '4_12');
INSERT INTO `message` VALUES ('27', '4', '13', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:23:08', '0', '4_13');
INSERT INTO `message` VALUES ('28', '4', '12', '用户xiaohong赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:23:08', '0', '4_12');
INSERT INTO `message` VALUES ('29', '4', '13', '用户lining赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:23:56', '0', '4_13');
INSERT INTO `message` VALUES ('30', '4', '12', '用户lining赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:27:07', '0', '4_12');
INSERT INTO `message` VALUES ('31', '4', '3', '用户lining赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:31:12', '0', '3_4');
INSERT INTO `message` VALUES ('32', '4', '13', '用户lining赞了你的评论,http://127.0.0.1:8080/question/13', '2019-02-15 21:31:45', '0', '4_13');
INSERT INTO `message` VALUES ('33', '4', '13', '用户lining赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 21:35:35', '0', '4_13');
INSERT INTO `message` VALUES ('34', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 14:40:18', '0', '4_12');
INSERT INTO `message` VALUES ('35', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 14:40:34', '0', '3_4');
INSERT INTO `message` VALUES ('36', '4', '13', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 14:48:59', '0', '4_13');
INSERT INTO `message` VALUES ('37', '4', '12', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 14:49:00', '0', '4_12');
INSERT INTO `message` VALUES ('38', '4', '3', '用户xiaoming赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-15 14:49:01', '0', '3_4');
INSERT INTO `message` VALUES ('39', '4', '13', '用户lining赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-16 14:08:35', '0', '4_13');
INSERT INTO `message` VALUES ('40', '4', '14', '用户lining赞了你的评论,http://127.0.0.1:8080/question/14', '2019-02-16 14:08:42', '0', '4_14');
INSERT INTO `message` VALUES ('41', '4', '14', '用户USER4关注了你的问题,http://127.0.0.1:8080/question/17', '2019-02-16 14:49:02', '0', '4_14');
INSERT INTO `message` VALUES ('42', '4', '14', '用户USER6关注了你的问题,http://127.0.0.1:8080/question/17', '2019-02-16 14:49:41', '0', '4_14');
INSERT INTO `message` VALUES ('43', '4', '14', '用户USER6关注了你的问题,http://127.0.0.1:8080/question/17', '2019-02-16 14:49:48', '0', '4_14');
INSERT INTO `message` VALUES ('44', '4', '14', '用户USER8关注了你的问题,http://127.0.0.1:8080/question/17', '2019-02-16 14:49:53', '0', '4_14');
INSERT INTO `message` VALUES ('45', '4', '14', '用户USER9关注了你的问题,http://127.0.0.1:8080/question/16', '2019-02-16 14:50:18', '0', '4_14');
INSERT INTO `message` VALUES ('46', '4', '14', '用户USER4关注了你,http://127.0.0.1:8080/user/5', '2019-02-16 14:55:29', '0', '4_14');
INSERT INTO `message` VALUES ('47', '4', '14', '用户USER0关注了你的问题,http://127.0.0.1:8080/question/16', '2019-02-16 14:55:48', '0', '4_14');
INSERT INTO `message` VALUES ('48', '4', '12', '用户USER8关注了你的问题,http://127.0.0.1:8080/question/14', '2019-02-16 14:56:00', '0', '4_12');
INSERT INTO `message` VALUES ('49', '4', '12', '用户USER1关注了你的问题,http://127.0.0.1:8080/question/12', '2019-02-16 14:56:02', '0', '4_12');
INSERT INTO `message` VALUES ('50', '4', '14', '用户lining关注了你的问题,http://127.0.0.1:8080/question/17', '2019-02-16 14:57:52', '0', '4_14');
INSERT INTO `message` VALUES ('51', '4', '12', '用户lining关注了你的问题,http://127.0.0.1:8080/question/12', '2019-02-16 14:57:59', '0', '4_12');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'TITLE{0}', 'Balaababalalalal Content 0', '1', '2019-02-04 09:19:14', '0');
INSERT INTO `question` VALUES ('2', 'TITLE{1}', 'Balaababalalalal Content 1', '2', '2019-02-04 14:19:14', '1');
INSERT INTO `question` VALUES ('3', 'TITLE{2}', 'Balaababalalalal Content 2', '3', '2019-02-04 19:19:14', '2');
INSERT INTO `question` VALUES ('4', 'TITLE{3}', 'Balaababalalalal Content 3', '4', '2019-02-05 00:19:14', '3');
INSERT INTO `question` VALUES ('5', 'TITLE{4}', 'Balaababalalalal Content 4', '5', '2019-02-05 05:19:15', '4');
INSERT INTO `question` VALUES ('6', 'TITLE{5}', 'Balaababalalalal Content 5', '6', '2019-02-05 10:19:15', '5');
INSERT INTO `question` VALUES ('7', 'TITLE{6}', 'Balaababalalalal Content 6', '7', '2019-02-05 15:19:15', '6');
INSERT INTO `question` VALUES ('8', 'TITLE{7}', 'Balaababalalalal Content 7', '8', '2019-02-05 20:19:15', '7');
INSERT INTO `question` VALUES ('9', 'TITLE{8}', 'Balaababalalalal Content 8', '9', '2019-02-06 01:19:15', '8');
INSERT INTO `question` VALUES ('10', 'TITLE{9}', 'Balaababalalalal Content 9', '10', '2019-02-06 06:19:15', '9');
INSERT INTO `question` VALUES ('11', 'TITLE{10}', 'Balaababalalalal Content 10', '11', '2019-02-06 11:19:15', '1');
INSERT INTO `question` VALUES ('12', '瓦特', '好吧瓦特', '12', '2019-02-08 14:23:57', '1');
INSERT INTO `question` VALUES ('13', '我好***啊', '想去賭博', '12', '2019-02-08 14:33:27', '1');
INSERT INTO `question` VALUES ('14', '想去***', '我好***', '12', '2019-02-08 14:33:47', '5');
INSERT INTO `question` VALUES ('15', 'fuck', 'fuck', '14', '2019-02-15 21:35:49', '0');
INSERT INTO `question` VALUES ('16', '时间', '怎么回事', '14', '2019-02-16 02:24:51', '0');
INSERT INTO `question` VALUES ('17', '为何啊', '额额额', '14', '2019-02-16 14:26:07', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `head_url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ANONYMOUS', 'newpassword', '', 'http://images.nowcoder.com/head/179t.png');
INSERT INTO `user` VALUES ('2', 'USER1', 'newpassword', '', 'http://images.nowcoder.com/head/711t.png');
INSERT INTO `user` VALUES ('3', 'USER2', 'newpassword', '', 'http://images.nowcoder.com/head/114t.png');
INSERT INTO `user` VALUES ('4', 'USER3', 'newpassword', '', 'http://images.nowcoder.com/head/225t.png');
INSERT INTO `user` VALUES ('5', 'USER4', 'newpassword', '', 'http://images.nowcoder.com/head/612t.png');
INSERT INTO `user` VALUES ('6', 'USER5', 'newpassword', '', 'http://images.nowcoder.com/head/682t.png');
INSERT INTO `user` VALUES ('7', 'USER6', 'newpassword', '', 'http://images.nowcoder.com/head/978t.png');
INSERT INTO `user` VALUES ('8', 'USER7', 'newpassword', '', 'http://images.nowcoder.com/head/622t.png');
INSERT INTO `user` VALUES ('9', 'USER8', 'newpassword', '', 'http://images.nowcoder.com/head/954t.png');
INSERT INTO `user` VALUES ('10', 'USER9', 'newpassword', '', 'http://images.nowcoder.com/head/121t.png');
INSERT INTO `user` VALUES ('11', 'USER10', 'newpassword', '', 'http://images.nowcoder.com/head/414t.png');
INSERT INTO `user` VALUES ('12', 'xiaoming', 'B91E2129A1545949C558D22A4C2B3AD8', '77f7e', 'http://images.nowcoder.com/head/844t.png');
INSERT INTO `user` VALUES ('13', 'xiaohong', '927DE2DAB3C0D39E0AC3224583AFAD03', '70d9b', 'http://images.nowcoder.com/head/784t.png');
INSERT INTO `user` VALUES ('14', 'lining', 'F8F5C2BD05FC45489FEEEF5A406CF1BB', '65ca6', 'http://images.nowcoder.com/head/543t.png');
