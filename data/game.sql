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

 Date: 28/08/2024 15:14:58
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `g_record` VALUES ('54cd22d7-f08b-11ee-9f02-0242ac110002', '2024-04-02 08:52:31', 11.00, '小草微醉', '3个12段了', 14, 0.00);
INSERT INTO `g_record` VALUES ('ec46f979-f154-11ee-9f02-0242ac110002', '2024-04-03 08:55:21', 0.00, '小草微醉', '1个10段，1个9段。+3个12段', 14, 0.00);
INSERT INTO `g_record` VALUES ('9066d9e4-f899-11ee-9f02-0242ac110002', '2024-04-12 14:54:40', 0.00, '小草微醉', '已经达成4个12段', 15, 0.00);
INSERT INTO `g_record` VALUES ('119d92f8-f89a-11ee-9f02-0242ac110002', '2024-04-13 14:58:02', 0.00, '小草微醉', '真坑，银币完全不够熔炼的', 15, 0.00);
INSERT INTO `g_record` VALUES ('12c49968-01d7-11ef-ba0c-0242ac110002', '2024-04-24 09:07:37', 0.00, '小草微醉', '今天开始', 17, 0.00);
INSERT INTO `g_record` VALUES ('a5968667-02cf-11ef-ba0c-0242ac110002', '2024-04-25 14:47:04', 0.00, '小草微醉', '毫无进展', 17, 0.00);
INSERT INTO `g_record` VALUES ('182ad8f7-0368-11ef-ba0c-0242ac110002', '2024-04-26 08:57:59', 0.00, '小草微醉', '最近没人卖锤子', 17, 0.00);
INSERT INTO `g_record` VALUES ('305e7818-04fd-11ef-8fd0-0242ac110002', '2024-04-28 09:18:01', 12.00, '小草微醉', '', 18, 0.00);
INSERT INTO `g_record` VALUES ('f6e4b73c-05c3-11ef-8fd0-0242ac110002', '2024-04-29 09:00:59', 14.00, '小草微醉', '3.75一个标准价', 18, 2.00);
INSERT INTO `g_record` VALUES ('8930742f-068a-11ef-8fd0-0242ac110002', '2024-04-30 08:42:30', 18.00, '小草微醉', '', 18, 4.00);
INSERT INTO `g_record` VALUES ('f5c92975-0b40-11ef-8fd0-0242ac110002', '2024-05-06 08:38:25', 43.00, '小草微醉', '', 19, 0.00);
INSERT INTO `g_record` VALUES ('ec3490a6-0c0b-11ef-8fd0-0242ac110002', '2024-05-07 08:51:05', 45.00, '小草微醉', '', 19, 2.00);
INSERT INTO `g_record` VALUES ('c1420de0-0cd3-11ef-8fd0-0242ac110002', '2024-05-08 08:41:44', 47.00, '小草微醉', '', 19, 2.00);
INSERT INTO `g_record` VALUES ('726c2105-0d9d-11ef-8fd0-0242ac110002', '2024-05-09 08:45:31', 50.00, '小草微醉', '', 19, 3.00);
INSERT INTO `g_record` VALUES ('eaf07aa8-0e68-11ef-8fd0-0242ac110002', '2024-05-10 09:02:01', 52.00, '小草微醉', '', 19, 2.00);
INSERT INTO `g_record` VALUES ('1edd6ed1-0f32-11ef-98c3-0242ac110002', '2024-05-11 09:02:17', 55.00, '小草微醉', '', 19, 3.00);
INSERT INTO `g_record` VALUES ('cd1d2561-10c2-11ef-bba6-0242ac110002', '2024-05-13 08:50:27', 61.00, '小草微醉', '', 20, 0.00);
INSERT INTO `g_record` VALUES ('f3cf5b88-118c-11ef-bba6-0242ac110002', '2024-05-14 08:57:26', 65.00, '小草微醉', '', 20, 4.00);
INSERT INTO `g_record` VALUES ('0829db09-1255-11ef-bba6-0242ac110002', '2024-05-15 08:49:43', 69.00, '小草微醉', '', 20, 4.00);
INSERT INTO `g_record` VALUES ('3ec3e767-131f-11ef-bbb4-0242ac110002', '2024-05-16 08:57:14', 71.00, '小草微醉', '', 20, 2.00);
INSERT INTO `g_record` VALUES ('045ad6b6-1644-11ef-bbb4-0242ac110002', '2024-05-20 08:57:52', 78.00, '小草微醉', '', 21, 0.00);
INSERT INTO `g_record` VALUES ('377b2d46-17d8-11ef-a85d-0242ac110002', '2024-05-22 09:11:22', 81.00, '小草微醉', '', 21, 0.00);
INSERT INTO `g_record` VALUES ('1c48f811-196b-11ef-aaf3-0242ac110002', '2024-05-24 09:15:23', 86.00, '小草微醉', '', 21, 0.00);
INSERT INTO `g_record` VALUES ('4f82df75-1bc5-11ef-aaf3-0242ac110002', '2024-05-27 09:06:03', 89.00, '小草微醉', '', 22, 0.00);
INSERT INTO `g_record` VALUES ('6848fa87-1c8f-11ef-aaf3-0242ac110002', '2024-05-28 09:12:42', 94.00, '小草微醉', '', 22, 5.00);
INSERT INTO `g_record` VALUES ('7b78ccde-1d55-11ef-aaf3-0242ac110002', '2024-05-29 08:50:24', 97.00, '小草微醉', '', 22, 3.00);
INSERT INTO `g_record` VALUES ('ace59012-1e1e-11ef-aaf3-0242ac110002', '2024-05-30 08:50:46', 98.00, '小草微醉', '', 22, 1.00);
INSERT INTO `g_record` VALUES ('9a0b921c-1ee9-11ef-aaf3-0242ac110002', '2024-05-31 09:03:23', 100.00, '小草微醉', '', 22, 2.00);
INSERT INTO `g_record` VALUES ('854247ea-216f-11ef-aaf3-0242ac110002', '2024-06-03 14:07:01', 106.00, '小草微醉', '', 23, 0.00);
INSERT INTO `g_record` VALUES ('f0008877-220c-11ef-9f8f-0242ac110002', '2024-06-04 08:53:22', 108.00, '小草微醉', '', 23, 3.00);
INSERT INTO `g_record` VALUES ('9f01faf4-22d7-11ef-9f8f-0242ac110002', '2024-06-05 09:04:51', 111.00, '小草微醉', '', 23, 3.00);
INSERT INTO `g_record` VALUES ('58c348b8-239e-11ef-9f8f-0242ac110002', '2024-06-06 08:47:19', 113.00, '小草微醉', '', 23, 2.00);
INSERT INTO `g_record` VALUES ('dab70bb5-2466-11ef-9f8f-0242ac110002', '2024-06-07 08:42:38', 114.00, '小草微醉', '', 23, 1.00);
INSERT INTO `g_record` VALUES ('98722632-2791-11ef-b7c0-0242ac110002', '2024-06-11 09:25:46', 116.00, '小草微醉', '生病几天，无进展', 24, 0.00);
INSERT INTO `g_record` VALUES ('2db09908-2866-11ef-b7c0-0242ac110002', '2024-06-12 10:47:16', 121.00, '小草微醉', '', 24, 5.00);
INSERT INTO `g_record` VALUES ('37aac391-2926-11ef-b7c0-0242ac110002', '2024-06-13 09:42:29', 122.00, '小草微醉', '', 24, 1.00);
INSERT INTO `g_record` VALUES ('4354cd14-29e6-11ef-b7c0-0242ac110002', '2024-06-14 08:37:19', 123.00, '小草微醉', '', 24, 1.00);
INSERT INTO `g_record` VALUES ('acc97cc8-2c44-11ef-b7c0-0242ac110002', '2024-06-17 08:57:54', 132.00, '小草微醉', '', 25, 0.00);
INSERT INTO `g_record` VALUES ('e91facda-2d0c-11ef-b7c0-0242ac110002', '2024-06-18 08:51:27', 135.00, '小草微醉', '', 25, 3.00);
INSERT INTO `g_record` VALUES ('51148931-2dd8-11ef-b93c-0242ac110002', '2024-06-19 09:07:29', 139.00, '小草微醉', '九转天阶奖励全卖', 25, 4.00);
INSERT INTO `g_record` VALUES ('22052441-2eac-11ef-b93c-0242ac110002', '2024-06-20 10:23:43', 140.00, '小草微醉', '', 25, 1.00);
INSERT INTO `g_record` VALUES ('74eeab5a-2f70-11ef-b93c-0242ac110002', '2024-06-21 09:48:57', 147.00, '小草微醉', '昨天补回了', 25, 7.00);
INSERT INTO `g_record` VALUES ('0465620c-31c5-11ef-b93c-0242ac110002', '2024-06-24 08:59:23', 154.00, '小草微醉', '', 26, 0.00);
INSERT INTO `g_record` VALUES ('a4d009b5-328b-11ef-b93c-0242ac110002', '2024-06-25 08:41:10', 157.00, '小草微醉', '', 26, 0.00);
INSERT INTO `g_record` VALUES ('fee2abe7-3356-11ef-b93c-0242ac110002', '2024-06-26 08:56:54', 159.00, '小草微醉', '', 26, 2.00);
INSERT INTO `g_record` VALUES ('df7f9b06-3426-11ef-b93c-0242ac110002', '2024-06-27 09:44:58', 161.00, '小草微醉', '', 26, 2.00);
INSERT INTO `g_record` VALUES ('64864970-34ea-11ef-b93c-0242ac110002', '2024-06-28 09:04:29', 164.00, '小草微醉', '', 26, 2.00);
INSERT INTO `g_record` VALUES ('dbdd27bb-3744-11ef-b6d5-0242ac110002', '2024-07-01 08:57:05', 169.00, '小草微醉', '最近奖励真烂', 27, 0.00);
INSERT INTO `g_record` VALUES ('38342a4d-380f-11ef-b6d5-0242ac110002', '2024-07-02 09:05:36', 171.00, '小草微醉', '赚钱有点难', 27, 2.00);
INSERT INTO `g_record` VALUES ('3191b53e-3912-11ef-a102-0242ac110002', '2024-07-03 15:59:33', 172.00, '小草微醉', '', 27, 1.00);
INSERT INTO `g_record` VALUES ('0a47a330-39a1-11ef-a102-0242ac110002', '2024-07-04 09:02:04', 173.00, '小草微醉', '啥都卖不动', 27, 1.00);
INSERT INTO `g_record` VALUES ('7f2623f9-3cc3-11ef-a102-0242ac110002', '2024-07-08 08:46:12', 180.00, '小草微醉', '', 28, 0.00);
INSERT INTO `g_record` VALUES ('00061824-3d8f-11ef-82dd-0242ac110002', '2024-07-09 09:02:59', 188.00, '小草微醉', '', 28, 8.00);
INSERT INTO `g_record` VALUES ('142d6939-3e57-11ef-acd5-0242ac110002', '2024-07-10 08:55:13', 192.00, '小草微醉', '', 28, 4.00);
INSERT INTO `g_record` VALUES ('6f68ef8d-3ea1-11ef-acd5-0242ac110002', '2024-07-11 07:47:06', 33.00, '小草微醉', '正式开始', 28, 0.00);
INSERT INTO `g_record` VALUES ('b1769cae-4023-11ef-acd5-0242ac110002', '2024-07-12 15:52:27', 38.00, '小草微醉', '', 28, 5.00);
INSERT INTO `g_record` VALUES ('2c3745bb-4246-11ef-acd5-0242ac110002', '2024-07-15 09:04:18', 50.00, '小草微醉', '今天九转天阶结算，没冲到前100有点遗憾', 29, 0.00);
INSERT INTO `g_record` VALUES ('5f14a0c4-430e-11ef-acd5-0242ac110002', '2024-07-16 08:57:22', 70.00, '小草微醉', '', 29, 20.00);
INSERT INTO `g_record` VALUES ('7b71b93b-43dd-11ef-9b8c-0242ac110002', '2024-07-17 09:39:56', 79.00, '小草微醉', '', 29, 9.00);
INSERT INTO `g_record` VALUES ('fcfea242-44a0-11ef-9b8c-0242ac110002', '2024-07-18 08:59:25', 81.00, '小草微醉', '', 29, 2.00);
INSERT INTO `g_record` VALUES ('192e8186-4566-11ef-9b8c-0242ac110002', '2024-07-19 08:30:24', 100.00, '小草微醉', '', 29, 19.00);
INSERT INTO `g_record` VALUES ('d005d53a-47c4-11ef-9b8c-0242ac110002', '2024-07-22 08:53:24', 135.00, '小草微醉', '', 30, 0.00);
INSERT INTO `g_record` VALUES ('132c3ca5-488f-11ef-9b8c-0242ac110002', '2024-07-23 09:01:17', 148.00, '小草微醉', '', 30, 13.00);
INSERT INTO `g_record` VALUES ('a4cb49c0-4958-11ef-9b8c-0242ac110002', '2024-07-24 09:04:09', 165.00, '小草微醉', '', 30, 17.00);
INSERT INTO `g_record` VALUES ('36e17c9c-4a22-11ef-9b8c-0242ac110002', '2024-07-25 09:07:00', 177.00, '小草微醉', '', 30, 0.00);
INSERT INTO `g_record` VALUES ('0cec4ea4-4aeb-11ef-9b8c-0242ac110002', '2024-07-26 09:04:40', 186.00, '小草微醉', '', 30, 9.00);
INSERT INTO `g_record` VALUES ('7e8e39ee-4d46-11ef-9b8c-0242ac110002', '2024-07-29 09:04:20', 208.00, '小草微醉', '', 31, 0.00);
INSERT INTO `g_record` VALUES ('df706bf4-4e0f-11ef-9b8c-0242ac110002', '2024-07-30 09:10:34', 198.00, '小草微醉', '花钱整了个4吸垃圾宝宝', 31, -10.00);
INSERT INTO `g_record` VALUES ('70b8deda-4ed8-11ef-9b8c-0242ac110002', '2024-07-31 09:01:32', 212.00, '小草微醉', '', 31, 14.00);
INSERT INTO `g_record` VALUES ('5004ecc1-4fa2-11ef-9b8c-0242ac110002', '2024-08-01 09:06:37', 221.00, '小草微醉', '', 31, 9.00);
INSERT INTO `g_record` VALUES ('36155f11-506b-11ef-9b8c-0242ac110002', '2024-08-02 09:04:41', 228.00, '小草微醉', '', 31, 7.00);
INSERT INTO `g_record` VALUES ('f06137d3-51fd-11ef-9b8c-0242ac110002', '2024-08-04 09:07:29', 243.00, '小草微醉', '', 32, 0.00);
INSERT INTO `g_record` VALUES ('942ef8a2-52c6-11ef-8512-0242ac110002', '2024-08-05 09:03:45', 253.00, '小草微醉', '', 32, 10.00);
INSERT INTO `g_record` VALUES ('60f76980-538f-11ef-8512-0242ac110002', '2024-08-06 09:01:09', 257.00, '小草微醉', '', 32, 4.00);
INSERT INTO `g_record` VALUES ('79af5415-5457-11ef-8512-0242ac110002', '2024-08-07 08:53:30', 264.00, '小草微醉', '', 32, 7.00);
INSERT INTO `g_record` VALUES ('056b0ea7-5521-11ef-8512-0242ac110002', '2024-08-08 08:56:14', 269.00, '小草微醉', '', 32, 5.00);
INSERT INTO `g_record` VALUES ('85c48291-55eb-11ef-8512-0242ac110002', '2024-08-09 09:05:47', 285.00, '小草微醉', '', 32, 16.00);
INSERT INTO `g_record` VALUES ('a3f8cc43-5846-11ef-9cd4-0242ac110002', '2024-08-12 09:03:04', 314.00, '小草微醉', '', 33, 0.00);
INSERT INTO `g_record` VALUES ('5f5c24c4-590f-11ef-9cd4-0242ac110002', '2024-08-13 08:59:59', 333.00, '小草微醉', '', 33, 19.00);
INSERT INTO `g_record` VALUES ('4e9b2f17-59da-11ef-9cd4-0242ac110002', '2024-08-14 09:12:38', 344.00, '小草微醉', '', 33, 11.00);
INSERT INTO `g_record` VALUES ('712421de-5a9e-11ef-9cd4-0242ac110002', '2024-08-15 08:36:35', 350.00, '小草微醉', '', 33, 0.00);
INSERT INTO `g_record` VALUES ('022d5521-5b69-11ef-ba00-0242ac110002', '2024-08-16 08:46:39', 358.00, '小草微醉', '', 33, 8.00);
INSERT INTO `g_record` VALUES ('1e99b4bd-5dc6-11ef-ba00-0242ac110002', '2024-08-19 08:58:12', 388.00, '小草微醉', '', 34, 0.00);
INSERT INTO `g_record` VALUES ('244a5f36-5eba-11ef-ba00-0242ac110002', '2024-08-20 14:04:56', 393.00, '小草微醉', '', 34, 5.00);
INSERT INTO `g_record` VALUES ('336884bf-5f59-11ef-95fd-0242ac110002', '2024-08-21 09:03:34', 404.00, '小草微醉', '', 34, 11.00);
INSERT INTO `g_record` VALUES ('a27de3ce-601f-11ef-95fd-0242ac110002', '2024-08-22 08:44:01', 414.00, '小草微醉', '', 34, 10.00);
INSERT INTO `g_record` VALUES ('2bb9184c-60ec-11ef-95fd-0242ac110002', '2024-08-23 09:08:08', 421.00, '小草微醉', '', 34, 7.00);
INSERT INTO `g_record` VALUES ('22af0271-6345-11ef-95fd-0242ac110002', '2024-08-26 08:50:01', 438.00, '小草微醉', '', 35, 0.00);
INSERT INTO `g_record` VALUES ('31bc48b2-640f-11ef-95fd-0242ac110002', '2024-08-27 08:56:24', 453.00, '小草微醉', '', 35, 15.00);
INSERT INTO `g_record` VALUES ('d078cae5-64db-11ef-95fd-0242ac110002', '2024-08-28 09:21:07', 465.00, '小草微醉', '', 35, 12.00);

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
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of g_target
-- ----------------------------
INSERT INTO `g_target` VALUES ('d9dd612d-b5ca-11ee-824b-0242ac110002', '购买超级泡泡', '2023-11-20 00:00:00', '2023-12-30 00:00:00', '330买1.8的，400买1.22 都可以', '已达成', 330.00, '娱乐', '万');
INSERT INTO `g_target` VALUES ('a2c2ab87-b5cc-11ee-824b-0242ac110002', '升满超级泡泡', '2024-01-01 00:00:00', '2024-02-12 00:00:00', '6JN和1.3成长,90*神兜兜+万灵果*1', '已达成', 310.00, '娱乐', '万');
INSERT INTO `g_target` VALUES ('3d059646-be78-11ee-b151-0242ac110002', '2024年旅游基金', '2024-03-29 00:00:00', NULL, '攒点钱出去玩，预计一周时间', '未开始', 2.00, '生活', '元');
INSERT INTO `g_target` VALUES ('502e8b9f-c0d2-11ee-b151-0242ac110002', '2024年持续读书', '2024-02-01 00:00:00', NULL, '24年起码读十本书', '进行中', 10.00, '生活', '本');
INSERT INTO `g_target` VALUES ('aed07573-cdf7-11ee-bbd3-0242ac110002', '购买简易加魔武器', '2024-02-18 00:00:00', '2024-02-23 00:00:00', '单加42以上，双加都可以', '已达成', 300.00, '娱乐', '万');
INSERT INTO `g_target` VALUES ('849bf8f5-d1f9-11ee-8244-0242ac110002', '枪熔炼满，买个器灵', '2024-04-13 00:00:00', NULL, '', '暂停', 100.00, '娱乐', '万');
INSERT INTO `g_target` VALUES ('8be361f2-d44a-11ee-8244-0242ac110002', '生活环境改造', '2024-02-26 00:00:00', NULL, '', '未开始', 0.00, '生活', '元');
INSERT INTO `g_target` VALUES ('93596921-d44a-11ee-8244-0242ac110002', '一口气5公里', '2024-02-26 00:00:00', NULL, '', '未开始', 0.00, '生活', '万');
INSERT INTO `g_target` VALUES ('e033a5d8-e2a1-11ee-9338-0242ac110002', '4个12锻舍利子', '2024-03-15 00:00:00', '2024-04-12 00:00:00', '', '已达成', 0.00, '娱乐', '公里');
INSERT INTO `g_target` VALUES ('f1627f66-01d6-11ef-ba0c-0242ac110002', '192个锤子', '2024-04-24 00:00:00', '2024-07-10 00:00:00', '4个13段舍利子', '已达成', 192.00, '娱乐', '个');
INSERT INTO `g_target` VALUES ('54b013bb-3ea1-11ef-acd5-0242ac110002', '超级神鼠', '2024-07-11 00:00:00', '2024-10-10 00:00:00', '', '进行中', 750.00, '娱乐', '万');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `logoUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of life_person
-- ----------------------------
INSERT INTO `life_person` VALUES ('张沐阳', '3a46456c-be7c-11ee-b151-0242ac110002', '男', '333', '../image/tuntun.jpg', NULL, NULL);
INSERT INTO `life_person` VALUES ('张毅', '4a46456c-be7c-11ee-b151-0242ac110002', '男', '4444', '../image/IMG3.jpg', '123456', 'zhangy04');
INSERT INTO `life_person` VALUES ('李瑞雪', '2a46456c-be7c-11ee-b151-0242ac110002', '女', '222', '../image/IMG4.jpg', '123456', 'liruixue');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of life_record
-- ----------------------------
INSERT INTO `life_record` VALUES ('935aeb98-c0dc-11ee-b151-0242ac110002', '2024-02-01 16:33:25', NULL, '张毅', '《隋武帝》', 23.00, '张毅', NULL, '《隋武帝传》');
INSERT INTO `life_record` VALUES ('0fe52910-cdf8-11ee-bbd3-0242ac110002', '2024-02-18 08:52:51', NULL, '张毅', '', 30.00, '张毅', NULL, '《隋武帝传》');
INSERT INTO `life_record` VALUES ('c147ccd2-d122-11ee-8244-0242ac110002', '2024-02-22 09:35:25', NULL, '张毅', '66分钟，听完了。\n人生三件事：自己的事，他人的事，老天的事', 0.00, '张毅', NULL, '樊登读书《人生只有一件事》');
INSERT INTO `life_record` VALUES ('5e68d292-d44a-11ee-8244-0242ac110002', '2024-02-26 09:56:16', NULL, '张毅', '【有道云笔记】《极简法则》\nhttps://note.youdao.com/s/duVEVYsa', 0.00, '张毅', NULL, '《极简法则》');
INSERT INTO `life_record` VALUES ('9ca97592-e2a1-11ee-9338-0242ac110002', '2024-03-15 15:56:34', NULL, '张毅', '【有道云笔记】《理性的边界》\nhttps://note.youdao.com/s/6oKwsNIC', 0.00, '张毅', NULL, '《理性的边界》');
INSERT INTO `life_record` VALUES ('b0848519-e2a1-11ee-9338-0242ac110002', '2024-03-12 15:57:06', NULL, '张毅', '【有道云笔记】《变好的方法》\nhttps://note.youdao.com/s/QmIxIUJa', 0.00, '张毅', NULL, '《变好的方法》');
INSERT INTO `life_record` VALUES ('be117bb4-e2a1-11ee-9338-0242ac110002', '2024-03-15 15:57:39', NULL, '张毅', '【有道云笔记】《心态》\nhttps://note.youdao.com/s/8ZcsqJO', 0.00, '张毅', NULL, '《心态》');
INSERT INTO `life_record` VALUES ('e88f7ecc-e65c-11ee-b88e-0242ac110002', '2024-03-20 09:54:52', NULL, '张毅', '【有道云笔记】《非暴力沟通》\nhttps://note.youdao.com/s/QnNdPj5J', 0.00, '张毅', NULL, '《非暴力沟通》');
INSERT INTO `life_record` VALUES ('792dfffc-e7f8-11ee-b88e-0242ac110002', '2024-03-22 11:00:56', NULL, '张毅', '【有道云笔记】《刻意练习》\nhttps://note.youdao.com/s/a3bKLERt', 0.00, '张毅', NULL, '《刻意练习》');
INSERT INTO `life_record` VALUES ('201d0133-f08b-11ee-9f02-0242ac110002', '2024-04-02 08:51:05', NULL, '张毅', '【有道云笔记】《终身成长》\nhttps://note.youdao.com/s/ZpT9aqxZ', 0.00, '张毅', NULL, '《终身成长》');
INSERT INTO `life_record` VALUES ('0e3a647b-f57f-11ee-9f02-0242ac110002', '2024-04-08 16:07:27', NULL, '张毅', '【有道云笔记】《癌症密码》\nhttps://note.youdao.com/s/AW1pH0Be', 0.00, '张毅', NULL, '《癌症密码》');
INSERT INTO `life_record` VALUES ('1a3b2416-f57f-11ee-9f02-0242ac110002', '2024-04-08 16:07:49', NULL, '张毅', '【有道云笔记】《人性实验》\nhttps://note.youdao.com/s/Rj6QSNp2', 0.00, '张毅', NULL, '《人性实验》');
INSERT INTO `life_record` VALUES ('24ff1d55-f57f-11ee-9f02-0242ac110002', '2024-04-08 16:08:06', NULL, '张毅', '【有道云笔记】《逆商》\nhttps://note.youdao.com/s/H1Lg3s3w', 0.00, '张毅', NULL, '《逆商》');
INSERT INTO `life_record` VALUES ('2f634040-f57f-11ee-9f02-0242ac110002', '2024-04-08 16:08:24', NULL, '张毅', '【有道云笔记】《一切从广告开始》\nhttps://note.youdao.com/s/9jTjHrD', 0.00, '张毅', NULL, '《一切从广告开始》');
INSERT INTO `life_record` VALUES ('e4579217-fbcd-11ee-83dd-0242ac110002', '2024-04-08 16:46:38', NULL, '张毅', '【有道云笔记】《李白》\nhttps://note.youdao.com/s/ASokxCPk', 0.00, '张毅', NULL, '《李白》');
INSERT INTO `life_record` VALUES ('fbd8a491-fbcd-11ee-83dd-0242ac110002', '2024-04-12 16:47:05', NULL, '张毅', '【有道云笔记】《思考，快与慢》\nhttps://note.youdao.com/s/AANqES4s', 0.00, '张毅', NULL, '《思考，快与慢》');
INSERT INTO `life_record` VALUES ('bbcc91b2-fe2b-11ee-ba0c-0242ac110002', '2024-04-19 17:03:27', NULL, '张毅', '【有道云笔记】《王阳明大专》\nhttps://note.youdao.com/s/Wfe0ts94', 0.00, '张毅', NULL, '《王阳明大专》');
INSERT INTO `life_record` VALUES ('df75a177-02b1-11ef-ba0c-0242ac110002', '2024-04-25 11:13:44', NULL, '张毅', '【有道云笔记】《低风险创业》\nhttps://note.youdao.com/s/cno7OcG7', 0.00, '张毅', NULL, '《低风险创业》');
INSERT INTO `life_record` VALUES ('1bab9c20-052a-11ef-8fd0-0242ac110002', '2024-04-28 14:39:24', NULL, '张毅', '【有道云笔记】《反脆弱》\nhttps://note.youdao.com/s/PU7hwrjE', 0.00, '张毅', NULL, '《反脆弱》');
INSERT INTO `life_record` VALUES ('20949041-0c0c-11ef-8fd0-0242ac110002', '2024-05-07 08:52:28', NULL, '张毅', '【有道云笔记】《藏在成语中的心理学》\nhttps://note.youdao.com/s/4fPCjqfe', 0.00, '张毅', NULL, '《藏在成语中的心理学》');
INSERT INTO `life_record` VALUES ('3d9cd2ba-0d9f-11ef-8fd0-0242ac110002', '2024-05-09 08:58:18', NULL, '张毅', '【有道云笔记】《恰如其分的孤独》\nhttps://note.youdao.com/s/DIWmC65x', 0.00, '张毅', NULL, '《恰如其分的孤独》');
INSERT INTO `life_record` VALUES ('359cbe27-231f-11ef-9f8f-0242ac110002', '2024-06-05 17:37:07', NULL, '张毅', '【有道云笔记】《捉弄人的大脑》\nhttps://note.youdao.com/s/CmWrENZH', 0.00, '张毅', NULL, '《捉弄人的大脑》');
INSERT INTO `life_record` VALUES ('651fcafb-4246-11ef-acd5-0242ac110002', '2024-07-15 09:05:48', NULL, '张毅', '【有道云笔记】《深度关系》\nhttps://note.youdao.com/s/6Pf1mBqh', 0.00, '张毅', NULL, '《深度关系》');
INSERT INTO `life_record` VALUES ('c4ee1a8f-6130-11ef-95fd-0242ac110002', '2024-08-23 17:18:51', NULL, '张毅', '【有道云笔记】《中年觉醒》\nhttps://note.youdao.com/s/3n5w2Jm2', 0.00, '张毅', NULL, '《中年觉醒》');

-- ----------------------------
-- Table structure for work_todo
-- ----------------------------
DROP TABLE IF EXISTS `work_todo`;
CREATE TABLE `work_todo`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cur_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_todo
-- ----------------------------
INSERT INTO `work_todo` VALUES ('006f18eb-3feb-11ef-acd5-0242ac110002', 'spreadjs预演', '未完成', '2024-07-11 00:00:00');
INSERT INTO `work_todo` VALUES ('137b3e13-118d-11ef-bba6-0242ac110002', '指标查询UI', '已完成', '2024-05-13 00:00:00');
INSERT INTO `work_todo` VALUES ('13a7cf8c-1c90-11ef-aaf3-0242ac110002', '车打气', '未完成', '2024-05-28 00:00:00');
INSERT INTO `work_todo` VALUES ('13a81f1d-1c90-11ef-aaf3-0242ac110002', 'kimi提取关键字', '未完成', '2024-05-28 00:00:00');
INSERT INTO `work_todo` VALUES ('160b0e0b-02b2-11ef-ba0c-0242ac110002', '五一旅游安排', '已完成', '2024-04-24 00:00:00');
INSERT INTO `work_todo` VALUES ('160b74aa-02b2-11ef-ba0c-0242ac110002', '材料价格库改造', '已完成', '2024-04-24 00:00:00');
INSERT INTO `work_todo` VALUES ('18541fb1-02b2-11ef-ba0c-0242ac110002', '请假：肠胃炎', '已完成', '2024-04-23 00:00:00');
INSERT INTO `work_todo` VALUES ('1854901d-02b2-11ef-ba0c-0242ac110002', '材料价格库性能问题', '已完成', '2024-04-23 00:00:00');
INSERT INTO `work_todo` VALUES ('1ce85d57-5eba-11ef-ba00-0242ac110002', 'excel性能优化', '未完成', '2024-08-20 00:00:00');
INSERT INTO `work_todo` VALUES ('2498d6d2-fb07-11ee-83dd-0242ac110002', '办理保险', '已完成', '2024-04-13 00:00:00');
INSERT INTO `work_todo` VALUES ('24991ec9-fb07-11ee-83dd-0242ac110002', '极氪保养', '已完成', '2024-04-13 00:00:00');
INSERT INTO `work_todo` VALUES ('26038e2f-fb07-11ee-83dd-0242ac110002', '乙方专项评审', '已完成', '2024-04-12 00:00:00');
INSERT INTO `work_todo` VALUES ('26041d62-fb07-11ee-83dd-0242ac110002', 'AS层去掉确认', '已完成', '2024-04-12 00:00:00');
INSERT INTO `work_todo` VALUES ('26eb7f27-fb07-11ee-83dd-0242ac110002', '专项技术设计', '已完成', '2024-04-11 00:00:00');
INSERT INTO `work_todo` VALUES ('287ce958-fb07-11ee-83dd-0242ac110002', '乙方专项数据库存储逻辑沟通', '已完成', '2024-04-15 00:00:00');
INSERT INTO `work_todo` VALUES ('287d9df6-fb07-11ee-83dd-0242ac110002', 'AS层去掉确认', '已完成', '2024-04-15 00:00:00');
INSERT INTO `work_todo` VALUES ('3391e7ca-644f-11ef-95fd-0242ac110002', 'PMS相关', '未完成', '2024-08-27 00:00:00');
INSERT INTO `work_todo` VALUES ('4062e20d-fbcf-11ee-83dd-0242ac110002', '性能排查', '已完成', '2024-04-16 00:00:00');
INSERT INTO `work_todo` VALUES ('4066167d-3e57-11ef-acd5-0242ac110002', '排查数据问题', '未完成', '2024-07-10 00:00:00');
INSERT INTO `work_todo` VALUES ('40666bc6-3e57-11ef-acd5-0242ac110002', '整理测试nacos', '未完成', '2024-07-10 00:00:00');
INSERT INTO `work_todo` VALUES ('42bcea4d-231f-11ef-9f8f-0242ac110002', '陕西清单核对', '未完成', '2024-06-05 00:00:00');
INSERT INTO `work_todo` VALUES ('43bdf298-17d8-11ef-a85d-0242ac110002', '指标查询UI', '已完成', '2024-05-14 00:00:00');
INSERT INTO `work_todo` VALUES ('44381d23-17d8-11ef-a85d-0242ac110002', '后端取数据', '已完成', '2024-05-15 00:00:00');
INSERT INTO `work_todo` VALUES ('450c3580-3e57-11ef-acd5-0242ac110002', '工具优化', '已完成', '2024-07-09 00:00:00');
INSERT INTO `work_todo` VALUES ('450c93cd-3e57-11ef-acd5-0242ac110002', '集成BUG修复', '已完成', '2024-07-09 00:00:00');
INSERT INTO `work_todo` VALUES ('456d9f30-17d8-11ef-a85d-0242ac110002', '后端取数逻辑', '已完成', '2024-05-16 00:00:00');
INSERT INTO `work_todo` VALUES ('4646114d-17d8-11ef-a85d-0242ac110002', '后端取数据', '已完成', '2024-05-17 00:00:00');
INSERT INTO `work_todo` VALUES ('482e9282-3e57-11ef-acd5-0242ac110002', 'ES性能', '已完成', '2024-07-08 00:00:00');
INSERT INTO `work_todo` VALUES ('48d547bc-0d9f-11ef-8fd0-0242ac110002', ' 需求会议', '已完成', '2024-05-07 00:00:00');
INSERT INTO `work_todo` VALUES ('48d598f6-0d9f-11ef-8fd0-0242ac110002', '实现设计', '未完成', '2024-05-07 00:00:00');
INSERT INTO `work_todo` VALUES ('4919a4f1-0d9f-11ef-8fd0-0242ac110002', '实现设计', '已完成', '2024-05-08 00:00:00');
INSERT INTO `work_todo` VALUES ('49473dac-3d08-11ef-82dd-0242ac110002', '生病休息', '已完成', '2024-07-05 00:00:00');
INSERT INTO `work_todo` VALUES ('4a9cae9a-04ff-11ef-8fd0-0242ac110002', '性能问题报告', '未完成', '2024-04-28 00:00:00');
INSERT INTO `work_todo` VALUES ('4b4cf1ea-0367-11ef-ba0c-0242ac110002', '东湖', '未完成', '2024-05-05 00:00:00');
INSERT INTO `work_todo` VALUES ('4bfd14d4-1e30-11ef-aaf3-0242ac110002', '指标查询', '未完成', '2024-05-29 00:00:00');
INSERT INTO `work_todo` VALUES ('4bfd626a-1e30-11ef-aaf3-0242ac110002', '娃病了，住院', '未完成', '2024-05-29 00:00:00');
INSERT INTO `work_todo` VALUES ('4cb60276-3746-11ef-b6d5-0242ac110002', '删除字段的工具', '未完成', '2024-07-01 00:00:00');
INSERT INTO `work_todo` VALUES ('4d5f8d06-17d8-11ef-a85d-0242ac110002', '联调自测', '未完成', '2024-05-20 00:00:00');
INSERT INTO `work_todo` VALUES ('507ade3a-3d08-11ef-82dd-0242ac110002', '生病躺一天', '未完成', '2024-07-06 00:00:00');
INSERT INTO `work_todo` VALUES ('50ec33b3-01d6-11ef-ba0c-0242ac110002', '性能讨论会议', '已完成', '2024-04-17 00:00:00');
INSERT INTO `work_todo` VALUES ('50eca382-01d6-11ef-ba0c-0242ac110002', '价格库性能优化', '已完成', '2024-04-17 00:00:00');
INSERT INTO `work_todo` VALUES ('51c04a3a-01d6-11ef-ba0c-0242ac110002', '价格库性能优化', '已完成', '2024-04-18 00:00:00');
INSERT INTO `work_todo` VALUES ('53b08955-01d6-11ef-ba0c-0242ac110002', '性能结论文档', '已完成', '2024-04-19 00:00:00');
INSERT INTO `work_todo` VALUES ('5485b86a-01d6-11ef-ba0c-0242ac110002', '办理身份证', '已完成', '2024-04-20 00:00:00');
INSERT INTO `work_todo` VALUES ('57363da5-01d6-11ef-ba0c-0242ac110002', '请假：肠胃炎', '已完成', '2024-04-22 00:00:00');
INSERT INTO `work_todo` VALUES ('587aedaf-10c3-11ef-bba6-0242ac110002', '指标查询UI', '已完成', '2024-05-11 00:00:00');
INSERT INTO `work_todo` VALUES ('5957e37c-4aec-11ef-9b8c-0242ac110002', '非结构化开发', '未完成', '2024-07-26 00:00:00');
INSERT INTO `work_todo` VALUES ('5aa9fb8b-47c5-11ef-9b8c-0242ac110002', '非结构化开发', '未完成', '2024-07-22 00:00:00');
INSERT INTO `work_todo` VALUES ('5ac87537-1bcd-11ef-aaf3-0242ac110002', '请假，又发烧了', '未完成', '2024-05-23 00:00:00');
INSERT INTO `work_todo` VALUES ('6b0ae00f-384b-11ef-8c9a-0242ac110002', 'AI分词训练', '未完成', '2024-06-17 00:00:00');
INSERT INTO `work_todo` VALUES ('6bc9a28b-2791-11ef-b7c0-0242ac110002', '生病开始', '未完成', '2024-06-07 00:00:00');
INSERT INTO `work_todo` VALUES ('6c5ba6cd-384b-11ef-8c9a-0242ac110002', 'AI分词训练', '未完成', '2024-06-18 00:00:00');
INSERT INTO `work_todo` VALUES ('6db84090-384b-11ef-8c9a-0242ac110002', 'AI分词训练', '未完成', '2024-06-19 00:00:00');
INSERT INTO `work_todo` VALUES ('700326bb-1bcd-11ef-aaf3-0242ac110002', '打开页面开发', '未完成', '2024-05-24 00:00:00');
INSERT INTO `work_todo` VALUES ('7003a17c-1bcd-11ef-aaf3-0242ac110002', '表彰大会', '未完成', '2024-05-24 00:00:00');
INSERT INTO `work_todo` VALUES ('715eb04d-2791-11ef-b7c0-0242ac110002', '生病第二天', '未完成', '2024-06-08 00:00:00');
INSERT INTO `work_todo` VALUES ('74251f22-0b41-11ef-8fd0-0242ac110002', '木兰草原', '已完成', '2024-05-02 00:00:00');
INSERT INTO `work_todo` VALUES ('7425911a-0b41-11ef-8fd0-0242ac110002', '烧烤', '已完成', '2024-05-02 00:00:00');
INSERT INTO `work_todo` VALUES ('74b35683-0b41-11ef-8fd0-0242ac110002', '海洋世界', '已完成', '2024-05-01 00:00:00');
INSERT INTO `work_todo` VALUES ('74b3a76d-0b41-11ef-8fd0-0242ac110002', '油焖大虾', '未完成', '2024-05-01 00:00:00');
INSERT INTO `work_todo` VALUES ('755b1731-0b41-11ef-8fd0-0242ac110002', '木兰草原', '已完成', '2024-05-03 00:00:00');
INSERT INTO `work_todo` VALUES ('768ea164-1bcd-11ef-aaf3-0242ac110002', '联调测试', '未完成', '2024-05-27 00:00:00');
INSERT INTO `work_todo` VALUES ('7967b6e1-2791-11ef-b7c0-0242ac110002', '生病第三天', '未完成', '2024-06-09 00:00:00');
INSERT INTO `work_todo` VALUES ('7d2e5f49-6064-11ef-95fd-0242ac110002', '自动识别匹配', '未完成', '2024-08-21 00:00:00');
INSERT INTO `work_todo` VALUES ('7d3cd77a-2791-11ef-b7c0-0242ac110002', '生病第四天', '未完成', '2024-06-10 00:00:00');
INSERT INTO `work_todo` VALUES ('81383f4f-1c8f-11ef-aaf3-0242ac110002', '联调自测', '已完成', '2024-05-21 00:00:00');
INSERT INTO `work_todo` VALUES ('820650b0-1c8f-11ef-aaf3-0242ac110002', '指标自测', '已完成', '2024-05-22 00:00:00');
INSERT INTO `work_todo` VALUES ('95dcfa0f-216f-11ef-aaf3-0242ac110002', '娃发烧', '未完成', '2024-06-01 00:00:00');
INSERT INTO `work_todo` VALUES ('9861821f-5457-11ef-8512-0242ac110002', '采招下半年讨论', '未完成', '2024-08-06 00:00:00');
INSERT INTO `work_todo` VALUES ('9861e6ce-5457-11ef-8512-0242ac110002', '成本下半年讨论', '未完成', '2024-08-06 00:00:00');
INSERT INTO `work_todo` VALUES ('9cb24df4-5846-11ef-9cd4-0242ac110002', 'excel导入bug', '未完成', '2024-08-12 00:00:00');
INSERT INTO `work_todo` VALUES ('9d3898cd-5457-11ef-8512-0242ac110002', '计划产品下半年', '未完成', '2024-08-07 00:00:00');
INSERT INTO `work_todo` VALUES ('a4e2c180-2fb0-11ef-b93c-0242ac110002', '分词训练', '未完成', '2024-06-20 00:00:00');
INSERT INTO `work_todo` VALUES ('a56d2937-279b-11ef-b7c0-0242ac110002', '南航清单对比', '未完成', '2024-06-06 00:00:00');
INSERT INTO `work_todo` VALUES ('a657142d-2fb0-11ef-b93c-0242ac110002', '分词训练', '未完成', '2024-06-21 00:00:00');
INSERT INTO `work_todo` VALUES ('a6bec9fc-6346-11ef-95fd-0242ac110002', '演示', '未完成', '2024-08-26 00:00:00');
INSERT INTO `work_todo` VALUES ('abe81f54-538f-11ef-8512-0242ac110002', '年中会议', '未完成', '2024-08-05 00:00:00');
INSERT INTO `work_todo` VALUES ('ae8b6c46-279b-11ef-b7c0-0242ac110002', '生病第五天，好转', '未完成', '2024-06-11 00:00:00');
INSERT INTO `work_todo` VALUES ('ae8bf4dd-279b-11ef-b7c0-0242ac110002', 'bug修复', '未完成', '2024-06-11 00:00:00');
INSERT INTO `work_todo` VALUES ('b8effb16-0392-11ef-8fd0-0242ac110002', '性能问题', '未完成', '2024-04-26 00:00:00');
INSERT INTO `work_todo` VALUES ('b9e2fce0-0e68-11ef-8fd0-0242ac110002', '指标查询UI', '未完成', '2024-05-10 00:00:00');
INSERT INTO `work_todo` VALUES ('b9e3588d-0e68-11ef-8fd0-0242ac110002', '业务参数', '未完成', '2024-05-10 00:00:00');
INSERT INTO `work_todo` VALUES ('ba831106-0392-11ef-8fd0-0242ac110002', '性能问题跟进', '未完成', '2024-04-25 00:00:00');
INSERT INTO `work_todo` VALUES ('ba836969-0392-11ef-8fd0-0242ac110002', '信创大会', '已完成', '2024-04-25 00:00:00');
INSERT INTO `work_todo` VALUES ('c6651dd2-0699-11ef-8fd0-0242ac110002', '给娃买药', '未完成', '2024-04-30 00:00:00');
INSERT INTO `work_todo` VALUES ('c665ed83-0699-11ef-8fd0-0242ac110002', '给车充电', '未完成', '2024-04-30 00:00:00');
INSERT INTO `work_todo` VALUES ('d0979169-217c-11ef-9f8f-0242ac110002', '住院第二天', '未完成', '2024-05-30 00:00:00');
INSERT INTO `work_todo` VALUES ('d3f90cb4-4255-11ef-acd5-0242ac110002', '非结构化采集', '未完成', '2024-07-15 00:00:00');
INSERT INTO `work_todo` VALUES ('d53875a7-217c-11ef-9f8f-0242ac110002', '住院第三天', '未完成', '2024-05-31 00:00:00');
INSERT INTO `work_todo` VALUES ('d64121b9-05cf-11ef-8fd0-0242ac110002', '430SAAS性能', '未完成', '2024-04-29 00:00:00');
INSERT INTO `work_todo` VALUES ('d641dfba-05cf-11ef-8fd0-0242ac110002', '代码审查', '未完成', '2024-04-29 00:00:00');
INSERT INTO `work_todo` VALUES ('d9c574ec-217c-11ef-9f8f-0242ac110002', '住院第5天', '未完成', '2024-06-02 00:00:00');
INSERT INTO `work_todo` VALUES ('e4ac2b10-0e68-11ef-8fd0-0242ac110002', '业务参数', '未完成', '2024-05-09 00:00:00');
INSERT INTO `work_todo` VALUES ('e4ac8588-0e68-11ef-8fd0-0242ac110002', '需求讨论', '已完成', '2024-05-09 00:00:00');
INSERT INTO `work_todo` VALUES ('e5fc7136-fac5-11ee-83dd-0242ac110002', '马自达保养', '已完成', '2024-04-14 00:00:00');
INSERT INTO `work_todo` VALUES ('f3175ce5-351f-11ef-b6d5-0242ac110002', '今天出院', '已完成', '2024-06-03 00:00:00');
INSERT INTO `work_todo` VALUES ('f317ad17-351f-11ef-b6d5-0242ac110002', '指标BUG修复', '已完成', '2024-06-03 00:00:00');
INSERT INTO `work_todo` VALUES ('f4439221-44a0-11ef-9b8c-0242ac110002', '技术预演', '未完成', '2024-07-17 00:00:00');
INSERT INTO `work_todo` VALUES ('f4af0ca6-351f-11ef-b6d5-0242ac110002', '需求对称会', '已完成', '2024-06-04 00:00:00');
INSERT INTO `work_todo` VALUES ('f4af9b96-351f-11ef-b6d5-0242ac110002', '高级筛选', '已完成', '2024-06-04 00:00:00');
INSERT INTO `work_todo` VALUES ('f62eb9c2-44a0-11ef-9b8c-0242ac110002', '非结构化采集', '未完成', '2024-07-16 00:00:00');
INSERT INTO `work_todo` VALUES ('f6716cfd-384b-11ef-8c9a-0242ac110002', '分词工具逻辑 ', '未完成', '2024-07-02 00:00:00');
INSERT INTO `work_todo` VALUES ('f67243e0-351f-11ef-b6d5-0242ac110002', '清单训练工具', '已完成', '2024-06-24 00:00:00');
INSERT INTO `work_todo` VALUES ('f6eba4ca-351f-11ef-b6d5-0242ac110002', '清单训练工具', '已完成', '2024-06-25 00:00:00');
INSERT INTO `work_todo` VALUES ('f8bb24a7-0366-11ef-ba0c-0242ac110002', '中国航天日', '未完成', '2024-05-04 00:00:00');
INSERT INTO `work_todo` VALUES ('f8bba848-0366-11ef-ba0c-0242ac110002', '武汉动物园', '未完成', '2024-05-04 00:00:00');
INSERT INTO `work_todo` VALUES ('f8c4f6ec-351f-11ef-b6d5-0242ac110002', '清单训练工具', '已完成', '2024-06-26 00:00:00');
INSERT INTO `work_todo` VALUES ('f9e2a1f3-351f-11ef-b6d5-0242ac110002', '清单训练工具', '已完成', '2024-06-27 00:00:00');
INSERT INTO `work_todo` VALUES ('f9fa55f0-0b81-11ef-8fd0-0242ac110002', '性能会议', '已完成', '2024-05-06 00:00:00');
INSERT INTO `work_todo` VALUES ('f9faa38a-0b81-11ef-8fd0-0242ac110002', 'ES匹配学习', '已完成', '2024-05-06 00:00:00');
INSERT INTO `work_todo` VALUES ('f9faea52-0b81-11ef-8fd0-0242ac110002', '综合单价库性能问题', '未完成', '2024-05-06 00:00:00');
INSERT INTO `work_todo` VALUES ('fb23698a-351f-11ef-b6d5-0242ac110002', '清单训练工具', '已完成', '2024-06-28 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
