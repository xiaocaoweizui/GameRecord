/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:9001
 Source Schema         : game

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 29/02/2024 23:08:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for g_record
-- ----------------------------
DROP TABLE IF EXISTS `g_record`;
CREATE TABLE `g_record`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `record_time` datetime NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `week` int NULL DEFAULT NULL,
  `day_amount` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_record
-- ----------------------------
INSERT INTO `g_record` VALUES ('72e33aa8-874d-11ee-b7b9-0242ac110002', '2023-11-20 10:35:20', 155.00, '小草微醉', '', 47, 0.00);
INSERT INTO `g_record` VALUES ('3ea752d6-89d5-11ee-a47c-0242ac110002', '2023-11-23 15:52:26', 196.00, '小草微醉', '', 47, 41.00);
INSERT INTO `g_record` VALUES ('52edfc6d-8a9f-11ee-a47c-0242ac110002', '2023-11-24 15:58:59', 197.00, '小草微醉', '', 47, 1.00);
INSERT INTO `g_record` VALUES ('cfaccec6-8ccd-11ee-af4d-0242ac110002', '2023-11-27 10:36:47', 221.00, '小草微醉', '', 48, 24.00);
INSERT INTO `g_record` VALUES ('07e168df-8d8c-11ee-af4d-0242ac110002', '2023-11-28 09:18:26', 233.00, '小草微醉', '', 48, 12.00);
INSERT INTO `g_record` VALUES ('accad087-8e58-11ee-af4d-0242ac110002', '2023-11-29 09:43:20', 243.00, '小草微醉', '2222', 48, 10.00);
INSERT INTO `g_record` VALUES ('24f86070-8fe6-11ee-af4d-0242ac110002', '2023-11-30 09:08:18', 252.00, '小草微醉', '', 48, 9.00);
INSERT INTO `g_record` VALUES ('2f7c06cf-8fe6-11ee-af4d-0242ac110002', '2023-12-01 09:08:33', 257.00, '小草微醉', '', 48, 5.00);
INSERT INTO `g_record` VALUES ('d7b031a3-9240-11ee-af4d-0242ac110002', '2023-12-02 09:02:32', 263.00, '小草微醉', '', 48, 6.00);
INSERT INTO `g_record` VALUES ('df55be71-9240-11ee-af4d-0242ac110002', '2023-12-03 09:02:50', 271.00, '小草微醉', '', 49, 8.00);
INSERT INTO `g_record` VALUES ('e5773e9c-9240-11ee-af4d-0242ac110002', '2023-12-04 09:03:04', 277.00, '小草微醉', '', 49, 6.00);
INSERT INTO `g_record` VALUES ('a439ee2f-9314-11ee-af4d-0242ac110002', '2023-12-05 10:18:49', 285.00, '小草微醉', '卖掉：70的残破洗练石', 49, 8.00);
INSERT INTO `g_record` VALUES ('41575696-93d2-11ee-af4d-0242ac110002', '2023-12-06 08:56:09', 293.00, '小草微醉', '周一收获的 战鼓精华x2，卖掉了', 49, 8.00);
INSERT INTO `g_record` VALUES ('f770701c-94c5-11ee-af4d-0242ac110002', '2023-12-07 14:00:39', 310.00, '小草微醉', '', 49, 17.00);
INSERT INTO `g_record` VALUES ('49f145da-956c-11ee-af4d-0242ac110002', '2023-12-08 09:51:12', 316.00, '小草微醉', '帮战40胜，淬炼露卖了2w', 49, 6.00);
INSERT INTO `g_record` VALUES ('2adfea21-97c9-11ee-b0b7-0242ac110002', '2023-12-11 09:42:01', 345.00, '小草微醉', '', 50, 29.00);
INSERT INTO `g_record` VALUES ('5f7d2102-9891-11ee-b0b7-0242ac110002', '2023-12-12 09:53:52', 349.00, '小草微醉', '买珍珠修装备 耗费1.6w', 50, 4.00);
INSERT INTO `g_record` VALUES ('d8d9f15c-9958-11ee-b0b7-0242ac110002', '2023-12-13 09:42:12', 361.00, '小草微醉', '', 50, 12.00);
INSERT INTO `g_record` VALUES ('98579980-9a48-11ee-851b-0242ac110002', '2023-12-14 14:18:21', 366.00, '小草微醉', '', 50, 5.00);
INSERT INTO `g_record` VALUES ('1192a3fe-9af2-11ee-8fdf-0242ac110002', '2023-12-15 10:31:21', 369.00, '小草微醉', '最近玩的比较少', 50, 3.00);
INSERT INTO `g_record` VALUES ('034a300e-9d48-11ee-8fdf-0242ac110002', '2023-12-18 09:51:36', 393.00, '小草微醉', '', 51, 24.00);
INSERT INTO `g_record` VALUES ('e3f67fe9-9e12-11ee-8fdf-0242ac110002', '2023-12-19 10:03:50', 404.00, '小草微醉', '卖了2个神兜兜', 51, 11.00);
INSERT INTO `g_record` VALUES ('806364e7-9edd-11ee-8fdf-0242ac110002', '2023-12-20 10:14:14', 418.00, '小草微醉', '高级必杀卖了', 51, 14.00);
INSERT INTO `g_record` VALUES ('5a196503-9fe5-11ee-8fdf-0242ac110002', '2023-12-21 17:43:05', 424.00, '小草微醉', '', 51, 6.00);
INSERT INTO `g_record` VALUES ('4517319f-a068-11ee-8fdf-0242ac110002', '2023-12-22 09:20:11', 425.00, '小草微醉', '', 51, 1.00);
INSERT INTO `g_record` VALUES ('a7d4a9a2-a2f5-11ee-abc4-0242ac110002', '2023-12-25 15:16:50', 451.00, '小草微醉', '几个80、90品的晶石卖了', 52, 26.00);
INSERT INTO `g_record` VALUES ('20d3f27f-a38d-11ee-a7fc-0242ac110002', '2023-12-26 09:21:20', 460.00, '小草微醉', '九转天阶奖励卖掉', 52, 9.00);
INSERT INTO `g_record` VALUES ('852436e6-a452-11ee-a7fc-0242ac110002', '2023-12-27 08:54:12', 365.00, '小草微醉', '买了个90简易加魔的衣服 88w和垃圾器灵15w', 52, -95.00);
INSERT INTO `g_record` VALUES ('d1809644-a529-11ee-a7fc-0242ac110002', '2023-12-28 10:35:45', 372.00, '小草微醉', '', 52, 7.00);
INSERT INTO `g_record` VALUES ('8b5d93ff-a9db-11ee-8de3-0242ac110002', '2024-01-02 09:56:22', 21.00, '小草微醉', '买了超级泡泡330w和宝宝装备，20个元宵', 1, -350.00);
INSERT INTO `g_record` VALUES ('ad35f611-a9db-11ee-8de3-0242ac110002', '2024-01-03 09:58:27', 9.00, '小草微醉', '买了6个神兜兜', 1, -12.00);
INSERT INTO `g_record` VALUES ('46315591-aa9e-11ee-a747-0242ac110002', '2024-01-04 09:11:42', 7.00, '小草微醉', '总量：神兜兜x9', 1, -2.00);
INSERT INTO `g_record` VALUES ('58981106-ab63-11ee-a747-0242ac110002', '2024-01-05 08:41:49', 4.00, '小草微醉', '神兜兜*10', 1, -3.00);
INSERT INTO `g_record` VALUES ('2940ad1c-ae96-11ee-a747-0242ac110002', '2024-01-09 10:22:59', 0.50, '小草微醉', '神兜兜*24，没仙玉买每周的银钥匙。149', 2, 0.00);
INSERT INTO `g_record` VALUES ('04abb08f-b01f-11ee-824b-0242ac110002', '2024-01-11 09:15:49', 1.00, '小草微醉', ' 打九转浪费不少金买大药', 2, 0.00);
INSERT INTO `g_record` VALUES ('c101feac-b115-11ee-824b-0242ac110002', '2024-01-12 14:42:23', 5.00, '小草微醉', '', 2, 4.00);
INSERT INTO `g_record` VALUES ('6dc043fc-b341-11ee-824b-0242ac110002', '2024-01-15 08:59:38', 16.00, '小草微醉', '神兜兜*13，648', 3, 0.00);
INSERT INTO `g_record` VALUES ('32050c90-b40c-11ee-824b-0242ac110002', '2024-01-16 09:11:08', 0.30, '小草微醉', '神兜兜*20. 泡泡升级到1.26', 3, -15.70);
INSERT INTO `g_record` VALUES ('d5804d17-b59d-11ee-824b-0242ac110002', '2024-01-18 09:06:21', 5.00, '小草微醉', '神兜兜*1', 3, 0.00);
INSERT INTO `g_record` VALUES ('3c471383-b665-11ee-824b-0242ac110002', '2024-01-19 08:53:55', 9.00, '小草微醉', '神兜兜*1', 3, 4.00);
INSERT INTO `g_record` VALUES ('5907a451-b8c3-11ee-824b-0242ac110002', '2024-01-22 09:12:31', 52.00, '小草微醉', '神兜兜*3.21个淬灵露卖了', 4, 0.00);
INSERT INTO `g_record` VALUES ('ce97cc31-b98c-11ee-824b-0242ac110002', '2024-01-23 09:14:44', 53.00, '小草微醉', '', 4, 1.00);
INSERT INTO `g_record` VALUES ('dba3a7fe-ba57-11ee-824b-0242ac110002', '2024-01-24 09:28:07', 67.00, '小草微醉', '', 4, 14.00);
INSERT INTO `g_record` VALUES ('fb77e822-bb4b-11ee-824b-0242ac110002', '2024-01-25 14:35:04', 2.00, '小草微醉', '买了18个神兜兜。泡泡1.3了', 4, -65.00);
INSERT INTO `g_record` VALUES ('87093d5c-be41-11ee-b151-0242ac110002', '2024-01-29 08:58:19', 1.00, '小草微醉', '神兜兜*10', 5, 0.00);
INSERT INTO `g_record` VALUES ('ebd0f487-bf10-11ee-b151-0242ac110002', '2024-01-30 09:43:10', 2.00, '小草微醉', '', 5, 1.00);
INSERT INTO `g_record` VALUES ('eb99b637-bfd9-11ee-b151-0242ac110002', '2024-01-31 09:41:51', 4.00, '小草微醉', '神兜兜*11', 5, 2.00);
INSERT INTO `g_record` VALUES ('39eff3eb-c0a6-11ee-b151-0242ac110002', '2024-02-01 10:04:21', 15.00, '小草微醉', '', 5, 0.00);
INSERT INTO `g_record` VALUES ('a560d2a1-c16d-11ee-bbd3-0242ac110002', '2024-02-02 09:51:39', 0.00, '小草微醉', '神兜兜*16', 5, 0.00);
INSERT INTO `g_record` VALUES ('8ec227bf-cdf7-11ee-bbd3-0242ac110002', '2024-02-10 08:48:59', 0.00, '小草微醉', '目标已达成', 6, 0.00);
INSERT INTO `g_record` VALUES ('fb115939-cdf7-11ee-bbd3-0242ac110002', '2024-02-18 08:52:11', 141.00, '小草微醉', '起点', 8, 0.00);
INSERT INTO `g_record` VALUES ('15f66177-d083-11ee-8244-0242ac110002', '2024-02-21 14:32:50', 202.00, '小草微醉', '抽的衣服卖了', 8, 0.00);
INSERT INTO `g_record` VALUES ('98a1baee-d122-11ee-8244-0242ac110002', '2024-02-22 09:34:52', 211.00, '小草微醉', '', 8, 9.00);
INSERT INTO `g_record` VALUES ('394575e0-d1f9-11ee-8244-0242ac110002', '2024-02-22 23:11:30', 300.00, '小草微醉', '冲了600块', 8, 89.00);
INSERT INTO `g_record` VALUES ('616beaf5-d1f9-11ee-8244-0242ac110002', '2024-02-23 11:11:50', 0.00, '小草微醉', '已买144法伤，单加32魔枪', 8, 0.00);

