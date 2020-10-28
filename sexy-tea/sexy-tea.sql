/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : sexy-tea

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 28/10/2020 19:46:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for beverage
-- ----------------------------
DROP TABLE IF EXISTS `beverage`;
CREATE TABLE `beverage`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '饮料表id',
  `beverage_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '饮料编号',
  `beverage_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '饮料名称',
  `beverage_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '饮料图片',
  `price` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `type` int NULL DEFAULT NULL COMMENT '类型：1 奶茶，2 咖啡',
  `status` int NOT NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of beverage
-- ----------------------------
INSERT INTO `beverage` VALUES (1, '20080002', '橘香茉吉托', 'citrus-mint-mojito.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:07:01');
INSERT INTO `beverage` VALUES (2, '20080003', '酸柠浮冷萃', 'cold-brew-lemon-sour.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (3, '20080004', '醋意桃桃', 'peach-shrub-fizz.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (4, '20080005', '石榴仲夏梦', 'pomegranate-pearl-fizz.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (5, '20080006', '气炫冰山美式', 'sparkling-espresso-tonic.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (6, '20080007', '璃光石榴冷萃', 'sparkling-pink-pom-cold-brew.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (7, '20080008', '橙柚派对', 'triple-citrus.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (8, '20010001', '阿馥奇朵?', 'affogato.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (9, '20010002', '麦芽雪冷萃?', 'cold-brew-malt.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (10, '20010003', '冷萃浮乐朵?', 'cold-brew-float.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (11, '20010004', '气致?冷萃浮乐朵?', 'instore-nitro-cold-brew-float.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (12, '20020001', '冷萃冰咖啡', 'cold-brew.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (13, '20020002', '轻甜奶油冷萃', 'vanilla-flavor-sweet-cream-cold-brew.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (14, '20020003', '绵云冷萃', 'cold-foam-cold-brew.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (15, '20030001', '美式咖啡（热/冷）', 'caffe-americano.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (16, '20030002', '拿铁（热/冷）', 'caffe-latte.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (17, '20030003', '摩卡（热/冷)', 'caffe-mocha.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (18, '20030004', '卡布奇诺（热/冷）', 'cappuccino.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (19, '20030005', '焦糖玛奇朵（热/冷）', 'caramel-macchiato.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (20, '20030006', '浓缩咖啡', 'espresso.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (21, '20030007', '馥芮白?', 'flat-white.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (22, '20030008', '榛果风味拿铁（热/冷）', 'hazelnut-flavored-latte.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (23, '20030009', '香草风味拿铁（热/冷）', 'vanilla-flavored-latte.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (24, '20040001', '焦糖浓缩咖啡星冰乐', 'caramel-espresso-frappuccino.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (25, '20040002', '抹茶星冰乐', 'green-tea-frappuccino.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (26, '20040003', '芒果西番莲果茶星冰乐', 'mango-passion-tea.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (27, '20040004', '摩卡星冰乐', 'mocha-frappuccino.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (28, '20040005', '摩卡可可碎片星冰乐', 'mocha-java-chip-frappuccino.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (29, '20040006', '香草风味星冰乐', 'vanilla-flavored-cream-frappuccino-blended-beverage.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (30, '20050001', '气致?冷萃咖啡', 'nitro-cold-brew.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (31, '20060001', '经典巧克力饮品（热/冷）', 'signature-chocolate-beverage.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (32, '20070001', '红茶拿铁（热/冷）', 'black-tea-latte.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (33, '20070002', '抹茶拿铁（热/冷）', 'green-tea-latte.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (34, '20070003', '茶瓦纳? 冰摇柚柚蜂蜜红茶', 'iced-shaken-honey-ruby-grapefruit-black-tea.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (35, '20070004', '冰摇红莓黑加仑茶', 'blackcurrant-raspberry.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (36, '20070005', '冰摇芒果花草茶', 'iced-shaken-mango-herbal-juiced-tea.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (37, '20070006', '茶瓦纳? 冰摇桃桃绿茶/冰摇桃桃乌龙茶', 'iced-shaken-peach-green-tea.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (38, '20080001', '蓝莓星空', 'blueberry-passion-pearl-fizz.jpg', 10.00, 1, 1, '2020-09-24 02:39:36', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (39, '40010001', '星巴克?凤舞祥云综合咖啡豆', 'south-of-the-clouds.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (40, '40010002', '星巴克?派克市场烘焙咖啡豆', 'pike-place-roast-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (41, '40010003', '星巴克?肯亚咖啡豆', 'kenya-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (42, '40010004', '星巴克?首选咖啡豆', 'house-blend-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (43, '40010005', '星巴克?危地马拉安提瓜咖啡豆', 'guatemala-antigua-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (44, '40010006', '星巴克?埃塞俄比亚咖啡豆', 'ethiopia-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (45, '40010007', '星巴克?哥伦比亚咖啡豆', 'colombia.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (46, '40010008', '星巴克?早餐综合咖啡豆', 'breakfast-blend-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (47, '40020001', '星巴克?苏门答腊咖啡豆', 'sumatra-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (48, '40020002', '星巴克?低因祥龙综合咖啡豆', 'komodo-dragon-blend-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (49, '40020003', '星巴克?意式烘焙咖啡豆', 'italian-roast-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (50, '40020004', '星巴克?浓缩烘焙咖啡豆', 'espresso-roast-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (51, '40020005', '星巴克?佛罗娜咖啡豆', 'caffe-verona-coffee-beans.png', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (52, '40030001', '星巴克VIA?香草拿铁风味免煮咖啡固体饮料', 'via-vanilla-latte.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (53, '40030002', '星巴克VIA?焦糖拿铁风味免煮咖啡固体饮料', 'via-caramel-latte.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (54, '40030003', '星巴克VIA?摩卡风味免煮咖啡固体饮料', 'via-caffe-mocha.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (55, '40040001', '星巴克VIA?意式烘焙免煮咖啡', 'via-italian-roast.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (56, '40040002', '星巴克VIA?哥伦比亚免煮咖啡', 'via-colombia.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (57, '40040001', '星巴克臻选? 日晒巴西格兰玛瀑布农场', 'reserve-sun-dried-brazil-cachoeirab-grama-farm.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (58, '40040002', '星巴克臻选? 夏威夷卡乌咖啡豆', 'reserve-hawaii-kau.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (59, '40040003', '星巴克臻选? 哥伦比亚佩德雷加尔', 'reserve-colombia-pedregal.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (60, '40040004', '星巴克臻选? 臻选2018圣诞专享咖啡豆', 'reserve-christmas-blend-2018.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (61, '40050001', '星巴克ORIGAMI?便携式滴滤咖啡（研磨咖啡粉）星巴克?派克市场烘焙咖啡系列', 'origami-pike-place.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');
INSERT INTO `beverage` VALUES (62, '40060001', '星巴克ORIGAMI?便携式滴滤咖啡（研磨咖啡粉）星巴克?佛罗娜烘焙咖啡系列', 'origami-verona.jpg', 10.00, 2, 1, '2020-09-25 14:16:20', '2020-10-28 17:23:48');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '星礼卡表id',
  `uid` int NULL DEFAULT NULL COMMENT '用户id',
  `card_id` int NULL DEFAULT NULL COMMENT '星礼卡卡号',
  `card_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星礼卡名称',
  `card_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星礼卡图片',
  `balance` decimal(5, 2) NULL DEFAULT NULL COMMENT '余额',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of card
-- ----------------------------

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '城市表id',
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市名',
  `center_longitude` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市经度',
  `center_latitude` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市纬度',
  `count` int NULL DEFAULT NULL COMMENT '门店数量',
  `status` int NOT NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '廊坊市', '116.683752', '39.538047', 5, 0, '2020-09-23 16:54:28', '2020-09-26 21:07:24');
INSERT INTO `city` VALUES (2, '天津市', '117.200983', '39.084158', 58, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (3, '保定市', '115.464806', '38.873891', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (4, '唐山市', '118.180193', '39.630867', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (5, '张家口', '114.887543', '40.824418', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (6, '承德市', '117.962410', '40.954071', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (7, '石家庄', '114.514860', '38.042307', 7, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (8, '秦皇岛', '119.600492', '39.935385', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (9, '邢台市', '114.504844', '37.070589', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (10, '邯郸', '114.538961', '36.625657', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (11, '太原市', '112.548879', '37.870590', 8, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (12, '包头市', '109.840347', '40.657449', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (13, '呼和浩特', '111.749180', '40.842585', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (14, '大连市', '121.614682', '38.914003', 25, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (15, '抚顺市', '123.957208', '41.880872', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (16, '沈阳市', '123.431474', '41.805698', 24, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (17, '盘锦市', '122.070714', '41.119997', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (18, '营口市', '122.235417', '40.667012', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (19, '鞍山市', '122.994329', '41.108647', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (20, '吉林市', '126.549576', '43.837883', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (21, '延吉市', '129.508946', '42.891255', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (22, '长春市', '125.323544', '43.817071', 10, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (23, '哈尔滨', '126.534967', '45.803775', 14, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (24, '大庆市', '125.103784', '46.589309', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (25, '上海市', '121.473701', '31.230416', 539, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (26, '宁波市', '121.550357', '29.874556', 59, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (27, '南京市', '118.796877', '32.060255', 73, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (28, '南通市', '120.894291', '31.980171', 21, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (29, '吴江市', '120.641602', '31.160404', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (30, '太仓市', '121.130550', '31.457735', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (31, '姜堰市', '115.508797', '32.830109', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (32, '宜兴市', '119.823308', '31.340637', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (33, '宿迁市', '118.275198', '33.963232', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (34, '常州市', '119.973987', '31.810689', 26, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (35, '常熟市', '120.752481', '31.654376', 6, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (36, '张家港', '120.768611', '31.446084', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (37, '张家港市', '120.479033', '31.899861', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (38, '徐州市', '117.284124', '34.205768', 7, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (39, '扬中市', '119.797635', '32.234831', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (40, '扬州市', '119.412966', '32.394210', 12, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (41, '无锡市', '120.311910', '31.491169', 40, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (42, '昆山市', '120.980737', '31.385598', 13, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (43, '江苏省', '118.763232', '32.061707', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (44, '江阴市', '120.284939', '31.920658', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (45, '泰州市', '119.923116', '32.455778', 7, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (46, '海门市', '121.181615', '31.871173', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (47, '淮安市', '119.015285', '33.610353', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (48, '盐城市', '120.163561', '33.347382', 6, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (49, '苏州市', '120.585315', '31.298886', 90, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (50, '连云港', '119.221611', '34.596653', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (51, '连云港市', '119.221611', '34.596653', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (52, '镇江市', '119.425836', '32.187849', 9, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (53, '靖江市', '120.277138', '31.982751', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (54, '高邮市', '119.459161', '32.781659', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (55, '上虞市', '118.897163', '32.466564', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (56, '东阳市', '120.241566', '29.289648', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (57, '丽水市', '119.922796', '28.467630', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (58, '临海市', '121.145047', '28.858457', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (59, '义乌市', '120.075058', '29.306841', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (60, '余姚市', '121.154594', '30.037858', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (61, '兰溪市', '119.460526', '29.208919', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (62, '台州市', '121.420757', '28.656386', 11, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (63, '嘉兴', '120.755486', '30.746129', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (64, '嘉兴市', '120.755486', '30.746129', 14, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (65, '嘉善市', '120.921867', '30.841352', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (66, '奉化市', '121.406728', '29.656560', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (67, '慈溪市', '121.266579', '30.169665', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (68, '杭州市', '120.155070', '30.274084', 117, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (69, '江山市', '118.626926', '28.737245', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (70, '海宁市', '120.680757', '30.510659', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (71, '温岭市', '121.385604', '28.372506', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (72, '温州市', '120.699366', '27.994267', 20, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (73, '湖州市', '120.086823', '30.894348', 12, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (74, '绍兴市', '120.580232', '30.029752', 18, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (75, '舟山市', '122.207215', '29.985295', 5, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (76, '萧山市', '120.264253', '30.183806', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (77, '衢州市', '118.859457', '28.970079', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (78, '诸暨市', '120.246863', '29.708692', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (79, '金华市', '119.647444', '29.079059', 11, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (80, '合肥市', '117.227239', '31.820586', 18, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (81, '芜湖市', '118.432941', '31.352859', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (82, '蚌埠市', '117.389719', '32.916287', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (83, '马鞍山', '118.506759', '31.670452', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (84, '厦门市', '118.089425', '24.479833', 31, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (85, '宁德市', '119.547932', '26.665617', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (86, '泉州市', '118.675675', '24.874132', 13, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (87, '漳州市', '117.647481', '24.512948', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (88, '福州市', '119.296494', '26.074507', 23, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (89, '莆田市', '119.007777', '25.454084', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (90, '龙岩市', '117.017536', '25.075123', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (91, '九江市', '116.001930', '29.705077', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (92, '南昌市', '115.858197', '28.682892', 11, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (93, '东营市', '118.674767', '37.434751', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (94, '临沂市', '118.356448', '35.104672', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (95, '威海市', '122.120419', '37.513068', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (96, '德州市', '116.357464', '37.434092', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (97, '日照市', '119.526888', '35.416377', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (98, '泰安市', '117.087614', '36.200252', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (99, '济南市', '117.119999', '36.651216', 16, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (100, '济宁市', '116.587098', '35.414921', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (101, '淄博市', '118.054927', '36.813487', 5, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (102, '潍坊市', '119.161755', '36.706774', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (103, '烟台市', '121.447935', '37.463822', 8, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (104, '青岛市', '120.382639', '36.067082', 28, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (105, '洛阳', '112.454040', '34.619682', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (106, '郑州市', '113.625368', '34.746599', 18, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (107, '十堰市', '110.797990', '32.629397', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (108, '宜昌市', '111.286471', '30.691967', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (109, '武汉市', '114.305392', '30.593098', 67, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (110, '襄樊市', '112.144150', '32.042427', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (111, '襄阳市', '112.122414', '32.008986', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (112, '黄石市', '115.038520', '30.199652', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (113, '岳阳市', '113.128958', '29.357104', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (114, '株洲市', '113.134002', '27.827550', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (115, '湘潭市', '112.944049', '27.829738', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (116, '衡阳市', '112.571997', '26.893230', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (117, '长沙市', '112.938814', '28.228209', 26, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (118, '东莞市', '113.751765', '23.020536', 31, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (119, '中山市', '113.392782', '22.517645', 11, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (120, '佛山市', '113.121416', '23.021548', 33, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (121, '广州市', '113.264434', '23.129162', 106, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (122, '惠州市', '114.416196', '23.111847', 7, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (123, '梅州市', '116.122238', '24.288615', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (124, '汕头市', '116.681972', '23.354091', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (125, '江门市', '113.081901', '22.578738', 6, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (126, '深圳市', '114.057868', '22.543099', 112, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (127, '清远市', '113.056031', '23.681763', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (128, '湛江市', '110.359377', '21.270707', 4, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (129, '珠海市', '113.576726', '22.270715', 14, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (130, '肇庆市', '112.465091', '23.047191', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (131, '阳江市', '111.982232', '21.857958', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (132, '北海市', '109.119927', '21.481254', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (133, '南宁市', '108.366543', '22.817002', 12, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (134, '柳州', '109.415953', '24.325502', 6, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (135, '桂林', '110.290194', '25.273566', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (136, '三亚市', '109.511909', '18.252847', 6, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (137, '儋州市', '109.580811', '19.521134', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (138, '海口市', '110.198293', '20.044001', 9, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (139, '重庆市', '106.551556', '29.563009', 41, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (140, '乐山市', '103.765568', '29.552106', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (141, '德阳市', '104.397894', '31.126855', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (142, '成都市', '104.066541', '30.572269', 98, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (143, '绵阳市', '104.679114', '31.467450', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (144, '贵阳', '106.630153', '26.647661', 8, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (145, '贵阳市', '106.630153', '26.647661', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (146, '丽江市', '100.227750', '26.855047', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (147, '大理市', '100.267638', '25.606486', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (148, '昆明市', '102.832891', '24.880095', 21, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (149, '咸阳市', '108.708991', '34.329605', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (150, '宝鸡市', '107.237974', '34.361979', 1, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (151, '西安市', '108.940174', '34.341568', 40, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (152, '兰州市', '103.834303', '36.061089', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (153, '西宁市', '101.778228', '36.617144', 3, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (154, '银川市', '106.230909', '38.487193', 2, 1, '2020-09-23 16:54:28', '2020-09-23 16:54:28');
INSERT INTO `city` VALUES (155, '北京市', '116.407526', '39.904030', 234, 1, '2020-09-23 16:54:28', '2020-09-25 15:24:35');

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '优惠券表id',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '优惠券标题',
  `start_date` date NULL DEFAULT NULL COMMENT '优惠券开始日期',
  `expire_date` date NULL DEFAULT NULL COMMENT '优惠券结束日期',
  `use_date` date NULL DEFAULT NULL COMMENT '优惠券使用日期',
  `use_status` int NULL DEFAULT NULL COMMENT '优惠券使用状态',
  `goods_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品类型',
  `require_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '使用类型',
  `require` int NULL DEFAULT NULL COMMENT '使用数量',
  `coupon_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '优惠券类型',
  `coupon_num` int NULL DEFAULT NULL COMMENT '优惠券数量',
  `coupon_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '优惠券图片',
  `rules` json NULL COMMENT '优惠券规则',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for expense_record
-- ----------------------------
DROP TABLE IF EXISTS `expense_record`;
CREATE TABLE `expense_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '费用记录表id',
  `uid` int NULL DEFAULT NULL COMMENT '用户id',
  `consume_date` datetime(0) NULL DEFAULT NULL COMMENT '消费时间',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商店名称',
  `goods` json NULL COMMENT '消费商品',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '消费总价',
  `star_gain` int NULL DEFAULT NULL COMMENT '获得星数',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of expense_record
-- ----------------------------

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '食品表id',
  `food_id` int NULL DEFAULT NULL COMMENT '食品id',
  `food_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '食品名字',
  `food_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '食品图片',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主分类',
  `sub_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子分类',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, 30010002, '蓝莓麦芬', 'blueberry-muffin.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (2, 30010003, '香浓巧克力麦芬', 'chocolate-muffin.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (3, 30010004, '旋风玉桂酥', 'cinnamon-swirl.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (4, 30010005, '法式香酥可颂', 'french-butter-croissant.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (5, 30010006, '法式焦糖酥', 'french-caramel-bread.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (6, 30010007, '层层榛子果仁酥', 'hazelnut-croissant.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (7, 30010008, '蜂蜜提子司康', 'honey-raisin-scone.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (8, 30010009, '燕麦焦糖布丁面包', 'oat-caramel-pudding-bread.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (9, 30010010, '香浓巧克力可颂', 'premium-chocolate-croissant.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (10, 30010011, '提子干松饼', 'raisin-scone.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (11, 30010012, '核桃提子软法面包', 'raisins-walnut-bread.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (12, 30010013, '红豆燕麦松饼', 'red-bean-oats-scone.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (13, 30010014, '全麦核桃麦芬', 'whole-wheat-walnut-muffin.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (14, 30020001, '蓝莓曲奇风轻乳酪蛋糕', 'blueberry-and-cookie-style-cheesecake.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (15, 30020002, '经典瑞士卷', 'classic-swiss-roll-cake.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (16, 30020003, '浓醇三重黑巧克力蛋糕', 'triple-dark-chocolate-cake.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (17, 30020004, '法式闪电泡芙', 'eclair.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (18, 30020005, '星巴克咖啡提拉米苏蛋糕', 'starbucks-coffee-tiramisu.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (19, 30020006, '法式马卡龙', 'macaron.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (20, 30020007, '纽约风浓郁重芝士蛋糕', 'new-york-style-creamy-cheesecake.jpg', 'Food', 'dessert', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (21, 30030001, '腰果', 'cashews.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (22, 30030002, '英伦风味黄油饼干', 'shortbread.png', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (23, 30030003, '混合果仁果脯', 'fruitnnuts.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (24, 30030004, '水果沙拉', 'fruit-salad.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (25, 30030005, '棒棒糖', 'lollipops.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (26, 30030006, '咖啡味蛋卷', 'waferrolls.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (27, 30030007, '薄荷味口香糖（无糖）', 'starbucks-chewing-gum.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (28, 30030008, '薄荷味硬糖（无糖）', 'Starbucks-mints.jpg', 'Food', 'other', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (29, 30040001, '牛油果鸡肉焙果', 'avocado-and-chicken-bagel.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (30, 30040002, '培根蛋可颂堡', 'bacon-and-egg-croissant-bun.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (31, 30040003, '蜜汁培根蛋卷', 'bacon-and-egg-wrap.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (32, 30040004, '层层牛肉法棍 ', 'beef-baguette.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (33, 30040005, '牛肉芝士可颂', 'beef-cheese-croissant.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (34, 30040006, '凯撒鸡肉卷', 'caesar-chicken-wrap.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (35, 30040007, '鸡肉芝香帕尼尼', 'chicken-panini.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (36, 30040008, '炒蛋菌菇虾仁卷', 'eggs-mushroom-shrimp-wrap.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (37, 30040009, '火腿芝士可颂', 'ham-and-cheese-croissant.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (38, 30040010, '双重芝士火腿吐司', 'ham-and-double-cheese-croque-monsieur.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (39, 30040011, '高达芝士火腿星明治', 'ham-and-gouda-sandwich.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (40, 30040012, '帕斯雀牛肉三明治', 'pastrami-sandwich.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (41, 30040013, '烤法式火腿鸡蛋三明治', 'roasted-french-ham-egg-sandwich.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (42, 30040014, '慢烤火腿芝士恰巴特', 'slow-roasted-ham-cheese-ciabatta.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (43, 30040015, '金枪鱼帕尼尼', 'tuna-panini.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (44, 30040016, '火鸡培根英式麦芬', 'turkey-bacon-english-muffin.jpg', 'Food', 'sandwich', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (45, 30050001, '谷物组合希腊式风味酸奶（混合莓果）', 'greek-flavored-yoghurt-mixed-berry.jpg', 'Food', 'yogurt', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (46, 30050002, '谷物组合希腊式风味酸奶（黄桃）', 'greek-flavored-yoghurt-yellow-peach.jpg', 'Food', 'yogurt', 1, '2020-09-25 14:32:47', '2020-09-25 14:32:47');
INSERT INTO `food` VALUES (47, 30010001, '美式松饼', 'american-style-pancakes.jpg', 'Food', 'baking', 1, '2020-09-25 14:32:47', '2020-09-25 14:44:28');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志表id',
  `uid` int NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名字',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录地址',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `device` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备',
  `operation_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login_log
-- ----------------------------

-- ----------------------------
-- Table structure for membership
-- ----------------------------
DROP TABLE IF EXISTS `membership`;
CREATE TABLE `membership`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '会员表id',
  `uid` int NULL DEFAULT NULL COMMENT '用户表id',
  `star_level` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员等级',
  `star_level_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员等级名称',
  `star_number` int NULL DEFAULT NULL COMMENT '会员星数',
  `next_lev` int NULL DEFAULT NULL COMMENT '下级会员需要星数',
  `privileges` json NULL COMMENT '会员特权',
  `expire_date` date NULL DEFAULT NULL COMMENT '过期时间',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of membership
-- ----------------------------

-- ----------------------------
-- Table structure for merchandise
-- ----------------------------
DROP TABLE IF EXISTS `merchandise`;
CREATE TABLE `merchandise`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品表id',
  `product_id` int NULL DEFAULT NULL COMMENT '商品编号',
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片',
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主分类',
  `sub_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子分类',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of merchandise
