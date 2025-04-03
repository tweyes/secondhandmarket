/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : secondhandmarket

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 20/07/2022 16:58:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `phone` bigint(25) NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `userRole` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 13918888888, '123456', '超级管理员');

-- ----------------------------
-- Table structure for catelog
-- ----------------------------
DROP TABLE IF EXISTS `catelog`;
CREATE TABLE `catelog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名',
  `number` int(11) NULL DEFAULT 0 COMMENT '该分类下的商品数量',
  `status` tinyint(10) NULL DEFAULT 0 COMMENT '分类状态，0正常，1暂用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catelog
-- ----------------------------
INSERT INTO `catelog` VALUES (1, '闲置数码', 18, 1);
INSERT INTO `catelog` VALUES (2, '校园代步', 13, 1);
INSERT INTO `catelog` VALUES (3, '电器日用', 13, 1);
INSERT INTO `catelog` VALUES (4, '图书教材', 19, 1);
INSERT INTO `catelog` VALUES (5, '美妆衣物', 18, 1);
INSERT INTO `catelog` VALUES (6, '运动棋牌', 11, 1);
INSERT INTO `catelog` VALUES (7, '票券小物', 7, 1);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户，外键',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品，外键',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `create_at` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (120, 8, 97, '厉害厉害~', '2022-04-17 04:36:10');
INSERT INTO `comments` VALUES (121, 3, 77, '1212', '2022-04-18 12:02:27');
INSERT INTO `comments` VALUES (122, 6, 90, '111', '2022-04-20 11:37:45');
INSERT INTO `comments` VALUES (123, 23, 103, '喜欢排球', '2022-04-27 10:05:36');
INSERT INTO `comments` VALUES (124, 23, 20, '不知道用了多久了', '2022-05-16 01:11:46');
INSERT INTO `comments` VALUES (125, 23, 110, '自己看过，很不错的一本书 。', '2022-05-16 01:12:21');
INSERT INTO `comments` VALUES (126, 23, 107, 'HHH', '2022-05-16 02:49:59');
INSERT INTO `comments` VALUES (127, 1, 107, 'sdfds', '2022-03-12 04:45:11');
INSERT INTO `comments` VALUES (128, 25, 106, '保质期多久呢？', '2022-03-14 02:20:06');
INSERT INTO `comments` VALUES (129, 25, 17, '这本书很不错', '2022-03-21 05:10:56');
INSERT INTO `comments` VALUES (130, 35, 116, '啊', '2022-04-02 07:32:28');
INSERT INTO `comments` VALUES (131, 37, 134, '想要', '2022-03-18 02:37:54');
INSERT INTO `comments` VALUES (132, 37, 139, '很不错', '2022-03-18 02:38:16');
INSERT INTO `comments` VALUES (133, 37, 165, '新吗', '2022-04-20 09:08:58');
INSERT INTO `comments` VALUES (134, 34, 171, '很好', '2022-07-20 04:49:25');

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '外键 商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '外键 用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES (1, 77, 5);
INSERT INTO `focus` VALUES (4, 94, 4);
INSERT INTO `focus` VALUES (5, 94, 4);
INSERT INTO `focus` VALUES (6, 94, 4);
INSERT INTO `focus` VALUES (8, 90, 9);
INSERT INTO `focus` VALUES (9, 90, 22);
INSERT INTO `focus` VALUES (18, 5, 23);
INSERT INTO `focus` VALUES (19, 85, 23);
INSERT INTO `focus` VALUES (20, 107, 1);
INSERT INTO `focus` VALUES (33, 115, 25);
INSERT INTO `focus` VALUES (34, 106, 25);
INSERT INTO `focus` VALUES (35, 103, 25);
INSERT INTO `focus` VALUES (36, 11, 25);
INSERT INTO `focus` VALUES (37, 116, 25);
INSERT INTO `focus` VALUES (38, 115, 26);
INSERT INTO `focus` VALUES (39, 117, 29);
INSERT INTO `focus` VALUES (40, 2, 30);
INSERT INTO `focus` VALUES (41, 117, 35);
INSERT INTO `focus` VALUES (42, 122, 36);
INSERT INTO `focus` VALUES (43, 128, 37);
INSERT INTO `focus` VALUES (44, 170, 34);
INSERT INTO `focus` VALUES (45, 152, 41);
INSERT INTO `focus` VALUES (46, 165, 34);
INSERT INTO `focus` VALUES (47, 171, 34);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品主键',
  `catelog_id` int(11) NULL DEFAULT NULL COMMENT '商品分类，外键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户外键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price` float(11, 2) NULL DEFAULT NULL COMMENT '出售价格',
  `real_price` float(11, 2) NULL DEFAULT NULL COMMENT '真实价格',
  `start_time` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `polish_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '擦亮时间，按该时间进行查询，精确到时分秒',
  `end_time` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下架时间',
  `describle` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细信息',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态 上架1 下架0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `catelog_id`(`catelog_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (123, 7, 37, '金色手链', 10.00, 50.00, '2022-03-18', '2022-03-18', '2022-03-28', '崭新手链', 1);