-- ----------------------------
-- Table structure for g_target
-- ----------------------------
DROP TABLE IF EXISTS `g_target`;
CREATE TABLE `g_target`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_target
-- ----------------------------
INSERT INTO `g_target` VALUES ('d9dd612d-b5ca-11ee-824b-0242ac110002', '购买超级泡泡', '2023-11-20 00:00:00', '2023-12-30 00:00:00', '330买1.8的，400买1.22 都可以', '已达成', 330.00, '娱乐');
INSERT INTO `g_target` VALUES ('a2c2ab87-b5cc-11ee-824b-0242ac110002', '升满超级泡泡', '2024-01-01 00:00:00', NULL, '6JN和1.3成长,90*神兜兜+万灵果*1', '已达成', 310.00, '娱乐');
INSERT INTO `g_target` VALUES ('3d059646-be78-11ee-b151-0242ac110002', '2024年旅游基金', '2024-03-29 00:00:00', NULL, '攒点钱出去玩，预计一周时间', '未开始', 2.00, '生活');
INSERT INTO `g_target` VALUES ('502e8b9f-c0d2-11ee-b151-0242ac110002', '2024年读10本书', '2024-02-01 00:00:00', NULL, '24年读十本书', '进行中', 10.00, '生活');
INSERT INTO `g_target` VALUES ('aed07573-cdf7-11ee-bbd3-0242ac110002', '购买简易加魔武器', '2024-02-18 00:00:00', '2024-02-23 00:00:00', '单加42以上，双加都可以', '已达成', 300.00, '娱乐');
INSERT INTO `g_target` VALUES ('849bf8f5-d1f9-11ee-8244-0242ac110002', '枪熔炼满，买个器灵', '2024-02-23 00:00:00', NULL, '', '进行中', 100.00, '娱乐');
INSERT INTO `g_target` VALUES ('8be361f2-d44a-11ee-8244-0242ac110002', '生活环境改造', '2024-02-26 00:00:00', NULL, '', '未开始', 0.00, '生活');
INSERT INTO `g_target` VALUES ('93596921-d44a-11ee-8244-0242ac110002', '一口气5公里', '2024-02-26 00:00:00', NULL, '', '未开始', 0.00, '生活');