-- ----------------------------
INSERT INTO `merchandise` VALUES (1, 50010002, '银色/白色亮面品牌桌面杯', '12oz-silver-white-brand-handle-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (2, 50010003, '12oz 彰显本色黑色/深灰不锈钢桌面杯', '12oz-true-essence-stainless-steel-bottle.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (3, 50010004, '12oz 纯白磨砂玻璃杯', '12oz-white-frosted-glass-cup.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (4, 50010005, '12oz 烫金品牌白色马克杯', '12oz-white-gilded-brand-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (5, 50010006, '16oz 烫金品牌黑色马克杯', '16oz-black-gilded-brand-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (6, 50010007, '16oz 原木黑色拎绳不锈钢保温杯', '16oz-black-wooden-stainless-steel-bottle-with-strap.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (7, 50010008, '16oz 彰显本色黑色/深灰不锈钢随行杯', '16oz-true-essence-stainless-steel-travel-bottle.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (8, 50010009, '16oz 烫金品牌白色马克杯', '16oz-white-gilded-brand-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (9, 50010010, '3oz 烫金品牌黑色试尝杯', '3oz-black-gilded-brand-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (10, 50010011, '3oz 烫金品牌白色试尝杯', '3oz-white-gilded-brand-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (11, 50010012, '500ml 黑色Logo水瓶', '500ml-black-logo-water-bottle.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (12, 50010013, '500ml 白色Logo水瓶', '500ml-white-logo-water-bottle.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (13, 50020001, '12oz 纯黑/古铜亮面品牌桌面杯', '12oz-black-bronze-brand-handle-mug.jpg', 'Merchandise', 'premium', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (14, 50020002, '16oz 香槟金品牌不锈钢桌面杯', '16oz-champagne-gold-brand-stainless-steel-cup.jpg', 'Merchandise', 'premium', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (15, 50020003, '500ml 金色Logo水瓶', '500ml-gold-logo-water-bottle.jpg', 'Merchandise', 'premium', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (16, 50020004, '9oz 臻选玻璃杯', '9oz-reserve-glass-cup.jpg', 'Merchandise', 'premium', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:22');
INSERT INTO `merchandise` VALUES (17, 50010001, '12oz 烫金品牌黑色马克杯', '12oz-black-gilded-brand-mug.jpg', 'Merchandise', 'ordinary', 1, '2020-09-25 14:58:22', '2020-09-25 14:58:32');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint NOT NULL COMMENT '订单表id',
  `uid` int NULL DEFAULT NULL COMMENT '用户id',
  `pay_price` int NULL DEFAULT NULL COMMENT '实际支付价格',
  `is_pay` tinyint(1) NULL DEFAULT 0 COMMENT '是否已经支付：1 已支付，0 未支付，-1 订单失效，2 已发货，3 交易成功，4 交易失败',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `consign_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '交易结束时间',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '交易完成时间',
  `post_fee` int NULL DEFAULT NULL COMMENT '邮费',
  `shipping_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流单号',
  `rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评价',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单商品表',
  `order_id` int NULL DEFAULT NULL COMMENT '订单id',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品id',
  `count` int NULL DEFAULT NULL COMMENT '商品数量',
  `price` int NULL DEFAULT NULL COMMENT '商品单价',
  `total_price` int NULL DEFAULT NULL COMMENT '商品总价',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for order_shipping
-- ----------------------------
DROP TABLE IF EXISTS `order_shipping`;
CREATE TABLE `order_shipping`  (
  `order_id` bigint NOT NULL COMMENT '订单ID',
  `receiver_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收货人名字',
  `receiver_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '固定电话',
  `receiver_state` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `receiver_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `status` int NOT NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for selection
-- ----------------------------
DROP TABLE IF EXISTS `selection`;
CREATE TABLE `selection`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '精选表id',
  `product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '精选产品id',
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '精选产品名称',
  `product_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '精选产品图片',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主分类',
  `sub_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子分类',
  `status` int NOT NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of selection
-- ----------------------------
INSERT INTO `selection` VALUES (1, '010010202', '橘香茉吉托', 'citrus-mint-mojito.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (2, '010010203', '酸柠浮冷萃', 'cold-brew-lemon-sour.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (3, '010010204', '醋意桃桃', 'peach-shrub-fizz.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (4, '010010205', '石榴仲夏梦', 'pomegranate-pearl-fizz.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (5, '010010206', '气炫冰山美式', 'sparkling-espresso-tonic.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (6, '010010207', '璃光石榴冷萃', 'sparkling-pink-pom-cold-brew.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (7, '010010208', '橙柚派对', 'triple-citrus.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (8, '010010209', '椰香绵绵挞', 'coconut-white-chocolate-tart.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (9, '010010101', '橙香蜂巢糖脆玛奇朵', 'honeycomb-orange-macchiato.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (10, '010010102', '花样莓莓红茶拿铁', 'berry-berry-black-tea-latte.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (11, '010010103', '春意萌萌谷物蛋糕', 'grains-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (12, '010010104', '冷萃浮乐昔', 'cold-brew-smoothie-float.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (13, '010010105', '樱花浪漫玛奇朵', 'cherry-blossom-flavored-macchiato.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (14, '010010106', '朗姆香草风味玛奇朵', 'rum-vanilla-flavored-macchiato.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (15, '010010107', '坚果派对风味酸奶慕斯蛋糕', 'mixed-nuts-flavored-yoghurt-mousse-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (16, '010010108', '莓果森林风味酸奶慕斯蛋糕', 'mixed-berry-flavored-yoghurt-mousse-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (17, '010010109', '香芒清椰风味酸奶慕斯蛋糕', 'mango-coconut-flavored-yoghurt-mousse-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (18, '010010110', '抹茶森林生巧蛋糕', 'matcha-chocolate-mousse-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (19, '010010111', '樱之花意慕斯蛋糕', 'spring-cherry-blossoming-mousse-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (20, '010010112', '坚果燕麦酸奶风味蛋糕', 'mixed-nuts-oat-yoghurt-flavor-cake.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (21, '010010113', '尼加拉瓜马拉卡杜拉咖啡豆', 'nicaragua-maracaturra.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (22, '010010114', '埃塞俄比亚卡永山庄园咖啡豆', 'ethiopia-kayon-mountain-farm.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (23, '010010115', '哥伦比亚奇异吉拉尔多咖啡豆', 'colombia-giraldo-exotico.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (24, '010010116', '日晒巴西里奥韦尔迪庄园咖啡豆', 'sun-dried-brazil-rio-verde-estate.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (25, '010010117', '单一产地系列萨尔瓦多阿瓦查潘', 'el-salvador-ahuachapan.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (26, '010010118', '春意礼赞综合咖啡豆', 'spring-season-blend-coffee.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (27, '010010119', '春意礼赞综合免煮咖啡', 'spring-season-blend-via.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (28, '010010120', '春意礼赞便携式滴虑咖啡', 'spring-season-blend-origami.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (29, '010010121', '闪耀樱花款卡套', 'mer-33.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (30, '010010122', '唤醒春意会员星礼包，随卡附赠DIY绿植盆栽收纳杯', 'green-energy-sr-kit-set.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (31, '010010123', '人鱼系列潜底逐光会员星礼包，随卡附赠精美杯型沙漏挂件一个', 'siren-forward-sr-kit.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (32, '010010124', '品牌主题星礼卡', 'starbucks-wordmark-svc.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (33, '010010001', '樱花烂漫会员星礼包，随卡附赠樱花杯型零钱包一个，共两款可选', 'cherry-blossom-sr-kitt.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (34, '010010002', '樱花盛放星礼卡', 'sakura-die-cut-pink-svc.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (35, '010010003', '闪耀樱花款笔记本', 'cherry-blossom-sr-kit.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (36, '010010004', '12oz微笑伙伴款马克杯', 'mer-1.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (37, '010010005', '12oz微笑伙伴款塑料吸管杯', 'mer-2.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (38, '010010006', '24oz咖啡生活款塑料吸管杯', 'mer-3.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (39, '010010007', '12oz微笑伙伴款不锈钢桌面杯', 'mer-4.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (40, '010010008', '16oz温感保温杯', 'mer-5.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (41, '010010009', '16oz美好心情款不锈钢随行杯', 'mer-6.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (42, '010010010', '12oz咖啡生活款双层马克杯', 'mer-7.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (43, '010010011', '8oz小熊造型双层玻璃杯', 'mer-8.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (44, '010010012', '小熊款堆叠杯组', 'mer-10.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (45, '010010013', '12oz小熊徽章款马克杯', 'mer-11.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (46, '010010014', '13oz小熊款马克杯', 'mer-12.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (47, '010010015', '12oz围裙款不锈钢桌面杯', 'mer-13.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (48, '010010016', '400ml膳魔师咖啡能量款保温杯', 'mer-14.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (49, '010010017', '星巴克小熊款立体硅胶手机壳', 'mer-15.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (50, '010010018', '超级星巴克小熊', 'mer-16.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (51, '010010019', '星巴克花花世界款植物礼盒', 'mer-18.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (52, '010010020', '咖啡乐园款玻璃杯组', 'mer-19.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (53, '010010021', '亚克力展架勋章组', 'mer-20.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (54, '010010022', '小熊款卡套徽章套装', 'mer-9.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (55, '010010023', '3oz外卖车款盘组', 'mer-17.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (56, '010010024', '13oz绿色咖啡干杯款搪瓷杯礼盒套装', 'mer-21.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (57, '010010025', '13oz蓝色咖啡干杯款搪瓷杯礼盒套装', 'mer-22.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (58, '010010026', '13oz粉色咖啡干杯款搪瓷杯礼盒套装', 'mer-23.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (59, '010010027', '13oz黄色咖啡干杯款搪瓷杯礼盒套装', 'mer-24.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (60, '010010028', '12oz蓝色可折叠硅胶便携水杯', 'mer-25.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (61, '010010029', '12oz粉色可折叠硅胶便携水杯', 'mer-26.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (62, '010010030', '赏樱小狗款杯套', 'mer-27.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (63, '010010031', '赏樱猫咪款杯套', 'mer-28.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (64, '010010032', '12oz赏樱宠物款对杯', 'mer-29.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (65, '010010033', '16oz夜樱飘零款吸管杯', 'mer-30.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (66, '010010034', '春日赏樱款杯盖组', 'mer-31.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (67, '010010035', '12oz雾金樱花款马克杯', 'mer-32.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (68, '010010036', '16oz魅惑樱花款保温杯', 'mer-34.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (69, '010010037', '500ml膳魔师艳丽夜樱款保温杯', 'mer-37.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:01');
INSERT INTO `selection` VALUES (70, '010010201', '蓝莓星空', 'blueberry-passion-pearl-fizz.jpg', 'qSelection', 'newProduct', 1, '2020-09-25 15:24:01', '2020-09-25 15:24:09');

-- ----------------------------
-- Table structure for shopping_record
-- ----------------------------
DROP TABLE IF EXISTS `shopping_record`;
CREATE TABLE `shopping_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '购物车记录表id',
  `uid` int NULL DEFAULT NULL COMMENT '用户id',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品id',
  `type` int NULL DEFAULT NULL COMMENT '商品类型：1 饮品，2 周边',
  `count` int NULL DEFAULT NULL COMMENT '商品数量',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shopping_record
-- ----------------------------

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商店表id',
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `center_longitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市经度 ',
  `center_latitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市纬度',
  `store_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商店编号',
  `store_serial` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商店序列号',
  `store_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商店名称',
  `store_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商店地址',
  `longitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店经度',
  `latitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店纬度',
  `phone_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店电话号码',
  `post_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮编',
  `owner_ship_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所有权类型',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32320-116537', '北京华宇时尚店', '海淀区数码大厦B座华宇时尚购物中心内蓝色港湾国际商区1座C1-3单元首层', '116.325701 ', '39.966427 ', '010-51626616', '100086', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (2, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32447-132306', '北京蓝色港湾圣拉娜店', '朝阳区朝阳公园路6号二层C1-3单元及二层阳台太阳宫中路12号', '116.475817 ', '39.949311 ', '010-59056343', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (3, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17477-161286', '北京太阳宫凯德嘉茂店', '朝阳区太阳宫凯德嘉茂一层01-44/45号东三环北路27号', '116.468953 ', '39.993892 ', '010-84150945', '100028', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (4, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24520-237564', '北京东三环北店', '朝阳区嘉铭中心大厦A座B1层024商铺金融大街7号', '116.460836 ', '39.928146 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (5, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31914-108612', '北京英蓝国际店', '西城区英蓝国际金融中心首层F111-F112单元建国门内大街18号', '116.427696 ', '39.906480 ', '010-66555218', '100034', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (6, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19442-200166', '北京建国门内大街店', '东城区恒基中心一层039单元北清路1号院1号楼', '116.428235 ', '39.907018 ', '', '100005', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (7, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17139-178351', '北京北清路永旺商城店', '昌平区永旺国际商城购物中心1层NO.120区域建内大街19号', '116.288415 ', '40.097012 ', '010-80700820', '102208', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (8, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '26185-242824', '北京新闻大厦店', '东城区新闻大厦1层酒仙桥路12号', '116.422115 ', '39.907679 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (9, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48635-258004', '北京酒仙桥路咖啡店', '朝阳区乐天玛特超市1层LJ02-50单元建国门外大街丙12号', '116.446014 ', '39.907707 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (10, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25023-239564', '北京宝钢大厦店', '朝阳区宝钢大厦1层惠新东街钱柜一层', '116.424435 ', '39.987401 ', '', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (11, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22585-219967', '北京惠新东街咖啡店', '惠新东街4号广渠家园3号楼1层', '116.424358 ', '39.987284 ', '010-84298776', '100029', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (12, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18483-185651', '北京广渠门名敦道店', '东城区新中街瑞士公寓12层L103&L202A', '116.437139 ', '39.932839 ', '010-87224941', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (13, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32448-132307', '北京新中街瑞士公寓店', '东城区西单北大街176号', '116.374816 ', '39.909086 ', '010-65513686', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (14, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34004-95593', '北京西单汉光百货商场店', '西城区光百货一层101商铺西小口路66号', '116.365868 ', '39.912289 ', '010-66017188', '100032', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (15, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '47007-255365', '北京西小口路店', '海淀区中关村东升科技园B区6号楼C座一层101九棵树西路80号', '116.319802 ', '39.982940 ', '', '100096', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (16, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23572-230629', '北京通州九棵树西路店', '通州区北京通州阳光新生活广场一层8-A单元复兴路69号', '116.280681 ', '39.911227 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (17, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18111-188064', '北京五棵松第二咖啡店', '海淀区3号楼5层（05）502-5C015单元首都国际机场2号航站楼国际隔离区内', '116.593949 ', '40.079597 ', '010-88199321', '100044', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (18, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34059-96802', '北京首都国际机场3店', '顺义区丰科路6号院', '116.654561 ', '40.130347 ', '010-64598130', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (19, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '49654-270524', '丰科路万达广场店', '北京市第一层1056号和1057号商铺阜通东大街', '116.407526 ', '39.904030 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (20, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '49314-268025', '北京阜通东大街二店', '朝阳区1号院6号楼1层2112北四环东路73号', '116.432384 ', '39.990207 ', '', '100102', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (21, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18490-185007', '北京北四环东路咖啡店', '朝阳区远洋未来广场一层31单元东方东路19号', '116.463960 ', '39.950470 ', '010-84445652', '100025', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (22, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '26144-243484', '北京东方东路二店', '朝阳区外交办公大楼1层F110&2层F213复兴路29号', '116.463488 ', '39.950950 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (23, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27616-247647', '北京翠微广场店', '海淀区翠微广场购物中心地上一层110号商铺南锣鼓巷20号', '116.305408 ', '39.908292 ', '', '100161', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (24, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18262-188689', '北京南锣鼓巷咖啡店', '东城区亦庄经济技术开发区', '116.518476 ', '39.816430 ', '010-84084985', '100000', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (25, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48430-263164', '北京同济南路店', '大兴区同济南路1号院王府井大街253号', '116.531477 ', '39.784586 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (26, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '5125-147992', '北京王府井店', '东城区王府井百货大楼首层崇文门外大街40号', '116.419383 ', '39.896579 ', '010-65129138', '100006', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (27, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24216-233689', '北京崇文门外第二咖啡店', '东城区搜秀城一层东三环北路甲19号', '116.460693 ', '39.929409 ', '', '100062', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (28, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '20985-206565', '北京嘉盛SOHO中心店', '朝阳区嘉盛中心首层西侧大堂西大望路1号', '116.476595 ', '39.912924 ', '010-65067281', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (29, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17064-178986', '北京西大望路温特莱店', '朝阳区温特莱中心一层首都国际机场1号航站楼', '116.587555 ', '40.081163 ', '010-65387097', '100026', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (30, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34056-96041', '北京首都国际机场1店', '顺义区一层公共区东侧王府井大街138号', '116.654561 ', '40.130347 ', '010-64540916', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (31, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15321-157784', '北京新东安店', '东城区新东安广场地下一层B111-B112号店铺前门大街1-1号', '116.397786 ', '39.898181 ', '010-65255710', '100006', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (32, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '3890-129025', '北京前门大街店', '崇文区方庄紫芳园四区3号楼', '116.438870 ', '39.862211 ', '010-63027966', '100062', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (33, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19930-202711', '北京紫芳园咖啡店（方庄璞瑅）', '丰台区7号商铺上地三街9号', '116.287149 ', '39.858427 ', '010-87211072', '100164', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (34, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19498-200685', '北京上地三街咖啡店', '海淀区B座B-1号及B座首层玻璃间德胜门外大街83号', '116.329519 ', '39.972134 ', '010-62978546', '100085', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (35, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48336-262708', '北京德外大街咖啡店', '西城区1层102号望京东园七区', '116.365868 ', '39.912289 ', '', '100088', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (36, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27945-248028', '北京望京东园二店', '朝阳区望京保利国际广场T1一层101单元羊坊店路18号', '116.492037 ', '39.996215 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (37, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18602-193488', '北京羊坊店路咖啡店', '光耀东方广场一层103单元海淀区丰台北路18号院', '116.308045 ', '39.866216 ', '010-57536311', '100038', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (38, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48938-265751', '北京丽泽桥恒泰咖啡店', '丰台区恒泰广场一层L1-19-20东四环南路9号', '116.307345 ', '39.866376 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (39, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32112-125387', '北京燕莎奥特莱斯店', '朝阳区燕莎奥特莱斯购物中心二期C座一层1018#西单北大街110号', '116.486101 ', '39.878002 ', '010-87381381', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (40, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '47661-256627', '北京西单北大街咖啡店', '西城区L2-2.23号霄云路甲26号', '116.467349 ', '39.959508 ', '', '100032', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (41, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '20675-206949', '北京霄云路咖啡店', '朝阳区酒店一层建国门外大街甲5号', '116.450913 ', '39.908757 ', '010-59782293', '100026', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (42, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34014-30739', '北京贵友大厦店', '朝阳区贵友大厦东侧东坝中路38号一层', '116.547948 ', '39.951237 ', '010-65629350', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (43, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25929-242004', '北京金隅嘉品店', '朝阳区L126L127aL129a单元建国门外大街甲6号1幢', '116.457004 ', '39.907439 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (44, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22120-215444', '北京爱思开大厦店', '朝阳区SK大厦2层望京东园四区', '116.456854 ', '39.907538 ', '', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (45, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28044-243727', '北京望京东园店', '朝阳区9号楼1层101-1号三里屯路19号院', '116.453543 ', '39.934554 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (46, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32548-217264', '北京三里屯店', '朝阳区10号楼10-10&10-20北京市朝阳区阜通东大街6号院', '116.601144 ', '39.948574 ', '', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (47, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24021-233445', '北京阜通东大街咖啡店', '朝阳区3号楼物业一层1-101单元北京火车站', '116.438390 ', '39.978595 ', '', '100102', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (48, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22876-223364', '北京站第一咖啡店', '东城区出发层中关村南大街18号', '116.426659 ', '39.903136 ', '', '100005', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (49, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22758-223829', '北京中关村南大街咖啡店', '海淀区北京国际大厦一层C座01-101单元东大桥东侧路光华路9号', '116.325174 ', '39.953305 ', '', '100044', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (50, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31448-105226', '北京世贸天阶店', '朝阳区世贸天阶中心A座一层L123号翠微路12号01层', '116.451892 ', '39.916122 ', '010-65871579', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (51, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24831-238787', '北京翠微路咖啡店', '海淀区101-06/44/K12B号西大街107号', '116.322057 ', '40.076043 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (52, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19575-198985', '北京中海国际大厦咖啡店', '西城区中海国际大厦28号楼1层6-7单元中关村大街1号1号楼1层F100号铺位', '116.357022 ', '39.931647 ', '010-88009512', '100034', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (53, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18250-184006', '北京中关村大街海龙大厦', '海淀区方庄芳古园一区28号楼', '116.425779 ', '39.865857 ', '010-82663805', '100080', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (54, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27052-246025', '北京方庄通润商务会馆店', '丰台区通润商务会馆A段1层2单元天畅园7号楼1层108号', '116.426033 ', '39.866036 ', '010-58161958', '1000078', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (55, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18792-194945', '北京天畅园咖啡店', '朝阳区宣武门外大街8号', '116.375460 ', '39.896503 ', '010-84828823', '100107', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (56, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31159-106069', '北京庄胜崇光店', '宣武区北京庄胜崇光百货新馆B1层朝阳区东三环南路1号', '116.460894 ', '39.892889 ', '010-63104865', '100052', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (57, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22053-215745', '北京东三环南路店', '北京市佳龙大厦101古北口镇司马台村国际休闲旅游度假区', '117.274438 ', '40.652062 ', '', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (58, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24390-236906', '北京古北咖啡店', '密云县第一层101单元建国门外大街22号', '116.440713 ', '39.906562 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (59, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '3659-145613', '北京赛特购物中心店', '朝阳区赛特购物中心地下一层扶梯东侧大成南里三区13号楼', '116.441768 ', '39.907480 ', '010-65155206', '100004', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (60, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16791-175985', '北京大成路店', '丰台区零售商区的一层及负一层的01单元新华西路58号1号楼', '116.265080 ', '39.888617 ', '010-68260728', '100039', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (61, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24353-235704', '北京通州万达广场第一店', '通州区通州万达广场地上一层1057号铺位来广营西路5号院', '116.667205 ', '39.900009 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (62, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28047-248965', '北京望京诚盈中心店', '朝阳区3号楼地上一层102A复兴门大街15号', '116.601144 ', '39.948574 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (63, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48429-260004', '北京三里河东路店', '西城区长安商场1层永定门西滨河路8号院7楼', '116.345158 ', '39.907786 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (64, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19609-200487', '北京永定门咖啡店', '东城区中海地产广场101东塔02单元永大路1号楼102室', '116.389471 ', '39.870490 ', '010-57837720', '100028', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (65, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28730-250564', '北京龙湖时代天街店', '大兴区东三环中路39号', '116.446357 ', '39.899024 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (66, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34061-98309', '北京建外现代城店', '朝阳区建外SOHO5号别墅01户西单北大街131号', '116.452401 ', '39.912995 ', '010-58690273', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (67, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32264-134050', '北京西单大悦城店', '西城区西单大悦城2F-33号商铺香江北路28号2-023', '116.373435 ', '39.910833 ', '010-59716310', '100052', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (68, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '3595-145605', '北京赛特奥特莱斯店', '朝阳区东三环中路7号院7楼1-31号', '116.458828 ', '39.917643 ', '010-84357710', '100102', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (69, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '7079-150284', '北京财富购物中心店', '朝阳区建国路甲92号北京世茂大厦首层102#单元', '116.470993 ', '39.907739 ', '010-65309201', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (70, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32354-130324', '北京世茂大厦店', '朝阳区槐房南路6号院', '116.601144 ', '39.948574 ', '010-85809015', '100025', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (71, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '49958-271925', '北京槐房西路店', '丰台区槐房万达广场一层1083号临空经济核心区安泰大街9号院', '116.227770 ', '39.905983 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (72, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23854-232084', '北京祥云东方苑咖啡店', '顺义区10号楼102号复兴门内大街28号', '116.363817 ', '39.906202 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (73, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25690-241306', '北京复兴门内店', '西城区凯晨世贸中心西大堂东南侧东长安街1号P-W1(08-10)号店铺', '116.415646 ', '39.908973 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (74, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18248-188765', '北京东方广场三店', '东城区北京东方广场东方新天地商场平台层金宝街88号', '116.414433 ', '39.909286 ', '010-85187651', '100738', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (75, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48253-261926', '北京金宝汇店', '东城区金宝汇112号商铺一层什刹海前海西沿甲19号', '116.421088 ', '39.915247 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (76, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34039-90500', '北京什刹海天荷坊店', '西城区北京南站', '116.377117 ', '39.866524 ', '010-66571489', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (77, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22168-217204', '北京南站第五咖啡店', '丰台区北进口内测东部通道区域地上一层的单元金汇路', '116.287149 ', '39.858427 ', '010-83106950', '100054', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (78, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16522-172365', '北京金汇路世界城店', '朝阳区世界城商业街9号楼1层W111单元复兴门内大街158号', '116.451963 ', '39.917932 ', '010-85907651', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (79, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31911-122926', '北京西城远洋大厦店', '西城区远洋大厦首层G03A崇文门外大街18号', '116.420140 ', '39.898314 ', '010-66416538', '100031', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (80, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17720-183646', '北京崇文门外第一咖啡店', '东城区国瑞城地下二层复兴路51号', '116.400585 ', '39.901333 ', '010-67117065', '100050', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (81, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23076-227184', '北京复兴路咖啡店', '海淀区凯德精品商场1层西侧北京市通州区云景东路1号', '116.666153 ', '39.883834 ', '', '100036', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (82, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21714-212926', '北京通州贵友店', '通州区贵友大厦地上一层海淀大街3号', '116.666407 ', '39.884215 ', '010-59753582', '101121', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (83, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34040-91816', '北京海淀鼎好电子大厦店', '海淀区鼎好电子大厦1层北三环东路36号2号楼C-05单元', '116.410271 ', '39.967106 ', '010-82699457', '100080', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (84, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '8899-151726', '北京环球贸易中心店', '东城区将台路丽都广场丽都商厦首层', '116.479981 ', '39.974719 ', '010-58256528', '100013', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (85, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34009-15773', '北京丽都店', '朝阳区西红门镇', '116.601144 ', '39.948574 ', '010-64376825', '100004', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (86, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25089-203544', '北京欣宁大街咖啡店', '大兴区欣宁大街15号1层1-01-28-R号朝阳门外大街甲6号', '116.326557 ', '39.789426 ', '', '100076', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (87, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19330-200444', '北京朝外大街咖啡店', '朝阳区一层20112012号商铺工人体育场北路13号', '116.449569 ', '39.934452 ', '010-59070313', '100001', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (88, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16064-167346', '北京工体北路店', '朝阳区北京世茂百货F1层E103文化园东路6号01C01', '116.449910 ', '39.935041 ', '010-84059071', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (89, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15061-157304', '北京文化园东路店', '经济技术开发区首都机场3号航站楼', '116.614863 ', '40.054894 ', '010-67859135', '100176', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (90, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32274-113605', '北京首都国际机场5店', '顺义区到达大厅A2LE08#翠景北里21号楼', '116.615225 ', '40.056200 ', '010-64532708', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (91, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24556-238075', '北京翠景北里咖啡店', '通州区南竹杆胡同1号地下1层', '116.656435 ', '39.909946 ', '', '101121', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (92, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21179-209444', '北京朝阳门SOHO店', '东城区B-123号铺万博苑7号楼1层', '116.364720 ', '39.871778 ', '010-85197812', '100010', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (93, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29143-250926', '北京万博苑咖啡店', '西城区东三环北路霞光里18号', '116.457906 ', '39.956105 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (94, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '1706-144224', '北京霞光里店', '潮阳区佳程广场平台层太平桥大街18号', '116.365134 ', '39.916969 ', '010-84400958', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (95, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16442-169213', '北京太平桥大街咖啡店', '西城区丰融国际203号良乡北关西路14号', '116.364910 ', '39.916930 ', '010-66533400', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (96, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19932-202704', '北京房山北关西路咖啡店', '房山区华冠购物中心一层复兴路69号3号楼1层（01）101号001单元', '116.139341 ', '39.735056 ', '010-69384187', '102401', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (97, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16948-173925', '北京五棵松卓展店', '海淀区朝阳门外大街', '116.449955 ', '39.922753 ', '010-88199278', '100044', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (98, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34005-12617', '北京丰联广场店', '朝阳区丰联广场一层广安门外大街168号', '116.438791 ', '39.923904 ', '010-65880503', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (99, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '20201-204084', '北京朗琴国际大厦咖啡店', '西城区天虹百货商场1层101-1号东三环中路一号', '116.341778 ', '39.888897 ', '010-63381606', '100055', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (100, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17164-178525', '北京环球金融中心店', '朝阳区环球金融中心首层W102北辰东路8号院', '116.459104 ', '39.918462 ', '010-59817829', '100052', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (101, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23303-226085', '北京北辰东路第三咖啡店', '朝阳区1号楼一层108单元清河嘉园东区甲1号楼', '116.601144 ', '39.948574 ', '', '100029', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (102, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24398-236227', '北京清河嘉园东区咖啡店', '海淀区清河翠微百货一层101-01单元曙光西里甲5号院', '116.365460 ', '39.969868 ', '', '100085', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (103, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19389-201844', '北京曙光西里咖啡店', '朝阳区10号楼-17-1层17朝阳北路', '116.453643 ', '39.923650 ', '', '100000', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (104, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25748-240504', '北京青年路第二咖啡店', '朝阳区101号楼5层5F-48北京首都国际机场T3航站楼4层公共区', '116.614891 ', '40.054697 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (105, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '47230-253785', '北京首都机场11店', '朝阳区工人体育场北路甲2号裙房01层103A', '116.459326 ', '39.932720 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (106, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29194-248125', '北京盈科中心第二咖啡店', '朝阳区单元及02层202A203A单元建国门外大街乙12号', '116.449226 ', '39.907626 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (107, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '5130-147991', '北京LG大厦店', '朝阳区北京双子座大厦首层L118大红门西路26号11号', '116.448681 ', '39.907678 ', '010-65686282', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (108, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16489-170993', '北京大红门西路店', '丰台区商业楼首层L1-01单元北京南站', '116.376432 ', '39.861049 ', '010-56530792', '100006', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (109, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22167-217205', '北京南站第六咖啡店', '丰台区换乘层7号出站口北侧区域的单元朝阳北路101号楼', '116.380277 ', '39.863639 ', '010-83106096', '100054', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (110, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25809-241445', '北京青年路三店', '朝阳区北京朝阳大悦8层朝阳门内大街2号B座一层04单元', '116.432847 ', '39.923695 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (111, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '5019-154044', '北京凯恒店', '东城区远大路1号', '116.288703 ', '39.959034 ', '1085197361', '100010', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (112, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21154-209504', '北京远大路第三咖啡店', '海淀区金源燕莎mall首层中关村大街19号', '116.314950 ', '39.978627 ', '010-88877831', '100097', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (113, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31374-105225', '北京海淀新中关大厦店', '海淀区新中关大厦首层L128A号建国路93号院A座万达广场东区', '116.315315 ', '39.978329 ', '010-82486056', '100080', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (114, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31912-121764', '北京万达广场店', '朝阳区新世界彩旋百货首层东北旺西路8号', '116.472453 ', '39.909110 ', '010-65812558', '100031', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (115, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22062-214624', '北京东北旺西路咖啡店', '海淀区4号楼一层101-01阜石路300号', '116.173500 ', '39.923050 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (116, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23504-229046', '北京阜石路第一咖啡店', '石景山区一层101单元莲宝中路西侧', '116.222982 ', '39.906611 ', '', '100041', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (117, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27408-243964', '北京万丰路咖啡店', '丰台区万丰路68号和谐广场一层东四环中路56号', '116.297070 ', '39.881810 ', '', '100161', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (118, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31915-116538', '北京远洋天地店', '朝阳区远洋国际中心A座首层109号单元远大路1号', '116.491173 ', '39.914523 ', '010-85868829', '100025', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (119, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16523-172364', '北京远大路金源燕莎2店', '海淀区北京燕莎友谊商城金源店地下一层苏州街3号+C148', '116.305398 ', '39.981804 ', '010-88873879', '100089', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (120, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '30866-100633', '北京大恒科技大厦店', '海淀区大恒科技大厦首层王府井大街301号', '116.305226 ', '39.982384 ', '010-82827945', '100080', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (121, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28844-251204', '北京金街咖啡店', '东城区新燕莎金街购物中心一层MF105-1MF105-2商铺日坛路6号', '116.410646 ', '39.909960 ', '', '100006', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (122, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31156-105224', '北京新族大厦店', '朝阳区新族大厦首层1B太阳宫中路12号', '116.447452 ', '39.971439 ', '010-65954675', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (123, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17044-178987', '北京太阳宫中路第二店', '朝阳区大堂第一层北京南站', '116.601144 ', '39.948574 ', '010-84298878', '100028', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (124, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18612-193490', '北京南站第二咖啡店', '丰台区换乘层中区商业面向地铁南口西侧清华东路2号', '116.287149 ', '39.858427 ', '010-83108398', '100054', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (125, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34051-94616', '北京金码大厦店', '海淀区金码大厦A座首层建国路93号', '116.353580 ', '40.001609 ', '010-82838391', '100080', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (126, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '9023-151727', '北京万达广场2店', '朝阳区万达广场B座3层建国路89号院', '116.481358 ', '39.911513 ', '010-59604273', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (127, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27223-246605', '北京华贸二店', '朝阳区北京华贸19号楼一层102单元空港街道安泰大街6号院', '116.481303 ', '39.911730 ', '', '100005', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (128, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29889-255104', '北京祥云东方苑二店', '顺义区11号楼107北兴路2号1幢', '116.654561 ', '40.130347 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (129, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '47358-256506', '北京大兴星光影视基地店', '大兴区上地东路1号院7号楼', '116.341014 ', '39.784747 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (130, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29483-251693', '北京上地东路店', '海淀区环洋大厦1层东101单元丰葆路88号', '116.302238 ', '40.053927 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (131, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25930-242325', '北京丰葆路店', '丰台区1号楼中关村大街11号一层A1500A单元', '116.287149 ', '39.858427 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (132, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18263-184005', '北京中关村亿世界店', '海淀区西红门宏福路', '116.345835 ', '39.789566 ', '010-62418405', '100080', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (133, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24776-238425', '北京宏福路咖啡店', '大兴区鸿坤生活广场一层金融大街9号楼', '116.341014 ', '39.784747 ', '010-51078910', '100162', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (134, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48335-262709', '北京金融大街店', '西城区1层106-01单元东直门48号银座广场', '116.297015 ', '39.882140 ', '', '100032', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (135, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '20987-207545', '北京东直门第一咖啡店', '东城区L3层23号商铺金宝街89号', '116.419720 ', '39.915815 ', '010-84477308', '100007', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (136, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '8199-103104', '北京东城区金宝大厦店', '东城区金宝大厦写字楼一层04商铺七圣中街12号院2号楼', '116.419925 ', '39.916025 ', '010-85221661', '100005', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (137, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21488-211984', '北京七圣中街咖啡店', '朝阳区爱琴海购物中心一层101内F1007霄云路36号', '116.435862 ', '39.971565 ', '010-84240709', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (138, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34035-84502', '北京国航大厦店', '朝阳区国航大厦一层丰北路甲79号楼', '116.463447 ', '39.956906 ', '010-84475636', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (139, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27475-247364', '北京丰北路咖啡店', '丰台区华堂商场1层1-001单元天竺房地产开发区', '116.292631 ', '39.866321 ', '010-63801101', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (140, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34029-69100', '北京日祥广场店', '顺义区日祥广场东方东路19号外交公寓A座会所2号商铺', '116.524326 ', '40.084993 ', '010-80464360', '101312', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (141, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32449-130325', '北京东方东路外交公寓店', '朝阳区龙山东路2号院', '116.601144 ', '39.948574 ', '010-85322238', '100600', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (142, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25180-240065', '北京龙山东路咖啡店', '怀柔区1号楼一层03单元朝阳公园6号11号楼', '116.477980 ', '39.950241 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (143, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16180-169212', '北京蓝色港湾第二咖啡店', '朝阳区成府路28号', '116.601144 ', '39.948574 ', '010-59056120', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (144, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19441-199924', '北京五道口购物中心店', '海淀区1层101-10B及2层201-09号永定门外大街', '116.329519 ', '39.972134 ', '010-61647561', '100083', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (145, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16212-169524', '北京南站第一咖啡店', '丰台区北京南站首层三丰北里5号楼', '116.378676 ', '39.864838 ', '010-83108955', '100054', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (146, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23008-224464', '北京朝外第二店', '朝阳区01层（01）101中119号北辰东路8号1号楼B07', '116.404300 ', '39.994470 ', '', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (147, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '6092-149244', '北京北辰东路店', '朝阳区朝阳北路101号楼L1-02号', '116.517718 ', '39.924891 ', '010-84976009', '100101', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (148, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '9161-151369', '北京朝阳大悦城店', '朝阳区科学院南路6号', '116.323858 ', '39.984344 ', '010-85521068', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (149, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19596-199925', '北京科学院南路店', '海淀区融科资讯中心B座1层019单元北辰东路8号院', '116.326700 ', '39.983951 ', '', '100871', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (150, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23304-226084', '北京北辰东路第二咖啡店', '朝阳区16号楼一层101单元京顺路111号', '116.461771 ', '39.967810 ', '', '100029', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (151, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '3829-153480', '北京京顺路咖啡店', '朝阳区比如世界京顺路店首层05号呼家楼1号', '116.460566 ', '39.920389 ', '010-64304036', '100028', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (152, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17101-179645', '北京呼家楼咖啡店', '朝阳区京广商务中心1层东三环中路5号楼', '116.461034 ', '39.918126 ', '010-65973957', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (153, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23506-228967', '北京财富中心三店', '朝阳区北京财富金融中心B1层石景山路乙18号院4号楼', '116.460573 ', '39.917833 ', '010-65969103', '100026', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (154, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22757-222624', '北京石景山万达广场店', '北京市石景山万达广场一层上地西路6号', '116.300323 ', '40.053807 ', '', '100040', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (155, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '20674-206950', '北京上地西路咖啡店', '海淀区联想科技园区内大兴区旧宫忠凉路1号院1号楼', '116.459225 ', '39.806115 ', '', '100085', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (156, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29486-253468', '北京旧宫万科咖啡店', '北京市住总万科广场一层L1001L1002号东三环中路7号', '116.458478 ', '39.912231 ', '', '100076', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (157, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '30752-101073', '北京财富中心店', '朝阳区财富中心一期写字楼首层E103建国路91号', '116.458973 ', '39.916476 ', '010-65309038', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (158, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48749-258006', '北京金地中心店', '朝阳区金地中心L2层L201店铺建国路79号', '116.475023 ', '39.909464 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (159, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32134-197484', '北京华贸店', '朝阳区北京华贸购物中心L121及L223&224#颐和园路206号206-141516', '116.480955 ', '39.909650 ', '010-65305766', '100025', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (160, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15373-156885', '北京龙湖天街店', '海淀区西大望路15号', '116.476282 ', '39.893749 ', '010-62501706', '100091', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (161, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '26021-242178', '北京西大望路第一店', '朝阳区4号楼商业1（01层）内01号西四环南路103号院1号', '116.510798 ', '39.935666 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (162, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23505-228667', '北京西四环南路咖啡店', '丰台区资和信百货商场F1-1024南四环西路118号一区31号楼', '116.286030 ', '39.826783 ', '', '110000', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (163, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23011-226247', '北京南四环西路咖啡店', '丰台区1层（01）101区域内的01单元东大桥路9号', '116.448118 ', '39.919541 ', '', '100000', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (164, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24019-228966', '北京芳草地大厦咖啡店', '朝阳区D座一层清河中街68号', '116.332033 ', '40.027918 ', '', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (165, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15588-159385', '北京五彩城店', '海淀区五彩城西区首层L101号商铺北辰西路8号院3号楼B座', '116.332756 ', '40.030234 ', '010-82816711', '100085', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (166, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16083-167624', '北京北辰西路店', '朝阳区北辰世纪中心首层109单元新源南路1号', '116.459961 ', '39.949764 ', '010-84370796', '100101', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (167, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22906-224166', '北京新源南路咖啡店', '朝阳区1至4层101内-1层B18单元中关村大街15-11号A区', '116.311736 ', '39.982022 ', '', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (168, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16247-167345', '北京中关村广场西区店', '海淀区负一层A126A127单元望京湖光中街1号', '116.466896 ', '39.997675 ', '010-59863730', '100101', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (169, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34058-98764', '北京望京鹏景阁店', '朝阳区鹏景阁首层立汤路186号院', '116.466970 ', '39.997666 ', '010-84724218', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (170, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29264-251786', '北京龙德广场二店', '昌平区1号楼02层(02)201内208单元霄云路38号', '116.230823 ', '40.210199 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (171, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27783-247966', '北京霄云路二店', '朝阳区现代汽车大厦一层首都机场三号航站楼A3E4', '116.612935 ', '40.048195 ', '', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (172, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22051-214145', '北京首都国际机场9店', '朝阳区3层建国门外大街光华路1号', '116.458612 ', '39.913855 ', '010-64532198', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (173, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19196-184984', '北京嘉里中心第二咖啡店', '朝阳区北京嘉里中心商场一层111号2层204号东城区东直门南大街3号', '116.459821 ', '39.913873 ', '010-85298355', '100026', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (174, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22679-221307', '北京国华投资广场咖啡店', '北京市国华投资一层01单元建国门外大街1号', '116.456469 ', '39.907620 ', '', '100007', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (175, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '47747-258504', '北京国贸四店', '朝阳区国际贸易中心商城地下一层SB126+SB127号铺位东三环北路8号', '116.459370 ', '39.910935 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (176, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34025-28976', '北京亮马河大厦店', '朝阳区亮马大厦一层金融街金融中心F区', '116.459699 ', '39.949460 ', '010-65900522', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (177, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31642-104797', '北京金融街金树街店', '西城区北京建国路112号', '116.464411 ', '39.907558 ', '010-66220355', '100032', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (178, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27227-246131', '北京建国路第二咖啡店', '朝阳区一层B崇文门外大街3号', '116.418078 ', '39.897529 ', '', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (179, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34031-123184', '北京新世界店', '崇文区新世界商场一期首层宣武门外大街28号', '116.375133 ', '39.893461 ', '010-67087358', '100062', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (180, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17610-183884', '北京宣武门外富卓大厦店', '西城区富卓大厦一层北京南站换乘层地铁四号线围栏外', '116.375115 ', '39.893385 ', '010-63185381', '100052', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (181, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18866-196264', '北京南站第三咖啡店', '丰台区东北角M与1/M轴之间2-9与2-10轴之间清河营南街', '116.287149 ', '39.858427 ', '010-83100361', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (182, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '26823-244745', '北京清河营南街店', '朝阳区7号院4号楼一层126-127商铺复内大街101号', '116.605217 ', '39.914520 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (183, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34011-20859', '北京百盛店', '西城区复兴门百盛商场二期一层天坛东路46号', '116.358384 ', '39.908680 ', '010-66037275', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (184, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '17008-178526', '北京天坛东路店', '东城区迤北红桥市场一层北三环东路36号1号楼A座首层02单元', '116.410177 ', '39.968302 ', '010-67113708', '100101', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (185, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15386-159384', '北京安贞环贸2店', '东城区南礼士路66号', '116.353091 ', '39.908633 ', '010-59575613', '100013', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (186, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34008-12025', '北京建威大厦店', '西城区建威大厦一层酒仙桥路18号', '116.353066 ', '39.908630 ', '010-68018027', '100045', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (187, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19931-202765', '北京颐堤港中心咖啡店', '朝阳区颐堤港商场L1-72号工人体育场北路', '116.492195 ', '39.967980 ', '010-84260986', '100016', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (188, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24537-237825', '北京工体北路第二咖啡店', '朝阳区8号院1号楼1层1118西直门北大街32号院', '116.601144 ', '39.948574 ', '', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (189, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18251-187224', '北京枫蓝国际中心店', '海淀区1号楼一层106-2西城区金融街武定候街2号', '116.362591 ', '39.917690 ', '010-62214405', '100088', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (190, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '20676-206948', '北京泰康国际大厦店', '西城区泰康大厦1层悦盛路6号院', '116.362156 ', '39.917545 ', '010-66290609', '100032', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (191, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19516-200344', '北京房山悦盛路店', '房山区奥特莱斯F1-B06林翠东路2号院', '116.186072 ', '39.763083 ', '010-60356511', '102488', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (192, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '18582-192605', '北京奥村咖啡店', '朝阳区甲3号楼一层F106区域城南街道南口路29号', '116.485901 ', '39.878086 ', '010-84377253', '100101', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (193, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28915-250485', '北京乐多港店', '昌平区L1028东三环中路63号(双井桥西北侧)', '116.460050 ', '39.896705 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (194, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32547-130345', '北京富力家园店', '朝阳区富力大厦1层101三丰北里2号楼悠唐生活广场', '116.440269 ', '39.921471 ', '010-59037387', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (195, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '9170-152487', '北京朝外悠唐店', '朝阳区天竺镇丽苑街15号', '116.564246 ', '40.051992 ', '010-85611499', '100020', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (196, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24545-237565', '北京顺义丽苑街咖啡店', '顺义区27号楼102103单元首体南路9号10楼等11幢之第四幢', '116.654561 ', '40.130347 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (197, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22587-221306', '北京首体南路咖啡店', '海淀区地上一层大堂B/C轴与22/25轴之间新顺南大街11号', '116.329519 ', '39.972134 ', '', '100044', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (198, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24521-236944', '北京新顺南大街咖啡店', '顺义区1幢一层2单元建国门外大街2号', '116.654561 ', '40.130347 ', '', '101300', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (199, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '1490-131667', '北京银泰店', '朝阳区银泰中心B1-B38&B39广顺南大街16号院1号楼', '116.459689 ', '39.907156 ', '010-85171658', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (200, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32708-134010', '北京望京店', '朝阳区北京新世界利莹百货首层010760A天星街1号院', '116.481429 ', '39.986197 ', '010-84764786', '100022', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (201, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25931-242324', '北京天星街咖啡店', '房山区7号楼一层玉泉路59号院1号楼', '116.143267 ', '39.749144 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (202, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '47178-255931', '北京鲁谷远洋咖啡店', '石景山区远洋沁山水1层A001单元首都机场T3航站楼D区', '116.250392 ', '39.902012 ', '', '100000', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (203, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19279-198284', '北京首都国际机场八店', '朝阳区2层慈云寺北里', '116.495192 ', '39.918326 ', '010-64531932', '100000', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (204, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27225-243245', '北京苏宁生活广场店', '朝阳区118号楼苏宁生活广场第一层104B南三环东路成寿寺路2号', '116.447090 ', '39.857452 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (205, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '23797-230630', '北京成寿寺路咖啡店', '丰台区阳光新生活广场一层A129崇文门外大街5号', '116.275976 ', '39.892908 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (206, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28111-249293', '北京新世界商场二店', '东城区北京新世界商场青春馆地下1层010009B号机场辅路将台路甲2号', '116.418227 ', '39.897777 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (207, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '31830-113084', '北京海润店', '朝阳区海润国际公寓底商1层西直门外大街1号', '116.352881 ', '39.940688 ', '010-51358316', '100102', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (208, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '16541-172765', '北京西环广场2期店', '西城区西区B1-45/47A号首都国际机场三号航站楼国际隔离区B2S13', '116.394820 ', '39.897572 ', '010-58301229', '100044', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (209, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15906-166747', '北京首都国际机场6店', '顺义区北四环东路9号', '116.459025 ', '39.979063 ', '010-64530524', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (210, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '25194-238716', '北京北四环东路Ⅱ店', '朝阳区四元桥家乐福1层1-36a单元常通路', '116.433215 ', '39.894134 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (211, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22970-224005', '北京常通路第一咖啡店', '朝阳区1号院1号楼1F-08/2F-08东长安街1号', '116.415646 ', '39.908973 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (212, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34055-96031', '北京东方广场西店', '东城区东方广场东方新天地商场地下一层黄平路19号院1号楼B单元101-02室', '116.414433 ', '39.909286 ', '010-85185163', '100738', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (213, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24832-238988', '北京黄平路咖啡店', '昌平区西直门外大街168号', '116.327989 ', '39.938145 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (214, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '19062-198288', '北京腾达大厦咖啡店', '海淀区腾达大厦2层210号首都国际机场三号航站楼国际隔离区B2W13', '116.327323 ', '39.938109 ', '010-88575870', '100044', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (215, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15907-166748', '北京首都国际机场7店', '顺义区西单北大街131号', '116.563538 ', '40.227237 ', '010-64530526', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (216, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '26566-243544', '北京西单大悦城二店', '西城区西单大悦城101-XZL号朝阳区常通路', '116.372980 ', '39.910891 ', '', '100031', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (217, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22971-224065', '北京常通路第二咖啡店', '北京市1号院1号楼1F-08/2F-08陈家营西路3号院23号楼', '116.407526 ', '39.904030 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (218, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '26234-243485', '北京陈家营西路店', '昌平区招商嘉铭珑原商业楼中关村东路1号', '116.401224 ', '40.040806 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (219, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34060-99446', '北京威新国际大厦店', '海淀区清华科技园9号楼威新国际大厦首层左家庄北里58号楼一层1037号', '116.331806 ', '39.993522 ', '010-58722056', '100084', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (220, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '9163-152484', '北京国展天虹店', '朝阳区建国路88号', '116.479324 ', '39.906086 ', '010-57620435', '100028', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (221, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21824-214265', '北京建国路咖啡店', '朝阳区SOHO现代城801单元地上一层及二层远大路1号', '116.475432 ', '39.906845 ', '010-85805263', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (222, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32135-127705', '北京远大路金源燕莎店', '海淀区金源燕莎Mall首层1016三里屯路11号院地下一层NLG-32a单元', '116.287337 ', '39.958508 ', '010-88893779', '100089', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (223, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '15047-157223', '北京三里屯北区店', '朝阳区首都国际机场2号航站楼一层国际到港厅', '116.593949 ', '40.079597 ', '010-64165163', '100027', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (224, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '34057-96048', '北京首都国际机场2店', '顺义区马家堡路华冠天地', '115.983878 ', '39.702153 ', '010-64592652', '100621', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (225, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24681-238187', '北京公益西桥咖啡店', '丰台区1层1105亦庄天宝东路', '116.287149 ', '39.858427 ', '', '100068', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (226, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '48700-264727', '北京朝林广场店', '大兴区朝林广场A座一层北京市西城区复兴门外大街A2号', '116.351148 ', '39.906621 ', '', '100176', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (227, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21825-213805', '北京复兴门外咖啡店', '西城区办公楼主楼首层大堂01号立汤路186号', '116.415484 ', '40.060095 ', '', '100045', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (228, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '32549-137413', '北京龙德时代广场店', '昌平区龙德广场首层F158黄村东大街38号院1号楼', '116.415547 ', '40.059765 ', '010-84816158', '102218', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (229, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '29888-255106', '北京大兴王府井咖啡店', '大兴区大兴王府井百货1层105号商铺安定门东大街28号', '116.343030 ', '39.731590 ', '', '', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:18:07');
INSERT INTO `store` VALUES (230, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '24022-233444', '北京雍和大厦店', '东城区雍和大厦东楼1层大栅栏街道弓字胡同10号', '116.394213 ', '39.897476 ', '', '100007', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (231, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '27050-245004', '北京大栅栏店', '西城区广顺北大街33号', '116.466165 ', '39.990101 ', '', '100051', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (232, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '28785-250566', '北京望京凯德咖啡店', '朝阳区望京嘉茂1层裕祥路99号', '116.547145 ', '40.067082 ', '', '100102', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (233, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '21524-211504', '北京欧陆时尚店', '顺义区一层L105和L106单元天洋广场购物中心', '116.654561 ', '40.130347 ', '010-80460100', '101312', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (234, 'Starbucks', '中国', '廊坊市', '116.683752 ', '39.538047 ', '5', '23727-231706', '廊坊三河天洋广场咖啡店', '亿丰大街南侧汉王路西侧G120国道27号', '116.824839 ', '39.969001 ', '', '65201', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (235, 'Starbucks', '中国', '廊坊市', '116.683752 ', '39.538047 ', '5', '49129-267091', '廊坊燕郊永旺梦乐城店', '高新区永旺梦乐城购物中心一层192号天津站候车室内第二层的高架候车层', '116.865463 ', '39.949307 ', '', '65201', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (236, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '16292-169344', '天津火车站店', '河北区新纬路1号东侧13号-14号检票口中间位置天津站交通枢纽', '117.209123 ', '39.136215 ', '022-60531331', '300010', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (237, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '22681-222245', '天津站区第二咖啡店', '河东区后广场轨道换乘中心地下一层D区010号环河北路168号', '117.218117 ', '39.117297 ', '', '300143', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (238, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '47172-255304', '天津SM城市广场店', '空港经济开发区SM城市广场一层D栋D1026单元天津滨海国际机场', '117.418898 ', '39.156097 ', '', '300039', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (239, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '23058-225364', '天津滨海国际机场1店', '东丽区T2航站楼商业区域二层核心区六纬路238号', '117.360134 ', '39.130994 ', '', '300151', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (240, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '22903-224924', '天津嘉里中心店', '河东区嘉里中心商场一层L1012A单元卫津路北端嘉利大厦1-102-A01', '117.180372 ', '39.118691 ', '', '300165', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (241, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '25687-241166', '天津嘉利大厦店', '和平区南门外大街与南马路交口', '117.181208 ', '39.137094 ', '', '300070', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (242, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '16552-162666', '天津大悦城店', '南开区东马路137号', '117.191040 ', '39.137577 ', '022-58100269', '100091', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (243, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '19583-200492', '天津仁恒广场咖啡店', '南开区乐天百货一层EF-1单元泰安道18号增1号三号院一号楼', '117.213320 ', '39.119180 ', '022-58100790', '300089', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (244, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '15811-160946', '天津五大院店', '和平区C1-2铺位首层及二层新港路1709号1813号', '117.208125 ', '39.118897 ', '022-58325702', '100091', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (245, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '20898-203124', '天津滨海宝龙国际店', '滨海新区宝龙城市广场一层L1-128单元永旺梦乐城天津TEDA购物中心1层', '117.680264 ', '39.007380 ', '', '300450', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (246, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '19648-202545', '天津永旺梦乐城滨海店', '经济技术开发区时尚东路29号区域120单元大沽南路531号', '117.729742 ', '39.031723 ', '022-59861102', '300457', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (247, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '17290-178764', '天津怡乐天地店', '河西区一层1022单元西马路与南马路交口东北侧', '117.172076 ', '39.137413 ', '022-83283196', '100091', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (248, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '18719-192585', '天津天佑城咖啡店', '南开区如意大厦101-102单元天佑城一层南京路189号', '117.173459 ', '39.137950 ', '022-58989201', '300081', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (249, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '20491-206024', '天津津汇广场第二咖啡店', '和平区津汇广场裙楼一层01-01new单元第一大街86号', '117.197265 ', '39.117589 ', '', '300051', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (250, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '15965-167004', '天津名都市民广场店', '经济技术开发区新开路', '116.904019 ', '39.181451 ', '022-60623622', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (251, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '48793-265077', '天津新开路远洋新天地店', '河东区67号101102单元南京路189号', '117.195235 ', '39.119104 ', '', '300157', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (252, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '34028-142524', '天津津汇店', '和平区津汇广场地下一层B-35乐园道9号', '117.197265 ', '39.117589 ', '022-2330-9510', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (253, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '16519-172367', '天津银河广场咖啡店', '河西区银河国际购物中心一层L1-045-2单元解放北路与哈尔滨道交口东北侧', '117.208429 ', '39.130125 ', '022-58785330', '100091', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (254, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '49452-269407', '天津金谷大厦店', '和平区金之谷大厦1-107单元滨江道108号', '117.209175 ', '39.131184 ', '', '300002', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (255, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '47398-256866', '天津友谊新天地商厦店', '和平区友谊新天地商厦一层大丰路18号水游城二层F2AN15单元', '117.170620 ', '39.146908 ', '', '300130', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (256, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '16285-170164', '天津水游城店', '红桥区劝业场街南京路108号', '117.195526 ', '39.120615 ', '022-58301256', '100091', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (257, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '47923-256949', '天津南京路店', '和平区现代城C区地下一层9单元鞍山西道259号一层101单元', '117.165120 ', '39.113901 ', '', '300012', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (258, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '17776-185654', '天津时代数码广场咖啡店', '南开区黑牛城道125号', '117.213838 ', '39.076130 ', '022-58621865', '33457', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (259, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '18728-188384', '天津友谊路新业广场店', '河西区新业广场1层A101-A102塘沽新港路276号', '117.215276 ', '39.075904 ', '022-59586708', '300061', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (260, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '21732-212924', '天津滨海金元宝于家堡店', '滨海新区于家堡金元宝购物中心一层A01单元塘沽解放路668号', '117.667243 ', '39.017617 ', '', '300046', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (261, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '21733-212784', '天津塘沽金元宝金街店', '滨海新区塘沽金元宝商厦一层凌宾路时代奥城广场8号楼', '117.667519 ', '39.017812 ', '', '300457', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (262, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '18808-195232', '天津奥城咖啡店', '南开区彩七汇生活广场一层8102-1单元宁宇家园', '117.171579 ', '39.075245 ', '022-58109030', '300781', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (263, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '50139-273144', '天津万福生活广场店', '河北区9号楼/配3-101新产业园区华苑产业区工华道', '117.196648 ', '39.147869 ', '', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (264, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '48217-261844', '天津滨海高新区工华道店', '南开区1号虚拟园-104-1105-1', '117.121841 ', '39.093694 ', '', '300123', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (265, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '1713-144726', '天津小白楼店', '小白楼开封道54号1层及2层No.54友谊北路60号', '117.215924 ', '39.115650 ', '022-23111722', '300042', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (266, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '24680-237940', '天津金河购物中心店', '河西区金河购物中心一层解放北路188号', '117.217861 ', '39.117703 ', '', '300043', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (267, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '9083-152105', '天津海信店', '和平区海信广场2层及3层南京路128号', '117.194310 ', '39.119800 ', '022-23198376', '300042', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (268, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '32181-132308', '天津乐宾店', '和平区乐宾百货首层C06&C07＃友谊南路111号', '117.194964 ', '39.120452 ', '022-27168010', '300052', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (269, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '48252-259326', '天津印象城店', '西青经济技术开发区印象城L1-18单元南北大街1号', '117.239463 ', '39.095996 ', '', '300020', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (270, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '16722-174866', '天津凯德天津湾店', '河西区凯德嘉茂一层', '117.239302 ', '39.096955 ', '022-88269964', '100091', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (271, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '34023-28975', '天津国际大厦店', '南京路75号天津国际大厦一层', '117.208911 ', '39.116221 ', '022-23131133', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (272, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '3711-150726', '天津新意街店', '新意大利风情街自由道60-62号前进道与翠通路交口', '117.196920 ', '39.135109 ', '022-24453183', '300010', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (273, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '48243-262026', '天津武清意安广场店', '武清区威尼都H1-101102A京津公路342号', '117.069515 ', '39.371407 ', '', '300150', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (274, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '28189-249604', '天津武清友谊商场店', '武清区武清友谊百货商厦一层南门外大街2号', '117.181089 ', '39.130627 ', '', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (275, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '20736-207825', '天津大悦城第二咖啡店', '南开区大悦城B1-48乐园道与越秀路交口B1层', '117.179937 ', '39.135044 ', '022-87762502', '300021', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (276, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '18813-193967', '天津地铁店', '河西区津滨大道53号一层151A单元', '117.253271 ', '39.124071 ', '022-58377802', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (277, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '12889-155128', '天津河东万达店', '河东区洛阳道61-73号', '117.204299 ', '39.115024 ', '022-58036508', '300170', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (278, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '18098-187624', '天津五大道店', '和平区69.71.73号楼一层南京路39号01-05/06号', '117.216059 ', '39.113534 ', '022-58352890', '300050', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (279, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '23918-229565', '天津凯德国际贸易中心店', '河西区中北工业园阜盛道1号', '117.090720 ', '39.142629 ', '', '300030', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (280, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '25751-241764', '天津中北永旺购物中心店', '西青区永旺梦乐城中北购物中心一层环河北路98号', '117.091410 ', '39.142926 ', '', '300078', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (281, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '27865-248447', '天津新燕莎奥特莱斯店', '空港经济区新燕莎奥特莱斯一层A8-108号单元南京路66号', '117.396777 ', '39.161847 ', '', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (282, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '22247-217284', '天津凯旋门大厦咖啡店', '河西区凯旋门大厦一层1-01单元风水园2-25单元', '117.215543 ', '39.063212 ', '022-23462480', '300141', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (283, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '20492-205925', '天津梅江凤水园咖啡店', '河西区友谊南路与珠江道交口西南侧南京路', '117.217715 ', '39.063781 ', '022-88389107', '300220', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (284, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '30832-101914', '天津国际商场店', '和平区天津国际商场A座1&2层友谊南路111号', '117.195290 ', '39.119066 ', '022-27826353', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (285, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '21896-214024', '天津永旺梦乐城梅江店', '西青经济开发区A区南市街', '117.182596 ', '39.128861 ', '022-87978891', '300080', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (286, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '28991-251324', '天津万兆新文化花园店', '和平区福安大街新文化花园新丽居底商-102东马路135号', '117.185391 ', '39.129350 ', '', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (287, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '24990-238613', '天津仁恒置地广场二店', '南开区仁恒海河广场一层1-10黄海路19号', '117.192052 ', '39.139242 ', '', '300150', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (288, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '17492-174287', '天津金元宝滨海中心店', '泰达开发区金元宝滨海国际购物中心一层和平路172号', '117.193111 ', '39.130010 ', '022-25635516', '300457', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (289, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '25932-242308', '天津百货大楼咖啡店', '和平区百货大楼一层1F-A03单元咸水沽镇', '117.395242 ', '38.979148 ', '', '300010', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (290, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '23307-226528', '天津咸水沽月坛商厦店', '津南区津和路56-57号宾水西道与凌宾路交口西南侧', '117.172956 ', '39.079482 ', '', '300087', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (291, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '28987-250687', '天津奥城商业广场店', '南开区奥城商业广场4号楼一层-商1大寺镇环岛西路11号', '117.170208 ', '39.077760 ', '', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (292, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '25935-242545', '天津大岛广场店', '西青区大岛商业广场S1-106兴安路166号', '117.219466 ', '39.043217 ', '', '300201', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (293, 'Starbucks', '中国', '天津市', '117.200983 ', '39.084158 ', '58', '22245-218424', '天津恒隆广场咖啡店', '和平区恒隆广场朝阳北大街99号', '117.199914 ', '39.128026 ', '', '300101', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (294, 'Starbucks', '中国', '保定市', '115.464806 ', '38.873891 ', '3', '18614-192926', '保定百盛咖啡店', '新市区零售商区的第一层裕华西路555号', '115.489441 ', '38.859468 ', '0312-6895158', '71000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (295, 'Starbucks', '中国', '保定市', '115.464806 ', '38.873891 ', '3', '17285-180017', '保定华创广场咖啡店', '南市区零售商区的第一层和第二层的Y15单元保定北国先天下购物广场一层', '115.469760 ', '38.889604 ', '0312-6248819', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (296, 'Starbucks', '中国', '保定市', '115.464806 ', '38.873891 ', '3', '16584-173087', '保定先天下广场店', '朝阳北大街799号新华西道2号', '115.470146 ', '38.889663 ', '0312-5883208', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (297, 'Starbucks', '中国', '唐山市', '118.180193 ', '39.630867 ', '4', '20941-208644', '唐山银泰店', '路南区综合楼首层F1-58单元增盛路18号', '118.189219 ', '39.624072 ', '0315-3735112', '63004', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (298, 'Starbucks', '中国', '唐山市', '118.180193 ', '39.630867 ', '4', '16060-167085', '唐山万达广场店', '路南区万达广场10581059单元新华东道125号', '118.180534 ', '39.626019 ', '0315-5102296', '63000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (299, 'Starbucks', '中国', '唐山市', '118.180193 ', '39.630867 ', '4', '28843-250784', '唐山百货大楼店', '路北区百货大楼一层新华西道32号', '118.168895 ', '39.625327 ', '', '63000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (300, 'Starbucks', '中国', '唐山市', '118.180193 ', '39.630867 ', '4', '17773-182725', '唐山新华贸咖啡店', '路北区新华路43号', '118.101334 ', '39.560526 ', '0315-2382511', '63000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (301, 'Starbucks', '中国', '廊坊市', '116.683752 ', '39.538047 ', '5', '29118-251327', '廊坊明珠大厦咖啡店', '广阳区新华路50号廊坊万达广场1051-2号铺位', '116.707866 ', '39.521272 ', '', '131000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (302, 'Starbucks', '中国', '廊坊市', '116.683752 ', '39.538047 ', '5', '16338-167084', '廊坊万达广场店', '广阳区裕华路188号', '116.684482 ', '39.536603 ', '0316-2612206', '65000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (303, 'Starbucks', '中国', '廊坊市', '116.683752 ', '39.538047 ', '5', '28784-249524', '廊坊万向城购物中心店', '广阳区滨河中路2号', '116.710690 ', '39.522786 ', '', '65000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (304, 'Starbucks', '中国', '张家口', '114.887543 ', '40.824418 ', '1', '48554-263804', '张家口百盛店', '桥东区百盛购物中心一层新华北路1号', '114.886244 ', '40.817147 ', '', '75000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (305, 'Starbucks', '中国', '承德市', '117.962410 ', '40.954071 ', '1', '47746-256746', '承德双百购物广场咖啡店', '双桥区双百购物广场中山东路11号', '117.941736 ', '40.969655 ', '', '67300', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (306, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '16561-169347', '石家庄乐汇城店', '桥东区1层W09单元中山东路39号', '114.506923 ', '38.044427 ', '0311-67503883', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (307, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '18450-179286', '石家庄勒泰中心2店', '桥东区勒泰中心6层裕华西路15号', '114.479874 ', '38.036073 ', '0311-67263775', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (308, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '16236-169346', '石家庄万象天成店', '桥西区万象天成商务广场一层120200122123单元零售商区的第一层的主楼（写字楼）部分', '114.479303 ', '38.035982 ', '0311-66600251', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (309, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '17170-180016', '石家庄银座商城东购店', '中山西路83号育才街58号', '114.485314 ', '38.044242 ', '0311-85361780', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (310, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '49568-268269', '石家庄青园店', '长安区北国先天下广场第一层1F-GN2单元', '114.526765 ', '38.041888 ', '', '50011', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (311, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '16063-167086', '石家庄万达广场店', '槐安路万达广场1层中山东路39号', '114.506923 ', '38.044427 ', '0311-67796356', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (312, 'Starbucks', '中国', '石家庄', '114.514860 ', '38.042307 ', '7', '17885-173105', '石家庄勒泰中心第一店', '桥东区勒泰中心一层秦皇东大街138号', '114.506841 ', '38.045029 ', '0311-66765336', '50000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (313, 'Starbucks', '中国', '秦皇岛', '119.600492 ', '39.935385 ', '3', '27866-247705', '秦皇岛世纪港湾店', '海港区A1206海港区河北大街中段115号', '119.604576 ', '39.933614 ', '', '66001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (314, 'Starbucks', '中国', '秦皇岛', '119.600492 ', '39.935385 ', '3', '24351-235706', '秦皇岛乐都汇咖啡店', '秦皇岛市乐都汇零售商区一层文化路139号', '119.605555 ', '39.932954 ', '', '66000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (315, 'Starbucks', '中国', '秦皇岛', '119.600492 ', '39.935385 ', '3', '24354-235708', '秦皇岛茂业金都店', '海港区茂业百货第一层126单元中兴东大街18号', '119.604279 ', '39.931657 ', '', '66000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (316, 'Starbucks', '中国', '邢台市', '114.504844 ', '37.070589 ', '1', '28988-250868', '邢台世贸天街店', '桥东区邢台世贸天街1层联纺路505号', '114.491674 ', '37.061506 ', '', '54000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (317, 'Starbucks', '中国', '邯郸', '114.538961 ', '36.625657 ', '1', '27407-243726', '邯郸天鸿广场咖啡店', '丛台区阳光天鸿广场1层A112号和LJ03号五一路77号', '114.519683 ', '36.626518 ', '', '56000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (318, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '18520-187206', '太原铜锣湾咖啡店', '迎泽区山西铜锣湾国际购物中心的第一层A1单元解放路175号', '112.560232 ', '37.883780 ', '0351-8202664', '30000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (319, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '26562-170990', '太原万达广场店', '杏花岭区太原龙湖万达广场1层1037号新建路187号', '112.561424 ', '37.885246 ', '', '30000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (320, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '19332-191905', '太原华宇国际精品咖啡店', '杏花岭区零售区一层116单元二层208209单元长风街116号', '112.570605 ', '37.893955 ', '0351-3339223', '300000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (321, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '25113-170988', '太原北美新天地店', '小店区北美新天地1层F132单元长风街705号', '112.555284 ', '37.818293 ', '', '30000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (322, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '20569-206645', '太原和信摩尔广场', '小店区零售商区一层1D02号1D03号1D04号1D05号米市街53号', '112.564306 ', '37.742941 ', '0351-7526895', '30006', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (323, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '19147-191904', '太原巴黎春天百货咖啡店', '迎泽区太原巴黎春天商业群楼中的第一层108单元亲贤北街189号', '112.563292 ', '37.823765 ', '0351-8218805', '30000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (324, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '18120-180449', '太原百盛第一咖啡店', '小店区太原梅园百盛商城一层东南角柳巷南路99号', '112.566699 ', '37.865813 ', '0351-7552537', '30006', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (325, 'Starbucks', '中国', '太原市', '112.548879 ', '37.870590 ', '8', '18592-170985', '太原柳巷第一咖啡店', '迎泽区太原茂业百货一层101单元和二层201单元钢铁大街64号', '112.566819 ', '37.865983 ', '0351-2775488', '30000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (326, 'Starbucks', '中国', '包头市', '109.840347 ', '40.657449 ', '4', '27615-247445', '包头百货大楼店', '昆都仑区包百大楼一楼西门青年路26号', '109.854383 ', '40.657851 ', '', '14000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (327, 'Starbucks', '中国', '包头市', '109.840347 ', '40.657449 ', '4', '22756-221924', '包头万达广场咖啡店', '青山区万达广场1层173B和175号钢铁大街96号', '109.814572 ', '40.657477 ', '0472-5198191', '1430', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (328, 'Starbucks', '中国', '包头市', '109.840347 ', '40.657449 ', '4', '22877-223464', '包头维多利咖啡店', '昆区东方红CBD商业广场1层103号钢铁大街与市府东路交汇处往西100米', '109.814803 ', '40.657918 ', '010-85884453', '14010', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (329, 'Starbucks', '中国', '包头市', '109.840347 ', '40.657449 ', '4', '49322-268267', '包头苏宁广场店', '昆都仑区包头苏宁广场地上1层107A单元新华东街62号', '109.843026 ', '40.657235 ', '', '14000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (330, 'Starbucks', '中国', '呼和浩特', '111.749180 ', '40.842585 ', '4', '21530-211405', '呼和浩特新华东街咖啡店', '赛罕区呼市赛罕区新华东街62号零售商区地上一层中山西路7号民族商场一层', '111.710426 ', '40.830180 ', '', '10020', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (331, 'Starbucks', '中国', '呼和浩特', '111.749180 ', '40.842585 ', '4', '21454-211406', '呼和浩特民族商场咖啡店', '回民区中山西路1号', '111.669016 ', '40.816050 ', '0471-4936206', '10020', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (332, 'Starbucks', '中国', '呼和浩特', '111.749180 ', '40.842585 ', '4', '21529-211407', '呼和浩特海亮广场店', '回民区维多利时代城一层003号商铺新华东街26号', '111.669255 ', '40.814619 ', '', '10020', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (333, 'Starbucks', '中国', '呼和浩特', '111.749180 ', '40.842585 ', '4', '21575-211408', '呼和浩特东城万达广场店', '赛罕区万达广场一层解放路80号', '111.735960 ', '40.834437 ', '', '10020', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (334, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '17887-185652', '大连大都会分店', '中山区长江路259号', '121.291235 ', '38.805076 ', '0411-39989567', '116000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (335, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '21542-211826', '大连站分店', '中山区二层高架候车室6号-8号检票口中间位置商铺西岗区五四路66号', '121.609271 ', '38.907029 ', '', '116000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (336, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '29746-252446', '大连恒隆2店', '西岗区高新园区黄浦路519号', '121.547153 ', '38.877626 ', '', '110013', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (337, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '24438-232825', '大连高新锦辉店', '大连市锦辉购物广场一层01-02单元人民路8号', '121.646000 ', '38.922531 ', '', '116021', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (338, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '48330-262706', '大连友谊商城店', '中山区迎客路168号周水子国际机场', '121.540565 ', '38.962300 ', '', '116000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (339, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '47482-256944', '大连机场安检内店', '甘井子区二楼出发大厅安检内13.14号登机口天津街200号', '121.525461 ', '38.953351 ', '', '116000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (340, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '1683-140871', '大连新世界店', '中山区新世界百货首层西安路139号1号大连罗斯福广场一层', '121.633444 ', '38.916673 ', '0411-82559607', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (341, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '28159-249285', '大连西安路罗斯福店', '沙河口区1105B和二层21002单元中华西路22号', '121.589008 ', '38.989077 ', '', '116100', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (342, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '24377-236124', '大连华南安盛店', '甘井子区一层H1G030单元中山路291号', '121.608204 ', '38.910787 ', '', '116031', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (343, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '30632-99984', '大连奥林匹克店', '西岗区万达商业广场A座五四路66号', '121.609271 ', '38.907029 ', '0411-83669006', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (344, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '27785-248205', '大连恒隆店', '西岗区黄浦路500号', '121.533704 ', '38.862203 ', '', '110013', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (345, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '19927-202764', '大连高新万达分店', '高新园区高新万达广场1层1026.1027号山东路235号', '121.533666 ', '38.862243 ', '0411-39073694', '116001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (346, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '24382-236804', '大连华南亿合城店', '甘井子区安盛华南亿合城一层Y10009单元软件园8号6-20#单元一层', '121.544580 ', '38.884190 ', '', '116031', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (347, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '15905-166744', '大连软景广场店', '沙河口区数码广场1号中山区中山路129-3号', '121.629939 ', '38.917989 ', '0411-88147261', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (348, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '24435-222307', '大连柏威年店', '大连市柏威年大连购物中心地下一层斯大林路677号', '121.716947 ', '39.103257 ', '', '110013', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (349, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '26184-243486', '大连金州安盛店', '金州区安盛购物广场中山区中山路129-3号', '121.717120 ', '39.102571 ', '0411-39311782', '116000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (350, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '25928-242168', '大连柏威年二店', '大连市柏威年大连购物中心地上一层青泥街57号', '121.633929 ', '38.915637 ', '', '110013', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (351, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '19519-186166', '大连麦凯乐青泥店', '中山区麦凯乐地下一层青三街1号', '121.634480 ', '38.916935 ', '0411-82557017', '116001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (352, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '3653-145074', '大连新玛特店', '中山区新玛特一层解放路19号', '121.635780 ', '38.916488 ', '0411-83606811', '116001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (353, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '30697-99985', '大连百年城店', '中山区百年城购物中心内高尔基路687号1层6号01-58号', '121.636339 ', '38.916881 ', '0411-82312658', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (354, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '1533-134013', '大连和平广场店', '沙河口区金马路189号', '121.779076 ', '39.049615 ', '0411-84311679', '11021', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (355, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '30698-100756', '大连安盛店', '经济技术开发区安盛购物中心内迎客路168号', '121.543495 ', '38.962285 ', '0411-87539819', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (356, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '47481-256945', '大连机场安检外店', '甘井子区周水子国际机场二楼出发大厅安检外12号门香炉礁海达北街', '121.602800 ', '38.927937 ', '', '116000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (357, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '19650-193495', '大连百年港湾店', '西岗区83A-4辽河西路117号一层103110321033号', '121.783084 ', '39.059869 ', '0411-66664561', '116001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (358, 'Starbucks', '中国', '大连市', '121.614682 ', '38.914003 ', '25', '27410-245106', '大连开发区万达店', '经济技术开发区浑河南路中段56号56-1号56-2号', '121.776367 ', '39.044311 ', '0411-66165656', '116100', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (359, 'Starbucks', '中国', '抚顺市', '123.957208 ', '41.880872 ', '1', '20302-204304', '抚顺万达店', '新抚区万达商业广场一层1038号铺位青年大街288号', '123.895250 ', '41.866250 ', '024-52803531', '11000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (360, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '1519-134036', '沈阳万象城店', '和平区沈阳万象城负一层B105双园路36号', '123.434562 ', '41.776490 ', '024-23955206', '110188', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (361, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '16721-174864', '沈阳赛特奥莱店', '东陵区赛特奥莱一层A2-110单元南京南街201号', '123.402879 ', '41.745420 ', '024-31939916', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (362, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '19094-196156', '沈阳长白大润发店', '和平区一层1023号南京北街', '123.419458 ', '41.809304 ', '024-24684207', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (363, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '30856-102126', '沈阳中山广场店', '和平区沈阳城市广场206号一层兴华南街58-20号', '123.408736 ', '41.794833 ', '024-23341515', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (364, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '3887-151624', '沈阳万达店', '铁西区万达广场一层156单元黄河南大街78号', '123.419138 ', '41.835101 ', '024-25420830', '110000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (365, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '16579-173104', '沈阳乐购店', '皇姑区中华路21号', '123.399838 ', '41.791905 ', '024-86395051', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (366, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '19679-201606', '沈阳太原街百盛分店', '和平区百盛购物广场一层L1-5单元哈尔滨路168号', '123.435852 ', '41.811969 ', '', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (367, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '18802-193492', '沈阳华府新天地分店', '和平区华府新天地购物中心一层青年大街185号', '123.437276 ', '41.764909 ', '024-31939935', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (368, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '3663-145744', '沈阳茂业金廊店', '沈河区一层L127单元桃仙镇桃仙国际机场', '123.458897 ', '41.795655 ', '024-83916468', '110014', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (369, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '18846-195666', '沈阳桃仙机场店', '东陵区T3航站楼二层出发层国内隔离区北二中路6号', '123.493125 ', '41.633538 ', '024-31929204', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (370, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '16272-154648', '沈阳星摩尔店', '铁西区星摩尔零售商区一层GD-01单元营盘街5号', '123.375974 ', '41.808047 ', '024-31220252', '110022', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (371, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '48241-253867', '沈阳浑南兴隆奥莱店', '浑南新区兴隆大奥莱一层B1-15营盘西街17号', '123.458173 ', '41.734933 ', '', '110000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (372, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '19678-202384', '沈阳浑南万达店', '东陵区一层1037B太原南街2号', '123.398766 ', '41.791283 ', '024-31026517', '110179', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (373, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '19145-198984', '沈阳太原街万达店', '和平区万达广场室内步行街地面一层112号铺位文艺路11号甲沈阳华润中心万象城三期', '123.432957 ', '41.777546 ', '024-23580768', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (374, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '27784-247745', '沈阳文艺路店', '和平区1层LN105号北一中路1号', '123.378901 ', '41.813425 ', '', '110013', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (375, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '17685-184964', '沈阳北一路万达分店', '铁西区一层1035号小东路5号', '123.467590 ', '41.801975 ', '024-31223327', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (376, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '3888-136815', '沈阳大悦城店', '大东区沈阳大悦城B座B101号小东路2号', '123.464686 ', '41.801955 ', '024-24357216', '110014', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (377, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '22682-219985', '沈阳中街新玛特店', '大东区新玛特商场哈尔滨路118号', '123.432597 ', '41.812847 ', '', '110000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (378, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '1517-134033', '沈阳华府天地店', '沈河区中街路205号0101馆一层', '123.461622 ', '41.801064 ', '024-22598337', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (379, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '31212-104933', '沈阳中街店', '沈河区塔湾街11号', '123.458897 ', '41.795655 ', '024-24842268', '110011', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (380, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '20989-204205', '沈阳中海环宇城店', '皇姑区甲一层122123铺位太原北街86号', '123.402696 ', '41.789959 ', '', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (381, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '31948-117366', '沈阳中兴店', '和平区中兴大厦一层建设东路158号', '123.371775 ', '41.794450 ', '024-23415568', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (382, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '27946-248804', '沈阳铁西广场店', '铁西区华润铁西万象汇185商铺中街路128号', '123.372678 ', '41.795196 ', '', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (383, 'Starbucks', '中国', '沈阳市', '123.431474 ', '41.805698 ', '24', '1530-134032', '沈阳中街恒隆店', '沈河区地下一层B131号石油大街102号', '123.458897 ', '41.795655 ', '024-24873359', '110001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (384, 'Starbucks', '中国', '盘锦市', '122.070714 ', '41.119997 ', '2', '47701-252009', '盘锦水游城店', '兴隆台区盘锦水游城一层S-L112号铺位双兴南路71号', '122.075070 ', '41.124415 ', '', '124000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (385, 'Starbucks', '中国', '盘锦市', '122.070714 ', '41.119997 ', '2', '48685-252008', '盘锦万达广场店', '兴隆台区盘锦万达广场一层1001铺位昆仑大街18号', '122.076972 ', '41.100782 ', '', '124000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (386, 'Starbucks', '中国', '营口市', '122.235417 ', '40.667012 ', '2', '29485-253184', '营口鲅鱼圈万隆广场店', '鲅鱼圈区万隆广场一层F102市府南路1号', '122.133560 ', '40.273573 ', '', '115000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (387, 'Starbucks', '中国', '营口市', '122.235417 ', '40.667012 ', '2', '26233-243705', '营口万达店', '站前区万达广场地上1层1036号建国南路48号', '122.235626 ', '40.664309 ', '', '115000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (388, 'Starbucks', '中国', '鞍山市', '122.994329 ', '41.108647 ', '3', '19677-201607', '鞍山乐都汇分店', '铁东区乐都汇L1F022单元胜利南街42号', '122.996126 ', '41.111461 ', '0412-2982912', '114001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (389, 'Starbucks', '中国', '鞍山市', '122.994329 ', '41.108647 ', '3', '19601-198726', '鞍山新玛特分店', '铁东区新玛特商场一层二道街88号', '122.990921 ', '41.114948 ', '0412-2903206', '114001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (390, 'Starbucks', '中国', '鞍山市', '122.994329 ', '41.108647 ', '3', '19526-198725', '鞍山百盛店', '铁东区百盛广场一楼重庆路1367号', '122.991007 ', '41.114840 ', '0412-2229845', '114001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (391, 'Starbucks', '中国', '吉林市', '126.549576 ', '43.837883 ', '2', '23856-232431', '吉林财富广场店', '昌邑区解放路6号欧亚商都地上一层', '126.588119 ', '43.850839 ', '', '132000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (392, 'Starbucks', '中国', '吉林市', '126.549576 ', '43.837883 ', '2', '25518-241004', '吉林欧亚商都店', '昌邑区A-21单元和地上二层A-18单元光明街688号', '126.588119 ', '43.850839 ', '', '132001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (393, 'Starbucks', '中国', '延吉市', '129.508946 ', '42.891255 ', '1', '48978-266169', '延吉百利城店', '延吉市延吉百利城购物中心西安大路8号', '129.513303 ', '42.907069 ', '', '133000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (394, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '18080-183625', '长春世纪鸿源店', '朝阳区长春新世纪泓源广场亚泰大街1138号', '125.346883 ', '43.899366 ', '0431-88982063', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (395, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '19934-183627', '长春中东新天地店', '南关区一层B185单元及二层B203单元同志街2288号', '125.318681 ', '43.868442 ', '0431-88760366', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (396, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '20199-203944', '长春中东桂林路店', '朝阳区一层二层红旗街616号', '125.296660 ', '43.867690 ', '0431-89568631', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (397, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '18121-186165', '长春红旗街万达广场店', '朝阳区万达广场一层172173175号开运街5178号', '125.248615 ', '43.843437 ', '0431-81936442', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (398, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '48748-257145', '长春开运街欧亚店', '朝阳区人民大街1881号', '125.323803 ', '43.891705 ', '', '130000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (399, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '18807-195233', '长春百货大楼店', '朝阳区百货大楼一层二层开运街5178号', '125.248615 ', '43.843437 ', '0431-88942767', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (400, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '18188-183626', '长春欧亚卖场店', '朝阳区一层渤海大街29号重庆路618号', '125.242900 ', '43.842239 ', '0431-85517056', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (401, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '20305-204206', '长春亚泰富苑店', '南关区亚泰富苑一二层西北角北人民大街以西铁北二路以北', '125.324232 ', '43.914142 ', '0431-88959055', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (402, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '19590-198304', '长春宽城万达店', '宽城区宽城万达广场一层1001号铺位博学路1555号2#购物广场一层', '125.321718 ', '43.915137 ', '0431-89806897', '130001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (403, 'Starbucks', '中国', '长春市', '125.323544 ', '43.817071 ', '10', '24379-236044', '长春迅驰广场店', '净月开发区B-1单元及B-2单元中央大街66号', '125.423175 ', '43.782731 ', '', '130000', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (404, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '16412-169986', '哈尔滨松雷店', '道里区松雷国际商厦一层友谊路167-217号', '126.616508 ', '45.778615 ', '0451-87651497', '', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (405, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '17605-180984', '哈尔滨百盛店', '道里区百盛一层学府路1号', '126.608911 ', '45.719162 ', '0451-85981224', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (406, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '16759-169987', '哈尔滨凯德广场学府路店', '南岗区凯德广场学府01—08号赣水路68号', '126.609121 ', '45.716070 ', '0451-51662993', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (407, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '18601-184966', '哈尔滨衡山万达咖啡店', '南岗区群力大道1176号', '126.643707 ', '45.760590 ', '0451-87718155', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (408, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '23061-225404', '哈尔滨远大群力咖啡店', '群力新区D区1号一二层埃德蒙顿路38号', '126.593693 ', '45.734866 ', '', '150010', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (409, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '27417-247257', '哈尔滨埃德蒙顿凯德店', '道里区凯德广场埃德蒙顿地上一层01-05号中兴大道１６８号', '126.593698 ', '45.700331 ', '', '150070', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (410, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '20749-207824', '哈尔滨哈西万达咖啡店', '南岗区万达广场一层1001号荣市街1号', '126.643422 ', '45.761079 ', '0451-86625871', '150086', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (411, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '21904-214464', '哈尔滨建设街咖啡店', '南岗区三大动力路8号', '126.648999 ', '45.718499 ', '0451-87582523', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (412, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '23921-233345', '哈尔滨乐松咖啡店', '香坊区乐松购物广场一层红旗大街301号', '126.701032 ', '45.754968 ', '0451-58568530', '150040', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (413, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '24697-238404', '哈尔滨红博购物公园店', '南岗区地下一层公园大街上二区2-12单元哈尔滨市南岗区红旗大街301号', '126.701569 ', '45.754999 ', '', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (414, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '16216-169990', '哈尔滨红博会展咖啡店', '南岗区红博一层金座11-1单元中央大街69号', '126.620214 ', '45.771808 ', '0451-82273672', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (415, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '16560-169988', '哈尔滨金安广场店', '道里区金安购物广场石头道街118号', '126.625743 ', '45.771129 ', '0451-84567078', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (416, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '17681-184965', '哈尔滨新一百店', '道里区东直路118号', '126.675488 ', '45.784945 ', '0451-87127974', '150001', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (417, 'Starbucks', '中国', '哈尔滨', '126.534967 ', '45.803775 ', '14', '24778-238525', '哈尔滨道外百盛店', '道外区百盛商场一层东风路15号', '126.616299 ', '45.778473 ', '', '150050', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (418, 'Starbucks', '中国', '大庆市', '125.103784 ', '46.589309 ', '2', '23922-233264', '大庆万达店', '萨尔图区万达广场一层昆仑唐人中心精致楼W101单元', '124.884221 ', '46.634209 ', '', '163311', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (419, 'Starbucks', '中国', '大庆市', '125.103784 ', '46.589309 ', '2', '24352-235271', '大庆昆仑唐人店', '让胡路区', '124.870597 ', '46.652358 ', '', '163311', 'Company Owned', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (420, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24754-238132', '汇暻生活广场店', '黄浦区汇暻生活广场四川北路1689号110202室', '121.477274 ', '31.199033 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (421, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28083-249527', '嘉杰广场店', '虹口区牡丹江路1569号F1层F127铺位', '121.485024 ', '31.399252 ', '', '200080', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (422, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25485-226668', '宝乐汇店', '上海市长寿路828846号', '121.439000 ', '31.242060 ', '', '201900', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (423, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27243-246386', '中港汇店', '普陀区中港汇大厦荣乐西路790号1F-14', '121.430408 ', '31.235054 ', '', '200042', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (424, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24722-238648', '松江新理想广场店', '松江区新理想广场国际机场交通中心地铁2号线西侧廊道靠中步行道段A标段01号商铺', '121.196707 ', '31.017163 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (425, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22929-225924', '浦东机场交通中心店', '上海浦东浦东陕西南路37号', '121.457820 ', '31.220559 ', '', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (426, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35061-98966', '红房子店', '卢湾区红房子城桥镇八一路206号', '121.396329 ', '31.620845 ', '021-62717217', '200040', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (427, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18847-195964', '崇明八一广场店', '崇明县八一广场一层祖冲之路1239弄6号10号楼1层05-159单元', '121.602472 ', '31.205280 ', '021-59618862', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (428, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22407-213184', '长泰广场店', '浦东新区沪青平公路2888号B区101室', '121.227260 ', '31.156551 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (429, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31045-103084', '赵巷店', '青浦区青浦区赵巷休闲场所南京东路819号', '121.226464 ', '31.121793 ', '021-59755257', '201703', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (430, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31934-119647', '南东店', '黄浦区百联世茂国际广场1楼诺亚新天地一楼', '121.475747 ', '31.234394 ', '021-63221136', '200010', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (431, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21834-215466', '诺亚新天地店', '牡丹江路318号昆明路508号', '121.494477 ', '31.381018 ', '', '200940', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (432, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16631-173905', '北美广场店', '杨浦区安莉芳大厦东方路796号153173单元', '121.523950 ', '31.227259 ', '021-35326527', '200080', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (433, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49309-268028', '96广场店', '上海市浦东新区芳甸路1364号', '121.562886 ', '31.207379 ', '', '200120', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (434, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48105-261564', '花木plus乐坊店', '上海市浦东新区瑞金二路197号门诊大楼一楼', '121.468828 ', '31.211848 ', '', '201204', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (435, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47215-257225', '瑞金医院门诊大楼店', '上海市黄浦区夏宁路818弄70号1层', '121.314450 ', '30.836000 ', '', '200025', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (436, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25177-239544', '金山工业园区店', '金山区芳甸路197号', '121.558886 ', '31.227114 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (437, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35064-97881', '大拇指店', '浦东新区大拇指1号办公楼（B座）1楼102室', '121.516204 ', '31.229713 ', '021-68563796', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (438, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27665-248312', '东方国信店', '长宁区福泉北路388号申长路988弄', '121.356102 ', '31.230267 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (439, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26413-239416', '虹桥万科中心1F店', '上海市闵行区1层T2-105#号单元通河路539537-1号', '121.381709 ', '31.112813 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (440, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23765-231966', '红太阳商业广场店', '宝山区南京西路128号永新广场1F', '121.472057 ', '31.234189 ', '', '201900', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (441, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23437-229784', '黄浦永新广场店', '黄浦区公园东路1289弄137138号', '121.136609 ', '31.152688 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (442, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26068-243444', '公园东路店', '青浦区富绅商业中心漕溪北路331号1层03', '121.138043 ', '31.152555 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (443, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24749-238533', '中金国际广场店', '徐汇区迎宾大道6000号候机楼三层南岛区1号铺', '121.437866 ', '31.199190 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (444, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26312-244148', '浦东机场T1出发层M岛店', '浦东新区浦东机场1号航站楼申迪北路753号111室', '121.802957 ', '31.150010 ', '', '200000', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (445, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23331-229106', '迪士尼团队大楼店', '上海市浦东新区延安东路550号', '121.481529 ', '31.230916 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (446, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17560-183246', '海洋大厦店', '黄浦区海洋大厦1F鹤庆路900号A4单元', '121.481571 ', '31.230849 ', '021-33300376', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (447, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23928-234424', '老闵行生活广场店', '闵行区老闵行生活广场杨高南路428号1号楼1层A单元', '121.404042 ', '31.006421 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (448, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15300-159765', '由由世纪广场店', '浦东新区由由世纪广场公平路38号地下一层3-2单元', '121.507250 ', '31.249930 ', '021-33935608', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (449, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23717-232604', '公平路店', '虹口区蔡伦路780号一楼', '121.606911 ', '31.193871 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (450, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31529-106386', '蔡伦路店', '浦东新区蔡伦路天山路889号层1E04室', '121.608034 ', '31.194128 ', '021-58554218', '201203', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (451, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28825-251247', '百盛优客城市广场店', '长宁区裕通路100号', '121.453454 ', '31.244543 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (452, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '12731-155294', '洲际中心店', '闸北区洲际中心文诚路500弄', '121.214480 ', '31.032538 ', '021-32180728', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (453, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29987-256328', '松江塞纳左岸生活广场店', '上海市松江区1号L22-1齐河路258号1层F1F0103单元', '121.227747 ', '31.032243 ', '', '201620', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (454, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25498-241165', '齐河路沃尔玛店', '浦东新区齐河路沃尔玛川沙路5500号1楼大堂', '121.503474 ', '31.178993 ', '', '200127', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (455, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27209-246772', '川沙绿地铂骊酒店店', '上海市浦东新区张杨路3611弄2号212213214217218室', '121.579264 ', '31.256784 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (456, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23326-229144', '金桥国际店', '浦东新区成都北路333号104A室', '121.466721 ', '31.228187 ', '', '200129', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (457, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24823-238908', '招商局广场店', '静安区招商局广场武夷路777号一层L1F001-004单元', '121.413796 ', '31.213582 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (458, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24824-238904', '武夷路华润万家店', '长宁区上海国际体操中心通协路272号-5J272号-5K', '121.355038 ', '31.227020 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (459, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25175-239632', '尚品中心1F店', '长宁区272号-5L272号-5M', '121.424624 ', '31.220367 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (460, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27749-248445', '南桥宝龙商业广场店', '奉贤区航南公路5639号1F-036单元古北路1699号一层102单元', '121.463122 ', '30.929933 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (461, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29998-253786', '1699广场店', '上海市闵行区闵行区天目西路218号一楼A-1号', '121.456573 ', '31.245520 ', '', '201103', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (462, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '3958-147326', '闸北太平洋店', '闸北区太平洋百货新华路519号1B室', '121.422808 ', '31.203727 ', '021-63172676', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (463, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30800-101018', '新华店', '长宁区新华路碧波路889号E106-E107', '121.422420 ', '31.204535 ', '021-62803927', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (464, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22693-223827', '碧波路店', '浦东新区龙皓路1088号金山万达1层1002铺位', '121.337040 ', '30.756073 ', '021-58351007', '200165', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (465, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26542-244286', '金山万达店', '金山区金山万达广场纳贤路800号2号楼105室', '121.324567 ', '30.898304 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (466, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27836-248865', '纳贤路店', '浦东新区淮海中路999号', '121.477926 ', '31.225347 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (467, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16965-177305', '环贸广场店', '徐汇区环贸广场南泉北路588号S1-08', '121.458462 ', '31.215786 ', '021-54212507', '200031', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (468, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24151-235908', '新大陆广场店', '浦东新区新大陆广场永德路419号109室', '121.518364 ', '31.229614 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (469, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48122-261664', '永德弘基广场店', '上海市闵行区闵行区江场三路238号1层', '121.435975 ', '31.294371 ', '', '200241', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (470, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18486-191346', '市北高新园区店', '上海市静安区市北高新园区共江路1208号1F-N1A', '121.444854 ', '31.326190 ', '021-56527992', '200436', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (471, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49022-266505', '共江路家乐福店', '上海市宝山区江湾城路99号尚浦商务中心6幢1楼109a', '121.510231 ', '31.316874 ', '', '200435', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (472, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25727-242155', '尚浦中心店', '杨浦区尚浦商务中心同心路723号11幢102室', '121.471970 ', '31.270340 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (473, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23546-231067', '虹口运动loft店', '虹口区虹口运动loft中山北路3018号', '121.415207 ', '31.237968 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (474, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49015-266445', '浦建路店', '上海市浦东新区浦东新区凇沪路8号', '121.516000 ', '31.300999 ', '', '200127', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (475, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31524-148308', '又一城店', '杨浦区百联又一城祁连山南路619号', '121.512753 ', '31.302022 ', '021-65483212', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (476, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18266-189504', '金沙广场店', '普陀区金沙广场中山北路3300号', '121.412595 ', '31.232962 ', '021-60709008', '200062', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (477, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17611-183607', '月星环球港店', '普陀区月星环球港B1148-B1149隆昌路586号', '121.412819 ', '31.232875 ', '021-62036729', '200333', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (478, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26611-244747', '复旦软件园店', '杨浦区七巧国南京西路1601号', '121.543684 ', '31.275228 ', '', '200000', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (479, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21412-211204', '越洋广场2店', '静安区越洋广场301&301-1室枫泾镇北大街256号', '121.447609 ', '31.223142 ', '021-52657695', '200040', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (480, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47211-257146', '金山枫泾古镇店', '上海市金山区延安东路588号', '121.480940 ', '31.230730 ', '', '201501', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (481, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35029-84203', '东海店', '黄浦区东海商业中心零陵路889号', '121.479991 ', '31.229969 ', '021-53855001', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (482, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23500-230367', '飞洲国际广场店', '徐汇区飞洲国际广场虹桥火车站出发层2F-北13F-C4', '121.437161 ', '31.182928 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (483, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18482-191344', '虹桥火车站出发区店', '长宁区虹桥火车站恒丰路299号', '121.456944 ', '31.242761 ', '021-51511263', '200333', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (484, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21104-209244', '隆宇太阳城店', '闸北区“隆宇国际商务广场”中101-07号商铺申长路900号2号楼一层103单元', '121.455778 ', '31.243464 ', '021-52560830', '200070', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (485, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22937-226164', '虹桥天地一店', '闵行区虹桥天地广场申迪东路88号D5单元', '121.316511 ', '31.192090 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (486, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29802-255226', '上海village店', '上海市浦东新区盈港东路158号D-L104', '121.304391 ', '31.186396 ', '', '201300', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (487, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26389-236384', '国家会展中心1F店', '上海市青浦区南京西路1376号', '121.451591 ', '31.226659 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (488, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35004-22241', '波特曼店', '静安区上海商城一楼桂林路402号76幢1F103室', '121.451497 ', '31.227041 ', '021-62798667', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (489, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25561-241249', '桂林路店', '徐汇区诚达创意园虹井路288号乐虹坊一楼103单元', '121.371633 ', '31.176674 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (490, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23533-231068', '乐虹坊店', '闵行区乐虹坊康新公路4365号1楼', '121.371633 ', '31.176674 ', '021-54573821', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (491, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27662-248109', '浦东质子重离子医院店', '浦东新区肇嘉浜路789号1F', '121.448539 ', '31.198398 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (492, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30902-101578', '均瑶店', '徐汇区均瑶国际广场思南路50号', '121.467564 ', '31.215081 ', '021-64161632', '200032', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (493, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28820-251207', '思南公馆店', '上海市黄浦区四川北路1661号', '121.482462 ', '31.257634 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (494, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31523-106288', '四川北路店', '虹口区凯鸿广场罗芬路1088号', '121.483250 ', '31.258371 ', '021-63067836', '200080', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (495, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24211-225265', '美兰湖店', '宝山区世纪联华1F7894F01001单元公园路700号', '121.477061 ', '31.337978 ', '021-36210268', '201908', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (496, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30889-102074', '桥梓湾店', '青浦区东方商厦一楼吴中路1169号-1', '121.117149 ', '31.147910 ', '021-59717727', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (497, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32412-128565', '吴中路店', '闵行区吴中路丰翔路3168号第一层113单元', '121.416715 ', '31.187848 ', '021-54222091', '201100', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (498, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28823-251368', '南翔太茂店', '上海市嘉定区', '121.265300 ', '31.375602 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (499, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29030-252005', '万嘉广场店', '浦东新区东靖路1881号浦东南路855号1D', '121.611083 ', '31.293426 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (500, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25313-240226', '世界广场店', '浦东新区世界广场田林路140号', '121.515173 ', '31.232601 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (501, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19538-201984', '越界店', '徐汇区越界商务楼锦延路219号', '121.411835 ', '31.171124 ', '021-60197116', '200233', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (502, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32334-121664', '锦延路店', '浦东新区近上海科技馆国内禁区D5号店铺', '121.541413 ', '31.220561 ', '021-61633789', '200127', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (503, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25146-240066', '浦东机场T2国内C84号登机口店', '上海浦东国际机场T2武进路289号一层108室', '121.484905 ', '31.251729 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (504, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48158-261785', '海泰时代店', '上海市虹口区沪闵路7388号', '121.400011 ', '31.132117 ', '', '200000', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (505, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35036-93828', '南方商城店', '闵行区百联南方商城1楼潍坊西路92号', '121.399961 ', '31.132382 ', '021-64123485', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (506, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24375-237267', '潍坊西路店', '浦东新区虹桥路2270', '121.376566 ', '31.191639 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (507, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32624-138813', '虹桥万豪店', '长宁区万豪大酒店A段101-1城中路138号', '121.245213 ', '31.384860 ', '021-62377398', '200336', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (508, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31690-101042', '嘉定罗宾森店', '嘉定镇罗宾森购物广场L1-1L2-1商铺浦东国际机场T1航站楼国内出发禁区', '121.244791 ', '31.383970 ', '021-59523946', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (509, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23994-233868', '浦东机场T1国内11号登机口店', '浦东新区漕溪北路595号', '121.438466 ', '31.186373 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (510, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23774-231604', '上影博物馆店', '徐汇区上海电影博物馆江宁路388号1_2层', '121.453096 ', '31.233997 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (511, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20594-206668', '静安紫苑店', '静安区紫苑武威路1118号115/116室', '121.453321 ', '31.233948 ', '021-52902021', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (512, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28709-250787', '白丽广场店', '普陀区兴义路8号', '121.404256 ', '31.205312 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (513, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31850-114725', '万都店', '长宁区万都中心大厦一层S102S106商铺古羊路753755号', '121.405096 ', '31.204874 ', '021-52082980', '200051', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (514, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24337-237026', '古羊路店', '长宁区漕宝路3366号L1层151B单元', '121.350061 ', '31.153998 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (515, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47424-255724', '七宝万科广场1F店', '上海市闵行区浦东国际机场T2航站楼国内出发禁区', '121.327159 ', '31.194151 ', '', '201100', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (516, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23993-233867', '浦东机场T2国内C95号登机口店', '浦东新区迎宾大道8000号二号候机楼到达公众商业区域餐饮项目', '121.807963 ', '31.151932 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (517, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20564-206671', '浦东机场T2到达店', '浦东新区上海浦东机场科苑路399号10号楼', '121.591299 ', '31.205135 ', '021-68337130', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (518, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16024-167604', '张江创新园店', '浦东新区1层109单元长清路1200弄37号1楼2101室', '121.492262 ', '31.149186 ', '021-50762016', '201203', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (519, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27900-249185', '森宏生活广场店', '上海市浦东新区新金桥路2222号', '121.630030 ', '31.261459 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (520, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27998-249424', '华为新金桥路店', '浦东新区华为公司政立路477号', '121.508220 ', '31.308579 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (521, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23382-229404', '政立路店', '杨浦区创智科技中心文诚路1480号', '121.513764 ', '31.304818 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (522, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29318-253185', '松江泰晤士小镇店', '上海市松江区121-124室滨江大道富都段', '121.227747 ', '31.032243 ', '', '201620', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (523, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35012-54820', '滨江店', '浦东新区滨江大道天虹路320号天宝路280弄1号', '121.498929 ', '31.263965 ', '021-58781332', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (524, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23684-230108', '瑞虹天地店', '虹口区瑞虹天地国际旅游度假区', '121.498667 ', '31.264390 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (525, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26417-215044', '迪士尼小镇店', '上海市浦东新区申迪西路255弄602单元东宝兴路777号', '121.475172 ', '31.262950 ', '', '200001', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (526, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26541-244289', '东宝兴路店', '虹口区世纪联华1层1017F01002单元轨道交通二号线静安寺车站五号出口2-130商铺', '121.466729 ', '31.272767 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (527, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22850-224949', '静安寺地铁站店', '静安区张杨路501号2F', '121.517194 ', '31.227826 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (528, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '50067-272705', '八佰伴2F店', '上海市浦东新区车站南路330弄2号6号', '121.764652 ', '31.046155 ', '', '200120', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (529, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48607-264064', '凉城世纪联华店', '上海市虹口区虹口区邯郸路600号一楼', '121.513620 ', '31.301297 ', '', '200434', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (530, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31538-108244', '五角场店', '杨浦区五角场杨南路2211号第一层', '121.519664 ', '31.309958 ', '021-65102267', '200443', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (531, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28421-250424', '宝山宝龙广场店', '上海市宝山区M1-1F-060061067单元陆家嘴西路168号1F', '121.489612 ', '31.405457 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (532, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35065-97041', '正大二店', '浦东新区正大广场淞沪路252-256号A1-24', '121.499004 ', '31.236444 ', '021-50471013', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (533, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32220-104863', '创智店', '杨浦区创智天地安远路553号', '121.513059 ', '31.306017 ', '021-33810020', '200051', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (534, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18428-184105', '静安门大厦店', '静安区静安门大厦豫园路100号（和丰楼）东侧', '121.491712 ', '31.226299 ', '021-52830029', '200040', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (535, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31510-108493', '豫园2店', '黄浦区豫园长宁路999号1F', '121.492081 ', '31.226855 ', '021-33080670', '200010', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (536, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30673-99829', '中山公园店', '长宁区中山公园肇家浜路1111号219单元', '121.439762 ', '31.193434 ', '021-52410325', '200050', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (537, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35026-73440', '美罗城店', '徐汇区美罗城张杨北路801号', '121.440426 ', '31.192860 ', '021-64268250', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (538, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20566-206666', '文峰广场店', '浦东新区文峰广场新元南路555弄1-60号', '121.586059 ', '31.269310 ', '', '200021', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (539, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24723-238715', '临港豪生酒店店', '浦东新区临港豪生酒店(浦东)杨高南路759号', '121.534539 ', '31.212624 ', '', '201306', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (540, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20614-202486', '陆家嘴世纪金融广场店', '上海浦东新区1层03A单元江月路1850弄1-6号', '121.505100 ', '31.082460 ', '', '200127', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (541, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27901-249184', '浦江城市生活广场店', '上海市闵行区水城南路85号', '121.392556 ', '31.198414 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (542, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30950-103154', '美丽华花园店', '长宁区美丽华花园宝安公路3386号131室', '121.392570 ', '31.198047 ', '021-62095512', '200336', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (543, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28925-251369', '嘉定大融城店', '上海市嘉定区凌空SOHO广场2号楼2-106室', '121.353480 ', '31.221221 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (544, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24979-239422', '凌空广场店', '长宁区金钟路968号瑞金二路101－107号', '121.350969 ', '31.221243 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (545, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30672-100308', '瑞金路店', '卢湾区瑞金二路世纪大道1号广场1号铺位', '121.499809 ', '31.239666 ', '021-53062578', '200020', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (546, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49779-271305', '东方明珠店', '上海市浦东新区铜川路58弄21-22号', '121.419924 ', '31.256117 ', '', '200120', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (547, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16429-167605', '品尊国际广场店', '普陀区品尊国际广场浦江镇新骏环路188号8幢102-2室', '121.420468 ', '31.255286 ', '021-60736866', '200333', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (548, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27748-248485', '漕河泾浦江科技园F区店', '闵行区华夏东路2255号15幢一层1F03', '121.695690 ', '31.200182 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (549, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49262-267906', '川沙金汇广场店', '上海市浦东新区宝山路202号', '121.476799 ', '31.252812 ', '', '201201', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (550, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18828-195445', '宝山路店', '闸北区近地铁4号线宝山路站淀山湖大道152弄41号-7室', '121.094105 ', '31.144411 ', '021-66283827', '20071', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (551, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24901-218425', '青浦吾悦广场店', '青浦区吾悦广场长宁路88号长宁King88一层商铺1-171-18室', '121.094983 ', '31.144024 ', '', '201713', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (552, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48362-261924', '金廷88店', '上海市长宁区南芦公路1755弄7号楼1-2层', '121.819727 ', '30.909688 ', '', '200042', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (553, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22959-226669', '鸿音广场店', '浦东新区龙航路1508号1层101室', '121.544379 ', '31.221517 ', '', '200264', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (554, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49149-267254', '金山医院店', '上海市金山区', '121.341970 ', '30.741991 ', '', '201508', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (555, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29109-252247', '十尚坊店', '闵行区龙茗路1025号814单元四平路188号113116室', '121.386576 ', '31.137961 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (556, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25866-242650', '四平路店', '虹口区新风路268弄2号1层101/102室和2层1-2（03）A室', '121.056821 ', '31.111387 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (557, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20130-203466', '朱家角尚都里店', '青浦区朱家角镇虹桥路1438号', '121.046555 ', '31.103775 ', '021-59256057', '201713', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (558, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18222-188709', '玛瑙路店', '长宁区高岛屋虹桥路1665号A-104A-105单元', '121.392716 ', '31.200649 ', '021-52891005', '200333', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (559, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22217-218504', '星空广场店', '长宁区星空生活广场', '121.424624 ', '31.220367 ', '', '200336', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (560, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26869-245907', '万象城办公楼店', '闵行吴中路1799号大堂层203单元真光路1288号', '121.365759 ', '31.169890 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (561, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31463-107015', '真光路店', '普陀区百联购物广场水城南路20号', '121.394393 ', '31.193790 ', '021-52750789', '200333', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (562, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35010-42542', '古北店', '长宁区古北淮海中路1325号', '121.449943 ', '31.212308 ', '021-62091760', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (563, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32654-134952', '爱美高大厦店', '徐汇区爱美高大厦1F-103室候机楼T1三层国际出发禁区', '121.449841 ', '31.212406 ', '021-54661781', '200031', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (564, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26871-245784', '浦东机场T1国际16号登机口店', '上海浦东机场迎宾大道6000号近16号登机口B6商铺金科路3057号1F(L1-1A)', '121.803291 ', '31.150908 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (565, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24421-223826', '汇智广场店', '浦东新区汇智广场番禺路381号', '121.601600 ', '31.203516 ', '', '200158', 'Joint Venture', 1, '2020-09-25 15:18:08', '2020-09-25 15:18:08');
INSERT INTO `store` VALUES (566, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28416-250544', '幸福里店', '上海市长宁区8号楼1层111室西藏北路198号', '121.424624 ', '31.220367 ', '', '200052', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (567, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47111-256684', '大悦城北楼8F店', '上海市静安区御桥路1949号1层106单元', '121.459384 ', '31.247105 ', '', '200085', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (568, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26229-243926', '海上传奇广场店', '浦东新区地杰国际城世纪大道100号101', '121.507753 ', '31.234330 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (569, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32700-117285', '环球金融店', '浦东新区环球金融世博大道1368号', '121.490010 ', '31.182600 ', '021-68775001', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (570, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22501-221528', '世博源店', '浦东新区L1层3L130室浦东南路1138号181-184', '121.514726 ', '31.227369 ', '021-31078789', '200126', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (571, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18339-189846', '上海湾店', '浦东新区上海湾汶水东路351号1幢101室102室', '121.513672 ', '31.226739 ', '021-50917635', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (572, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23701-232606', '大柏树店', '虹口区1876老站创意园中江路889号1F', '121.482668 ', '31.290803 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (573, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49402-268984', '中江路店', '上海市普陀区漕宝路78号1001室', '121.428328 ', '31.167697 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (574, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49636-270365', '光大会展店', '上海市徐汇区牡丹江路1738号', '121.481961 ', '31.404812 ', '', '200233', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (575, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22740-224066', '宝钢商场店', '宝山区延安西路1166号', '121.428402 ', '31.210052 ', '021-56871017', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (576, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32174-128568', '碧瑶店', '长宁区碧瑶行政公寓', '121.428457 ', '31.209926 ', '021-62827826', '310003', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (577, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27206-246771', '武威东路店', '枫庭丽苑武威东路小区出入口东方路710号', '121.524190 ', '31.228979 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (578, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31667-110084', '汤臣店', '浦东新区汤臣金融中心大华路518号', '121.524226 ', '31.229065 ', '021-58308150', '201203', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (579, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21826-215465', '大华乐购店', '宝山区乐购大华店第一层的S1S2单元', '121.414240 ', '31.271630 ', '', '200442', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (580, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20194-204147', '8号桥店', '建国中路8-10号申滨路473号一层L1-09单元', '121.471415 ', '31.210617 ', '', '200129', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (581, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49053-266824', '新华联购物中心店', '上海市闵行区世纪大道1217号B1层G59-B01-1-005u0006', '121.527737 ', '31.229449 ', '', '201100', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (582, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48756-265075', '百联世纪购物中心B1店', '上海浦东新区浦东新区广元西路98号3-4室', '121.434121 ', '31.195943 ', '', '200000', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (583, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22072-215045', '名仕苑店', '徐汇区保乐路60弄5#118单元', '121.430635 ', '31.191493 ', '', '200030', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (584, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26414-239384', '华漕旭辉店', '闵行区绿地华漕E天地锦绣路2580号', '121.291854 ', '31.207681 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (585, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20561-206664', '浦东星河湾店', '浦东新区星河湾商业街1号101铺位华志路771-789号一层102a单元', '121.538031 ', '31.193933 ', '021-58333010', '201108', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (586, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49805-271365', '青浦新尚生活广场店', '上海市青浦区城北路358号1层15单元', '121.237586 ', '31.390087 ', '', '201708', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (587, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48772-265078', '嘉定日月光店', '嘉定区城北路358号1层15单元汉口路266号', '121.237586 ', '31.390087 ', '', '201800', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (588, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '8185-151567', '申大厦店', '黄浦区申大厦102单元红宝石路500号1F-106', '121.484955 ', '31.236170 ', '021-63292758', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (589, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15671-164384', '东银中心店', '长宁区东银中心淮海中路283号', '121.399233 ', '31.198406 ', '021-32566965', '201103', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (590, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22849-224948', '香港广场店', '黄浦区香港广场北楼1-106', '121.474392 ', '31.223815 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (591, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29112-252448', '达安广场店', '静安区延安中路823号武宁路101号F1-04室', '121.454853 ', '31.223518 ', '', '200040', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (592, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27275-246953', '我格广场店', '普陀区河南南路489号', '121.490164 ', '31.223029 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (593, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22146-217964', '香港名都店', '黄浦区L138和L140单元梅家浜路1500弄3号B室', '121.230317 ', '31.052771 ', '021-53833295', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (594, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48087-261404', '松江三湘财富广场店', '上海市松江区南京西路1618号1层S103室', '121.446301 ', '31.224227 ', '', '201620', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (595, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22510-221526', '久光百货店', '静安区墨玉南路1055号', '121.161263 ', '31.287786 ', '', '200040', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (596, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17168-171924', '嘉亭荟店', '嘉定区嘉亭荟城市生活广场108室茶陵北路20号A1室', '121.161373 ', '31.287950 ', '021-39127310', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (597, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48268-262431', '茶陵北路店', '上海市徐汇区上南路4467号', '121.500055 ', '31.157498 ', '', '200023', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (598, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17176-178993', '金谊广场店', '浦东新区金谊广场1层-1室宜山路1009号', '121.512941 ', '31.141175 ', '021-50490502', '200126', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (599, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31281-104804', '漕河泾店', '闵行区创新大厦1F陆家嘴西路168号', '121.427272 ', '31.184588 ', '021-64850387', '200233', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (600, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22206-218505', '正大3店', '浦东新区正大广场B2-05单元福泉北路518号9座D102室', '121.500138 ', '31.237406 ', '', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (601, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25899-242704', '尚品中心B1店', '上海市长宁区虹梅路3188－1号', '121.387467 ', '31.188071 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (602, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35041-95166', '虹梅路店', '上海市闵行区海波路616号1F-318室', '121.381709 ', '31.112813 ', '021-54221872', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (603, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28001-249227', '嘉定Max未来店', '嘉定区天山西路1068号', '121.354954 ', '31.219350 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (604, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17715-183605', '联强国际店', '长宁区联强国际二期1C单元广中西路777弄65号102室', '121.354620 ', '31.219570 ', '021-61671355', '200050', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (605, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16630-173904', '多媒体谷店', '闸北区多媒体谷产业园延安中路1218号', '121.449434 ', '31.222651 ', '021-36366052', '200072', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (606, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20610-206667', '静安嘉里中心店', '静安区静安嘉里中心商场SB2-06室望月路885号', '121.450294 ', '31.224317 ', '021-62037273', '200040', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (607, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48783-265189', '望月路店', '上海市徐汇区徐汇区牡丹江路1238号-B区-106室', '121.488974 ', '31.392780 ', '', '200231', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (608, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32516-136573', '宝山安信店', '宝山区宝山安信张杨路1550号', '121.541645 ', '31.234593 ', '021-56115171', '200940', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (609, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21629-213765', '陆家嘴公馆店', '浦东新区陆家嘴公馆辛耕路129号', '121.442870 ', '31.192518 ', '021-58561026', '200135', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (610, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32234-128566', '永新店', '徐汇区永新坊江场二路7779号', '121.442759 ', '31.191956 ', '021-33686172', '200031', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (611, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25792-242309', '江场二路店', '闸北区上海莱赛现代生活港高桥保税区加枫路24号', '121.605665 ', '31.313919 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (612, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30623-97938', '外高桥店', '浦东新区外高桥阿克苏路1099号1F-409单元', '121.585330 ', '31.351280 ', '50482915', '200051', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (613, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49160-267364', '嘉定宝龙商业广场店', '上海市嘉定区嘉定区秣陵路303号50幢N2单元', '121.454400 ', '31.249070 ', '', '201800', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (614, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23219-228669', '上海火车站北广场店', '闸北区万荣路777弄2号101室', '121.441588 ', '31.289762 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (615, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47531-258566', '大宁中心广场店', '上海市静安区世纪大道88号', '121.505853 ', '31.234900 ', '', '200072', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (616, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1257-152686', '金茂大厦店', '浦东新区裙房２楼2C-082C-10铺位江场路1288号NL151单元', '121.458165 ', '31.297810 ', '021-38921017', '200121', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (617, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27097-243588', '协信星光广场北区店', '上海市静安区海中路1008号', '121.459384 ', '31.247105 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (618, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15499-162386', '襄阳公园店', '徐汇区大渡河路196号204单元', '121.395860 ', '31.222356 ', '021-54043795', '200031', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (619, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25642-241686', '长风景畔广场2店', '普陀区长风景畔广场芳甸路198—206208—232268—286号（双）258弄13—37号', '121.394671 ', '31.222302 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (620, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21116-209308', '联洋广场店', '浦东新区联洋广场环城东路681-707(单号)C-1-11', '121.557863 ', '31.226919 ', '021-50686581', '200129', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (621, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21666-214005', '南桥新都汇店', '奉贤区梅川路1297号', '121.474042 ', '30.917795 ', '', '201400', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (622, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18264-189486', '梅川路店', '普陀区梅川路豫园路100号', '121.388715 ', '31.240545 ', '021-52921070', '200062', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (623, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35006-28956', '豫园店', '黄浦区豫园', '121.492081 ', '31.226855 ', '021-63552271', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (624, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26686-245045', '丽婴房大厦店', '闵行区七莘路1855号1楼101单元宛平南路100号', '121.361529 ', '31.136375 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (625, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26067-243330', '永丰国际广场店', '上海市徐汇区聚丰园路91号', '121.386380 ', '31.315220 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (626, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21838-215904', '聚丰园路店', '宝山区1号楼116117室崂山路526号一层大堂区域', '121.489612 ', '31.405457 ', '', '200436', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (627, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22148-218049', '江苏大厦店', '浦东新区紫金山大酒店（江苏大厦）南京西路399号1楼', '121.523437 ', '31.227861 ', '', '200122', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (628, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35037-36659', '明天广场店', '黄浦区明天广场沪南路2420号', '121.469691 ', '31.230371 ', '021-63754080', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (629, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18340-189865', '百联东郊店', '浦东新区百联宝杨路1号客运大楼1F', '121.503271 ', '31.403685 ', '021-50871017', '201210', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (630, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26612-244746', '吴淞口国际邮轮港店', '宝山区上海吴淞口国际邮轮港昆明路739号一楼101单元', '121.508825 ', '31.409372 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (631, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25492-239344', '文通大厦店', '杨浦区文通大厦和云台路800号131132133铺位', '121.515703 ', '31.263629 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (632, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27834-248826', '亿丰时代广场店', '板泉路1273号1275号1271号-1浦东新区西藏南路1130号', '121.486447 ', '31.210391 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (633, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23777-233446', '黄浦新苑店', '黄浦区黄浦新苑东大名路988号102商铺', '121.507260 ', '31.251530 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (634, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25641-241708', '绿地北外滩中心店', '虹口区申长路799号1层SHHQTJ-B-1F-2324号商铺', '121.283022 ', '31.219280 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (635, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48316-258204', '龙湖虹桥天街1F店', '上海市闵行区关山路7375号', '121.381709 ', '31.112813 ', '', '201103', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (636, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29923-255824', '东方蓝海广场店', '上海市杨浦区金沙江路1685号-4区', '121.378335 ', '31.231616 ', '', '200433', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (637, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20911-208745', '118广场店', '普陀区南京西路688号L106B室', '121.464553 ', '31.231589 ', '021-62654054', '200062', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (638, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22672-223346', '恒基688广场店', '静安区恒基688广场四平路2500号', '121.464553 ', '31.231589 ', '', '200041', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (639, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22777-224604', '杨浦东方商厦店', '杨浦区第L1层B19-F01-1-030室淮海中路300号一楼106室', '121.473728 ', '31.223277 ', '021-65561775', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (640, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47216-257224', '上海K11购物艺术中心店', '上海市黄浦区峨山路91弄98号', '121.531900 ', '31.217330 ', '', '200025', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (641, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15904-166732', '陆家嘴软件园店', '浦东新区陆家嘴软件园1号楼1楼淮海中路937号', '121.531430 ', '31.217310 ', '021-50337052', '200127', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (642, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35005-20222', '美臣店', '卢湾区美臣大楼一楼南京东路635号', '121.482023 ', '31.238050 ', '021-64728339', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (643, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31238-99738', '永安店', '黄浦区永安百货一楼天山路342号缤谷广场一层', '121.478267 ', '31.234987 ', '021-63225624', '200010', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (644, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23768-231466', '缤谷广场店', '长宁区花园石桥路33号', '121.500442 ', '31.234046 ', '', '200336', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (645, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31509-107898', '花旗店', '浦东新区花旗集团大厦1楼白银路288弄20棟19号107室', '121.500421 ', '31.234079 ', '021-58873087', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (646, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27987-249465', '嘉定台北风情街店', '嘉定区陆家嘴环路1233号101', '121.504027 ', '31.240792 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (647, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15400-160926', '汇亚大厦店', '浦东新区汇亚大厦定西路1026号', '121.504077 ', '31.241087 ', '021-50432971', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (648, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22024-216927', '昭化路店', '长宁区纪蕴路38号A-68单元', '121.424624 ', '31.220367 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (649, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25481-231965', '长江西路店', '宝山区延安西路562号1楼', '121.435772 ', '31.216613 ', '', '200431', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (650, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29920-255924', '延安西路店', '上海市长宁区菊盛路', '121.424624 ', '31.220367 ', '', '200050', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (651, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27207-246825', '菊盛路店', '宝山区936号938号940号-1单元平福路188号3幢第一层101单元', '121.489612 ', '31.405457 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (652, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47454-258327', '平福路店', '上海市徐汇区桂平路391号', '121.403871 ', '31.164143 ', '', '201413', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (653, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15616-161545', '漕河泾2店', '徐汇区漕河泾淮海东路68号101单元', '121.481383 ', '31.226334 ', '021-34140663', '200233', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (654, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16612-173724', '淮海东路店', '黄浦区淮海东路吴淞路258号1楼102室', '121.490072 ', '31.248642 ', '021-22061352', '200021', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (655, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31919-109304', '耀江广场店', '虹口区耀江广场浦东南路588号', '121.511343 ', '31.235277 ', '021-63242613', '200080', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (656, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15336-160348', '浦发大厦店', '浦东区浦发大厦新松江路925弄', '121.511741 ', '31.235231 ', '021-38726797', '200335', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (657, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31811-118146', '松江开元店', '松江区地中海商业广场1层1-000号申达一路1号', '121.219440 ', '31.038189 ', '021-37799005', '201620', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (658, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '9166-152504', '虹桥西航站二店', '长宁区虹桥机场T2航站楼12.15米层B5-3-S1银春路2152号1楼2-105室', '121.345986 ', '31.194995 ', '021-22382553', '20335', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (659, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49096-267087', '新壹坊店', '上海市闵行区闵行区陆家嘴西路168号3F', '121.499437 ', '31.236592 ', '', '201111', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (660, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35027-125392', '正大店', '浦东新区正大广场南京东路819号', '121.475042 ', '31.234539 ', '021-50471106', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (661, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18717-194365', '南东二店', '黄浦区百联世茂国际广场1层102号商铺澄浏中路3090号1层006室', '121.475747 ', '31.234394 ', '021-63130220', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (662, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47545-258565', '嘉定百联店', '上海市嘉定区长宁路1193号3号办公楼1层01-01室', '121.413764 ', '31.217412 ', '', '201800', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (663, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27666-248311', '长宁来福士T3店', '长宁区世博大道1200号', '121.424624 ', '31.220367 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (664, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '8153-149899', '耀华路店', '浦东新区文化中心一楼西门L111商铺迎宾一路800号T1航站楼出发公众区B2-20店铺', '121.345974 ', '31.195359 ', '021-20251012', '200126', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (665, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25147-240004', '虹桥机场T1出发店', '长宁区虹桥机场一号航站楼福山路388号101A单元', '121.347851 ', '31.194107 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (666, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17705-185307', '宏嘉大厦店', '浦东新区宏嘉大厦浦东新区上南路161号', '121.494725', '31.184385', '021-20231316', '200122', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (667, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22323-219627', '中华艺术宫店', '浦东新区1层序厅淮海中路835号1-3F', '121.477926 ', '31.225347 ', '', '200126', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (668, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19077-198384', '人民坊店', '黄浦区人民坊凌空SOHO16号楼一层商铺16-101', '121.462440 ', '31.217464 ', '021-54590752', '200020', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (669, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26547-244290', '凌空广场携程店', '宁区金钟路968号1018号B2F002商铺', '121.350969 ', '31.221243 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (670, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31044-100929', '龙之梦1店', '长宁区龙之梦漕宝路3459号1C2-03', '121.349685 ', '31.156055 ', '021-62123038', '200070', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (671, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21114-209304', '汇宝广场店', '闵行区汇宝广场老太平弄100号', '121.350397 ', '31.154888 ', '021-54735516', '201100', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (672, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22743-224085', '金外滩花园店', '黄浦区仙霞路333号1层S105单元', '121.398874 ', '31.206116 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (673, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18338-189844', '东方维京大厦店', '长宁区东方维京大厦南京西路1818号', '121.443830 ', '31.222093 ', '021-62127237', '200336', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (674, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48363-263271', '1788广场店', '上海市静安区夏碧路261号1楼', '121.459384 ', '31.247105 ', '', '200041', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (675, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25723-242105', '夏碧路店', '浦东新区3777F01042单元华山路1954号包兆龙图书馆一层', '121.433189 ', '31.199802 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (676, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47221-256948', '上海交通大学店', '上海市徐汇区徐汇区延安西路2299号', '121.402221 ', '31.202805 ', '', '200030', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (677, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35032-92141', '世贸商城店', '长宁区世贸商城', '121.400733 ', '31.201814 ', '021-62360782', '200336', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (678, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29110-252447', '松江文汇路店', '松江大学城文汇路商业街新松江路925弄开元地中海商业广场', '121.220434 ', '31.037685 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (679, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21835-215464', '松江开元二店', '松江区一层1168室1169室1176室沪亭北路666-668号', '121.315374 ', '31.149038 ', '', '201625', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (680, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25735-241987', '松江沪亭北路店', '松江区九城湖滨国际公寓南京西路1168号', '121.456046 ', '31.228697 ', '', '201615', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (681, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35007-115705', '中信店', '静安区中信泰富广场候机楼T2禁区D6号店铺', '121.455716 ', '31.227459 ', '021-52984548', '200041', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (682, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25144-240068', '浦东机场T2国内C50', '浦东新区启航路900号汤臣国贸大厦', '121.798046 ', '31.163407 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (683, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16175-169214', '汤臣国贸大厦店', '浦东新区基隆路1号湖滨路150号L1-E05L2-E06单元', '121.587243 ', '31.349877 ', '021-38762689', '200131', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (684, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23040-227187', '湖滨道店', '黄浦区企业天地二期虹桥火车站到达区B1-19', '121.478909 ', '31.221041 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (685, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17155-179684', '虹桥火车站到达店', '长宁区火车站到达区B1-19淮海中路2-8号', '121.479423 ', '31.226339 ', '021-51511256', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (686, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22261-219325', '兰生电影院店', '黄浦区兰生电影院芳甸路1088号', '121.479638 ', '31.225919 ', '021-63128827', '200021', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (687, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23330-229145', '紫竹大厦店', '浦东新区城中北路79号副楼1楼2楼', '121.111030 ', '31.148230 ', '', '200268', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (688, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24116-235274', '青浦城中北路店', '青浦区金陵东路500号', '121.480458 ', '31.227183 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (689, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15205-142904', '亚龙国际广场店', '黄浦区亚龙国际广场1f-102A福山路312号B1层07单元', '121.527942 ', '31.229339 ', '021-63339033', '200021', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (690, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27339-247291', '世纪大都会B1店', '上海市浦东新区浦东新区南桥镇百齐路588号', '121.483973 ', '30.915380 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (691, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18804-195224', '奉贤南桥百联店', '奉贤区百联南桥购物中心一楼于田路7号2号楼1F-1单元', '121.485064 ', '30.914230 ', '021-57181253', '201400', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (692, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26758-245105', '大众汽车总部店', '嘉定区上海大众技术管理中心淮海西路555号1楼103单元淮海西路555号1楼103单元', '121.423507 ', '31.196184 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (693, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49635-270364', '汇京国际广场店', '上海市徐汇区金高路1757号101-A室', '121.437866 ', '31.199190 ', '', '200233', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (694, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47067-256554', '金桥佳邻坊店', '上海市浦东新区金高路1757号佳邻坊商业中心一层101-A室', '121.609988', '31.269317', '', '201206', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (695, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28875-251686', '康桥漕河泾店', '上海市浦东新区8幢1楼104室昌化路68号', '121.544379 ', '31.221517 ', '', '200238', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (696, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32670-135967', '远中风华店', '静安区远中风华南京西路1266号', '121.451036 ', '31.229672 ', '021-62679253', '200041', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (697, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17047-178992', '恒隆一店', '静安区恒隆广场1号楼1层汾阳路138号1楼03单元', '121.452942 ', '31.210017 ', '021-33608332', '200040', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (698, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31365-107196', '汾阳路店', '卢湾区轻科大厦控江路1628号L113单元', '121.516660 ', '31.274720 ', '021-54650525', '200030', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (699, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26386-232605', '紫荆广场店', '杨浦区长寿路137号1楼02室', '121.442254 ', '31.242826 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (700, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31715-109306', '财富时代店', '普陀区财富时代西藏中路268号来福士广场2楼04', '121.476624 ', '31.232470 ', '021-62769225', '200060', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (701, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35038-93159', '来福士广场店', '上海市黄浦区05单元', '121.469240 ', '31.229860 ', '021-63403068', '200120', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (702, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27098-243589', '协信星光广场南区店', '闸北区寿阳路99弄24号S101A室上南路1212-2号', '121.495310 ', '31.173270 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (703, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27661-248110', '三钢里店', '上海市浦东新区金鼎路2218号121单元', '121.365748 ', '31.258844 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (704, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25640-241685', '乐坊广场店', '嘉定区乐坊广场南京西路1601号越洋广场1楼1室', '121.365435 ', '31.259081 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (705, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21571-211205', '越洋广场3店', '静安区越洋广场10幢10F10G室', '121.447609 ', '31.223142 ', '', '200040', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (706, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25900-242804', '星汇广场店', '杨浦区国安路758弄四川北路2258号', '121.482838 ', '31.268030 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (707, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30624-100469', '甜爱路店', '虹口区甜爱路', '121.484039 ', '31.268292 ', '021-65878807', '200081', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (708, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29029-252006', '高桥红坊店', '浦东新区张杨北路57705758号国权北路1688弄63号', '121.504057 ', '31.340522 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (709, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24745-238148', '湾谷科技园店', '杨浦区河南中路88号', '121.486632 ', '31.232197 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (710, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '6120-149007', '外滩中心店', '黄浦区外滩中心威海路433439号', '121.483480 ', '31.221061 ', '021-63352991', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (711, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1677-139381', '威海路店', '静安区威海路安城路278号1层101单元', '121.438565 ', '31.275267 ', '021-63400871', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (712, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '50013-272391', '嘉定万科安亭新镇店', '上海市嘉定区武康路420号', '121.265300 ', '31.375602 ', '', '201805', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (713, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18673-194004', '武康路店', '徐汇区1F世纪大道15681588号102A单元', '121.534053 ', '31.224270 ', '021-54560060', '200031', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (714, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24124-235265', '中建大厦店', '浦东新区吴江路128号', '121.463356 ', '31.230314 ', '', '200486', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (715, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32534-136968', '吴江路店', '静安区吴江路中山西路1065号104室', '121.463356 ', '31.230314 ', '01-62713050', '200041', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (716, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21112-209305', '中山广场店', '长宁区中山广场共和新路5000弄5号105106107室', '121.445108 ', '31.321640 ', '021-52986795', '200051', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (717, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18883-196405', '共康路店', '宝山区绿地风尚天地广场天钥桥路580号', '121.444821 ', '31.322230 ', '021-66287293', '200443', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (718, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1383-135707', '星游城店', '徐汇区星游城1F-13单元+2F-13单元临平路1号1层10&11单元', '121.442409 ', '31.185388 ', '021-64272170', '200030', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (719, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31567-110088', '瑞虹店', '虹口区瑞虹新城松汇中路568号B座', '121.500964 ', '31.264317 ', '021-61237475', '200086', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (720, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18337-189884', '松江乐颂坊店', '松江区乐颂坊晨晖路1000号1号楼116-A室', '121.235646 ', '31.005307 ', '021-37017545', '201699', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (721, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17298-177310', '浦东软件园店', '浦东新区浦东软件园天山路919号', '121.710449 ', '31.159064 ', '021-58822026', '201203', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (722, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32375-130346', '虹桥天都店', '长宁区虹桥天都101号商铺陆家嘴中心区世纪大道55号', '121.406980 ', '31.210330 ', '021-62332278', '200051', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (723, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '3844-153627', '东方浮庭店', '浦东新区（临）“东方浮庭”2F-4室申迪西路255弄218号1楼', '121.660835 ', '31.140218 ', '021-38791011', '200335', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (724, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23327-229105', '迪士尼PAB写字楼店', '浦东新区上中西路280号', '121.425552 ', '31.135806 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (725, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23746-233149', '壹街坊店', '徐汇区世纪大道1589号', '121.535168 ', '31.225037 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (726, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1673-139375', '长泰金融店', '浦东新区长泰国际金融大厦1楼07单元定西路1328号', '121.534769 ', '31.225195 ', '021-58309068', '200000', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (727, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31259-105086', '定西路店', '长宁区巴黎春天百货1F巨峰路1058弄2号', '121.378240 ', '31.231517 ', '021-62131706', '200050', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (728, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22694-223825', '晨达广场店', '浦东新区晨达广场张杨路3918号1楼03室2楼03室', '121.581616 ', '31.255556 ', '021-68682766', '200146', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (729, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24982-239305', '久金购物中心店', '上海市浦东新区卫清西路188号B101室', '121.347593 ', '30.731509 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (730, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '7034-154154', '金山百联店', '上海市金山区上海南站', '121.341970 ', '30.741991 ', '021-67291128', '200540', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (731, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1355-128567', '上海南站店', '徐汇区上海南站地下商场南馆的第一层第B区南1-B25号店铺枫林路380号102室', '121.431047 ', '31.151767 ', '021-54352313', '200232', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (732, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24755-238529', '枫林国际大厦店', '徐汇区钦州北路238-240号', '121.420129 ', '31.180503 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (733, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23766-231605', '钦州北路店', '徐汇区田尚坊世纪大道8号', '121.418924 ', '31.180752 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (734, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '9178-152449', '国金中心店', '浦东新区上海国金中心D座商场裙房B2层LG2-29室淮海中路999号LG2层236室', '121.502870 ', '31.236611 ', '021-38870364', '200001', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (735, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48188-262006', '环贸广场LG2店', '上海市徐汇区徐汇区天山路345号', '121.400875 ', '31.211441 ', '', '200030', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (736, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22667-223347', '缤谷广场二期3F店', '上海市长宁区缤谷文化休闲广场二期三楼310B单元四川中路213号102室', '121.388892 ', '31.213990 ', '', '200336', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (737, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29516-253845', '久事大厦店', '上海市黄浦区南奉公路7500号101-102室', '121.488532 ', '30.918113 ', '', '200002', 'Joint Venture', 1, '2020-09-25 15:18:09', '2020-09-25 15:18:09');
INSERT INTO `store` VALUES (738, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29990-256206', '奉贤苏宁生活广场店', '上海市奉贤区漕宝路3299弄19号一层', '121.354513 ', '31.158677 ', '', '201499', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (739, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47706-259330', '七宝宝龙城南入口店', '上海市闵行区S4a-1F-003b单元', '121.381709 ', '31.112813 ', '', '201102', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (740, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27240-246385', '苏宁天御店', '上海市普陀区丹巴路99号16-1室古美路1528号B楼地下一层D-2号', '121.380074 ', '31.222459 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (741, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27017-246347', '古美路2店', '徐汇区漕河泾总部园SOHO区宜山路900号', '121.401366 ', '31.172211 ', '', '200233', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (742, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18052-187864', '科产大厦店', '徐汇区科产大厦A座1F陆家嘴环路1000号', '121.401864 ', '31.172131 ', '021-64279072', '200233', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (743, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35002-22261', '森茂店', '浦东新区森茂衡山路890弄3号', '121.439776 ', '31.195881 ', '021-68413880', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (744, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22400-220865', '衡山坊店', '徐汇区衡山坊天目西路437439号', '121.439988 ', '31.196358 ', '021-54650157', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (745, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16332-170369', '恒汇大厦店', '闸北区恒汇大厦', '121.452520 ', '31.246022 ', '021-33535905', '200070', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (746, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29779-252449', '古北时尚店', '徐汇区吴中路52号104室19幢楼一层101室', '121.415575 ', '31.187867 ', '', '200336', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (747, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26870-245747', '金领之都店', '浦东新区金海路1000号69幢一层R1单元', '121.619330 ', '31.260104 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (748, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23034-227031', '上海火车站南广场VIP店', '静安区秣陵路303号莘砖公路328号32栋楼创新广场第1层', '121.453295 ', '31.249428 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (749, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22509-221527', '松江创新生活广场店', '松江区徐家汇路618号', '121.467719 ', '31.205433 ', '', '201612', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (750, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15312-160108', '日月光店', '黄浦区日月光广场一层1F-A08单元长阳路1687号', '121.468449 ', '31.206126 ', '021-33637206', '200040', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (751, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27466-247546', '长阳谷店', '杨浦区漕宝路1688号108单元', '121.372445 ', '31.157510 ', '', '200090', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (752, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29108-252246', '诺宝中心店', '闵行区国宾路58号3楼', '121.381709 ', '31.112813 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (753, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '14968-156666', '五角场万达影城店', '杨浦区上海五角场万达商业广场万达影城田林东路75号1层105单元', '121.513352 ', '31.301048 ', '021-53930715', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (754, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35062-98160', '大同店', '徐汇区斜徐路真北路818号B2层06u0012单元', '121.472148 ', '31.207199 ', '021-63040577', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (755, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22338-219630', '近铁城市广场店', '普陀区近铁城市广场都市路3759号126室', '121.412138 ', '31.231798 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (756, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24121-235272', '龙盛广场店', '闵行区中山南二路1089号1层101室', '121.443449 ', '31.178882 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (757, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17822-186324', '徐汇苑店', '徐汇区徐汇苑樱花路80弄1号', '121.444113 ', '31.177831 ', '021-64179705', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (758, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47534-258567', '富荟商业广场店', '上海市浦东新区陕西北路278号一层A1-3商铺', '121.454956 ', '31.228382 ', '', '201204', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (759, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48042-261285', '金鹰店', '上海市静安区静安区研发楼1楼101单元', '121.459384 ', '31.247105 ', '', '200041', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (760, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21576-206665', '南汇工业园', '沪南公路8666弄16号碧云路633号', '121.583075 ', '31.239585 ', '', '201300', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (761, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35052-96715', '金桥店', '浦东新区碧云国际社区陈行路2388号1幢1层101室', '121.509111 ', '31.096913 ', '021-50303537', '201206', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (762, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18664-187846', '浦江科技广场店', '闵行区浦江园内龙华中路598号6号楼103室', '121.484304 ', '31.015978 ', '021-54737751', '201114', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (763, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28819-251206', '正大乐城6幢店', '徐汇区一二八纪念路988弄1号1层119号铺位', '121.445687 ', '31.323004 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (764, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16490-170368', '宝山万达店', '宝山区万达广场广富林路658号1031-1032号单元', '121.569580 ', '31.114047 ', '021-56430311', '200435', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (765, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22855-225164', '松江万达广场店', '松江区万达广场九江路595号一层', '121.568379 ', '31.115251 ', '', '201620', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (766, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15401-160924', '古象大酒店', '黄浦区古象大酒店古美路569号1F', '121.479577 ', '31.234418 ', '021-33050960', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (767, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22744-224068', '古美文创街店', '闵行区文化创意街申长路688号地下一层18室', '121.315530 ', '31.192257 ', '021-54739701', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (768, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25486-226165', '虹桥天地二店', '闵行区虹桥天地莘松路1266号1-211-22室', '121.349952 ', '31.097222 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (769, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27427-247527', '亚繁生活时尚广场店', '上海市松江区金沙江西路1051弄1-100号1100单元', '121.323594 ', '31.240107 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (770, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15665-164386', '江桥万达店', '嘉定区万达广场徐家汇路193-199号', '121.323276 ', '31.238657 ', '021-39525927', '201803', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (771, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21246-210305', '永业公寓店', '黄浦区永业公寓国康路38号3幢', '121.504642 ', '31.286240 ', '021-53862823', '21246', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (772, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29922-255825', '国康路店', '上海市杨浦区陆翔路111弄119号', '121.371271 ', '31.345579 ', '', '200092', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (773, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22376-220124', '顾村公园店', '宝山区古美路1528号7幢1层01商业101D室', '121.398809 ', '31.163853 ', '', '201907', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (774, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16966-177307', '古美路店', '徐汇区古美路安远路108号1F-01室', '121.446613 ', '31.241929 ', '021-34693736', '200031', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (775, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47533-258612', '平高国际广场店', '上海市普陀区银翔路819弄1号04单元', '121.318574 ', '31.287411 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (776, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24122-235273', '中暨大厦店', '嘉定区中暨大厦芷江西路518号', '121.318747 ', '31.287292 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (777, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21184-209824', '五月花生活广场店', '闸北区一层101单元及二层201239单元台路179号B2LG2583单元', '121.444843 ', '31.298415 ', '', '200071', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (778, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48765-265186', '金虹桥国际中心B2店', '上海市长宁区', '121.424624 ', '31.220367 ', '', '200051', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (779, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21830-215905', '雁荡路店', '雁荡路99号周家嘴路1089号', '121.470051 ', '31.219064 ', '', '200020', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (780, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48844-265524', '合生财富广场店', '上海市虹口区定安路55号T2楼101A号', '121.505133 ', '31.264600 ', '', '200086', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (781, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29991-256204', '徐汇万科中心店', '上海市徐汇区徐汇区', '121.437866 ', '31.199190 ', '', '200235', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (782, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28961-251887', '场北路店', '宝山区纪蕰路320弄2号一层101室曲阜路180号', '121.437974 ', '31.335099 ', '', '200443', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (783, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15202-158484', '大悦城店', '闸北区大悦城南中路80号1层1F06', '121.459290 ', '30.913569 ', '021-36397920', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (784, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49148-267252', '奉贤金叶商厦店', '上海市奉贤区奉贤区长寿路1118号', '121.474042 ', '30.917795 ', '', '201404', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (785, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31293-102161', '芳汇广场店', '普陀区芳汇广场F117号商铺长阳路1750号SHYP2 -108A室', '121.427078 ', '31.230393 ', '021-62269340', '200042', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (786, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48476-263484', '长阳路欧尚店', '上海市杨浦区东安路599号', '121.458800 ', '31.187018 ', '', '200090', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (787, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18825-195444', '正大乐城店', '徐汇区正大乐城1-104上丰路1702号101室', '121.457092 ', '31.185862 ', '021-60671673', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (788, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23853-233565', '唐镇恒生店', '浦东新区唐镇恒生广场世纪大道211号', '121.678519 ', '31.240887 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (789, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35031-92803', '信息大厦店', '浦东新区信息大厦殷行路1388弄', '121.507503 ', '31.329667 ', '021-58787612', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (790, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29663-254768', '悠方店', '上海市杨浦区1号102淮海中路138号', '121.478074 ', '31.225655 ', '', '200438', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (791, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27663-248308', '上海广场店', '上海市黄浦区商场一楼106室愚园路8号L1层11室L2层09A室', '121.426405 ', '31.218039 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (792, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25174-239633', '静安晶品店', '静安区静安晶品七莘路3655号', '121.341719 ', '31.165407 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (793, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35046-95230', '七莘路店', '闵行区凯德七宝购物广场太仓路181弄18号楼', '121.340854 ', '31.164214 ', '021-64197262', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (794, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35008-28367', '新天地店', '卢湾区新天地淮海西路280号101室', '121.429216 ', '31.200055 ', '021-63200137', '200023', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (795, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27076-246484', '淮海花园店', '长宁区年家浜路238号1楼101单元', '121.594147 ', '31.113892 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (796, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49093-267104', '周浦绿地缤纷广场店', '上海市浦东新区中山北路3300号L1059-L1060室', '121.412386 ', '31.233166 ', '', '201318', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (797, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48580-264006', '月星环球港1F店', '上海市普陀区普陀区国和路701号5105室', '121.395555 ', '31.249840 ', '', '200062', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (798, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24827-238907', '中原城市广场店', '杨浦区中原城市广场南京西路1601号', '121.522527 ', '31.315350 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (799, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '7198-135969', '越洋广场店', '静安区越洋广场商场B210室海西路676号1层01室', '121.447609 ', '31.223142 ', '021-32565610', '200040', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (800, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17451-182007', '新淮海坊店', '长宁区新淮海坊春申路3333号1楼149室', '121.422568 ', '31.196259 ', '021-32090190', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (801, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49831-271446', '宝燕商城店', '上海市闵行区中山东二路531号B11室', '121.381709 ', '31.112813 ', '', '201199', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (802, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27664-248309', '十六铺店', '黄浦区卓耀路58弄127号', '121.469240 ', '31.229860 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (803, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24378-237270', '佛罗伦萨小镇店', '浦东新区第2层206207室杨树浦路2688号', '121.557764 ', '31.270563 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (804, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17856-186725', '时尚中心店', '杨浦区时尚中心长寿路175号179号L110单元', '121.558340 ', '31.271128 ', '021-55895099', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (805, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25167-239545', '巴黎春天长寿路店', '普陀区长寿路巴黎春天西藏中路579－581号', '121.441376 ', '31.242981 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (806, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31457-100363', '新金桥店', '黄浦区新金桥漕宝路3299弄15号一层', '121.354939 ', '31.157093 ', '021-63597512', '200003', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (807, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47707-259328', '七宝宝龙城店', '上海市闵行区S1-1F-017单元和二层S1-2F-015单元城东路384号1楼MSGC2单元', '121.763580 ', '31.053070 ', '', '201102', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (808, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24383-237269', '惠南世纪联华店', '浦东新区惠南世纪联华九峰路118号1层101室02单元', '121.763321 ', '31.052348 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (809, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49770-271245', '松江平高广场店', '上海市松江区', '121.227747 ', '31.032243 ', '', '201600', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (810, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27363-247167', '朵云轩店', '徐汇区天钥桥路1188号大连路688号宝地广场', '121.447935 ', '31.173815 ', '', '200232', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (811, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18454-187328', '宝地广场店', '杨浦区A幢102单元  长乐路989号', '121.526077 ', '31.259541 ', '', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (812, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '3493-153167', '世纪商贸店', '徐汇区世纪商贸', '121.447059 ', '31.215359 ', '021-34612202', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (813, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27423-247525', '陆家嘴国际华城店', '浦东新区张杨路1553号天山西路567号神州智慧天地裙房1层R106号', '121.537331 ', '31.234438 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (814, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27895-248892', '神州智慧天地店', '长宁区神州智慧天地南京西路762号1楼D座', '121.462952 ', '31.231134 ', '', '200335', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (815, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19068-198327', '汇银大厦店', '静安区汇银大厦真华路928号一层101室', '121.411510 ', '31.271980 ', '021-52600016', '200041', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (816, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19328-199225', '真华路店', '宝山区巴黎春天虞姬墩路505号', '121.413250 ', '31.272750 ', '021-66057296', '200940', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (817, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21718-214564', '江桥老街店', '嘉定区4幢101102109铺位虹桥路1号168铺位', '121.265300 ', '31.375602 ', '021-59532571', '201803', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (818, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35047-96505', '港汇广场店', '徐汇区港汇广场宜山路455号1楼183.185室', '121.427502 ', '31.186545 ', '021-64480045', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (819, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48221-262287', '光启城店', '上海市徐汇区南京东路800号B14-F01-1-015单元', '121.475410 ', '31.235220 ', '', '200233', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (820, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18740-194784', '六合路店', '黄浦区东方商厦南京东路233号', '121.485574 ', '31.237672 ', '021-62360075', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (821, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1692-142905', '老介福店', '黄浦区老介福肇嘉浜路212号', '121.462514 ', '31.203784 ', '', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (822, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '8097-151366', '明珠店', '黄浦区明珠大酒店大堂华山路1568号1层102室', '121.433398 ', '31.205297 ', '021-64731870', '200020', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (823, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31351-105085', '华山国际店', '长宁区华山国际申达一路1号虹桥机场T2航站楼到达公众区0L-1号商铺', '121.327113 ', '31.194239 ', '021-62820984', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (824, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23767-233365', '虹桥机场T2到达店', '长宁区虹桥机场二号航站楼合川路2679号', '121.327155 ', '31.194143 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (825, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21182-209826', '虹桥国际商务广场店', '闵行区B座101室申北路8号', '121.381709 ', '31.112813 ', '', '200333', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (826, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27208-246773', '申北路店', '闵行区春申文化创意园宜山路675-1单元', '121.431310 ', '31.191820 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (827, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47450-258328', '宜山路店', '上海市徐汇区天钥桥路30号', '121.440538 ', '31.193002 ', '', '201101', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (828, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '14969-55679', '美罗大厦店', '徐汇区美罗大厦佳木斯路488号1层101室', '121.440487 ', '31.193194 ', '021-34141560', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (829, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49740-271088', '佳木斯路店', '上海市杨浦区长岛路1160-1号', '121.592270 ', '31.260950 ', '', '200433', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (830, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26543-244285', '长岛路店', '浦东新区翡翠商都肇嘉浜路500号', '121.454133 ', '31.201321 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (831, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22851-224947', '好望角店', '徐汇区好望角酒店天山路762号1层15号商铺', '121.403249 ', '31.211437 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (832, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24335-237025', '天山巴黎春天店', '长宁区巴黎春天天山路店万源路930-932-934号', '121.421585 ', '31.216940 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (833, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26017-243166', '万源城店', '闵行区万源城乐斯生活馆茅台路179号商场L1楼L113号商铺', '121.402484 ', '31.208848 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (834, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24129-220125', '金虹桥国际中心店', '长宁区金虹桥国际中心嘉松北路6130号', '121.402635 ', '31.208967 ', '', '200051', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (835, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19327-200245', '嘉实生活广场店', '嘉定区沪闵路6088号1层01-02号', '121.379167 ', '31.107792 ', '021-59558042', '201804', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (836, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24341-237024', '莘庄龙之梦2店', '闵行区华秋路58弄21号一层22号一层', '121.381319 ', '31.320000 ', '021-52270275', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (837, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29878-255444', '朗香嘉年华店', '上海市宝山区遵义路122弄6号2-B101单元', '121.407150 ', '31.207400 ', '', '200444', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (838, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24893-208751', '虹桥南丰城二店', '长宁区虹桥南丰城二期', '121.407794 ', '31.207276 ', '', '200051', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (839, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28164-249984', '上海通用汽车店', '浦东新区申江路1500号浦东南路1078号1楼09A室', '121.621286 ', '31.275382 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (840, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24229-236238', '中融广场店', '浦东新区申达一路1号', '121.544379 ', '31.221517 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (841, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '8013-148767', '虹桥西航站店', '长宁区虹桥机场T2候机楼C3-M2-S28中潭路71号', '121.356302 ', '31.183037 ', '021-22382540', '200335', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (842, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15120-157845', '中远两湾城店', '普陀区中远两湾城莲花南路1500号', '121.442582 ', '31.254137 ', '021-32159361', '200061', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (843, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31935-116125', '新都会店', '闵行区梅陇镇新都会15-B单元黄浦路99号111室', '121.413392 ', '31.097683 ', '021-33580075', '20051', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (844, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21668-214007', '上海滩国际大厦店', '虹口区浦东大道720号', '121.525092 ', '31.239295 ', '021-56712970', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (845, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32722-138208', '航运金融大厦店', '浦东新区国际航运金融中心大厦大堂共和新路1898号', '121.524808 ', '31.239795 ', '021-50368326', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (846, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31268-103101', '大宁店', '闸北区大宁国际广场5幢1层114－117室都市路5001号', '121.453295 ', '31.274169 ', '021-66521045', '200072', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (847, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1663-136545', '莘庄仲盛店', '闵行区仲盛世界城张杨路655号', '121.387087 ', '31.107157 ', '021-24284254', '201100', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (848, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18333-189864', '张杨路店', '浦东新区永安金店101201铺位甘河路181号', '121.544379 ', '31.221517 ', '021-50873006', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (849, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29187-252685', '甘河路店', '上海市虹口区曹杨路555号', '121.418237 ', '31.237029 ', '', '200437', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (850, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19123-194366', '汇融天地店', '普陀区汇融天地西藏北路558号-588号', '121.470286 ', '31.250829 ', '021-62371037', '200062', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (851, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47072-256555', '铭德大酒店店', '上海市静安区东方路1217号1楼100单元', '121.530330 ', '31.218310 ', '', '200071', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (852, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18465-188707', '陆家嘴软件园二店', '浦东新区陆家嘴软件园南京西路2－68号3F', '121.473888 ', '31.234909 ', '021-50713213', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (853, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31555-107896', '新世界店', '黄浦区新世界天山西路138号1楼35室', '121.481239 ', '31.235723 ', '021-53750670', '200003', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (854, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25734-242225', '北新泾店', '长宁区馥邦购物中心碧波路635号1041F24-23B室', '121.373229 ', '31.217217 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (855, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49685-270794', '北翼生活广场店', '上海市宝山区灵石路695号3号楼1楼大堂', '121.450027 ', '31.283598 ', '', '201999', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (856, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20132-203467', '珠江创意中心店', '闸北区珠江创意中心西藏南路218号', '121.480228 ', '31.224742 ', '021-56610057', '200072', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (857, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18221-189126', '永银大厦店', '黄浦区永银大厦1F蒙自路169号', '121.478178 ', '31.206352 ', '021-63336567', '200021', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (858, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32353-131664', '丽园路店', '卢湾区丽园路口虹桥路1号101铺位', '121.441150 ', '31.194449 ', '021-53016130', '200023', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (859, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22661-223624', '港汇2店', '徐汇区塔城路295号', '121.256002 ', '31.383762 ', '', '20030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (860, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19928-203185', '嘉定疁城国际店', '嘉定区疁城国际金港路299号1幢1316室', '121.265300 ', '31.375602 ', '021-59591017', '200180', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (861, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24108-235464', '禹州广场店', '浦东新区禹州金融广场民生路1199号1号楼105A', '121.549993 ', '31.226569 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (862, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23843-233504', '证大五道口店', '浦东新区证大五道口广场蒙自路757号1楼106单元', '121.481965 ', '31.197494 ', '', '200268', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (863, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48769-265070', '歌斐中心店', '上海市黄浦区南京东路299号', '121.484231 ', '31.237090 ', '', '200023', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (864, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '21665-214004', '宏伊广场店', '黄浦区2楼S-215单元漕溪路1111号', '121.469240 ', '31.229860 ', '021-53862373', '200002', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (865, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '30949-102502', '上海体育馆店', '徐汇区上海体育馆1楼1号扶梯张扬北路3181号', '121.440634 ', '31.181288 ', '021-64680229', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (866, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25901-242866', '阳光城店', '浦东新区阳光天地翔殷路1099号地下一层12号', '121.588183 ', '31.312089 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (867, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29515-253626', '合生汇店', '上海市杨浦区迎宾大道6000号', '121.803291 ', '31.150908 ', '', '200433', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (868, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '22209-218584', '浦东机场T1国际27号登机口店', '浦东新区浦一号候机楼国际出发禁区商业区域餐饮项目仙霞路99号', '121.544379 ', '31.221517 ', '021-68332230', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (869, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18932-196425', '尚嘉中心店', '长宁区尚嘉中心(商场)地下第2层B1-B11安波路419号', '121.407106 ', '31.205723 ', '021-60673755', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (870, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48754-265071', '安波路店', '上海市杨浦区福建中路353号-359号1-2层1A02单元', '121.480058 ', '31.236285 ', '', '200433', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (871, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18741-194785', '福建中路店', '黄浦区福建中路人民大道221号B1层236-238号单元', '121.473450 ', '31.228689 ', '021-63331002', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (872, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29329-253269', '迪美广场店', '上海市黄浦区张杨路500号', '121.518050 ', '31.227166 ', '', '200003', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (873, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35013-138946', '时代店', '浦东新区华润时代广场陆家嘴环路166号102室', '121.500590 ', '31.235490 ', '021-58368819', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (874, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17559-183245', '未来资产大厦店', '浦东新区未来资产大厦南京西路189号', '121.470982 ', '31.231655 ', '021-50495869', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (875, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35011-37039', '人民公园店', '黄浦区人民公园浦东国际机场T2国内禁区D4号店铺', '121.472986 ', '31.232792 ', '021-63271930', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (876, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25145-240067', '浦东机场T2国内C67号登机口店', '上海市浦东新区政德东路53号', '121.544379 ', '31.221517 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (877, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26544-244284', 'Z18广场店', '杨浦区Z18广场西藏中路268', '121.517508 ', '31.309154 ', '', '200433', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (878, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15464-141706', '来福士2店', '黄浦区来福士广场办公楼一层大堂L1-02宝翔路801号118单元', '121.476754 ', '31.232946 ', '021-33311357', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (879, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23914-201987', '南翔五彩城店', '嘉定区江浦路627号24幢101室', '121.525361 ', '31.260834 ', '', '201258', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (880, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29242-252866', 'E朋汇店', '上海市杨浦区西江湾路388号(A)01层56号', '121.477215 ', '31.271142 ', '', '200082', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (881, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24911-239164', '虹口龙之梦2店', '虹口区虹口龙之梦佳通路31弄3号', '121.322840 ', '31.296267 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (882, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18087-183585', '南翔祥腾广场店', '嘉定区南翔祥腾广场宁国路218号L1层1A-024室', '121.322586 ', '31.295781 ', '59961015', '200331', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (883, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24057-235145', '杨浦百联滨江购物中心店', '杨浦区杨浦百联滨江购物中心国定路319号F135单元', '121.509527 ', '31.296306 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (884, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19277-200247', '3号湾店', '杨浦区3号湾沪闵路6088号', '121.526077 ', '31.259541 ', '', '200433', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (885, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15119-157846', '莘庄龙之梦店', '闵行区莘庄凯德龙之梦1楼01-27号仙霞路299号', '121.378497 ', '31.107354 ', '021-34975371', '201100', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (886, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35014-57639', '远东国际店', '长宁区远东国际大厦134013411364', '121.401255 ', '31.206682 ', '021-62350615', '200131', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (887, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '28084-249525', '北上海生活广场店', '宝山区蕴川路1555号13301331136513881389铺位新华路160号', '121.433219 ', '31.365856 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (888, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17592-183606', '统一企业大厦店', '长宁区统一企业大厦常德路800号', '121.443823 ', '31.233714 ', '021-33537610', '200050', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (889, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '6069-149086', '800秀店', '静安区800秀徐家汇路608号1FA-1', '121.470456 ', '31.206180 ', '021-62552462', '200040', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (890, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49032-266624', '日月光办公楼店', '上海市黄浦区钦江路102号', '121.409322 ', '31.176701 ', '', '200025', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (891, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16313-137409', '钦江路店', '徐汇区钦江路殷高西路333号3-1523-153单元', '121.406651 ', '31.175847 ', '021-61913716', '200233', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (892, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23430-230104', '殷高西路店', '宝山区淮海中路381号', '121.472874 ', '31.222217 ', '', '200439', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (893, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35019-176124', '中环店', '黄浦区中环广场108-112室北艾路17701772号', '121.475366 ', '31.224132 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (894, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49686-270795', '北艾路店', '上海市浦东新区南车站路564号', '121.493992 ', '31.202773 ', '', '200125', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (895, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20557-206672', '南车站路店', '黄浦区世纪大道800号', '121.514541 ', '31.233047 ', '', '200011', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (896, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16534-172664', '南洋商业银行大厦店', '浦东新区南洋商业银行大厦新闸路1250号10号楼一层5室-10室', '121.514452 ', '31.233071 ', '021-50342650', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (897, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25480-240905', '新闸路店', '静安区源创创意园复兴中路393号C103室', '121.474475 ', '31.215895 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (898, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23231-228627', '复兴广场店', '黄浦区复兴广场国耀路198号200号', '121.474107 ', '31.214516 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (899, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48942-265944', '招商局上海中心店', '上海市浦东新区浦东新区西藏北路18号105单元', '121.472131 ', '31.240844 ', '', '200126', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (900, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23028-227032', '四行天地店', '上海市静安区四行天地银城中路68号', '121.506653 ', '31.241639 ', '', '200085', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (901, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1334-139374', '时代金融店', '浦东新区时代金融大厦2楼西江湾路388号(A)01层10/55号', '121.506568 ', '31.241239 ', '021-50106201', '200120', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (902, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18265-189488', '虹口龙之梦店', '虹口区虹口龙之梦江苏路458号1层116室', '121.431026 ', '31.218235 ', '021-56981190', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (903, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1652-134948', '江苏路店', '长宁区舜元弘基天地国权路73号', '121.430958 ', '31.218315 ', '021-62106771', '200052', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (904, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25224-236284', '绿色米兰广场店', '杨浦区绿色米兰广场城河路230号3-101单元', '121.518463 ', '31.288115 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (905, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24120-235270', '易家中心店', '金山区易家中心淮海中路999号', '121.328805 ', '30.730509 ', '021-57359561', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (906, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20421-205485', '环贸广场2店', '徐汇区环贸广场L507室世纪大道1600号', '121.458462 ', '31.215786 ', '021-54365852', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (907, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31063-103082', '浦项店', '浦东新区浦项东大名路358号1楼', '121.495450 ', '31.246685 ', '021-58318820', '200122', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (908, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17790-185025', '国际港务大厦店', '虹口区国际港务大厦江苏路369号', '121.495830 ', '31.246601 ', '021-55669901', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (909, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32671-138934', '兆丰店', '长宁区兆丰世贸大厦殷高西路10弄2号101102-1室', '121.431598 ', '31.218954 ', '021-52400975', '200235', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (910, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49235-267787', '殷高西路地铁站店', '上海市宝山区中山南路479弄5号楼101室', '121.505723 ', '31.219984 ', '', '200439', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (911, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1667-137410', '老码头店', '黄浦区老码头南京西路1266号', '121.451036 ', '31.229672 ', '021-53863700', '200010', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (912, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17009-178587', '恒隆二店', '静安区恒隆广场二期大堂遵义路100号1-L124和1-LM17单元', '121.407014 ', '31.206735 ', '021-52066325', '200040', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (913, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24980-239421', '虹桥南丰城一店', '长宁区虹桥南丰城南京西路388号', '121.407794 ', '31.207276 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (914, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17758-185784', '仙乐斯店', '黄浦区南京东路300号L114商铺', '121.483935 ', '31.238114 ', '021-53017192', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (915, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '6166-149085', '名人大厦店', '黄浦区名人大厦淞虹路920号', '121.483897 ', '31.237726 ', '021-33311363', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (916, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '48815-265345', '福缘湾九华店', '上海市长宁区福缘湾商场1层1座1101单元瑞金二路197号综合大楼一楼', '121.468000 ', '31.212500 ', '', '200050', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (917, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47452-258306', '瑞金医院综合大楼店', '上海市黄浦区中山东一路367号', '121.490478 ', '31.240222 ', '', '200025', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (918, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '17558-183244', '外滩店', '黄浦区外滩大华三路81号一层A5室', '121.487220 ', '31.232520 ', '021-33130791', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (919, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25495-241124', '大华三路店', '宝山区美隆生活广场祖冲之路2290弄', '121.419017 ', '31.275735 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (920, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18931-186325', '展想大厦店', '浦东新区展想大厦文定路200号1楼1A09ab室', '121.628472 ', '31.210674 ', '021-60127689', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (921, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26077-243331', '蒲汇塘路店', '徐汇区盛源大地家居城中山西路1602号1层02室', '121.422290 ', '31.186672 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (922, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16405-171224', '宏汇国际广场店', '徐汇区宏汇国际广场年家浜路518号', '121.422106 ', '31.186988 ', '021-34693160', '200235', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (923, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '13027-155769', '周浦万达店', '周浦镇周浦万达广场157商铺瑞虹路188号1层115单元', '121.569415 ', '31.114466 ', '021-20980390', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (924, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49458-269584', '月亮湾店', '上海市虹口区四川北路1350商场一层110-112室', '121.483070 ', '31.264426 ', '', '200086', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (925, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19929-203184', '申虹广场店', '虹口区申虹广场东风路9号11号', '121.484662 ', '31.252916 ', '021-56388721', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (926, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24119-235269', '金山五福商业广场店', '金山区金山区五福广场长宁路1018号1F1073号商铺', '121.165927 ', '30.892648 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (927, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31206-100930', '龙之梦2店', '长宁区龙之梦沙泾路10号1-103单元', '121.416230 ', '31.218885 ', '021-62123738', '200050', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (928, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '27659-248307', '1933老场坊店', '虹口区漕宝路1574号', '121.378357 ', '31.156860 ', '', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (929, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '3846-153626', '漕宝路店', '闵行区漕宝路西藏中路289号', '121.375286 ', '31.158136 ', '021-24287874', '201101', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (930, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '4148-147586', '西藏路店', '黄浦区松东路219号1F', '121.255621 ', '31.016098 ', '021-31157982', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (931, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18335-189885', '松江颐思殿广场店', '松江区颐思殿广场南京西路1515号', '121.255427 ', '31.015978 ', '021-37633709', '201699', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (932, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20599-180944', '静安嘉里中心2店', '静安区静安嘉里中心商场E1-03E1-06K室畹町路118号-122号', '121.450294 ', '31.224317 ', '', '200040', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (933, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '19325-198325', '畹町路店', '闵行区畹町路柳州路399号甲302室', '121.403241 ', '31.103238 ', '021-34975126', '201104', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (934, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29027-252164', '柳州路店', '徐汇区沪南公路9900号', '121.738638 ', '31.039391 ', '', '200235', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (935, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47711-259364', '惠南禹洲商业广场', '上海市浦东新区惠南禹洲商业广场1楼9876单元局门路436号1号楼1102单元', '121.739000 ', '31.038500 ', '', '200278', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (936, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '26548-244504', '8号桥2店', '黄浦区8号桥II期世纪大道2002号KJ008009商铺', '121.481711 ', '31.203039 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (937, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18167-188324', '上海科技馆站店', '浦东新区地铁2号线科技馆站3号出口福山路500号', '121.531950 ', '31.222488 ', '021-50673707', '200127', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (938, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31525-107316', '城建大厦店', '浦东新区城建国际中心海桐路338号', '121.551044 ', '31.209360 ', '021-58301323', '200122', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (939, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '25814-242104', '海桐路店', '浦东新区花木世纪联华南丹东路8号第一层101室', '121.445751 ', '31.190827 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (940, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23376-229585', '斜土路店', '徐汇区株洲路329号1-2层', '121.437866 ', '31.199190 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (941, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47425-258105', '株洲路店', '上海市虹口区长寿路1007号1009号和999弄', '121.428438 ', '31.231575 ', '', '200083', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (942, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '29512-253625', '达安花园店', '上海市静安区4号底层A室部分区域碧云路1156号&1160号', '121.459384 ', '31.247105 ', '', '200042', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (943, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '20565-206670', '碧云路店', '浦东新区碧云路仙霞西路88号', '121.588799 ', '31.242464 ', '021-50688581', '201206', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (944, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35050-96680', '西郊友谊店', '长宁区百联西郊购物中心东方路1367号', '121.370269 ', '31.209068 ', '021-52189771', '200335', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (945, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '47605-258985', '富都广场店', '上海市浦东新区古美路1515号19号楼102B室', '121.397736 ', '31.161341 ', '', '200127', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (946, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '18396-190725', '凤凰园店', '徐汇区凤凰园成山路1993号1F', '121.410353 ', '31.164146 ', '021-54590872', '200233', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (947, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15048-157220', '成山路店', '浦东新区巴黎春天虹桥路1号', '121.534698 ', '31.178962 ', '021-60891430', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (948, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15911-166731', '港汇3店', '徐汇区港汇广场办公楼一座大堂天钥桥路323号', '121.438002 ', '31.194993 ', '021-54042703', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (949, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '35049-96281', '嘉汇店', '徐汇区美城天地大渡河路168弄136号1层101A室', '121.442251 ', '31.188761 ', '021-64262192', '200030', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (950, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '16472-150905', '长风景畔广场店', '普陀区长风景畔广场逸仙路519号09单元', '121.394671 ', '31.222302 ', '021-52068359', '200333', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (951, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '49556-269925', '三湘世纪花城店', '上海市杨浦区利津路12751277号1F', '121.578634 ', '31.279115 ', '', '200434', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (952, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '24273-236805', '利津路店', '浦东新区民生路1286号102103105单元', '121.548990 ', '31.224663 ', '', '200129', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (953, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '23329-229146', '汇商大厦店', '浦东新区金丰路447号', '121.284730 ', '31.203195 ', '', '200260', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (954, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '31776-114987', '金丰路店', '闵行区金丰路花木路1378号', '121.284174 ', '31.203372 ', '021-33509512', '200080', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (955, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '15191-153628', '浦东嘉里城店', '浦东新区浦东嘉里城商场一层L110单元新金桥路1088号B100室', '121.609699 ', '31.253241 ', '021-38683758', '200124', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (956, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '32235-124151', '中惠广场店', '浦东新区中惠广场福州路465号2楼', '121.481644 ', '31.232997 ', '58990279', '201206', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (957, 'Starbucks', '中国', '上海市', '121.473701 ', '31.230416 ', '538', '1396-140870', '上海书城店', '黄浦区东侧商铺港隆时代广场一号楼102-105室', '121.469240 ', '31.229860 ', '021-63914776', '200001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (958, 'Starbucks', '中国', '宁波市', '121.550357 ', '29.874556 ', '59', '29806-255385', '宁波港隆广场店', '高新区沧海路1号金高路1882号第一层105单元', '121.602816 ', '29.885318 ', '', '31500', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (959, 'Starbucks', '中国', '浦东新区', '121.544379 ', '31.221517 ', '1', '47614-258986', '金桥太茂店', '上海市浦东新区金高路1882号金桥太茂商业广场一层105单元', '121.608239', '31.266887', '', '201206', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (960, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28962-251966', '南京紫荆广场店', '江苏省南京市中山门大街699号', '118.895237 ', '32.050972 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (961, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '19959-192345', '南京花园城店', '栖霞区花园城建邺区楠溪江东街83号一层104铺位', '118.894666 ', '32.050541 ', '025-85500857', '210049', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (962, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '27239-246604', '南京缤润汇购物中心店', '江苏省南京市圣汤大道99号7(1)-1-01单元和7(1)-2-01单元', '119.052625 ', '32.028455 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (963, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '27060-244686', '南京百联奥特莱斯店', '江宁区南京百联奥特莱斯广场箍筒巷135号', '119.052030 ', '32.029200 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (964, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '21177-209828', '南京老门东店', '秦淮区广州路300号', '118.766674 ', '32.048132 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (965, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '19066-198332', '江苏省人民医院店', '鼓楼区江苏省人民医院建邺区云锦路169号一层01商铺', '118.741244 ', '32.024585 ', '025-68509966', '210029', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (966, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '47993-261025', '南京乐基广场店', '江苏省南京市山西路1号', '118.772883 ', '32.067912 ', '', '210017', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (967, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '17130-177106', '南京苏宁银河店', '鼓楼区苏宁银河中山南路344号1F-006铺位', '118.783708 ', '32.030313 ', '025-83231335', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (968, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28091-249705', '南京张府园店', '秦淮区', '118.794744 ', '32.039133 ', '', '210002', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (969, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '27902-249084', '南京六合泓源广场店', '六合区长江路10号101和027铺位江宁区双龙大道1698号F133铺位', '118.841844 ', '32.342706 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (970, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '49161-267305', '南京景枫广场1F店', '江苏省南京市湖南路115号', '118.777959 ', '32.068793 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (971, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '20116-203428', '南京狮子桥店', '鼓楼区狮子桥江东中路98号', '118.736027 ', '32.033048 ', '025-85737301', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (972, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '16104-167357', '南京建邺万达店', '建邺区南京建邺万达广场1楼淳中路10号1-001铺位', '118.736974 ', '32.032235 ', '025-85575730', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (973, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '24746-238566', '南京高淳富克斯店', '高淳区南京富克斯流行广场江东中路98号万达百货1层', '118.869955 ', '31.323689 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (974, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '48381-263347', '南京建邺万达百货店', '南京市建邺区建邺区竹山路68号', '118.843537 ', '31.951744 ', '', '210019', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (975, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '21669-214008', '南京江宁万达广场店', '江宁区太平南路1号', '118.793647 ', '32.040931 ', '', '211100', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (976, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '32259-129865', '南京新世纪店', '白下区新世纪广场一层126商铺东方金融大厦一层', '118.788081 ', '32.039393 ', '025-84671293', '210002', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (977, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28969-251965', '南京富邦华一银行店', '秦淮区洪武路29号', '118.788078 ', '32.039347 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (978, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28968-251964', '南京仁恒江湾城店', '建邺区白龙江西街62号122室淳溪镇宝塔路61号', '118.714012 ', '31.997331 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (979, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '29883-255567', '南京高淳八佰伴店', '南京市高淳区L1001-1003商铺双龙大道1688号一层1F-01铺位', '118.820534 ', '31.931327 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (980, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '24977-239311', '南京江宁金鹰店', '江宁区江宁金鹰天地广场秣周东路12号一层B36', '118.827460 ', '31.868032 ', '', '21000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (981, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '23443-230164', '南京砂之船店', '江宁区砂之船艺术商业广场一层D-G轴与5-7轴之间', '118.828469 ', '31.866933 ', '', '211100', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (982, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28090-249706', '南京华泰万丽酒店店', '南京市建邺区奥体大街139号大桥北路58号', '118.724626 ', '32.002798 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (983, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '22545-222065', '南京新一城店', '浦口区新一城浦珠北路126号', '118.701038 ', '32.112769 ', '025-86713083', '210031', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (984, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '24338-236946', '南京澳林广场店', '浦口区澳林广场中山路321号', '118.698821 ', '32.112182 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (985, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '16637-173907', '南京鼓楼医院店', '鼓楼区鼓楼医院南扩新院区门诊大楼一楼汉中路27号友谊广场一层A-03铺位', '118.776799 ', '32.041721 ', '025-51865029', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (986, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28096-249704', '南京友谊广场店', '秦淮区游客接待中心101号铺位', '118.775610 ', '32.033522 ', '', '210001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (987, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '27086-246549', '南京牛首山店', '江宁区鼓楼区丁家桥87号中大医院教学医疗综合大楼一楼', '118.776830 ', '32.071173 ', '', '', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (988, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '47617-258989', '南京中大医院店', '江苏省南京市建康路1号', '118.785691 ', '32.024409 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (989, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '32339-134950', '南京水游城店', '白下区水游城F1-T06商铺江宁区格致路99号', '118.899958 ', '31.912477 ', '025-82233938', '210001', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (990, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '28163-250324', '南京江宁文鼎广场店', '江苏省南京市3-1053-106及3-114铺位湖南路1号', '118.782634 ', '32.069131 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (991, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '32746-136825', '南京凤凰书城店', '鼓楼区凤凰国际书城一层B铺位中山南路122号', '118.782560 ', '32.068820 ', '025-83221202', '210008', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (992, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '3830-95550', '南京大洋百货店', '白下区南京大洋百货华电路1号万谷?慧生活广场一层101单元', '118.813639 ', '32.102135 ', '025-84738785', '210005', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (993, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '24111-235470', '南京万谷慧生活广场店', '栖霞区万谷·慧生活广场汉中路101号', '118.813639 ', '32.102135 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (994, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '22954-226525', '南京金鹰三期店', '秦淮区双龙大道1222号B108和B208单元', '118.820170 ', '31.952820 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (995, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '24747-237968', '南京瑞都广场店', '江宁区德基广场', '118.839685 ', '31.953702 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (996, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '16658-174187', '南京德基店', '中山路18号B1-130铺位汉中路2号', '118.784837 ', '32.043985 ', '', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (997, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '32217-128564', '南京金陵店', '鼓楼区金陵百货1楼北京东路4号', '118.785789 ', '32.057737 ', '025-84700053', '210005', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (998, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '1346-136824', '南京江苏电视台店', '玄武区“江苏广电城大厦”裙楼区一层南站候车站', '118.786384 ', '32.057485 ', '025-83188962', '210008', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (999, 'Starbucks', '中国', '南京市', '118.796877 ', '32.060255 ', '73', '16108-168604', '南京南站到达区店', '雨花台区南站候车站HC-精品3健康路3号', '118.787180 ', '32.023664 ', '025-68518728', '210000', 'Joint Venture', 1, '2020-09-25 15:18:10', '2020-09-25 15:18:10');
INSERT INTO `store` VALUES (1000, 'Starbucks', '中国', '北京市', '116.407526 ', '39.904030 ', '234', '22901-225145', '北京西站第一咖啡店', '丰台区北京西站通廊7-1号中关村南大街2号', '116.321218 ', '39.894706 ', '', '100073', 'Company Owned', 1, '2020-09-25 15:18:07', '2020-09-25 15:19:07');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` int NULL DEFAULT NULL COMMENT '性别',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `status` int NULL DEFAULT 1 COMMENT '记录状态：1 正常，0 禁用，-1 删除',
  `role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'demoData', 'ee03a63755efe1c128765c7b36ac3124', 'demoData', 0, 'demoData', 'demoData', 1, 'user', '2020-10-03 16:06:23', '2020-10-03 16:06:23');
INSERT INTO `user` VALUES (2, 'root', '63a9f0ea7bb98050796b649e85481845', 'root', 0, '10086', 'root@root.com', 1, 'root', '2020-10-03 17:30:05', '2020-10-03 18:13:50');

SET FOREIGN_KEY_CHECKS = 1;