INSERT INTO `goods` VALUES (124, 7, 37, '草莓', 10.00, 5.00, '2022-03-18', '2022-03-18', '2022-03-28', '买多了，有需要的联系我', 1);
INSERT INTO `goods` VALUES (125, 1, 37, '星黛露手机壳', 81.00, 151.00, '2022-03-18', '2022-03-18', '2022-03-28', '很漂亮的手机壳，欢迎购买', 1);
INSERT INTO `goods` VALUES (126, 1, 37, '草莓熊手机壳', 7.00, 14.00, '2022-03-18', '2022-03-18', '2022-03-28', '粉色草莓熊', 0);
INSERT INTO `goods` VALUES (127, 1, 37, '玲娜贝尔手机壳', 9.00, 18.00, '2022-03-18', '2022-03-18', '2022-03-28', '好看的粉色小狐狸手机壳', 1);
INSERT INTO `goods` VALUES (129, 1, 37, '草莓熊手机壳', 8.00, 20.00, '2022-03-18', '2022-03-18', '2022-03-28', '玫红草莓熊手机壳', 1);
INSERT INTO `goods` VALUES (130, 1, 38, '充电宝', 50.00, 100.00, '2022-03-18', '2022-03-18', '2022-03-28', '外观崭新', 1);
INSERT INTO `goods` VALUES (131, 2, 38, '雅迪电动车', 800.00, 1500.00, '2022-03-18', '2022-03-18', '2022-03-28', '电瓶很给力，可以骑行很久', 0);
INSERT INTO `goods` VALUES (132, 2, 38, '滑板', 350.00, 700.00, '2022-03-18', '2022-03-18', '2022-03-28', '仅使用半年，外观磨损，介意勿拍', 1);
INSERT INTO `goods` VALUES (133, 3, 38, '自行车', 200.00, 500.00, '2022-03-18', '2022-03-18', '2022-03-28', '漂亮的小清新自行车', 0);
INSERT INTO `goods` VALUES (134, 2, 38, '自行车', 200.00, 500.00, '2022-03-18', '2022-03-18', '2022-03-28', '漂亮小清新自行车', 1);
INSERT INTO `goods` VALUES (135, 4, 38, '教资粉笔', 50.00, 200.00, '2022-03-18', '2022-03-18', '2022-03-28', '粉笔教资都说好', 0);
INSERT INTO `goods` VALUES (136, 4, 38, '教资', 60.00, 300.00, '2022-03-18', '2022-03-18', '2022-03-28', '中公小学教资', 0);
INSERT INTO `goods` VALUES (137, 4, 38, '公务员资料', 80.00, 371.00, '2022-03-18', '2022-03-18', '2022-03-28', '中公全新', 1);
INSERT INTO `goods` VALUES (138, 4, 38, '公务员资料', 100.00, 400.00, '2022-03-18', '2022-03-18', '2022-03-28', '欢迎购买，科目齐全', 1);
INSERT INTO `goods` VALUES (139, 4, 39, 'Python编程书', 20.00, 40.00, '2022-03-18', '2022-03-18', '2022-03-28', '很好的一本书', 1);
INSERT INTO `goods` VALUES (140, 4, 39, 'js编程书', 15.00, 50.00, '2022-03-18', '2022-03-18', '2022-03-28', '内容不错', 1);
INSERT INTO `goods` VALUES (141, 4, 39, '安卓开发图书', 15.00, 30.00, '2022-03-18', '2022-03-18', '2022-03-28', '有轻微使用痕迹', 1);
INSERT INTO `goods` VALUES (142, 4, 39, 'java资料', 20.00, 70.00, '2022-03-18', '2022-03-18', '2022-03-28', '写的很详细', 1);
INSERT INTO `goods` VALUES (143, 5, 39, 'Mac口红', 50.00, 170.00, '2022-03-18', '2022-03-18', '2022-03-28', '颜色不适合本人，欢迎大家购买', 1);
INSERT INTO `goods` VALUES (144, 5, 39, 'ysl口红', 70.00, 300.00, '2022-03-18', '2022-03-18', '2022-03-28', '', 1);
INSERT INTO `goods` VALUES (145, 5, 39, '裙子', 30.00, 120.00, '2022-03-18', '2022-03-18', '2022-03-28', '很显白', 1);
INSERT INTO `goods` VALUES (146, 5, 39, '军大衣', 50.00, 100.00, '2022-03-18', '2022-03-18', '2022-03-28', '非常温暖，建议人手一件', 1);
INSERT INTO `goods` VALUES (147, 5, 39, '卫衣', 30.00, 200.00, '2022-03-18', '2022-03-18', '2022-03-28', '黑色卫衣', 1);
INSERT INTO `goods` VALUES (148, 5, 39, '帽子', 8.00, 30.00, '2022-03-18', '2022-03-18', '2022-03-28', '超级可爱的小帽子', 1);
INSERT INTO `goods` VALUES (149, 5, 39, '遮阳帽', 10.00, 20.00, '2022-03-18', '2022-03-18', '2022-03-28', '遮阳功能强大', 1);
INSERT INTO `goods` VALUES (150, 3, 37, '吹风机', 10.00, 60.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 0);
INSERT INTO `goods` VALUES (151, 6, 37, '篮球', 10.00, 100.00, '2022-03-21', '2022-03-21', '2022-03-31', '手感很好', 1);
INSERT INTO `goods` VALUES (152, 6, 37, '羽毛球拍', 30.00, 300.00, '2022-03-21', '2022-03-21', '2022-03-31', '买就送球', 1);
INSERT INTO `goods` VALUES (153, 6, 37, '闲置篮球', 20.00, 200.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (154, 3, 37, '小冰箱', 50.00, 250.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (155, 3, 37, '烧水壶', 10.00, 70.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (156, 3, 37, '保温壶', 10.00, 66.00, '2022-03-21', '2022-03-21', '2022-03-31', '保温效果好', 1);
INSERT INTO `goods` VALUES (157, 3, 37, '卷发棒', 10.00, 90.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (158, 1, 37, '热水袋', 8.00, 40.00, '2022-03-21', '2022-03-21', '2022-03-31', '很新', 0);
INSERT INTO `goods` VALUES (159, 3, 37, '热水袋', 8.00, 29.00, '2022-03-21', '2022-03-21', '2022-03-31', '很新', 1);
INSERT INTO `goods` VALUES (160, 1, 37, '手机', 600.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '微卡', 1);
INSERT INTO `goods` VALUES (161, 1, 37, '华为手机', 1000.00, 4000.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (162, 2, 37, '电动车', 800.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (163, 1, 37, '黑色电动车', 900.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 0);
INSERT INTO `goods` VALUES (164, 2, 37, '山地自行车', 300.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (165, 2, 38, '黑色电动车', 800.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (166, 2, 38, '可爱电动车', 800.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 0);
INSERT INTO `goods` VALUES (167, 6, 38, '乒乓球包', 20.00, 40.00, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (168, 6, 38, '运动水杯', 5.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (169, 6, 38, '护具', 5.00, NULL, '2022-03-21', '2022-03-21', '2022-03-31', '', 1);
INSERT INTO `goods` VALUES (170, 4, 34, '书', 123.00, 123.00, '2022-07-20', '2022-07-20', '2022-07-30', '123', 0);
INSERT INTO `goods` VALUES (171, 4, 34, '图书', 123.00, 123.00, '2022-07-20', '2022-07-20', '2022-07-30', '123', 1);
INSERT INTO `goods` VALUES (172, 4, 41, '图书', 111.00, 111.00, '2022-07-20', '2022-07-20', '2022-07-30', '图书', 0);
INSERT INTO `goods` VALUES (173, 2, 34, '单车', 1111.00, 1111.00, '2022-07-20', '2022-07-20', '2022-07-30', '单车', 1);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片主键',
  `goods_id` int(11) NOT NULL COMMENT '商品外键',
  `img_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, 1, 'nopic1.png');
INSERT INTO `image` VALUES (2, 2, 'nopic2.png');
INSERT INTO `image` VALUES (3, 3, 'nopic3.png');
INSERT INTO `image` VALUES (4, 4, 'nopic4.png');
INSERT INTO `image` VALUES (5, 5, 'nopic5.png');
INSERT INTO `image` VALUES (6, 6, 'nopic6.png');
INSERT INTO `image` VALUES (7, 7, 'nopic7.png');
INSERT INTO `image` VALUES (8, 8, 'nopic8.png');
INSERT INTO `image` VALUES (9, 9, 'nopic9.png');
INSERT INTO `image` VALUES (11, 11, 'nopic11.png');
INSERT INTO `image` VALUES (12, 12, 'nopic12.png');
INSERT INTO `image` VALUES (13, 13, 'nopic13.png');
INSERT INTO `image` VALUES (16, 16, 'nopic16.png');
INSERT INTO `image` VALUES (17, 17, 'nopic17.png');
INSERT INTO `image` VALUES (18, 18, 'nopic18.png');
INSERT INTO `image` VALUES (20, 20, 'nopic20.png');
INSERT INTO `image` VALUES (21, 77, '4f320b75-427a-484e-b725-a2f5d066af6f.jpg');
INSERT INTO `image` VALUES (78, 78, '599629aa-9440-435c-8185-42e34a862470.jpg');
INSERT INTO `image` VALUES (79, 79, '266abea1-a202-47f2-b5c4-095e96c10473.jpg');
INSERT INTO `image` VALUES (80, 80, '4d472617-d430-4540-a510-f7606861dde0.jpg');
INSERT INTO `image` VALUES (81, 81, 'e62acc43-8122-421a-940b-a68e6aeadd30.jpg');
INSERT INTO `image` VALUES (82, 82, '67a5f2ee-a09a-488d-9e7a-87ac6d8ab9c4.jpg');
INSERT INTO `image` VALUES (83, 83, '110456d4-cc20-4fe2-b0a6-217b023d7dd6.jpg');
INSERT INTO `image` VALUES (84, 84, '499afa59-53bc-4d23-99ef-5d0f9d60de69.jpg');
INSERT INTO `image` VALUES (85, 85, '23f242e3-6dbf-4d46-a1b2-a620918908d9.jpg');
INSERT INTO `image` VALUES (86, 86, 'ae1097a5-736d-4850-9552-b5901ad6d84b.jpg');
INSERT INTO `image` VALUES (87, 87, '95daa308-8011-4e0c-b5bd-8cd151830c32.jpg');
INSERT INTO `image` VALUES (88, 88, '5c212d57-d8a4-4cc0-8853-dba957fba3d5.jpg');
INSERT INTO `image` VALUES (89, 89, 'ec5369f6-7c87-43db-98aa-112efa91c8c6.JPG');
INSERT INTO `image` VALUES (90, 90, 'fd680315-9ac8-4268-803e-7da7b492e8b0.JPG');
INSERT INTO `image` VALUES (91, 91, '455e9ee5-92a7-4c7c-aa94-55f4373a16ee.JPG');
INSERT INTO `image` VALUES (92, 92, '33434fa2-8bf3-4fbc-b1d9-d1e67202e2f2.jpg');
INSERT INTO `image` VALUES (93, 93, 'dc4f9591-bd1a-4eac-b1ea-be6412296fb6.png');
INSERT INTO `image` VALUES (94, 94, '7eb89aaa-56c0-4283-893f-bd5718301d80.jpg');
INSERT INTO `image` VALUES (95, 95, '6664b320-87d4-4d37-b14f-fc5dba41f529.PNG');
INSERT INTO `image` VALUES (96, 96, '451c3aa2-529d-449d-b69f-b8771af1d806.jpg');
INSERT INTO `image` VALUES (97, 97, 'ee6e735c-6479-40bb-b45f-69888c42862e.jpg');
INSERT INTO `image` VALUES (98, 98, '2f92136b-af5b-45f4-902d-7bb1d0ad0809.png');
INSERT INTO `image` VALUES (99, 99, '022fe88a-5328-4b42-8333-10b782d39373.png');
INSERT INTO `image` VALUES (100, 100, 'a1f11b39-490b-42ef-a8e1-44285c4a80d4.png');
INSERT INTO `image` VALUES (101, 101, '0f022547-b2cb-45fe-ab86-fb8b6d70adbc.jpg');
INSERT INTO `image` VALUES (102, 102, '');
INSERT INTO `image` VALUES (103, 103, 'b0933eb3-1ccb-43e1-80a4-1d50902916db.jpg');
INSERT INTO `image` VALUES (104, 104, '');
INSERT INTO `image` VALUES (105, 105, '504d47df-32b0-4195-b63c-10d1562896cc.jpg');
INSERT INTO `image` VALUES (106, 106, 'a634ca2b-70cc-404d-95cb-fc4166fe6706.jpg');
INSERT INTO `image` VALUES (107, 107, '1ba8f318-fbf3-42f6-b8d9-0baa7e678cec.jpg');
INSERT INTO `image` VALUES (108, 108, 'afd57674-338c-414f-98ae-78e0d25b12f8.jpg');
INSERT INTO `image` VALUES (109, 109, '330a9a46-6434-4d04-a72b-a91a14035229.jpg');
INSERT INTO `image` VALUES (110, 110, '0583cb1e-6acd-46da-bebc-4a9f1d6c3ac7.jpg');
INSERT INTO `image` VALUES (111, 111, 'ce18c0f4-dc10-454e-9791-e1992164a384.jpg');
INSERT INTO `image` VALUES (112, 112, '854dff80-d049-4381-ae40-d1d23cd0e88b.jpg');
INSERT INTO `image` VALUES (113, 113, '');
INSERT INTO `image` VALUES (114, 114, '');
INSERT INTO `image` VALUES (115, 115, 'd75711a2-ce0d-487b-afc7-49fe94e75c54.jpg');
INSERT INTO `image` VALUES (116, 116, 'f0983943-2dea-4a19-a96f-989d6ee70780.png');
INSERT INTO `image` VALUES (117, 117, 'dada4e43-9f4f-4703-bd2c-fb96df20b090.png');
INSERT INTO `image` VALUES (118, 118, '3a927822-e9e2-45f9-86e0-4b1be7c65ad0.png');
INSERT INTO `image` VALUES (119, 119, '');
INSERT INTO `image` VALUES (120, 120, '7b0a1e16-d282-47c7-9c85-1412818d7249.png');
INSERT INTO `image` VALUES (121, 121, '8092c89c-c914-42d2-8b33-d7975d754a22.png');
INSERT INTO `image` VALUES (122, 122, 'a830084d-c335-4f9a-a195-bddc2339a164.png');
INSERT INTO `image` VALUES (123, 123, 'f08304bc-1566-43d9-8167-a536193a75b2.jpg');
INSERT INTO `image` VALUES (124, 124, '59647c5a-4231-44aa-ab72-24de3781e378.jpg');
INSERT INTO `image` VALUES (125, 125, 'ca53aba0-05e3-460c-bf6b-d9c3069c7c65.jpg');
INSERT INTO `image` VALUES (126, 126, '26eb794e-e71f-47d7-b669-63d54e4c0bbf.jpg');
INSERT INTO `image` VALUES (127, 127, 'da9ddb46-3aed-423a-9dc8-ec45a5891e2f.jpg');
INSERT INTO `image` VALUES (128, 128, 'bf365bc0-6084-48e5-9b01-72a5770ea388.jpg');
INSERT INTO `image` VALUES (129, 129, '50973520-30cb-4d7b-bb7a-27e9b44ff840.jpg');
INSERT INTO `image` VALUES (130, 130, '36a4efe9-f96f-420e-a805-997ff6a009a6.webp');
INSERT INTO `image` VALUES (131, 131, '0a735a7a-e660-4ed2-aed9-7548433f82d6.jpg');
INSERT INTO `image` VALUES (132, 132, '2df14a54-86cc-4d5d-bdd7-dce2c53945c8.webp');
INSERT INTO `image` VALUES (133, 133, 'bb3a5e60-78f8-4b05-afd6-88d02e54d917.jpg');
INSERT INTO `image` VALUES (134, 134, '2e4aad6f-07a2-42b6-bb5c-1c81051b6d85.jpg');
INSERT INTO `image` VALUES (135, 135, 'cd726404-bdbe-4283-9714-81933c51c131.jpg');
INSERT INTO `image` VALUES (136, 136, '187fef19-8a33-49e2-a80a-f8c7dcb56593.jpg');
INSERT INTO `image` VALUES (137, 137, '0c9188b1-9ce5-45ce-a178-631677131131.jpg');
INSERT INTO `image` VALUES (138, 138, 'b49799a7-0fe3-407f-95be-bbc62058a290.jpg');
INSERT INTO `image` VALUES (139, 139, '0818f63d-df19-400c-bbe7-a1342cce226f.webp');
INSERT INTO `image` VALUES (140, 140, '5d706f76-63ad-4f08-b8dc-a877e9c32544.webp');
INSERT INTO `image` VALUES (141, 141, '661e3369-ec4a-410d-94eb-e57c0a22aaea.jpg');
INSERT INTO `image` VALUES (142, 142, '4bdb2885-2e23-4fba-8e9a-aefa71061feb.webp');
INSERT INTO `image` VALUES (143, 143, 'fa6b2648-8b95-40c2-81f9-7e1cf56165ea.webp');
INSERT INTO `image` VALUES (144, 144, '35ff467f-e5ea-4c9d-9919-db9a6234c53a.webp');
INSERT INTO `image` VALUES (145, 145, '99518c70-1711-4037-a5c2-a10c32364a99.webp');
INSERT INTO `image` VALUES (146, 146, '090564c7-75fc-4624-ac2e-9e18fc17d3af.webp');
INSERT INTO `image` VALUES (147, 147, '40f43032-46fe-4da4-ae1f-2c80171b015b.webp');
INSERT INTO `image` VALUES (148, 148, '646634ae-eb5d-4fba-b6f8-08314e514a24.jpg');
INSERT INTO `image` VALUES (149, 149, '6be8a351-1085-429d-b529-4ae740b80f0a.webp');
INSERT INTO `image` VALUES (150, 150, 'e19d231d-ec4c-4170-8209-bdf1c6d96487.webp');
INSERT INTO `image` VALUES (151, 151, 'd8f298cb-fcbb-44d5-a0a2-d24aaa8613b9.webp');
INSERT INTO `image` VALUES (152, 152, '94628d70-786e-4eb2-a9a7-8461000f383e.webp');
INSERT INTO `image` VALUES (153, 153, '2e0f2a22-c553-4ee7-be5d-9fe63da8b289.webp');
INSERT INTO `image` VALUES (154, 154, '1481434c-4f00-4c9a-b94b-e0eaef0eeb5a.webp');
INSERT INTO `image` VALUES (155, 155, '9b4f440c-5942-4101-9d0b-f7f732431c86.jpg');
INSERT INTO `image` VALUES (156, 156, '706e4754-d13c-4403-8697-47396aa9d52e.webp');
INSERT INTO `image` VALUES (157, 157, '198d5c24-3a80-4037-b47f-ea2258ab59f0.webp');
INSERT INTO `image` VALUES (158, 158, '7855be5b-3d9c-4a02-8f46-d1f3f2d847b2.jpg');
INSERT INTO `image` VALUES (159, 159, '7f8cef00-92f3-4fbe-9f90-ebf17aa8ab79.jpg');
INSERT INTO `image` VALUES (160, 160, '741bf11c-96d8-4eeb-a43e-9d3133a88bda.webp');
INSERT INTO `image` VALUES (161, 161, '45b920d7-c3cc-4389-b7cb-fff98d0bc7b2.webp');
INSERT INTO `image` VALUES (162, 162, 'b5173ba5-d883-4254-8dff-2a8e6447327a.webp');
INSERT INTO `image` VALUES (163, 163, '1884764b-5f1c-465a-aca8-e935895f7f41.webp');
INSERT INTO `image` VALUES (164, 164, '85228b1c-48d9-4fec-b1d5-a820e4833130.jpg');
INSERT INTO `image` VALUES (165, 165, 'e6e8df52-29ee-48e7-9fd2-8e3f73b581a4.webp');
INSERT INTO `image` VALUES (166, 166, '29441f51-c1c9-4f88-b76e-a49ba47de744.webp');
INSERT INTO `image` VALUES (167, 167, '2698db39-3608-40fe-8d39-0f1bc9c29b9f.jpg');
INSERT INTO `image` VALUES (168, 168, 'd04ad559-3145-4723-aae4-1abfafc481b5.webp');
INSERT INTO `image` VALUES (169, 169, 'c268050d-731c-48a4-8092-6bb413fd61c1.webp');
INSERT INTO `image` VALUES (170, 170, '1a04d056-9b49-4703-a175-4ce5a0ab1310.png');
INSERT INTO `image` VALUES (171, 171, 'fb047a1f-430f-4e61-af6a-c98bbe816a3c.jpg');
INSERT INTO `image` VALUES (172, 172, 'c8fb23fc-867d-489e-88de-49cdaaf806de.jpg');
INSERT INTO `image` VALUES (173, 173, '1a78e064-7a96-4183-b573-b3a231d820b3.jpg');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统信息主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户，外键',
  `context` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '信息内容',
  `create_at` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送信息时间',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态，0未读，1已读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (13, 8, '啦啦啦啦', '2022-04-20 18:05:40', 0);
INSERT INTO `notice` VALUES (14, 8, '可以了 交流吧 分页先不搞了', '2022-04-20 18:06:04', 0);
INSERT INTO `notice` VALUES (15, 23, '有宿舍用的小桌子吗', '2022-05-07 17:15:37', 0);
INSERT INTO `notice` VALUES (16, 23, '求一个USB台灯', '2022-05-18 23:25:55', 0);
INSERT INTO `notice` VALUES (17, 25, '老夫子，我不要三寸金莲。', '2019-03-15 13:40:45', 0);
INSERT INTO `notice` VALUES (18, 37, '求书', '2022-03-22 14:35:51', 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `order_num` bigint(25) NULL DEFAULT NULL COMMENT '订单编号',
  `order_price` float(11, 0) NULL DEFAULT NULL COMMENT '订单价格',
  `order_state` int(11) NULL DEFAULT 1 COMMENT '订单状态 1待发货 2待收货 3已完成',
  `order_information` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 11, 78, 85970353, 10, 3, '感觉很不错', '2022-04-16 05:06:41');
INSERT INTO `orders` VALUES (5, 1, 107, 70780568, 40, 1, '很喜欢', '2022-03-12 04:45:26');
INSERT INTO `orders` VALUES (6, 25, 108, 70426421, 10, 3, '看来不错', '2022-03-15 01:18:56');
INSERT INTO `orders` VALUES (7, 26, 115, 28449530, 128, 1, '我很喜欢', '2022-03-21 03:55:18');
INSERT INTO `orders` VALUES (8, 26, 116, 11362720, 216, 2, '试试看', '2022-03-21 04:43:21');
INSERT INTO `orders` VALUES (9, 25, 108, 18028926, 10, 1, '挺便宜的！', '2022-03-21 04:45:03');
INSERT INTO `orders` VALUES (10, 25, 111, 306706, 10, 1, '这本书不错！', '2022-03-21 04:45:34');
INSERT INTO `orders` VALUES (11, 1, 106, 11103946, 50, 1, '', '2022-03-16 02:21:17');
INSERT INTO `orders` VALUES (12, 1, 103, 85690668, 110, 1, '666', '2022-03-16 02:26:01');
INSERT INTO `orders` VALUES (13, 2, 1, 96086977, 130, 2, '', '2022-03-16 02:26:54');
INSERT INTO `orders` VALUES (14, 30, 2, 40575626, 1520, 1, 'q111', '2022-03-28 11:41:28');
INSERT INTO `orders` VALUES (15, 30, 115, 43817887, 128, 1, '', '2022-03-28 11:55:51');
INSERT INTO `orders` VALUES (16, 34, 118, 27383490, 999, 3, '备注备注备注', '2022-04-01 05:42:27');
INSERT INTO `orders` VALUES (17, 33, 120, 22412328, 999, 1, '', '2022-04-01 05:48:40');
INSERT INTO `orders` VALUES (18, 34, 121, 96727500, 999, 3, '', '2022-04-01 05:50:04');
INSERT INTO `orders` VALUES (19, 36, 122, 90757666, 999, 3, '备注备注备注', '2022-04-01 06:01:10');
INSERT INTO `orders` VALUES (20, 37, 135, 24941363, 50, 2, '我在9栋', '2022-03-18 03:00:12');
INSERT INTO `orders` VALUES (21, 37, 131, 7029411, 800, 1, '', '2022-03-21 10:43:47');
INSERT INTO `orders` VALUES (22, 37, 136, 93358727, 60, 2, '', '2022-03-22 09:20:30');
INSERT INTO `orders` VALUES (23, 37, 166, 21509684, 800, 1, '', '2022-03-29 10:09:25');
INSERT INTO `orders` VALUES (24, 34, 150, 50462346, 10, 1, '123123', '2022-07-20 04:29:31');
INSERT INTO `orders` VALUES (25, 41, 170, 75024948, 123, 3, '11111', '2022-07-20 04:36:55');
INSERT INTO `orders` VALUES (26, 34, 128, 86635614, 8, 1, '买手机壳', '2022-07-20 04:49:51');
INSERT INTO `orders` VALUES (27, 34, 172, 35150199, 111, 3, '买图书', '2022-07-20 04:51:21');

-- ----------------------------
-- Table structure for purse
-- ----------------------------
DROP TABLE IF EXISTS `purse`;
CREATE TABLE `purse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '钱包id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `balance` float(11, 0) UNSIGNED ZEROFILL NULL DEFAULT 00000000000 COMMENT '总钱数',
  `recharge` float(11, 0) NULL DEFAULT NULL COMMENT '充值钱数',
  `withdrawals` float(11, 0) NULL DEFAULT NULL COMMENT '提现钱数',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态 0未审核   已审核（1不通过 2通过）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purse
-- ----------------------------
INSERT INTO `purse` VALUES (1, 1, 00000000741, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (2, 2, 00000000009, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (3, 3, 00000002800, NULL, NULL, 2);
INSERT INTO `purse` VALUES (4, 4, 00000007745, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (5, 5, 00000000052, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (6, 11, 00000001005, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (13, 18, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (14, 19, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (15, 20, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (16, 21, 00000001000, NULL, NULL, 2);
INSERT INTO `purse` VALUES (17, 22, 00000000500, NULL, NULL, 2);
INSERT INTO `purse` VALUES (18, 23, 00000001141, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (19, 24, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (20, 25, 00000000970, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (21, 26, 00000000156, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (22, 27, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (23, 28, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (24, 29, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (25, 30, 00000008352, NULL, NULL, 2);
INSERT INTO `purse` VALUES (26, 31, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (27, 32, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (28, 33, 00000000999, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (29, 34, 00000098217, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (30, 35, 00000000999, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (31, 36, 00000009000, NULL, NULL, 2);
INSERT INTO `purse` VALUES (32, 37, 00000198290, NULL, NULL, 2);
INSERT INTO `purse` VALUES (33, 38, 00000000500, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (34, 39, 00000010000, NULL, NULL, 2);
INSERT INTO `purse` VALUES (35, 40, 00000000000, NULL, NULL, NULL);
INSERT INTO `purse` VALUES (36, 41, 00000111099, NULL, NULL, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录使用的手机号',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `QQ` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '即时通讯',
  `create_at` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `goods_num` int(11) NULL DEFAULT 0 COMMENT '发布过的物品数量',
  `power` int(10) UNSIGNED ZEROFILL NULL DEFAULT 0000000100 COMMENT '信用分，普通用户默认为100',
  `last_login` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近一次登陆时间',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '账号是否冻结，默认0未冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (29, '17863276391', 'amrengp', 'E10ADC3949BA59ABBE56E057F20F883E', '1111', '2021-03-18 20:29', 1, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (31, '15866947792', 'user1', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2021-03-28 19:38', 0, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (32, '15866947792', 'kkk', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2021-03-30 09:46', 0, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (33, '15866947792', 'zhangsan', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2021-04-01 17:40', 2, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (34, '15866947792', 'lisi', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2021-04-01 17:41', 4, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (35, '15866947792', '张三三', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2021-04-01 17:58', 1, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (36, '15866947792', '李四', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2021-04-01 17:59', 0, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (38, '12345636758', '2', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2022-03-18 13:57', 13, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (39, '16383456742', '3', 'E10ADC3949BA59ABBE56E057F20F883E', '254622158', '2022-03-18 14:12', 11, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (40, '12345678909', '4', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2022-03-22 09:16', 0, 0000000100, NULL, 1);
INSERT INTO `user` VALUES (41, '18987878989', 'wangwu', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, '2022-07-20 16:27', 1, 0000000100, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