-- ----------------------------
-- Table structure for g_user
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user`  (
  `user_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_level` int NULL DEFAULT NULL,
  `school` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `logoUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_user
-- ----------------------------
INSERT INTO `g_user` VALUES ('小草微醉', 89, '须弥海', 'e4a10a9e-995f-11ee-b0b7-0242ac110002', '../image/touxiang.jpg', '男', '剑侠客', '时间就是金钱，挂机三个月！');
INSERT INTO `g_user` VALUES ('小草喵喵', 89, '魔王寨', 'e4a10a9e-995f-11ee-b0b7-0242ac110003', '../image/miaomiao.jpeg', '女', '猫千骨', '1234567489！');

-- ----------------------------
-- Table structure for life_person
-- ----------------------------
DROP TABLE IF EXISTS `life_person`;
CREATE TABLE `life_person`  (
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `logoUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of life_person
-- ----------------------------
INSERT INTO `life_person` VALUES ('张毅', '1a46456c-be7c-11ee-b151-0242ac110002', '男', '111', '../image/IMG3.jpg');
INSERT INTO `life_person` VALUES ('李瑞雪', '2a46456c-be7c-11ee-b151-0242ac110002', '女', '222', '../image/IMG4.jpg');
INSERT INTO `life_person` VALUES ('张沐阳', '3a46456c-be7c-11ee-b151-0242ac110002', '男', '333', '../image/tuntun.jpg');

-- ----------------------------
-- Table structure for life_record
-- ----------------------------
DROP TABLE IF EXISTS `life_record`;
CREATE TABLE `life_record`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `record_time` datetime NULL DEFAULT NULL,
  `day_amount` decimal(10, 2) NULL DEFAULT NULL,
  `person_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `cur_amount` decimal(10, 2) NULL DEFAULT NULL,
  `person_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `target_amount` decimal(10, 2) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of life_record
-- ----------------------------
INSERT INTO `life_record` VALUES ('935aeb98-c0dc-11ee-b151-0242ac110002', '2024-02-01 16:33:25', NULL, '张毅', '《隋武帝》', 23.00, '张毅', NULL, '《隋武帝传》');
INSERT INTO `life_record` VALUES ('0fe52910-cdf8-11ee-bbd3-0242ac110002', '2024-02-18 08:52:51', NULL, '张毅', '', 30.00, '张毅', NULL, '《隋武帝传》');
INSERT INTO `life_record` VALUES ('c147ccd2-d122-11ee-8244-0242ac110002', '2024-02-22 09:35:25', NULL, '张毅', '66分钟，听完了。\n人生三件事：自己的事，他人的事，老天的事', 0.00, '张毅', NULL, '樊登读书《人生只有一件事》');
INSERT INTO `life_record` VALUES ('5e68d292-d44a-11ee-8244-0242ac110002', '2024-02-26 09:56:16', NULL, '张毅', '【有道云笔记】《极简法则》\nhttps://note.youdao.com/s/duVEVYsa', 0.00, '张毅', NULL, '《极简法则》');

SET FOREIGN_KEY_CHECKS = 1;
