/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50538
Source Host           : 192.168.196.8:9626
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-11-29 16:11:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `df_info`
-- ----------------------------
DROP TABLE IF EXISTS `df_info`;
CREATE TABLE `df_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `dish` varchar(500) DEFAULT NULL,
  `end_time` varchar(50) CHARACTER SET latin1 DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_info
-- ----------------------------
INSERT INTO `df_info` VALUES ('1', '1', '<a href=\"http://r.ele.me/sjxyykc\">木头盒子套餐</a>', '<b>9 AM</b>');
INSERT INTO `df_info` VALUES ('2', '2', '周一 <br/> 荤 1罐味黄花鱼 2鸡腿香菇 3水煮肉片 4孜然鸡片 <br/> 素 5尖椒干豆腐 6家常菜花 7炝炒豆芽 8醋溜白菜片<br/> <br/> 周二 <br/> 荤 1奥尔良炸鸡 2烩鱼丸 3红烧肉素鸡 4香辣鸡丁 <br/> 素 5酱茄条 6木须圆葱 7软炸鲜蘑 8甘蓝干豆腐<br/> <br/> 周三 <br/> 荤 1软炸里脊 2红烧狮子头 3糖醋鸡丁 4鲜蘑辣子鸡 <br/> 素 5辣白菜土豆片 6香焖黄豆 7白菜炒粉 8地三鲜<br/> <br/> 周四 <br/> 荤 1木须肉 2红烧鸡块 3 梅菜烧肉 4辣炒鸡叉 <br/> 素 5醋溜土豆丝 6炝炒圆白菜 7 椒盐茄条 8麻婆豆腐<br/> <br/> 周五 <br/> 荤 1鱼香鸡丝 2 溜肉段 3烧鲭鱼 4 照烧鸡块 <br/> 素 5酸菜炒粉 6 木须柿子 7白菜冻豆腐 8干锅薯条<br/>', '<b>9:30 AM</b>');
INSERT INTO `df_info` VALUES ('3', '3', '<img style=\"width:800px\" src=\"/public/images/df/301.jpg\"><br/><img style=\"width:800px\" src=\"/public/images/df/302.jpg\">', '<b>9 AM</b>');

-- ----------------------------
-- Table structure for `df_order`
-- ----------------------------
DROP TABLE IF EXISTS `df_order`;
CREATE TABLE `df_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `target_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order
-- ----------------------------
INSERT INTO `df_order` VALUES ('81', '2', '333', '444', '2015-06-10');
INSERT INTO `df_order` VALUES ('85', '2', '333', '444', '2015-06-10');
INSERT INTO `df_order` VALUES ('86', '2', '333', '444', '2015-06-10');
INSERT INTO `df_order` VALUES ('95', '2', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('96', '3', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('97', '3', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('98', '3', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('99', '3', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('100', '5', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('101', '5', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('102', '5', '木头盒子套餐', '木头盒子套餐', '2015-06-10');
INSERT INTO `df_order` VALUES ('103', '2', '', '', '2015-06-10');
INSERT INTO `df_order` VALUES ('122', '1', '1', '1', '2015-06-10');
INSERT INTO `df_order` VALUES ('123', '1', '1', '1', '2015-06-10');
INSERT INTO `df_order` VALUES ('124', '1', '1', '1', '2015-06-10');
INSERT INTO `df_order` VALUES ('125', '1', '1', '1', '2015-06-10');
INSERT INTO `df_order` VALUES ('126', '1', '1', '1', '2015-06-10');
INSERT INTO `df_order` VALUES ('127', '1', '赵洪生', '照烧鸡肉饭 ', '2015-06-11');
INSERT INTO `df_order` VALUES ('128', '1', '文欢', '干锅杏鲍菇饭 ', '2015-06-11');
INSERT INTO `df_order` VALUES ('129', '1', '邓文新', '碳烤上腿饭 ', '2015-06-11');
INSERT INTO `df_order` VALUES ('130', '1', '任贺', '脆皮香鸡*2', '2015-06-11');
INSERT INTO `df_order` VALUES ('131', '1', '王立刚', '干锅杏鲍菇饭 ', '2015-06-11');
INSERT INTO `df_order` VALUES ('132', '1', '徐国金', '咖喱茄子双拼饭 ', '2015-06-11');
INSERT INTO `df_order` VALUES ('133', '1', '朱丹', '田园煎鸡饭', '2015-06-11');
INSERT INTO `df_order` VALUES ('134', '1', '阎佳婧', '干锅杏鲍菇饭', '2015-06-11');
INSERT INTO `df_order` VALUES ('135', '1', '安康', '田园煎鸡饭', '2015-06-11');
INSERT INTO `df_order` VALUES ('137', '1', '任贺', '铁板烤肉饭*2', '2015-06-12');
INSERT INTO `df_order` VALUES ('138', '1', '文欢', '干煸芸豆饭 ', '2015-06-12');
INSERT INTO `df_order` VALUES ('139', '1', '徐国金', '烤肉茄子饭 ', '2015-06-12');
INSERT INTO `df_order` VALUES ('140', '1', '邓文新', '烤肉茄子饭 ', '2015-06-12');
INSERT INTO `df_order` VALUES ('141', '1', '朱丹', '烤肉茄子饭', '2015-06-12');
INSERT INTO `df_order` VALUES ('142', '1', '闫永', '干锅杏鲍菇', '2015-06-15');
INSERT INTO `df_order` VALUES ('144', '1', '文欢', '干锅杏鲍菇', '2015-06-15');
INSERT INTO `df_order` VALUES ('145', '1', '邓文新', '烤肉茄子饭 ', '2015-06-15');
INSERT INTO `df_order` VALUES ('146', '1', '王立刚', '烤肉茄子饭 ', '2015-06-15');
INSERT INTO `df_order` VALUES ('147', '2', '任贺', '3368', '2015-06-15');
INSERT INTO `df_order` VALUES ('148', '2', '戴维', '3457', '2015-06-15');
INSERT INTO `df_order` VALUES ('150', '1', '徐国金', '黑胡椒烤鸡肉饭 ', '2015-06-15');
INSERT INTO `df_order` VALUES ('151', '1', '安康', '黑胡椒烤鸡肉饭', '2015-06-15');
INSERT INTO `df_order` VALUES ('152', '2', '赵洪生', '1,3,7,8', '2015-06-15');
INSERT INTO `df_order` VALUES ('153', '2', '趙洪生', '1,2,6,7', '2015-06-16');
INSERT INTO `df_order` VALUES ('154', '1', '闫永', '干煸芸豆', '2015-06-16');
INSERT INTO `df_order` VALUES ('155', '2', '邓文新', '2,3,5,7', '2015-06-16');
INSERT INTO `df_order` VALUES ('156', '1', '徐国金', '碳烤上腿饭 ', '2015-06-16');
INSERT INTO `df_order` VALUES ('157', '2', '高深', '随机', '2015-06-16');
INSERT INTO `df_order` VALUES ('158', '2', '戴维', '2,3,5,7', '2015-06-16');
INSERT INTO `df_order` VALUES ('159', '2', '任贺', '2,3,5,7', '2015-06-16');
INSERT INTO `df_order` VALUES ('160', '2', '文欢', '1,2,5,8', '2015-06-16');
INSERT INTO `df_order` VALUES ('161', '2', '徐国金', '2458', '2015-06-17');
INSERT INTO `df_order` VALUES ('163', '2', '任贺', '1467', '2015-06-17');
INSERT INTO `df_order` VALUES ('164', '2', '邓文新', '1,3,6,8', '2015-06-17');
INSERT INTO `df_order` VALUES ('165', '2', '王立刚', '2478', '2015-06-17');
INSERT INTO `df_order` VALUES ('166', '2', '赵洪生', '2,4,5,7', '2015-06-17');
INSERT INTO `df_order` VALUES ('167', '2', '文欢', '1，3，5，7', '2015-06-17');
INSERT INTO `df_order` VALUES ('168', '2', '戴维', '2467', '2015-06-17');
INSERT INTO `df_order` VALUES ('170', '2', '王立刚', '2,3,5,8', '2015-06-17');
INSERT INTO `df_order` VALUES ('171', '2', '杨立峰', '1、3、5、7', '2015-06-17');
INSERT INTO `df_order` VALUES ('172', '2', '王立刚', '2,3,5,8', '2015-06-18');
INSERT INTO `df_order` VALUES ('173', '2', '徐国金', '3468', '2015-06-18');
INSERT INTO `df_order` VALUES ('174', '2', '邓文新', '1478', '2015-06-18');
INSERT INTO `df_order` VALUES ('175', '2', ' 杨立峰', '	1，3，5，7', '2015-06-18');
INSERT INTO `df_order` VALUES ('176', '2', '赵洪生', '3,4,6,7', '2015-06-18');
INSERT INTO `df_order` VALUES ('177', '2', '高深', '3458', '2015-06-18');
INSERT INTO `df_order` VALUES ('178', '2', '戴维', '2 3 6 7', '2015-06-18');
INSERT INTO `df_order` VALUES ('179', '2', '邓文新', '1478', '2015-06-19');
INSERT INTO `df_order` VALUES ('180', '2', '戴维', '3,4,6,7', '2015-06-19');
INSERT INTO `df_order` VALUES ('181', '2', '赵洪生', '3,4,7,8', '2015-06-19');
INSERT INTO `df_order` VALUES ('182', '2', '任贺', '1456', '2015-06-19');
INSERT INTO `df_order` VALUES ('183', '2', '王立刚', '1478', '2015-06-19');
INSERT INTO `df_order` VALUES ('184', '1', '闫永', '干煸芸豆', '2015-06-19');
INSERT INTO `df_order` VALUES ('185', '2', '尹荐', '1456', '2015-06-19');
INSERT INTO `df_order` VALUES ('186', '1', '刘冷', '田园煎鸡饭', '2015-06-19');
INSERT INTO `df_order` VALUES ('187', '2', '高深', '1，2，5，6', '2015-06-19');
INSERT INTO `df_order` VALUES ('192', '2', '任贺', '1478', '2015-06-23');
INSERT INTO `df_order` VALUES ('193', '2', '戴维', '2,3,5,7', '2015-06-23');
INSERT INTO `df_order` VALUES ('194', '2', '王立刚', '1458', '2015-06-23');
INSERT INTO `df_order` VALUES ('195', '2', '邓文新', '1257', '2015-06-23');
INSERT INTO `df_order` VALUES ('196', '2', '文欢', '1,3,7,8', '2015-06-23');
INSERT INTO `df_order` VALUES ('197', '2', '赵洪生', '2,3,7,7', '2015-06-24');
INSERT INTO `df_order` VALUES ('198', '2', '邓文新', '3478', '2015-06-24');
INSERT INTO `df_order` VALUES ('201', '2', '戴维', '3 4 7 7', '2015-06-24');
INSERT INTO `df_order` VALUES ('202', '2', '王立刚', '2478', '2015-06-24');
INSERT INTO `df_order` VALUES ('203', '2', '文欢', '2，3，6，8', '2015-06-24');
INSERT INTO `df_order` VALUES ('204', '2', '徐国金', '2,3,7,7', '2015-06-24');
INSERT INTO `df_order` VALUES ('205', '2', '高深', '1278', '2015-06-24');
INSERT INTO `df_order` VALUES ('207', '2', '任贺', '3378', '2015-06-24');
INSERT INTO `df_order` VALUES ('208', '2', '安康', '1，2，5，8', '2015-06-24');
INSERT INTO `df_order` VALUES ('209', '2', '赵洪生', '3,4,7,8', '2015-06-25');
INSERT INTO `df_order` VALUES ('211', '2', '戴维', '1,2,5,8', '2015-06-25');
INSERT INTO `df_order` VALUES ('213', '2', '任贺', '1,4,6,8', '2015-06-25');
INSERT INTO `df_order` VALUES ('214', '2', '徐国金', '2456', '2015-06-25');
INSERT INTO `df_order` VALUES ('215', '2', '邓文新', '1456', '2015-06-25');
INSERT INTO `df_order` VALUES ('216', '2', '文欢', '2,4,6,8', '2015-06-25');
INSERT INTO `df_order` VALUES ('217', '2', '王立刚', '1456', '2015-06-25');
INSERT INTO `df_order` VALUES ('218', '2', '闫永', '2468', '2015-06-25');
INSERT INTO `df_order` VALUES ('219', '2', '任贺', '3,4,6,7', '2015-06-26');
INSERT INTO `df_order` VALUES ('220', '2', '赵洪生', '1,2,7,8', '2015-06-26');
INSERT INTO `df_order` VALUES ('221', '2', '邓文新', '3478', '2015-06-26');
INSERT INTO `df_order` VALUES ('222', '2', '王立刚', '1,3,6,8', '2015-06-26');
INSERT INTO `df_order` VALUES ('223', '2', '戴维', '2,3,6,8', '2015-06-26');
INSERT INTO `df_order` VALUES ('224', '2', '文欢', '1，2，6，8', '2015-06-26');
INSERT INTO `df_order` VALUES ('225', '2', '林林', '2,4,5,6', '2015-06-26');
INSERT INTO `df_order` VALUES ('226', '2', '高深', '1356', '2015-06-26');
INSERT INTO `df_order` VALUES ('228', '2', '高深', '3468', '2015-06-26');
INSERT INTO `df_order` VALUES ('229', '2', '高深', '2367', '2015-06-26');
INSERT INTO `df_order` VALUES ('231', '5', 'z', '123', '2015-06-26');
INSERT INTO `df_order` VALUES ('232', '5', 'z', '123', '2015-06-26');
INSERT INTO `df_order` VALUES ('238', '2', '任贺', '1，4，7，8', '2015-06-29');
INSERT INTO `df_order` VALUES ('239', '2', '赵洪生', '1,3,6,7', '2015-06-29');
INSERT INTO `df_order` VALUES ('240', '2', '邓文新', '1257', '2015-06-29');
INSERT INTO `df_order` VALUES ('241', '2', '戴维', '1,3,5,7', '2015-06-29');
INSERT INTO `df_order` VALUES ('242', '2', '文欢', '1,3,7,8', '2015-06-29');
INSERT INTO `df_order` VALUES ('243', '2', '王立刚', '1488', '2015-06-29');
INSERT INTO `df_order` VALUES ('244', '2', '安康', '1258', '2015-06-29');
INSERT INTO `df_order` VALUES ('245', '2', '戴维', '1,2,5,6', '2015-06-30');
INSERT INTO `df_order` VALUES ('246', '2', '任贺', '1,2,6,8', '2015-06-30');
INSERT INTO `df_order` VALUES ('247', '2', '徐国金', '1357', '2015-06-30');
INSERT INTO `df_order` VALUES ('248', '2', '高深', '2,3,6,7', '2015-06-30');
INSERT INTO `df_order` VALUES ('251', '3', '赵洪生', '葱油面', '2015-07-01');
INSERT INTO `df_order` VALUES ('252', '2', '邓文新', '2357', '2015-07-01');
INSERT INTO `df_order` VALUES ('253', '2', '文欢', '2，3，5，6', '2015-07-01');
INSERT INTO `df_order` VALUES ('254', '2', '赵洪生', '1,3,7,7', '2015-07-01');
INSERT INTO `df_order` VALUES ('255', '2', '戴维', '2,3,7,8', '2015-07-01');
INSERT INTO `df_order` VALUES ('256', '3', '安康', '鱼香肉丝炒面', '2015-07-01');
INSERT INTO `df_order` VALUES ('257', '2', '任贺', '2,3,6,7', '2015-07-01');
INSERT INTO `df_order` VALUES ('258', '3', '安康', '鱼香肉丝炒面', '2015-07-02');
INSERT INTO `df_order` VALUES ('259', '3', '赵洪生', '葱油面', '2015-07-02');
INSERT INTO `df_order` VALUES ('260', '3', '王立刚', '肉末茄子', '2015-07-02');
INSERT INTO `df_order` VALUES ('261', '3', '徐国金', '木须柿子', '2015-07-02');
INSERT INTO `df_order` VALUES ('262', '3', '林林', '木须柿子', '2015-07-02');
INSERT INTO `df_order` VALUES ('263', '3', '任贺', '木须柿子', '2015-07-02');
INSERT INTO `df_order` VALUES ('264', '3', '邓文新', '葱油面', '2015-07-02');
INSERT INTO `df_order` VALUES ('265', '3', '文欢', '鱼香肉丝', '2015-07-02');
INSERT INTO `df_order` VALUES ('266', '3', '戴维', '照烧鸡腿', '2015-07-02');
INSERT INTO `df_order` VALUES ('267', '2', '邓文新', '3468', '2015-07-03');
INSERT INTO `df_order` VALUES ('268', '2', '任贺', '2,3,6,8', '2015-07-03');
INSERT INTO `df_order` VALUES ('269', '3', '王立刚', '溜肉段', '2015-07-03');
INSERT INTO `df_order` VALUES ('270', '3', '安康', '牛肉麻辣凉拌面', '2015-07-03');
INSERT INTO `df_order` VALUES ('271', '3', '徐国金', '酱小土豆块', '2015-07-03');
INSERT INTO `df_order` VALUES ('273', '2', '赵洪生', '2,3,7,8', '2015-07-03');
INSERT INTO `df_order` VALUES ('274', '2', '戴维', '1,3,6,8', '2015-07-03');
INSERT INTO `df_order` VALUES ('275', '3', '赵洪生', '木须柿子', '2015-07-03');
INSERT INTO `df_order` VALUES ('276', '3', '文欢', '杆扁熨斗', '2015-07-03');
INSERT INTO `df_order` VALUES ('277', '3', '赵洪生', '炒面', '2015-07-06');
INSERT INTO `df_order` VALUES ('278', '2', '赵洪生', '2，3,6,7', '2015-07-06');
INSERT INTO `df_order` VALUES ('279', '2', '文欢', '1,3,7,8', '2015-07-06');
INSERT INTO `df_order` VALUES ('281', '2', '邓文新', '2457', '2015-07-06');
INSERT INTO `df_order` VALUES ('282', '3', '徐国金', '酱炒笨鸡蛋', '2015-07-06');
INSERT INTO `df_order` VALUES ('283', '3', '王立刚', '肉末茄子', '2015-07-06');
INSERT INTO `df_order` VALUES ('284', '3', '安康', '麻婆豆腐盖饭', '2015-07-06');
INSERT INTO `df_order` VALUES ('285', '2', '戴维', '3,4,5,7', '2015-07-06');
INSERT INTO `df_order` VALUES ('286', '2', '王立刚', '1478', '2015-07-06');
INSERT INTO `df_order` VALUES ('287', '2', '邓文新', '1278', '2015-07-07');
INSERT INTO `df_order` VALUES ('288', '2', '徐国金', '1，3，6，7', '2015-07-07');
INSERT INTO `df_order` VALUES ('290', '2', '文欢', '1,4,6,8', '2015-07-07');
INSERT INTO `df_order` VALUES ('291', '2', '戴维', '2,4,6,7', '2015-07-07');
INSERT INTO `df_order` VALUES ('292', '2', '赵洪生', '2,3,6,7', '2015-07-07');
INSERT INTO `df_order` VALUES ('293', '2', '任贺', '2，3,6,7', '2015-07-08');
INSERT INTO `df_order` VALUES ('294', '2', '戴维', '2,3,7,8', '2015-07-08');
INSERT INTO `df_order` VALUES ('296', '2', '蔡永超', '1,3,7,8', '2015-07-08');
INSERT INTO `df_order` VALUES ('297', '2', '程子龙', '1，2，7,8', '2015-07-08');
INSERT INTO `df_order` VALUES ('298', '3', '赵洪生', '木须柿子', '2015-07-08');
INSERT INTO `df_order` VALUES ('299', '2', '赵洪生', '1,3,7,7', '2015-07-08');
INSERT INTO `df_order` VALUES ('300', '3', '文欢', '炒饼', '2015-07-08');
INSERT INTO `df_order` VALUES ('301', '2', '文欢', '1，3，5，7', '2015-07-08');
INSERT INTO `df_order` VALUES ('302', '2', '王立刚', '3478', '2015-07-08');
INSERT INTO `df_order` VALUES ('303', '3', '王立刚', '培根土豆泥', '2015-07-09');
INSERT INTO `df_order` VALUES ('304', '2', '王立刚', '145,6', '2015-07-09');
INSERT INTO `df_order` VALUES ('305', '2', '徐国金', '2，3，5，8', '2015-07-09');
INSERT INTO `df_order` VALUES ('306', '2', '程子龙', '145,6', '2015-07-09');
INSERT INTO `df_order` VALUES ('307', '3', '安康', '麻婆豆腐盖饭', '2015-07-09');
INSERT INTO `df_order` VALUES ('308', '2', '安康', '1，4,5,6', '2015-07-09');
INSERT INTO `df_order` VALUES ('309', '2', '蔡永超', '2.3.6.8', '2015-07-09');
INSERT INTO `df_order` VALUES ('310', '2', '戴维', '1,2,5,8', '2015-07-09');
INSERT INTO `df_order` VALUES ('311', '3', '赵洪生', '木须柿子', '2015-07-09');
INSERT INTO `df_order` VALUES ('312', '2', '赵洪生', '2,4,7,8', '2015-07-09');
INSERT INTO `df_order` VALUES ('313', '2', '戴维', '2,3,6,7', '2015-07-10');
INSERT INTO `df_order` VALUES ('314', '2', '程子龙', '1356', '2015-07-10');
INSERT INTO `df_order` VALUES ('315', '2', '吕兆东', '1468', '2015-07-10');
INSERT INTO `df_order` VALUES ('316', '2', '王长远', '1358', '2015-07-10');
INSERT INTO `df_order` VALUES ('317', '2', '蔡永超', '1.3.5.7', '2015-07-10');
INSERT INTO `df_order` VALUES ('318', '2', '王立刚', '1,368', '2015-07-10');
INSERT INTO `df_order` VALUES ('319', '2', '蔡永超', '1.2.6.8', '2015-07-13');
INSERT INTO `df_order` VALUES ('320', '3', '王立刚', '肉末茄子', '2015-07-13');
INSERT INTO `df_order` VALUES ('321', '2', '王立刚', '1478', '2015-07-13');
INSERT INTO `df_order` VALUES ('322', '2', '文欢', '1,3,7,8', '2015-07-13');
INSERT INTO `df_order` VALUES ('323', '2', '戴维', '2,3,5,8', '2015-07-13');
INSERT INTO `df_order` VALUES ('325', '2', '赵洪生', '1,3,5,6', '2015-07-13');
INSERT INTO `df_order` VALUES ('326', '2', '任贺', '1,2,5,8', '2015-07-14');
INSERT INTO `df_order` VALUES ('327', '2', '蔡永超', '1.4.5.6', '2015-07-14');
INSERT INTO `df_order` VALUES ('328', '2', '王立刚', '1357', '2015-07-14');
INSERT INTO `df_order` VALUES ('329', '2', '戴维', '2,4,6,7', '2015-07-14');
INSERT INTO `df_order` VALUES ('330', '2', '文欢', '1，4，6，8', '2015-07-14');
INSERT INTO `df_order` VALUES ('331', '2', '徐国金', '2367', '2015-07-14');
INSERT INTO `df_order` VALUES ('332', '2', '程子龙', '1258', '2015-07-15');
INSERT INTO `df_order` VALUES ('333', '2', '蔡永超', '1.3.5.7', '2015-07-15');
INSERT INTO `df_order` VALUES ('334', '2', '安康', '1,3,7,8', '2015-07-15');
INSERT INTO `df_order` VALUES ('335', '2', '赵洪生', '1,3,5,8', '2015-07-15');
INSERT INTO `df_order` VALUES ('336', '2', '王立刚', '2478', '2015-07-15');
INSERT INTO `df_order` VALUES ('337', '2', '戴维', '1,3,7,8', '2015-07-15');
INSERT INTO `df_order` VALUES ('338', '2', '高深', '随机4份（不要一样的）', '2015-07-15');
INSERT INTO `df_order` VALUES ('339', '2', '蔡永超', '2.4.6.8', '2015-07-16');
INSERT INTO `df_order` VALUES ('340', '2', '程子龙', '1.4.6.8', '2015-07-16');
INSERT INTO `df_order` VALUES ('341', '2', '文欢', '3,4,5,6', '2015-07-16');
INSERT INTO `df_order` VALUES ('342', '2', '王立刚', '1456', '2015-07-16');
INSERT INTO `df_order` VALUES ('343', '2', '任贺', '2,3,6,7', '2015-07-16');
INSERT INTO `df_order` VALUES ('344', '2', '安康', '1,3,5,6', '2015-07-16');
INSERT INTO `df_order` VALUES ('345', '2', '赵洪生', '2,4,5,8', '2015-07-16');
INSERT INTO `df_order` VALUES ('346', '2', '戴维', '1,2,5,6', '2015-07-16');
INSERT INTO `df_order` VALUES ('347', '2', '徐国金', '2358', '2015-07-16');
INSERT INTO `df_order` VALUES ('348', '2', '程子龙', '1,4,5,6', '2015-07-17');
INSERT INTO `df_order` VALUES ('349', '2', '蔡永超', '1.3.5.8', '2015-07-17');
INSERT INTO `df_order` VALUES ('350', '2', '王立刚', '1368', '2015-07-17');
INSERT INTO `df_order` VALUES ('351', '2', '文欢', '2,4,6,8', '2015-07-17');
INSERT INTO `df_order` VALUES ('352', '2', '戴维', '3,4,6,8', '2015-07-17');
INSERT INTO `df_order` VALUES ('353', '2', '赵洪生', '2,3,5,6', '2015-07-20');
INSERT INTO `df_order` VALUES ('354', '2', '程子龙', '1,3,5,8', '2015-07-20');
INSERT INTO `df_order` VALUES ('355', '2', '蔡永超', '2.4.6.8', '2015-07-20');
INSERT INTO `df_order` VALUES ('356', '2', '王立刚', '1478', '2015-07-20');
INSERT INTO `df_order` VALUES ('357', '2', '戴维', '1,3,5,7', '2015-07-20');
INSERT INTO `df_order` VALUES ('358', '2', '文欢', '2,3,6,7', '2015-07-20');
INSERT INTO `df_order` VALUES ('359', '2', '徐国金 ', '2358', '2015-07-20');
INSERT INTO `df_order` VALUES ('360', '2', '任贺', '1,3,5,6', '2015-07-21');
INSERT INTO `df_order` VALUES ('361', '2', '戴维', '2,4,6,7', '2015-07-21');
INSERT INTO `df_order` VALUES ('362', '2', '邵勇', '1，3，6，7', '2015-07-21');
INSERT INTO `df_order` VALUES ('363', '2', '赵洪生', '2,3,5,7', '2015-07-21');
INSERT INTO `df_order` VALUES ('364', '2', '龙雨', '2,4,6,7', '2015-07-21');
INSERT INTO `df_order` VALUES ('365', '2', '蔡永超', '1.3.7.8', '2015-07-22');
INSERT INTO `df_order` VALUES ('366', '2', '程子龙', '1,2,7,8', '2015-07-22');
INSERT INTO `df_order` VALUES ('367', '2', '王立刚', '3478', '2015-07-22');
INSERT INTO `df_order` VALUES ('368', '2', '戴维', '2,3,7,8', '2015-07-22');
INSERT INTO `df_order` VALUES ('369', '2', '赵洪生', '1,3,7,7', '2015-07-22');
INSERT INTO `df_order` VALUES ('371', '2', '徐国金', '2357', '2015-07-22');
INSERT INTO `df_order` VALUES ('372', '2', '文欢', '1,3,5,7', '2015-07-22');
INSERT INTO `df_order` VALUES ('373', '2', '程子龙', '1,4,5,6', '2015-07-23');
INSERT INTO `df_order` VALUES ('374', '2', '蔡永超', '2.4.5.8', '2015-07-23');
INSERT INTO `df_order` VALUES ('375', '2', '徐国金', '2358', '2015-07-23');
INSERT INTO `df_order` VALUES ('376', '2', '王立刚', '3456', '2015-07-23');
INSERT INTO `df_order` VALUES ('377', '2', '戴维', '1,2,6,8', '2015-07-23');
INSERT INTO `df_order` VALUES ('378', '2', '邵勇', '2368', '2015-07-23');
INSERT INTO `df_order` VALUES ('379', '2', '任贺', '1,2,6,8', '2015-07-23');
INSERT INTO `df_order` VALUES ('380', '2', '赵洪生', '1,4,5,8', '2015-07-23');
INSERT INTO `df_order` VALUES ('381', '2', '文欢', '2,4,5,6', '2015-07-23');
INSERT INTO `df_order` VALUES ('382', '2', '高深', '1368', '2015-07-23');
INSERT INTO `df_order` VALUES ('383', '2', '蔡永超', '1.3.5.7', '2015-07-24');
INSERT INTO `df_order` VALUES ('384', '2', '程子龙', '1,4,6,7', '2015-07-24');
INSERT INTO `df_order` VALUES ('385', '2', '邵勇', '2.3.6.8', '2015-07-24');
INSERT INTO `df_order` VALUES ('386', '2', '龙雨', '3468', '2015-07-24');
INSERT INTO `df_order` VALUES ('387', '2', '戴维', '3,4,6,8', '2015-07-24');
INSERT INTO `df_order` VALUES ('388', '2', '徐国金', '1278', '2015-07-24');
INSERT INTO `df_order` VALUES ('389', '2', '愤青王', '2,3,6,8', '2015-07-24');
INSERT INTO `df_order` VALUES ('390', '2', '文欢', '2,4,6,8', '2015-07-24');
INSERT INTO `df_order` VALUES ('391', '2', '徐国金', '2356', '2015-07-27');
INSERT INTO `df_order` VALUES ('392', '2', '程子龙', '1,3,5,8', '2015-07-27');
INSERT INTO `df_order` VALUES ('393', '2', '王立刚', '2478', '2015-07-27');
INSERT INTO `df_order` VALUES ('394', '2', '蔡永超', '1.2.6.8', '2015-07-27');
INSERT INTO `df_order` VALUES ('395', '2', '安康', '1258', '2015-07-27');
INSERT INTO `df_order` VALUES ('396', '2', '姚成', '3,4,6,8', '2015-07-27');
INSERT INTO `df_order` VALUES ('397', '2', '龙雨', '1258', '2015-07-27');
INSERT INTO `df_order` VALUES ('398', '2', '文欢', '1,2,7,8', '2015-07-27');
INSERT INTO `df_order` VALUES ('399', '2', '邵勇', '3,4,5,8', '2015-07-27');
INSERT INTO `df_order` VALUES ('400', '2', '戴维', '1,3,5,8', '2015-07-27');
INSERT INTO `df_order` VALUES ('401', '2', '赵洪生', '2,3,6,7', '2015-07-27');
INSERT INTO `df_order` VALUES ('402', '2', '龙雨', '3467', '2015-07-28');
INSERT INTO `df_order` VALUES ('403', '2', '邵勇', '2，4，6，7', '2015-07-28');
INSERT INTO `df_order` VALUES ('404', '2', '蔡永超', '1.4.5.7', '2015-07-28');
INSERT INTO `df_order` VALUES ('405', '2', '王立刚', '1257', '2015-07-28');
INSERT INTO `df_order` VALUES ('406', '2', '赵洪生', '2,3,5,6', '2015-07-28');
INSERT INTO `df_order` VALUES ('407', '2', '文欢', '1,4,6,8', '2015-07-28');
INSERT INTO `df_order` VALUES ('408', '2', '戴维', '2,4,6,7', '2015-07-28');
INSERT INTO `df_order` VALUES ('409', '2', '姚成', '3,4,5,6', '2015-07-28');
INSERT INTO `df_order` VALUES ('410', '2', '杨立峰', '2,3,6,7', '2015-07-28');
INSERT INTO `df_order` VALUES ('411', '2', '程子龙', '1,4,5,7', '2015-07-28');
INSERT INTO `df_order` VALUES ('413', '2', '蔡永超', '1.3.5.7', '2015-07-29');
INSERT INTO `df_order` VALUES ('414', '2', '赵洪生', '1,3,7,7', '2015-07-29');
INSERT INTO `df_order` VALUES ('415', '2', '戴维', '1,3,7,8', '2015-07-29');
INSERT INTO `df_order` VALUES ('416', '2', '徐国金', '2377', '2015-07-29');
INSERT INTO `df_order` VALUES ('417', '2', '王立刚', '1,3,7,8', '2015-07-29');
INSERT INTO `df_order` VALUES ('418', '2', '邵勇', '2368', '2015-07-29');
INSERT INTO `df_order` VALUES ('419', '2', '文欢', '1,3,5,7', '2015-07-29');
INSERT INTO `df_order` VALUES ('420', '2', '高深', '1357', '2015-07-29');
INSERT INTO `df_order` VALUES ('421', '2', '蔡永超', '2.3.6.8', '2015-07-30');
INSERT INTO `df_order` VALUES ('422', '2', '徐国金', '1258', '2015-07-30');
INSERT INTO `df_order` VALUES ('423', '2', '王立刚', '1456', '2015-07-30');
INSERT INTO `df_order` VALUES ('424', '2', '文欢', '2,3,5,6', '2015-07-30');
INSERT INTO `df_order` VALUES ('425', '2', '赵洪生', '1,4,5,8', '2015-07-30');
INSERT INTO `df_order` VALUES ('426', '2', '戴维', '1,2,6,8', '2015-07-30');
INSERT INTO `df_order` VALUES ('427', '2', '王哥', '3,4,5,6', '2015-07-30');
INSERT INTO `df_order` VALUES ('428', '2', '蔡永超', '1.3.5.7', '2015-07-31');
INSERT INTO `df_order` VALUES ('429', '2', '王立刚', '1368', '2015-07-31');
INSERT INTO `df_order` VALUES ('430', '2', '龙雨', '3,4,6,8', '2015-07-31');
INSERT INTO `df_order` VALUES ('431', '2', '邵勇', '1468', '2015-07-31');
INSERT INTO `df_order` VALUES ('432', '2', '徐国金', '2378', '2015-07-31');
INSERT INTO `df_order` VALUES ('433', '2', '姚成', '1,4,6,8', '2015-07-31');
INSERT INTO `df_order` VALUES ('434', '2', '程子龙', '1,4,6,7', '2015-07-31');
INSERT INTO `df_order` VALUES ('435', '2', '安康', '1358', '2015-07-31');
INSERT INTO `df_order` VALUES ('436', '2', '戴维', ',1,4,6,8', '2015-07-31');
INSERT INTO `df_order` VALUES ('437', '2', '文欢', '2,4,6,8', '2015-07-31');
INSERT INTO `df_order` VALUES ('438', '2', '高深', '1358', '2015-07-31');
INSERT INTO `df_order` VALUES ('439', '2', '尹荐', '1368', '2015-07-31');
INSERT INTO `df_order` VALUES ('440', '2', '赵洪生', '2,3,7,8', '2015-08-03');
INSERT INTO `df_order` VALUES ('443', '2', '徐国金', '3478', '2015-08-03');
INSERT INTO `df_order` VALUES ('444', '2', '蔡永超', '1.2.6.7', '2015-08-03');
INSERT INTO `df_order` VALUES ('445', '2', '姚成', '1,2,6,8', '2015-08-03');
INSERT INTO `df_order` VALUES ('446', '2', '戴维', '2,3,5,6', '2015-08-03');
INSERT INTO `df_order` VALUES ('447', '2', '安康', '1467', '2015-08-03');
INSERT INTO `df_order` VALUES ('448', '2', '文欢', '2,4,6,8\r\n', '2015-08-03');
INSERT INTO `df_order` VALUES ('450', '2', '高深', '2368', '2015-08-03');
INSERT INTO `df_order` VALUES ('452', '2', '邵勇', '1378', '2015-08-03');
INSERT INTO `df_order` VALUES ('453', '2', '龙雨', '3,4,5,6', '2015-08-03');
INSERT INTO `df_order` VALUES ('454', '2', '王立刚', '1278', '2015-08-03');
INSERT INTO `df_order` VALUES ('455', '2', '杨立峰', '3-4-6-7\r\n', '2015-08-03');
INSERT INTO `df_order` VALUES ('456', '2', '蔡永超', '3.4.5.6', '2015-08-04');
INSERT INTO `df_order` VALUES ('457', '2', '赵洪生', '2,3,5,6', '2015-08-04');
INSERT INTO `df_order` VALUES ('458', '2', '程子龙', '1,2,5,7', '2015-08-04');
INSERT INTO `df_order` VALUES ('459', '2', '徐国金', '2368', '2015-08-04');
INSERT INTO `df_order` VALUES ('460', '2', '文欢', '1,4,6,7', '2015-08-04');
INSERT INTO `df_order` VALUES ('461', '2', '邵勇', '3456', '2015-08-04');
INSERT INTO `df_order` VALUES ('462', '2', '戴维', '3,4,6,7', '2015-08-04');
INSERT INTO `df_order` VALUES ('463', '2', '姚成', '2,4,6,7', '2015-08-04');
INSERT INTO `df_order` VALUES ('464', '2', '王立刚', '1367', '2015-08-04');
INSERT INTO `df_order` VALUES ('465', '2', '杨立峰', '2-3-7-8', '2015-08-04');
INSERT INTO `df_order` VALUES ('466', '2', '安康', '2367', '2015-08-04');
INSERT INTO `df_order` VALUES ('467', '2', '龙雨', '3,4,6,7', '2015-08-04');
INSERT INTO `df_order` VALUES ('468', '2', '戴维', '1,2,5,6', '2015-08-05');
INSERT INTO `df_order` VALUES ('469', '2', '程子龙', '1,2,5,6', '2015-08-05');
INSERT INTO `df_order` VALUES ('470', '2', '龙雨', '1,4,5,6', '2015-08-05');
INSERT INTO `df_order` VALUES ('471', '2', '蔡永超', '1.3.6.8', '2015-08-05');
INSERT INTO `df_order` VALUES ('472', '2', '姚成', '1,4,6,7', '2015-08-05');
INSERT INTO `df_order` VALUES ('473', '2', '邵勇', '2456', '2015-08-05');
INSERT INTO `df_order` VALUES ('474', '2', '杨立峰', '1,2,5,8', '2015-08-05');
INSERT INTO `df_order` VALUES ('475', '2', '文欢', '2,4,6,8', '2015-08-05');
INSERT INTO `df_order` VALUES ('476', '2', '尹荐', '1,2,5,6', '2015-08-05');
INSERT INTO `df_order` VALUES ('477', '2', '高深', '2,4，5,6', '2015-08-05');
INSERT INTO `df_order` VALUES ('478', '2', '任贺', '2,4,5,6', '2015-08-05');
INSERT INTO `df_order` VALUES ('479', '2', '徐国金', '1256', '2015-08-05');
INSERT INTO `df_order` VALUES ('480', '2', '安康', '2457', '2015-08-06');
INSERT INTO `df_order` VALUES ('481', '2', '蔡永超', '1.4.6.7', '2015-08-06');
INSERT INTO `df_order` VALUES ('482', '2', '程子龙', '2,3,5,8', '2015-08-06');
INSERT INTO `df_order` VALUES ('483', '2', '杨立峰', '1-3-6-8', '2015-08-06');
INSERT INTO `df_order` VALUES ('484', '2', '尹荐', '4,4,6,6', '2015-08-06');
INSERT INTO `df_order` VALUES ('485', '2', '邵勇', '3456', '2015-08-06');
INSERT INTO `df_order` VALUES ('486', '2', '戴维', '2，4,5,6', '2015-08-06');
INSERT INTO `df_order` VALUES ('487', '2', '徐国金', '3456', '2015-08-06');
INSERT INTO `df_order` VALUES ('488', '2', '文欢', '1,3,5,7', '2015-08-06');
INSERT INTO `df_order` VALUES ('489', '2', '赵洪生', '3,4,6,7', '2015-08-06');
INSERT INTO `df_order` VALUES ('490', '2', '王立刚', '1258', '2015-08-06');
INSERT INTO `df_order` VALUES ('491', '2', '王磊', '1256', '2015-08-06');
INSERT INTO `df_order` VALUES ('492', '2', '王立刚', '1268', '2015-08-07');
INSERT INTO `df_order` VALUES ('493', '2', '姚成', '1,2,6,7', '2015-08-07');
INSERT INTO `df_order` VALUES ('494', '2', '安康', '1,2,5,6', '2015-08-07');
INSERT INTO `df_order` VALUES ('495', '2', '龙雨', '1,4,6,8', '2015-08-07');
INSERT INTO `df_order` VALUES ('496', '2', '文欢', '1,3,6,8', '2015-08-07');
INSERT INTO `df_order` VALUES ('497', '2', '邵勇', '2356', '2015-08-07');
INSERT INTO `df_order` VALUES ('498', '2', '蔡永超', '1.3.5.6', '2015-08-07');
INSERT INTO `df_order` VALUES ('499', '2', '徐国金', '2368', '2015-08-07');
INSERT INTO `df_order` VALUES ('500', '2', '赵洪生', '1,2,6,8', '2015-08-07');
INSERT INTO `df_order` VALUES ('501', '2', '杨立峰', '1-2-7-8', '2015-08-07');
INSERT INTO `df_order` VALUES ('502', '2', '尹荐', '1258', '2015-08-07');
INSERT INTO `df_order` VALUES ('503', '2', '王磊', '1278', '2015-08-07');
INSERT INTO `df_order` VALUES ('504', '2', '徐国金', '3478', '2015-08-10');
INSERT INTO `df_order` VALUES ('505', '2', '戴维', '3,4,6,7', '2015-08-10');
INSERT INTO `df_order` VALUES ('506', '2', '文欢', '2,4,6,7', '2015-08-10');
INSERT INTO `df_order` VALUES ('507', '2', '安康', '1477', '2015-08-10');
INSERT INTO `df_order` VALUES ('508', '2', '王立刚', '1278', '2015-08-10');
INSERT INTO `df_order` VALUES ('509', '2', '龙雨', '2,3,5,6', '2015-08-10');
INSERT INTO `df_order` VALUES ('510', '2', '邵勇', '1378', '2015-08-10');
INSERT INTO `df_order` VALUES ('511', '2', '蔡永超', '2.4.6.7', '2015-08-10');
INSERT INTO `df_order` VALUES ('512', '2', '赵洪生', '2,3,7,8', '2015-08-10');
INSERT INTO `df_order` VALUES ('513', '2', '姚成', '1,4,6,7', '2015-08-10');
INSERT INTO `df_order` VALUES ('514', '2', '王磊', '1456', '2015-08-10');
INSERT INTO `df_order` VALUES ('515', '2', '尹荐', '2,3,5,7', '2015-08-10');
INSERT INTO `df_order` VALUES ('516', '2', '赵洪生', '2,3,5,6', '2015-08-11');
INSERT INTO `df_order` VALUES ('517', '2', '戴维', '1,3,6,7', '2015-08-11');
INSERT INTO `df_order` VALUES ('518', '2', '安康', '2367', '2015-08-11');
INSERT INTO `df_order` VALUES ('519', '2', '文欢', '1,4,6,7', '2015-08-11');
INSERT INTO `df_order` VALUES ('520', '2', '龙雨', '3,4,5,7', '2015-08-11');
INSERT INTO `df_order` VALUES ('521', '2', '蔡永超', '3.4.5.6', '2015-08-11');
INSERT INTO `df_order` VALUES ('522', '2', '王磊', '3478', '2015-08-11');
INSERT INTO `df_order` VALUES ('523', '2', '尹荐', '2367', '2015-08-11');
INSERT INTO `df_order` VALUES ('524', '2', '邵勇', '3478', '2015-08-11');
INSERT INTO `df_order` VALUES ('525', '2', '姚成', '1,4,5,7', '2015-08-11');
INSERT INTO `df_order` VALUES ('526', '2', '徐国金', '2366', '2015-08-11');
INSERT INTO `df_order` VALUES ('527', '2', '王立刚', '1267', '2015-08-11');
INSERT INTO `df_order` VALUES ('528', '2', '邵勇', '2456', '2015-08-12');
INSERT INTO `df_order` VALUES ('530', '2', '戴维', '1,2,5,6', '2015-08-12');
INSERT INTO `df_order` VALUES ('531', '2', '徐国金', '1258', '2015-08-12');
INSERT INTO `df_order` VALUES ('532', '2', '王立刚', '2255', '2015-08-12');
INSERT INTO `df_order` VALUES ('533', '2', '蔡永超', '1.3.5.6', '2015-08-12');
INSERT INTO `df_order` VALUES ('534', '2', '王磊', '2457', '2015-08-12');
INSERT INTO `df_order` VALUES ('535', '2', '龙雨', '1,4,5,6', '2015-08-12');
INSERT INTO `df_order` VALUES ('536', '2', '赵洪生', '2,3,5,8', '2015-08-12');
INSERT INTO `df_order` VALUES ('537', '2', '姚成', '3,4,5,6', '2015-08-12');
INSERT INTO `df_order` VALUES ('538', '2', '尹荐', '1256', '2015-08-12');
INSERT INTO `df_order` VALUES ('539', '2', '马超', '1,3,5,7', '2015-08-12');
INSERT INTO `df_order` VALUES ('540', '2', '任贺', '2,4,5,6', '2015-08-12');
INSERT INTO `df_order` VALUES ('541', '2', '蔡永超', '1.4.6.7', '2015-08-13');
INSERT INTO `df_order` VALUES ('542', '2', '戴维', '1，2,5,6', '2015-08-13');
INSERT INTO `df_order` VALUES ('543', '2', '王磊', '3456', '2015-08-13');
INSERT INTO `df_order` VALUES ('544', '2', '安康', '3455', '2015-08-13');
INSERT INTO `df_order` VALUES ('545', '2', '赵洪生', '3,4,6,7', '2015-08-13');
INSERT INTO `df_order` VALUES ('546', '2', '文欢', '1,3,6,7', '2015-08-13');
INSERT INTO `df_order` VALUES ('547', '2', '王立刚', '1258', '2015-08-13');
INSERT INTO `df_order` VALUES ('548', '2', '邵勇', '3456', '2015-08-13');
INSERT INTO `df_order` VALUES ('550', '2', '姚成', '1,4,5,7', '2015-08-13');
INSERT INTO `df_order` VALUES ('551', '2', '徐国金', '3456', '2015-08-13');
INSERT INTO `df_order` VALUES ('552', '2', '邵勇', '1267', '2015-08-14');
INSERT INTO `df_order` VALUES ('553', '2', '王磊', '1278', '2015-08-14');
INSERT INTO `df_order` VALUES ('554', '2', '赵洪生', '1,3,6,7', '2015-08-14');
INSERT INTO `df_order` VALUES ('555', '2', '蔡永超', '3.4.5.6', '2015-08-14');
INSERT INTO `df_order` VALUES ('556', '2', '戴维', '1,2,6,8', '2015-08-14');
INSERT INTO `df_order` VALUES ('557', '2', '徐国金', '2368', '2015-08-14');
INSERT INTO `df_order` VALUES ('558', '2', '文欢', '1,3,6,7', '2015-08-14');
INSERT INTO `df_order` VALUES ('559', '2', '王立刚', '1,2,6,8', '2015-08-14');
INSERT INTO `df_order` VALUES ('560', '2', '姚成', '1,2,6,7', '2015-08-14');
INSERT INTO `df_order` VALUES ('561', '2', '龙雨', '3,4,5,6', '2015-08-17');
INSERT INTO `df_order` VALUES ('562', '2', '戴维', '2,4,6,7', '2015-08-17');
INSERT INTO `df_order` VALUES ('563', '2', '赵洪生', '2,3,5,7', '2015-08-17');
INSERT INTO `df_order` VALUES ('564', '2', '文欢', '2,4,6,7', '2015-08-17');
INSERT INTO `df_order` VALUES ('565', '2', '邵勇', '1378', '2015-08-17');
INSERT INTO `df_order` VALUES ('566', '2', '姚成', '1,4,6,7', '2015-08-17');
INSERT INTO `df_order` VALUES ('567', '2', '安康', '1467', '2015-08-17');
INSERT INTO `df_order` VALUES ('568', '2', '徐国金', '3467', '2015-08-17');
INSERT INTO `df_order` VALUES ('569', '2', '高深', '2368', '2015-08-17');
INSERT INTO `df_order` VALUES ('570', '2', '王磊', '1368', '2015-08-17');
INSERT INTO `df_order` VALUES ('571', '2', '赵洪生', '2,3,5,6', '2015-08-18');
INSERT INTO `df_order` VALUES ('572', '2', '王立刚', '1267', '2015-08-18');
INSERT INTO `df_order` VALUES ('573', '2', '龙雨', '3,4,5,7', '2015-08-18');
INSERT INTO `df_order` VALUES ('574', '2', '尹荐', '2367', '2015-08-18');
INSERT INTO `df_order` VALUES ('575', '2', '徐国金', '2368', '2015-08-18');
INSERT INTO `df_order` VALUES ('576', '2', '姚成', '1,4,6,7', '2015-08-18');
INSERT INTO `df_order` VALUES ('577', '2', '邵勇', '3478', '2015-08-18');
INSERT INTO `df_order` VALUES ('578', '2', '戴维', '2,3,5,6', '2015-08-18');
INSERT INTO `df_order` VALUES ('579', '2', '文欢', '1,4,6,7', '2015-08-18');
INSERT INTO `df_order` VALUES ('580', '2', '王磊', '2478', '2015-08-18');
INSERT INTO `df_order` VALUES ('581', '2', '安康', '2367', '2015-08-18');
INSERT INTO `df_order` VALUES ('582', '2', '徐国金', '1256', '2015-08-19');
INSERT INTO `df_order` VALUES ('583', '2', '王立刚', '2255', '2015-08-19');
INSERT INTO `df_order` VALUES ('584', '2', '邵勇', '2456', '2015-08-19');
INSERT INTO `df_order` VALUES ('585', '2', '戴维', '1,4,5，6', '2015-08-19');
INSERT INTO `df_order` VALUES ('586', '2', '赵洪生', '2,3,5,8', '2015-08-19');
INSERT INTO `df_order` VALUES ('587', '2', '文欢', '2,3,6,8', '2015-08-19');
INSERT INTO `df_order` VALUES ('588', '2', '龙雨', '1,4,5,6', '2015-08-19');
INSERT INTO `df_order` VALUES ('589', '2', '姚成', '1,4,5,6', '2015-08-19');
INSERT INTO `df_order` VALUES ('590', '2', '王磊', '3456', '2015-08-19');
INSERT INTO `df_order` VALUES ('591', '2', '王立刚', '1256', '2015-08-20');
INSERT INTO `df_order` VALUES ('592', '2', '邵勇', '3456', '2015-08-20');
INSERT INTO `df_order` VALUES ('593', '2', '赵洪生', '2,3,6,7', '2015-08-20');
INSERT INTO `df_order` VALUES ('594', '2', '姚成', '1,2,5,7', '2015-08-20');
INSERT INTO `df_order` VALUES ('595', '2', '王磊', '1258', '2015-08-20');
INSERT INTO `df_order` VALUES ('596', '2', '戴维', '2，3,6,8', '2015-08-20');
INSERT INTO `df_order` VALUES ('597', '2', '文欢', '1,3,6,7', '2015-08-20');
INSERT INTO `df_order` VALUES ('598', '2', '徐国金', '3456', '2015-08-20');
INSERT INTO `df_order` VALUES ('599', '2', '王立刚', '1368', '2015-08-21');
INSERT INTO `df_order` VALUES ('600', '2', '文欢', '1,3,5,6', '2015-08-21');
INSERT INTO `df_order` VALUES ('601', '2', '戴维', '1,3,7,8', '2015-08-21');
INSERT INTO `df_order` VALUES ('602', '2', '姚成', '1,2,6,7', '2015-08-21');
INSERT INTO `df_order` VALUES ('603', '2', '徐国金', '2368', '2015-08-21');
INSERT INTO `df_order` VALUES ('604', '2', '邵勇', '1278', '2015-08-21');
INSERT INTO `df_order` VALUES ('605', '2', '赵洪生', '1,2,6,7', '2015-08-21');
INSERT INTO `df_order` VALUES ('606', '2', '安康', '1477', '2015-08-24');
INSERT INTO `df_order` VALUES ('607', '2', '赵洪生', '3,4,6,7', '2015-08-24');
INSERT INTO `df_order` VALUES ('608', '2', '龙雨', '3,4,5,6', '2015-08-24');
INSERT INTO `df_order` VALUES ('609', '2', '文欢', '2,4,6,7', '2015-08-24');
INSERT INTO `df_order` VALUES ('610', '2', '王磊', '1267', '2015-08-24');
INSERT INTO `df_order` VALUES ('611', '2', '戴维', '2，3,6,7', '2015-08-24');
INSERT INTO `df_order` VALUES ('612', '2', '徐国金', '3467', '2015-08-24');
INSERT INTO `df_order` VALUES ('613', '2', '姚成', '1,4,6,7', '2015-08-24');
INSERT INTO `df_order` VALUES ('614', '2', '安康', '2367', '2015-08-25');
INSERT INTO `df_order` VALUES ('615', '2', '赵洪生', '2,3,5,6', '2015-08-25');
INSERT INTO `df_order` VALUES ('616', '2', '龙雨', '3457', '2015-08-25');
INSERT INTO `df_order` VALUES ('617', '2', '戴维', '2，4,6,7', '2015-08-25');
INSERT INTO `df_order` VALUES ('618', '2', '尹荐', '2367', '2015-08-25');
INSERT INTO `df_order` VALUES ('619', '2', '徐国金', '2368', '2015-08-25');
INSERT INTO `df_order` VALUES ('620', '2', '王磊', '3457', '2015-08-25');
INSERT INTO `df_order` VALUES ('621', '2', '邵勇', '3478', '2015-08-25');
INSERT INTO `df_order` VALUES ('622', '2', '任贺', '3,3,6,8', '2015-08-25');
INSERT INTO `df_order` VALUES ('623', '2', '姚成', '2,4,6,7', '2015-08-25');
INSERT INTO `df_order` VALUES ('624', '2', '文欢', '1,4,6,8', '2015-08-25');
INSERT INTO `df_order` VALUES ('625', '2', '赵洪生', '1,3,5,8', '2015-08-26');
INSERT INTO `df_order` VALUES ('626', '2', '安康', '2355', '2015-08-26');
INSERT INTO `df_order` VALUES ('627', '2', '任贺', '2,4,5,6', '2015-08-26');
INSERT INTO `df_order` VALUES ('628', '2', '文欢', '2,3,6,8', '2015-08-26');
INSERT INTO `df_order` VALUES ('629', '2', '戴维', '1,2,5,6', '2015-08-26');
INSERT INTO `df_order` VALUES ('630', '2', '姚成', '1,4,5,6', '2015-08-26');
INSERT INTO `df_order` VALUES ('631', '2', '邵勇', '2456', '2015-08-26');
INSERT INTO `df_order` VALUES ('633', '2', '徐国金', '1256', '2015-08-26');
INSERT INTO `df_order` VALUES ('634', '2', '王磊', '1468', '2015-08-26');
INSERT INTO `df_order` VALUES ('635', '2', '赵洪生', '2,3,6,7', '2015-08-27');
INSERT INTO `df_order` VALUES ('636', '2', '徐国金', '3456', '2015-08-27');
INSERT INTO `df_order` VALUES ('637', '2', '戴维', '2,4,5,8', '2015-08-27');
INSERT INTO `df_order` VALUES ('638', '2', '龙雨', '1,2,5,6', '2015-08-27');
INSERT INTO `df_order` VALUES ('639', '2', '邵勇', '3456', '2015-08-27');
INSERT INTO `df_order` VALUES ('640', '2', '安康', '3457', '2015-08-27');
INSERT INTO `df_order` VALUES ('641', '2', '姚成', '1,4,5,7', '2015-08-27');
INSERT INTO `df_order` VALUES ('642', '2', '赵洪生', '1,2,6,8', '2015-08-28');
INSERT INTO `df_order` VALUES ('643', '2', '安康', '1256', '2015-08-28');
INSERT INTO `df_order` VALUES ('644', '2', '戴维', '3,4,6,8', '2015-08-28');
INSERT INTO `df_order` VALUES ('645', '2', '徐国金', '1268', '2015-08-28');
INSERT INTO `df_order` VALUES ('646', '2', '王磊', '1358', '2015-08-28');
INSERT INTO `df_order` VALUES ('647', '2', '文欢', '1,3,5,6', '2015-08-28');
INSERT INTO `df_order` VALUES ('648', '2', '安康', '1467', '2015-08-31');
INSERT INTO `df_order` VALUES ('649', '2', '戴维', '2，3,6,7', '2015-08-31');
INSERT INTO `df_order` VALUES ('650', '2', '龙雨', '3,3,6.7', '2015-08-31');
INSERT INTO `df_order` VALUES ('651', '2', '邵勇', '1368', '2015-08-31');
INSERT INTO `df_order` VALUES ('652', '2', '赵洪生', '2,3,6,7', '2015-09-01');
INSERT INTO `df_order` VALUES ('653', '2', '安康', '2367', '2015-09-01');
INSERT INTO `df_order` VALUES ('654', '2', '龙雨', '3,4,7,7', '2015-09-01');
INSERT INTO `df_order` VALUES ('655', '2', '任贺', '3,3,6,8', '2015-09-01');
INSERT INTO `df_order` VALUES ('656', '2', '徐国金', '2367', '2015-09-01');
INSERT INTO `df_order` VALUES ('657', '2', '邵勇', '3478', '2015-09-01');
INSERT INTO `df_order` VALUES ('658', '2', '戴维', '2,4,6,8', '2015-09-01');
INSERT INTO `df_order` VALUES ('659', '2', '姚成', '2,4,6,7', '2015-09-01');
INSERT INTO `df_order` VALUES ('660', '2', '王磊', '3457', '2015-09-01');
INSERT INTO `df_order` VALUES ('661', '2', '徐国金', '1258', '2015-09-02');
INSERT INTO `df_order` VALUES ('662', '2', '安康', '2,3,5,5', '2015-09-02');
INSERT INTO `df_order` VALUES ('663', '2', '任贺', '2,4,6,8', '2015-09-02');
INSERT INTO `df_order` VALUES ('664', '2', '邵勇', '2456', '2015-09-02');
INSERT INTO `df_order` VALUES ('665', '2', '戴维', '2,3,5,5', '2015-09-02');
INSERT INTO `df_order` VALUES ('666', '2', '姚成', '1,4,5,6', '2015-09-02');
INSERT INTO `df_order` VALUES ('667', '2', '高深', '1256', '2015-09-02');
INSERT INTO `df_order` VALUES ('668', '2', '王磊', '3456', '2015-09-02');
INSERT INTO `df_order` VALUES ('669', '2', '王立刚', '1255', '2015-09-02');
INSERT INTO `df_order` VALUES ('670', '2', '赵洪生', '1,2,6,7', '2015-09-06');
INSERT INTO `df_order` VALUES ('671', '2', '安康', '1277', '2015-09-06');
INSERT INTO `df_order` VALUES ('672', '2', '安康', '1267', '2015-09-07');
INSERT INTO `df_order` VALUES ('673', '2', '徐国金', '2368', '2015-09-11');
INSERT INTO `df_order` VALUES ('674', '2', '赵洪生', '3,4,5,6', '2015-09-11');
INSERT INTO `df_order` VALUES ('675', '2', '安康', '2378', '2015-09-11');
INSERT INTO `df_order` VALUES ('676', '2', '尹荐', '2,3,6,6', '2015-09-11');
INSERT INTO `df_order` VALUES ('677', '2', '戴维', '2,3,6,7', '2015-09-11');
INSERT INTO `df_order` VALUES ('678', '2', '邵勇', '2478', '2015-09-14');
INSERT INTO `df_order` VALUES ('679', '2', '龙雨', '2,2,6,8', '2015-09-14');
INSERT INTO `df_order` VALUES ('681', '2', '安康', '3478', '2015-09-14');
INSERT INTO `df_order` VALUES ('682', '2', '王磊', '3478', '2015-09-14');
INSERT INTO `df_order` VALUES ('683', '2', '戴维', '1,2,7,8', '2015-09-14');
INSERT INTO `df_order` VALUES ('684', '2', '尹荐', '1468', '2015-09-14');
INSERT INTO `df_order` VALUES ('685', '2', '李冶', '1256 and 3478', '2015-09-14');
INSERT INTO `df_order` VALUES ('686', '2', '徐国金', '1457', '2015-09-14');
INSERT INTO `df_order` VALUES ('687', '2', '赵洪生', '1,4,5,8', '2015-09-14');
INSERT INTO `df_order` VALUES ('688', '2', '徐国金', '1367', '2015-09-15');
INSERT INTO `df_order` VALUES ('689', '2', '安康', '1456', '2015-09-15');
INSERT INTO `df_order` VALUES ('690', '2', '文欢', '1,2,5,6', '2015-09-15');
INSERT INTO `df_order` VALUES ('691', '2', '戴维', '2,3,6,8', '2015-09-15');
INSERT INTO `df_order` VALUES ('692', '2', '邵勇', '1468', '2015-09-15');
INSERT INTO `df_order` VALUES ('693', '2', '尹荐', '2468', '2015-09-15');
INSERT INTO `df_order` VALUES ('694', '2', '王磊', '3457', '2015-09-15');
INSERT INTO `df_order` VALUES ('695', '2', '赵洪生', '2,3,6,7', '2015-09-15');
INSERT INTO `df_order` VALUES ('696', '2', '李冶', '1256， 3478', '2015-09-15');
INSERT INTO `df_order` VALUES ('697', '2', '徐国金', '1268', '2015-09-16');
INSERT INTO `df_order` VALUES ('698', '2', '文欢', '2,4,5,6', '2015-09-16');
INSERT INTO `df_order` VALUES ('699', '2', '王磊', '2358', '2015-09-16');
INSERT INTO `df_order` VALUES ('700', '2', '任贺', '2267', '2015-09-16');
INSERT INTO `df_order` VALUES ('701', '2', '安康', '1458', '2015-09-16');
INSERT INTO `df_order` VALUES ('702', '2', '戴维', '2,4,6,8', '2015-09-16');
INSERT INTO `df_order` VALUES ('703', '2', '赵洪生', '1,2,5,6', '2015-09-16');
INSERT INTO `df_order` VALUES ('704', '2', '徐国金', '1368', '2015-09-17');
INSERT INTO `df_order` VALUES ('705', '2', '赵洪生', '1,2,5,7', '2015-09-17');
INSERT INTO `df_order` VALUES ('706', '2', '王磊', '1268', '2015-09-17');
INSERT INTO `df_order` VALUES ('707', '2', '安康', '2358', '2015-09-17');
INSERT INTO `df_order` VALUES ('708', '2', '文欢', '1,2,7,8', '2015-09-17');
INSERT INTO `df_order` VALUES ('709', '2', '尹荐', '1257', '2015-09-17');
INSERT INTO `df_order` VALUES ('710', '2', '任贺', '1368', '2015-09-17');
INSERT INTO `df_order` VALUES ('711', '2', '戴维', '2,3,5,8', '2015-09-17');
INSERT INTO `df_order` VALUES ('712', '2', '尚小彬', '5678', '2015-09-17');
INSERT INTO `df_order` VALUES ('713', '2', '徐国金', '2468', '2015-09-18');
INSERT INTO `df_order` VALUES ('714', '2', '文欢', '2,3,5,6', '2015-09-18');
INSERT INTO `df_order` VALUES ('715', '2', '安康', '2378', '2015-09-18');
INSERT INTO `df_order` VALUES ('716', '2', '任贺', '2468', '2015-09-18');
INSERT INTO `df_order` VALUES ('717', '2', '戴维', '3,4,6,7', '2015-09-18');
INSERT INTO `df_order` VALUES ('718', '2', '赵洪生', '3,4,5,7', '2015-09-18');
INSERT INTO `df_order` VALUES ('719', '2', '王磊', '2367', '2015-09-18');
INSERT INTO `df_order` VALUES ('720', '2', '徐国金', '1268', '2015-09-23');
INSERT INTO `df_order` VALUES ('721', '2', '文欢', '2,4,5,6', '2015-09-23');
INSERT INTO `df_order` VALUES ('722', '2', '王磊', '2358', '2015-09-23');
INSERT INTO `df_order` VALUES ('723', '2', '赵洪生', '1,2,5,6', '2015-09-23');
INSERT INTO `df_order` VALUES ('724', '2', '安康', '1258', '2015-09-23');
INSERT INTO `df_order` VALUES ('725', '2', ' 戴维', '1,2,6,8', '2015-09-23');
INSERT INTO `df_order` VALUES ('726', '2', '邵勇', '1258', '2015-09-23');
INSERT INTO `df_order` VALUES ('727', '2', '赵洪生', '1,2,5,7', '2015-09-24');
INSERT INTO `df_order` VALUES ('728', '2', '任贺', '3,4,7,8', '2015-09-24');
INSERT INTO `df_order` VALUES ('729', '2', '文欢', '2,3,7,8', '2015-09-24');
INSERT INTO `df_order` VALUES ('730', '2', '王磊', '3458', '2015-09-24');
INSERT INTO `df_order` VALUES ('731', '2', '戴维', '2,3,5,8', '2015-09-24');
INSERT INTO `df_order` VALUES ('732', '2', '安康', '2358', '2015-09-24');
INSERT INTO `df_order` VALUES ('733', '2', '尹荐', '2458', '2015-09-24');
INSERT INTO `df_order` VALUES ('734', '2', '戴维', '2,3,6,6', '2015-09-25');
INSERT INTO `df_order` VALUES ('735', '2', '安康', '2378', '2015-09-25');
INSERT INTO `df_order` VALUES ('736', '2', '邵勇', '2478', '2015-09-25');
INSERT INTO `df_order` VALUES ('737', '2', '王磊', '1257', '2015-09-25');
INSERT INTO `df_order` VALUES ('738', '2', '赵洪生', '1,4,5,8', '2015-09-28');
INSERT INTO `df_order` VALUES ('739', '2', '文欢', '2,3,5,7', '2015-09-28');
INSERT INTO `df_order` VALUES ('740', '2', '王磊', '2478', '2015-09-28');
INSERT INTO `df_order` VALUES ('741', '2', '邵勇', '2478', '2015-09-28');
INSERT INTO `df_order` VALUES ('742', '2', '龙雨', '2,2,7,8', '2015-09-28');
INSERT INTO `df_order` VALUES ('743', '2', '戴维', '2,4,7,8', '2015-09-28');
INSERT INTO `df_order` VALUES ('744', '2', '任贺', '1,4,5,8', '2015-09-28');
INSERT INTO `df_order` VALUES ('745', '2', '安康', '3478', '2015-09-28');
INSERT INTO `df_order` VALUES ('746', '2', '赵洪生', '2,3,6,7', '2015-09-29');
INSERT INTO `df_order` VALUES ('747', '2', '戴维', '1,3,6,7', '2015-09-29');
INSERT INTO `df_order` VALUES ('748', '2', '王磊', '1456', '2015-09-29');
INSERT INTO `df_order` VALUES ('749', '2', '文欢', '2,3,6,8', '2015-09-29');
INSERT INTO `df_order` VALUES ('750', '2', '赵洪生', '1,2,5,6', '2015-09-30');
INSERT INTO `df_order` VALUES ('751', '2', '王磊', '3478', '2015-09-30');
INSERT INTO `df_order` VALUES ('752', '2', '徐国金', '1268', '2015-09-30');
INSERT INTO `df_order` VALUES ('753', '2', '戴维', '1,2,6,8', '2015-09-30');
INSERT INTO `df_order` VALUES ('754', '2', '文欢', '2,3,5,6', '2015-09-30');
INSERT INTO `df_order` VALUES ('755', '2', '安康', '1258', '2015-09-30');
INSERT INTO `df_order` VALUES ('756', '2', '邵勇', '1258', '2015-09-30');
INSERT INTO `df_order` VALUES ('757', '2', '邵勇', '2358', '2015-10-08');
INSERT INTO `df_order` VALUES ('758', '2', '任贺', '3,4,7,8', '2015-10-08');
INSERT INTO `df_order` VALUES ('760', '2', '赵洪生', '1,2,5,7', '2015-10-08');
INSERT INTO `df_order` VALUES ('761', '2', '文欢', '2,3,7,8', '2015-10-08');
INSERT INTO `df_order` VALUES ('762', '2', '王磊', '2468', '2015-10-08');
INSERT INTO `df_order` VALUES ('763', '2', '戴维', '2,3,5,7', '2015-10-08');
INSERT INTO `df_order` VALUES ('764', '2', '邵勇', '2468', '2015-10-09');
INSERT INTO `df_order` VALUES ('765', '2', '任贺', '3456', '2015-10-09');
INSERT INTO `df_order` VALUES ('766', '2', '赵洪生', '3,4,5,7', '2015-10-09');
INSERT INTO `df_order` VALUES ('767', '2', '赵洪生', '1,4,5,8', '2015-10-12');
INSERT INTO `df_order` VALUES ('768', '2', '邵勇', '2478', '2015-10-12');
INSERT INTO `df_order` VALUES ('769', '2', '龙雨', '2,2,6,7', '2015-10-12');
INSERT INTO `df_order` VALUES ('770', '2', '文欢', '1,2,5,7', '2015-10-12');
INSERT INTO `df_order` VALUES ('771', '2', '戴维', '1,4,7,8', '2015-10-12');
INSERT INTO `df_order` VALUES ('772', '2', 'wanglei', '1256', '2015-10-12');
INSERT INTO `df_order` VALUES ('773', '2', '王磊', '3456', '2015-10-13');
INSERT INTO `df_order` VALUES ('774', '2', '赵洪生', '2,3,5,6', '2015-10-13');
INSERT INTO `df_order` VALUES ('775', '2', '戴维', '2,3,6,7', '2015-10-13');
INSERT INTO `df_order` VALUES ('776', '2', '许鸣', '2356', '2015-10-13');
INSERT INTO `df_order` VALUES ('777', '2', '邵勇', '3468', '2015-10-13');
INSERT INTO `df_order` VALUES ('778', '2', '慈凯', '2,3,5,6', '2015-10-13');
INSERT INTO `df_order` VALUES ('779', '2', '王磊', '1258', '2015-10-14');
INSERT INTO `df_order` VALUES ('780', '2', '慈凯', '1,4,6,8', '2015-10-14');
INSERT INTO `df_order` VALUES ('781', '2', '赵洪生', '1,2,5,6', '2015-10-14');
INSERT INTO `df_order` VALUES ('782', '2', '任贺', '2267', '2015-10-14');
INSERT INTO `df_order` VALUES ('783', '2', '戴维', '2,4,6,8', '2015-10-14');
INSERT INTO `df_order` VALUES ('784', '2', '尚小彬', '2568', '2015-10-14');
INSERT INTO `df_order` VALUES ('785', '2', '文欢', '2,4,5,6', '2015-10-14');
INSERT INTO `df_order` VALUES ('786', '2', '纪昕阳', '1258', '2015-10-14');
INSERT INTO `df_order` VALUES ('787', '2', '许鸣', '2357', '2015-10-14');
INSERT INTO `df_order` VALUES ('789', '2', '邵勇', '1258', '2015-10-14');
INSERT INTO `df_order` VALUES ('793', '2', '高深', '2356', '2015-10-14');
INSERT INTO `df_order` VALUES ('795', '2', '文欢', '2,3,7,8', '2015-10-15');
INSERT INTO `df_order` VALUES ('796', '2', '戴维', '3,4,5,8', '2015-10-15');
INSERT INTO `df_order` VALUES ('797', '2', '纪昕阳', '2358', '2015-10-15');
INSERT INTO `df_order` VALUES ('798', '2', '赵洪生', '1,2,5,7', '2015-10-15');
INSERT INTO `df_order` VALUES ('799', '2', '慈凯', '2,3,5,6', '2015-10-15');
INSERT INTO `df_order` VALUES ('800', '2', '尚小彬', '3678', '2015-10-15');
INSERT INTO `df_order` VALUES ('801', '2', '邵勇', '2358', '2015-10-15');
INSERT INTO `df_order` VALUES ('802', '2', '王磊', '3456', '2015-10-15');
INSERT INTO `df_order` VALUES ('803', '2', '王磊', '1257', '2015-10-16');
INSERT INTO `df_order` VALUES ('804', '2', '戴维', '3,4,6,7', '2015-10-16');
INSERT INTO `df_order` VALUES ('805', '2', '邵勇', '2478', '2015-10-16');
INSERT INTO `df_order` VALUES ('806', '2', '尹荐', '3456', '2015-10-16');
INSERT INTO `df_order` VALUES ('807', '2', '纪昕阳', '1,2,5,7', '2015-10-16');
INSERT INTO `df_order` VALUES ('808', '2', '赵洪生', '3,4,5,7', '2015-10-16');
INSERT INTO `df_order` VALUES ('809', '2', '尚小彬', '4567', '2015-10-16');
INSERT INTO `df_order` VALUES ('810', '2', '赵洪生', '1,4,5,8', '2015-10-19');
INSERT INTO `df_order` VALUES ('811', '2', '慈凯', '1,4,6,8', '2015-10-19');
INSERT INTO `df_order` VALUES ('812', '2', '戴维', '1,2,7,8', '2015-10-19');
INSERT INTO `df_order` VALUES ('813', '2', '纪昕阳', '3,4,5,7', '2015-10-19');
INSERT INTO `df_order` VALUES ('814', '2', '尚小彬', '5678', '2015-10-19');
INSERT INTO `df_order` VALUES ('815', '2', '许鸣', '2368', '2015-10-19');
INSERT INTO `df_order` VALUES ('816', '2', '邵勇', '2478', '2015-10-19');
INSERT INTO `df_order` VALUES ('817', '2', '赵洪生', '1,4,7,8', '2015-10-20');
INSERT INTO `df_order` VALUES ('818', '2', '邵勇', '2468', '2015-10-20');
INSERT INTO `df_order` VALUES ('819', '2', '慈凯', '2,4,5,8', '2015-10-20');
INSERT INTO `df_order` VALUES ('820', '2', '戴维', '1,4,6,8', '2015-10-20');
INSERT INTO `df_order` VALUES ('821', '2', '王磊', '1378', '2015-10-20');
INSERT INTO `df_order` VALUES ('822', '2', '尚小彬', '5678', '2015-10-20');
INSERT INTO `df_order` VALUES ('823', '2', '纪昕阳', '2,3,7,8', '2015-10-20');
INSERT INTO `df_order` VALUES ('824', '2', '徐国金', '2456', '2015-10-20');
INSERT INTO `df_order` VALUES ('825', '2', '徐国金', '1257', '2015-10-21');
INSERT INTO `df_order` VALUES ('826', '2', '慈凯', '1,2,5,7', '2015-10-21');
INSERT INTO `df_order` VALUES ('827', '2', '邵勇', '2467', '2015-10-21');
INSERT INTO `df_order` VALUES ('828', '2', '戴维', '1,2,5,7', '2015-10-21');
INSERT INTO `df_order` VALUES ('829', '2', '赵洪生', '1,2,6,7', '2015-10-21');
INSERT INTO `df_order` VALUES ('830', '2', '纪昕阳', '1,2,6,8', '2015-10-21');
INSERT INTO `df_order` VALUES ('831', '2', '龙雨', '1,4,5,6', '2015-10-21');
INSERT INTO `df_order` VALUES ('832', '2', '王磊', '1268', '2015-10-21');
INSERT INTO `df_order` VALUES ('833', '2', '尚小彬', '5678', '2015-10-21');
INSERT INTO `df_order` VALUES ('835', '2', '王磊', '1267', '2015-10-22');
INSERT INTO `df_order` VALUES ('836', '2', '赵洪生', '3,4,5,7', '2015-10-22');
INSERT INTO `df_order` VALUES ('837', '2', '尚小彬', '4678', '2015-10-22');
INSERT INTO `df_order` VALUES ('838', '2', '尹荐', '2478', '2015-10-22');
INSERT INTO `df_order` VALUES ('839', '2', '文欢', '3,4,7,8', '2015-10-22');
INSERT INTO `df_order` VALUES ('840', '2', '邵勇', '1267', '2015-10-22');
INSERT INTO `df_order` VALUES ('841', '2', '徐国金', '2478', '2015-10-22');
INSERT INTO `df_order` VALUES ('842', '2', '纪昕阳', '2,3,7,8', '2015-10-22');
INSERT INTO `df_order` VALUES ('843', '2', '王磊', '1257', '2015-10-23');
INSERT INTO `df_order` VALUES ('844', '2', '纪昕阳', '3,4,5,7', '2015-10-23');
INSERT INTO `df_order` VALUES ('845', '2', '慈凯', '1,3,5,7', '2015-10-23');
INSERT INTO `df_order` VALUES ('846', '2', '徐国金', '1378', '2015-10-23');
INSERT INTO `df_order` VALUES ('847', '2', '许鸣', '2367', '2015-10-23');
INSERT INTO `df_order` VALUES ('848', '2', '邵勇', '2378', '2015-10-23');
INSERT INTO `df_order` VALUES ('849', '2', '5678', '尚小彬', '2015-10-23');
INSERT INTO `df_order` VALUES ('850', '2', '戴维', '3，4,5,7', '2015-10-23');
INSERT INTO `df_order` VALUES ('851', '2', '王磊', '1367', '2015-10-26');
INSERT INTO `df_order` VALUES ('852', '2', '赵洪生', '3,4,6,7', '2015-10-26');
INSERT INTO `df_order` VALUES ('853', '2', '文欢', '1,3,5,7', '2015-10-26');
INSERT INTO `df_order` VALUES ('854', '2', '许鸣', '1278', '2015-10-26');
INSERT INTO `df_order` VALUES ('855', '2', '戴维', '2,4,6,7', '2015-10-26');
INSERT INTO `df_order` VALUES ('856', '2', '徐国金', '3457', '2015-10-26');
INSERT INTO `df_order` VALUES ('857', '2', '王磊', '2368', '2015-10-27');
INSERT INTO `df_order` VALUES ('859', '2', '徐国金', '2468', '2015-10-27');
INSERT INTO `df_order` VALUES ('860', '2', '戴维', '1，2,5,7', '2015-10-27');
INSERT INTO `df_order` VALUES ('861', '2', '赵洪生', '3,4,7,8', '2015-10-27');
INSERT INTO `df_order` VALUES ('862', '2', '邵勇', '2468', '2015-10-27');
INSERT INTO `df_order` VALUES ('863', '2', '尚小彬', '5678', '2015-10-27');
INSERT INTO `df_order` VALUES ('864', '2', '慈凯', '1,2,5,8', '2015-10-27');
INSERT INTO `df_order` VALUES ('865', '2', '王磊', '1456', '2015-10-28');
INSERT INTO `df_order` VALUES ('866', '2', '赵洪生', '1,2,7,7', '2015-10-28');
INSERT INTO `df_order` VALUES ('867', '2', '尚小彬', '4678', '2015-10-28');
INSERT INTO `df_order` VALUES ('868', '2', '文欢', '1,4,7,8', '2015-10-28');
INSERT INTO `df_order` VALUES ('869', '2', '戴维', '1,2,5,7', '2015-10-28');
INSERT INTO `df_order` VALUES ('870', '2', '邵勇', '2467', '2015-10-28');
INSERT INTO `df_order` VALUES ('871', '2', '纪昕阳', '1,2,6,8', '2015-10-28');
INSERT INTO `df_order` VALUES ('872', '2', '赵洪生', '3,4,7,8', '2015-10-29');
INSERT INTO `df_order` VALUES ('873', '2', '徐国金', '3478', '2015-10-29');
INSERT INTO `df_order` VALUES ('874', '2', '文欢', '3,4,7,8', '2015-10-29');
INSERT INTO `df_order` VALUES ('876', '2', '许鸣', '1378', '2015-10-29');
INSERT INTO `df_order` VALUES ('877', '2', '戴维', '1，2,,7,8', '2015-10-29');
INSERT INTO `df_order` VALUES ('878', '2', '纪昕阳', '2,3,7,8', '2015-10-29');
INSERT INTO `df_order` VALUES ('879', '2', '戴维', '3,4,5,7', '2015-10-30');
INSERT INTO `df_order` VALUES ('880', '2', '慈凯', '1,3,5,7', '2015-10-30');
INSERT INTO `df_order` VALUES ('881', '2', '赵洪生', '3,4,5,7', '2015-10-30');
INSERT INTO `df_order` VALUES ('882', '2', '文欢', '2,3,6,8', '2015-10-30');
INSERT INTO `df_order` VALUES ('883', '2', '徐国金', '1357', '2015-10-30');
INSERT INTO `df_order` VALUES ('884', '2', '赵洪生', '3,4,6,7', '2015-11-02');
INSERT INTO `df_order` VALUES ('885', '2', '戴维', '2,4,6,7', '2015-11-02');
INSERT INTO `df_order` VALUES ('886', '2', '王磊', '1367', '2015-11-02');
INSERT INTO `df_order` VALUES ('887', '2', '纪昕阳', '3,4,5,7', '2015-11-02');
INSERT INTO `df_order` VALUES ('888', '2', '赵洪生', '1,4,6,8', '2015-11-03');
INSERT INTO `df_order` VALUES ('889', '2', '王磊', '2458', '2015-11-03');
INSERT INTO `df_order` VALUES ('890', '2', '戴维', '1,3,6,8', '2015-11-03');
INSERT INTO `df_order` VALUES ('891', '2', '尚小彬', '5678', '2015-11-03');
INSERT INTO `df_order` VALUES ('892', '2', '纪昕阳', '2,4,6,8', '2015-11-03');
INSERT INTO `df_order` VALUES ('893', '2', '赵洪生', '1,2,7,7', '2015-11-04');
INSERT INTO `df_order` VALUES ('894', '2', '徐国金', '1277', '2015-11-04');
INSERT INTO `df_order` VALUES ('895', '2', '王磊', '1367', '2015-11-04');
INSERT INTO `df_order` VALUES ('896', '2', '赵洪生', '3,4,7,8', '2015-11-05');
INSERT INTO `df_order` VALUES ('897', '2', '纪昕阳', '1,2,5,7', '2015-11-05');
INSERT INTO `df_order` VALUES ('898', '2', '王磊', '1468', '2015-11-05');
INSERT INTO `df_order` VALUES ('899', '2', '邵勇', '1267', '2015-11-05');
INSERT INTO `df_order` VALUES ('900', '2', '戴维', '1,2,7,8', '2015-11-05');
INSERT INTO `df_order` VALUES ('901', '2', '徐国金', '3478', '2015-11-05');
INSERT INTO `df_order` VALUES ('902', '2', '徐国金', '1378', '2015-11-06');
INSERT INTO `df_order` VALUES ('903', '2', '赵洪生', '3,4,5,7', '2015-11-06');
INSERT INTO `df_order` VALUES ('904', '2', '纪昕阳', '1,3,5,7', '2015-11-06');
INSERT INTO `df_order` VALUES ('905', '2', '王磊', '1357', '2015-11-06');
INSERT INTO `df_order` VALUES ('906', '2', '慈凯', '1,3,5,7', '2015-11-06');
INSERT INTO `df_order` VALUES ('907', '2', '尚小彬', '3567', '2015-11-06');
INSERT INTO `df_order` VALUES ('908', '2', '戴维', '2,3,5,7', '2015-11-06');
INSERT INTO `df_order` VALUES ('909', '2', '赵洪生', '3,4,6,7', '2015-11-09');
INSERT INTO `df_order` VALUES ('910', '2', '王磊', '3468', '2015-11-09');
INSERT INTO `df_order` VALUES ('911', '2', '徐国金', '3467', '2015-11-09');
INSERT INTO `df_order` VALUES ('912', '2', '邵勇', '2467', '2015-11-09');
INSERT INTO `df_order` VALUES ('913', '2', '戴维', '2,4,6,7', '2015-11-09');
INSERT INTO `df_order` VALUES ('914', '2', '纪昕阳', '1,3,5,7', '2015-11-09');
INSERT INTO `df_order` VALUES ('915', '2', '王磊', '2468', '2015-11-10');
INSERT INTO `df_order` VALUES ('916', '2', '赵洪生', '3,4,7,8', '2015-11-10');
INSERT INTO `df_order` VALUES ('917', '2', '徐国金', '2468', '2015-11-10');
INSERT INTO `df_order` VALUES ('918', '2', '纪昕阳', '2,3,7,8', '2015-11-10');
INSERT INTO `df_order` VALUES ('919', '2', '徐国金', '1257', '2015-11-11');
INSERT INTO `df_order` VALUES ('920', '2', '王磊', '3468', '2015-11-11');
INSERT INTO `df_order` VALUES ('921', '2', '戴维', '1，2,5,7', '2015-11-11');
INSERT INTO `df_order` VALUES ('922', '2', '赵洪生', '1,2,7,7', '2015-11-11');
INSERT INTO `df_order` VALUES ('923', '2', '文欢', '1,3,,5,7', '2015-11-11');
INSERT INTO `df_order` VALUES ('924', '2', '赵洪生', '3,4,7,8', '2015-11-12');
INSERT INTO `df_order` VALUES ('925', '2', '徐国金', '3,4,7,8', '2015-11-12');
INSERT INTO `df_order` VALUES ('926', '2', '王磊', '3478', '2015-11-12');
INSERT INTO `df_order` VALUES ('927', '2', '文欢', '3,4,6,7', '2015-11-12');
INSERT INTO `df_order` VALUES ('928', '2', '许鸣', '1378', '2015-11-12');
INSERT INTO `df_order` VALUES ('929', '2', '纪昕阳', '1,2,7,8', '2015-11-12');
INSERT INTO `df_order` VALUES ('930', '2', '戴维', '1,4,7,8', '2015-11-12');
INSERT INTO `df_order` VALUES ('931', '2', '赵洪生', '3,4,5,7', '2015-11-13');
INSERT INTO `df_order` VALUES ('932', '2', '王磊', '3457', '2015-11-13');
INSERT INTO `df_order` VALUES ('933', '2', '纪昕阳', '3,4,7,8', '2015-11-13');
INSERT INTO `df_order` VALUES ('934', '2', '文欢', '2,3,5,6', '2015-11-13');
INSERT INTO `df_order` VALUES ('935', '2', '戴维', '2，3,5,7', '2015-11-13');
INSERT INTO `df_order` VALUES ('936', '2', '慈凯', '2,3,5,7', '2015-11-13');
INSERT INTO `df_order` VALUES ('937', '2', '徐国金', '1357', '2015-11-13');
INSERT INTO `df_order` VALUES ('938', '2', '王磊', '2368', '2015-11-16');
INSERT INTO `df_order` VALUES ('939', '2', '纪昕阳', '3,4,5,7', '2015-11-16');
INSERT INTO `df_order` VALUES ('940', '2', '徐阳', '3,4,5,7', '2015-11-16');
INSERT INTO `df_order` VALUES ('941', '2', '戴维', '2,4,6,7', '2015-11-16');
INSERT INTO `df_order` VALUES ('942', '2', '赵洪生', '3,4,6,7', '2015-11-16');
INSERT INTO `df_order` VALUES ('943', '2', '文欢', '1,3,5,7', '2015-11-16');
INSERT INTO `df_order` VALUES ('944', '2', '许鸣', '1257', '2015-11-16');
INSERT INTO `df_order` VALUES ('945', '2', '戴维', '1,4,6,8', '2015-11-17');
INSERT INTO `df_order` VALUES ('946', '2', '徐国金', '2468', '2015-11-17');
INSERT INTO `df_order` VALUES ('947', '2', '王磊', '1468', '2015-11-17');
INSERT INTO `df_order` VALUES ('948', '2', '赵洪生', '3,4,6,8', '2015-11-17');
INSERT INTO `df_order` VALUES ('949', '2', '文欢', '1,4,5,6', '2015-11-17');
INSERT INTO `df_order` VALUES ('950', '2', '任贺', '4468', '2015-11-17');
INSERT INTO `df_order` VALUES ('951', '2', '王磊', '1467', '2015-11-18');
INSERT INTO `df_order` VALUES ('952', '2', '徐国金', '1257', '2015-11-18');
INSERT INTO `df_order` VALUES ('953', '2', '戴维', '1,2,5,7', '2015-11-18');
INSERT INTO `df_order` VALUES ('954', '2', '许鸣', '1368', '2015-11-18');
INSERT INTO `df_order` VALUES ('955', '2', '赵洪生', '1,2,7,7', '2015-11-18');
INSERT INTO `df_order` VALUES ('956', '2', '文欢', '2,3,6,7', '2015-11-18');
INSERT INTO `df_order` VALUES ('957', '2', '纪昕阳', '1,2,7,8', '2015-11-19');
INSERT INTO `df_order` VALUES ('958', '2', '徐阳', '1357', '2015-11-19');
INSERT INTO `df_order` VALUES ('959', '2', '王磊', '1468', '2015-11-19');
INSERT INTO `df_order` VALUES ('960', '2', '文欢', '3，4，7，8', '2015-11-19');
INSERT INTO `df_order` VALUES ('961', '2', '徐国金', '2478', '2015-11-19');
INSERT INTO `df_order` VALUES ('962', '2', '赵洪生', '3,4,7,8', '2015-11-19');
INSERT INTO `df_order` VALUES ('963', '2', '戴维', '3,4,5,8', '2015-11-19');
INSERT INTO `df_order` VALUES ('964', '2', '王磊', '1457', '2015-11-20');
INSERT INTO `df_order` VALUES ('965', '2', '慈凯', '1,2,5,7', '2015-11-20');
INSERT INTO `df_order` VALUES ('966', '2', '戴维', '1,3,5,7', '2015-11-20');
INSERT INTO `df_order` VALUES ('967', '2', '徐阳', '3457', '2015-11-20');
INSERT INTO `df_order` VALUES ('968', '2', '徐国金', '1357', '2015-11-20');
INSERT INTO `df_order` VALUES ('969', '2', '赵洪生', '3,4,5,7', '2015-11-20');
INSERT INTO `df_order` VALUES ('970', '2', '赵洪生', '3,4,6,7', '2015-11-23');
INSERT INTO `df_order` VALUES ('971', '2', '徐国金', '3457', '2015-11-23');
INSERT INTO `df_order` VALUES ('972', '2', '文欢', '1,3,5,7', '2015-11-23');
INSERT INTO `df_order` VALUES ('973', '2', '王磊', '3467', '2015-11-23');
INSERT INTO `df_order` VALUES ('974', '2', '任贺', '3458', '2015-11-23');
INSERT INTO `df_order` VALUES ('975', '2', '戴维', '2,4,6,8', '2015-11-23');
INSERT INTO `df_order` VALUES ('976', '2', '徐国金', '2468', '2015-11-24');
INSERT INTO `df_order` VALUES ('977', '2', '赵洪生', '3,4,6,8', '2015-11-24');
INSERT INTO `df_order` VALUES ('978', '2', '王磊', '2458', '2015-11-24');
INSERT INTO `df_order` VALUES ('979', '2', '戴维', '1,4,6,8', '2015-11-24');
INSERT INTO `df_order` VALUES ('980', '2', '文欢', '2,4,5,6', '2015-11-24');
INSERT INTO `df_order` VALUES ('981', '2', '徐阳', '1,3,5,8', '2015-11-24');
INSERT INTO `df_order` VALUES ('982', '2', '纪昕阳', '2,3,7,8', '2015-11-24');
INSERT INTO `df_order` VALUES ('983', '2', '徐国金', '1257\r\n', '2015-11-25');
INSERT INTO `df_order` VALUES ('984', '2', '戴维', '1,2,5,7', '2015-11-25');
INSERT INTO `df_order` VALUES ('985', '2', '文欢', '2,3,7,8', '2015-11-25');
INSERT INTO `df_order` VALUES ('986', '2', '赵洪生', '1,2,7,7', '2015-11-25');
INSERT INTO `df_order` VALUES ('987', '2', '徐阳', '1256', '2015-11-25');
INSERT INTO `df_order` VALUES ('988', '2', '纪昕阳', '1278\r\n1278', '2015-11-25');
INSERT INTO `df_order` VALUES ('989', '2', '戴维', '2,4,6,8', '2015-11-26');
INSERT INTO `df_order` VALUES ('990', '2', '王磊', '1368', '2015-11-26');
INSERT INTO `df_order` VALUES ('991', '2', '赵洪生', '3,4,7,8', '2015-11-26');
INSERT INTO `df_order` VALUES ('992', '2', '文欢', '1,4,7,8', '2015-11-26');
INSERT INTO `df_order` VALUES ('993', '2', '徐国金', '2478', '2015-11-26');
INSERT INTO `df_order` VALUES ('994', '2', '纪昕阳', '1,4,7,8', '2015-11-26');
INSERT INTO `df_order` VALUES ('995', '2', '徐阳', '1457', '2015-11-26');
INSERT INTO `df_order` VALUES ('996', '2', '王磊', '3457', '2015-11-27');
INSERT INTO `df_order` VALUES ('997', '2', '戴维', '3,4,5,7', '2015-11-27');
INSERT INTO `df_order` VALUES ('998', '2', '文欢', '2,3,5,6', '2015-11-27');
INSERT INTO `df_order` VALUES ('999', '2', '徐国金', '3457', '2015-11-27');
INSERT INTO `df_order` VALUES ('1000', '2', '任贺', '3367', '2015-11-27');
INSERT INTO `df_order` VALUES ('1001', '2', '赵洪生', '3,4,5,7', '2015-11-27');
INSERT INTO `df_order` VALUES ('1002', '2', '纪昕阳', '1478', '2015-11-27');
INSERT INTO `df_order` VALUES ('1004', '2', '徐阳', '1357', '2015-11-27');
INSERT INTO `df_order` VALUES ('1005', '2', '王磊', '3468', '2015-11-30');
INSERT INTO `df_order` VALUES ('1006', '2', '纪昕阳', '1,3,5,7', '2015-11-30');
INSERT INTO `df_order` VALUES ('1007', '2', '徐阳', '3478', '2015-11-30');
INSERT INTO `df_order` VALUES ('1008', '2', '戴维', '2,3,6,7', '2015-11-30');
INSERT INTO `df_order` VALUES ('1009', '2', '赵洪生', '3,4,5,7', '2015-11-30');
INSERT INTO `df_order` VALUES ('1010', '2', '赵洪生', '3,5,7,8', '2015-12-01');
INSERT INTO `df_order` VALUES ('1011', '2', '戴维', '1，4,6,8', '2015-12-01');
INSERT INTO `df_order` VALUES ('1014', '2', '王磊', '3456', '2015-12-01');
INSERT INTO `df_order` VALUES ('1015', '2', '徐阳', '2356', '2015-12-02');
INSERT INTO `df_order` VALUES ('1016', '2', '纪昕阳', '1257', '2015-12-02');
INSERT INTO `df_order` VALUES ('1017', '2', '赵洪生', '2,4,5,6', '2015-12-02');
INSERT INTO `df_order` VALUES ('1018', '2', '许鸣', '2358', '2015-12-02');
INSERT INTO `df_order` VALUES ('1019', '2', '戴维', '3,4,5,6', '2015-12-02');
INSERT INTO `df_order` VALUES ('1020', '2', '文欢', '1,2,7,8', '2015-12-02');
INSERT INTO `df_order` VALUES ('1021', '2', '赵洪生', '3,4,7,8', '2015-12-03');
INSERT INTO `df_order` VALUES ('1022', '2', '许鸣', '2457', '2015-12-03');
INSERT INTO `df_order` VALUES ('1023', '2', '戴维', '2,3,7,8', '2015-12-03');
INSERT INTO `df_order` VALUES ('1024', '2', '徐阳', '3478', '2015-12-03');
INSERT INTO `df_order` VALUES ('1025', '2', '王磊', '3457', '2015-12-03');
INSERT INTO `df_order` VALUES ('1027', '2', '文欢', '2.3.7.8', '2015-12-03');
INSERT INTO `df_order` VALUES ('1028', '2', '纪昕阳', '2468', '2015-12-03');
INSERT INTO `df_order` VALUES ('1029', '2', '文欢', '1，3，6，8', '2015-12-04');
INSERT INTO `df_order` VALUES ('1030', '2', '戴维', '1,2,5,8', '2015-12-04');
INSERT INTO `df_order` VALUES ('1031', '2', '赵洪生', '1,4,7,8', '2015-12-04');
INSERT INTO `df_order` VALUES ('1032', '2', '王磊', '1357', '2015-12-04');
INSERT INTO `df_order` VALUES ('1033', '2', '慈凯', '1,2,7,8', '2015-12-04');
INSERT INTO `df_order` VALUES ('1034', '2', '许鸣', '2467', '2015-12-04');
INSERT INTO `df_order` VALUES ('1035', '2', '戴维', '2,4,6.7', '2015-12-07');
INSERT INTO `df_order` VALUES ('1036', '2', '徐国金', '3467', '2015-12-07');
INSERT INTO `df_order` VALUES ('1037', '2', '文欢', '1,3,6,7', '2015-12-07');
INSERT INTO `df_order` VALUES ('1038', '2', '王磊', '3467', '2015-12-07');
INSERT INTO `df_order` VALUES ('1039', '2', '纪昕阳', '1457', '2015-12-07');
INSERT INTO `df_order` VALUES ('1040', '2', '慈凯', '3,4,6,7', '2015-12-07');
INSERT INTO `df_order` VALUES ('1041', '2', '徐阳', '2468', '2015-12-07');
INSERT INTO `df_order` VALUES ('1042', '2', '许鸣', '1378', '2015-12-07');
INSERT INTO `df_order` VALUES ('1043', '2', '尹荐', '2478', '2015-12-07');
INSERT INTO `df_order` VALUES ('1044', '2', '王磊', '3456', '2015-12-08');
INSERT INTO `df_order` VALUES ('1045', '2', '赵洪生', '2,3,5,8', '2015-12-08');
INSERT INTO `df_order` VALUES ('1047', '2', '徐阳', '3468', '2015-12-08');
INSERT INTO `df_order` VALUES ('1048', '2', '徐国金', '3468', '2015-12-08');
INSERT INTO `df_order` VALUES ('1049', '2', '许鸣', '3457', '2015-12-08');
INSERT INTO `df_order` VALUES ('1050', '2', '尚小彬', '3458', '2015-12-08');
INSERT INTO `df_order` VALUES ('1051', '2', '戴维', '3,4,6,8', '2015-12-08');
INSERT INTO `df_order` VALUES ('1052', '2', '尹荐', '3458', '2015-12-08');
INSERT INTO `df_order` VALUES ('1053', '2', '纪昕阳', '2488', '2015-12-08');
INSERT INTO `df_order` VALUES ('1054', '2', '徐国金', '1268', '2015-12-09');
INSERT INTO `df_order` VALUES ('1055', '2', '戴维', '3,4,5,8', '2015-12-09');
INSERT INTO `df_order` VALUES ('1056', '2', '徐阳', '2357', '2015-12-09');
INSERT INTO `df_order` VALUES ('1057', '2', '文欢', '1,2,5,8', '2015-12-09');
INSERT INTO `df_order` VALUES ('1058', '2', '赵洪生', '2,4,5,6', '2015-12-09');
INSERT INTO `df_order` VALUES ('1059', '2', '王磊', '2478', '2015-12-09');
INSERT INTO `df_order` VALUES ('1060', '2', '慈凯', '1,2,5,8', '2015-12-09');
INSERT INTO `df_order` VALUES ('1061', '2', '许鸣', '2458', '2015-12-09');
INSERT INTO `df_order` VALUES ('1062', '2', '王磊', '2467', '2015-12-10');
INSERT INTO `df_order` VALUES ('1063', '2', '徐阳', '3478', '2015-12-10');
INSERT INTO `df_order` VALUES ('1064', '2', '戴维', '3,4,7,8', '2015-12-10');
INSERT INTO `df_order` VALUES ('1065', '2', '纪昕阳', '2468', '2015-12-10');
INSERT INTO `df_order` VALUES ('1066', '2', '赵洪生', '1,4,7,8', '2015-12-10');
INSERT INTO `df_order` VALUES ('1067', '2', '徐国金', '3478', '2015-12-10');
INSERT INTO `df_order` VALUES ('1068', '2', '文欢', '3，4，5，8', '2015-12-10');
INSERT INTO `df_order` VALUES ('1069', '2', '赵洪生', '1,4,7,8', '2015-12-11');
INSERT INTO `df_order` VALUES ('1070', '2', '王磊', '1357', '2015-12-11');
INSERT INTO `df_order` VALUES ('1071', '2', '徐阳', '1256', '2015-12-11');
INSERT INTO `df_order` VALUES ('1072', '2', '戴维', '1,2,5,6', '2015-12-11');
INSERT INTO `df_order` VALUES ('1073', '2', '徐国金', '1256', '2015-12-11');
INSERT INTO `df_order` VALUES ('1074', '2', '文欢', '1368', '2015-12-11');
INSERT INTO `df_order` VALUES ('1075', '2', '邵勇', '1256', '2015-12-11');
INSERT INTO `df_order` VALUES ('1076', '2', '纪昕阳', '1367', '2015-12-11');
INSERT INTO `df_order` VALUES ('1077', '2', '慈凯', '1,2,7,8', '2015-12-11');
INSERT INTO `df_order` VALUES ('1078', '2', '王磊', '1367', '2015-12-14');
INSERT INTO `df_order` VALUES ('1079', '2', '徐阳', '3469', '2015-12-14');
INSERT INTO `df_order` VALUES ('1080', '2', '纪昕阳', '1467', '2015-12-14');
INSERT INTO `df_order` VALUES ('1081', '2', '戴维', '2,4,6,7', '2015-12-14');
INSERT INTO `df_order` VALUES ('1082', '2', '王磊', '2356', '2015-12-15');
INSERT INTO `df_order` VALUES ('1083', '2', '徐阳', '3456', '2015-12-15');
INSERT INTO `df_order` VALUES ('1084', '2', '纪昕阳', '2288', '2015-12-15');
INSERT INTO `df_order` VALUES ('1085', '2', '徐国金', '3468', '2015-12-15');
INSERT INTO `df_order` VALUES ('1086', '2', '戴维', '3，4,6,8', '2015-12-15');
INSERT INTO `df_order` VALUES ('1087', '2', '许鸣', '1358', '2015-12-15');
INSERT INTO `df_order` VALUES ('1088', '2', '徐阳', '2458', '2015-12-16');
INSERT INTO `df_order` VALUES ('1089', '2', '纪昕阳', '1258', '2015-12-16');
INSERT INTO `df_order` VALUES ('1090', '2', '许鸣', '2358', '2015-12-16');
INSERT INTO `df_order` VALUES ('1091', '2', '王磊', '1257', '2015-12-16');
INSERT INTO `df_order` VALUES ('1092', '2', '赵洪生', '2,4,6,8', '2015-12-16');
INSERT INTO `df_order` VALUES ('1093', '2', '徐国金', '1256', '2015-12-16');
INSERT INTO `df_order` VALUES ('1094', '2', '徐国金', '2378', '2015-12-17');
INSERT INTO `df_order` VALUES ('1095', '2', '王磊', '1456', '2015-12-17');
INSERT INTO `df_order` VALUES ('1096', '2', '徐阳', '3458', '2015-12-17');
INSERT INTO `df_order` VALUES ('1097', '2', '赵洪生', '1,4,7,8', '2015-12-17');
INSERT INTO `df_order` VALUES ('1098', '2', '孟祥宇', '1256', '2015-12-17');
INSERT INTO `df_order` VALUES ('1099', '2', '文欢', '2，3，5，8', '2015-12-17');
INSERT INTO `df_order` VALUES ('1100', '2', '许鸣', '3467', '2015-12-17');
INSERT INTO `df_order` VALUES ('1101', '2', '王磊', '1356', '2015-12-18');
INSERT INTO `df_order` VALUES ('1102', '2', '邵勇', '2356', '2015-12-18');
INSERT INTO `df_order` VALUES ('1103', '2', '赵洪生', '1,4,7,8', '2015-12-18');
INSERT INTO `df_order` VALUES ('1104', '2', 's尚小彬', '2678', '2015-12-18');
INSERT INTO `df_order` VALUES ('1105', '2', '徐阳', '1256', '2015-12-18');
INSERT INTO `df_order` VALUES ('1106', '2', '许鸣', '1267', '2015-12-18');
INSERT INTO `df_order` VALUES ('1107', '2', '徐国金', '1256', '2015-12-18');
INSERT INTO `df_order` VALUES ('1108', '2', '王磊', '3467', '2015-12-21');
INSERT INTO `df_order` VALUES ('1109', '2', '徐国金', '3467', '2015-12-21');
INSERT INTO `df_order` VALUES ('1110', '2', '孟祥宇', '3478', '2015-12-21');
INSERT INTO `df_order` VALUES ('1111', '2', '徐阳', '3468', '2015-12-21');
INSERT INTO `df_order` VALUES ('1112', '2', '许鸣', '2378', '2015-12-21');
INSERT INTO `df_order` VALUES ('1113', '2', '王磊', '3456', '2015-12-22');
INSERT INTO `df_order` VALUES ('1114', '2', '徐国金', '3468', '2015-12-22');
INSERT INTO `df_order` VALUES ('1115', '2', '孟祥宇', '1378', '2015-12-22');
INSERT INTO `df_order` VALUES ('1116', '2', '徐阳', '1456', '2015-12-22');
INSERT INTO `df_order` VALUES ('1117', '2', '许鸣', '1358', '2015-12-22');
INSERT INTO `df_order` VALUES ('1118', '2', '徐阳', '2458', '2015-12-23');
INSERT INTO `df_order` VALUES ('1119', '2', '赵洪生', '2,4,6,8', '2015-12-23');
INSERT INTO `df_order` VALUES ('1120', '2', '文欢', '1,2,5,8', '2015-12-23');
INSERT INTO `df_order` VALUES ('1121', '2', '徐国金', '2456', '2015-12-23');
INSERT INTO `df_order` VALUES ('1122', '2', '王磊', '2456', '2015-12-24');
INSERT INTO `df_order` VALUES ('1123', '2', '赵洪生', '1,4,7,8', '2015-12-24');
INSERT INTO `df_order` VALUES ('1124', '2', '徐阳', '3458', '2015-12-24');
INSERT INTO `df_order` VALUES ('1125', '2', '徐国金', '3478', '2015-12-24');
INSERT INTO `df_order` VALUES ('1126', '2', '徐国金', '1256', '2015-12-25');
INSERT INTO `df_order` VALUES ('1127', '2', '徐阳', '1256', '2015-12-25');
INSERT INTO `df_order` VALUES ('1128', '2', '徐阳', '1468', '2015-12-28');
INSERT INTO `df_order` VALUES ('1129', '2', '徐国金', '3467', '2015-12-28');
INSERT INTO `df_order` VALUES ('1130', '2', '王磊', '2356', '2015-12-29');
INSERT INTO `df_order` VALUES ('1131', '2', '徐阳', '3467', '2015-12-29');
INSERT INTO `df_order` VALUES ('1132', '2', '徐国金', '3468', '2015-12-29');
INSERT INTO `df_order` VALUES ('1133', '2', '许鸣', '1357', '2015-12-29');
INSERT INTO `df_order` VALUES ('1134', '2', '王磊', '2478', '2015-12-30');
INSERT INTO `df_order` VALUES ('1135', '2', '赵洪生', '2,4,6,8', '2015-12-30');
INSERT INTO `df_order` VALUES ('1136', '2', '文欢', '2,4,5,8', '2015-12-30');
INSERT INTO `df_order` VALUES ('1137', '2', '徐国金', '2456', '2015-12-30');
INSERT INTO `df_order` VALUES ('1138', '2', '徐国金', '3478', '2015-12-31');
INSERT INTO `df_order` VALUES ('1139', '2', '王磊', '3467', '2015-12-31');
INSERT INTO `df_order` VALUES ('1140', '2', '徐阳', '3456', '2015-12-31');
INSERT INTO `df_order` VALUES ('1141', '2', '赵洪生', '1,4,7,8', '2015-12-31');
INSERT INTO `df_order` VALUES ('1144', '2', '徐阳', '1367', '2016-01-04');
INSERT INTO `df_order` VALUES ('1145', '2', '徐国金', '3456', '2016-01-04');
INSERT INTO `df_order` VALUES ('1146', '2', '王磊', '3478', '2016-01-04');
INSERT INTO `df_order` VALUES ('1147', '2', '赵洪生', '1,4,6,8', '2016-01-04');
INSERT INTO `df_order` VALUES ('1148', '2', '龙雨', '1267', '2016-01-04');
INSERT INTO `df_order` VALUES ('1149', '2', '尚小彬', '3467', '2016-01-04');
INSERT INTO `df_order` VALUES ('1150', '2', '许鸣', '2456', '2016-01-04');
INSERT INTO `df_order` VALUES ('1151', '2', '纪昕阳', '1456', '2016-01-04');
INSERT INTO `df_order` VALUES ('1152', '2', '王磊', '1256', '2016-01-05');
INSERT INTO `df_order` VALUES ('1153', '2', '赵洪生', '2,4,6,8', '2016-01-05');
INSERT INTO `df_order` VALUES ('1154', '2', '徐国金', '2378', '2016-01-05');
INSERT INTO `df_order` VALUES ('1155', '2', '徐阳', '1378', '2016-01-05');
INSERT INTO `df_order` VALUES ('1156', '2', '许鸣', '1256', '2016-01-05');
INSERT INTO `df_order` VALUES ('1157', '2', '尚小彬', '3456', '2016-01-05');
INSERT INTO `df_order` VALUES ('1158', '2', '赵洪生', '1,5,6,7', '2016-01-06');
INSERT INTO `df_order` VALUES ('1159', '2', '王磊', '2368', '2016-01-06');
INSERT INTO `df_order` VALUES ('1160', '2', '徐国金', '1257', '2016-01-06');
INSERT INTO `df_order` VALUES ('1161', '2', '王磊', '2467', '2016-01-07');
INSERT INTO `df_order` VALUES ('1162', '2', '赵洪生', '2,3,6,7', '2016-01-07');
INSERT INTO `df_order` VALUES ('1163', '2', '王磊', '1268', '2016-01-08');
INSERT INTO `df_order` VALUES ('1164', '2', '赵洪生', '1,4,5,8', '2016-01-08');
INSERT INTO `df_order` VALUES ('1165', '2', '徐阳', '1468', '2016-01-08');
INSERT INTO `df_order` VALUES ('1166', '2', '纪昕阳', '3356', '2016-01-08');
INSERT INTO `df_order` VALUES ('1167', '2', '徐国金', '1456', '2016-01-08');
INSERT INTO `df_order` VALUES ('1168', '2', '许鸣', '1256', '2016-01-08');
INSERT INTO `df_order` VALUES ('1169', '2', '杨立峰', '1368', '2016-01-08');
INSERT INTO `df_order` VALUES ('1171', '2', '纪昕阳', '1466', '2016-01-11');
INSERT INTO `df_order` VALUES ('1172', '2', '徐国金', '3456', '2016-01-11');
INSERT INTO `df_order` VALUES ('1173', '2', '尚小彬', '3468', '2016-01-11');
INSERT INTO `df_order` VALUES ('1174', '2', '许鸣', '2456', '2016-01-11');
INSERT INTO `df_order` VALUES ('1175', '2', '徐阳', '3467', '2016-01-11');
INSERT INTO `df_order` VALUES ('1176', '2', '王磊', '2478', '2016-01-11');
INSERT INTO `df_order` VALUES ('1177', '2', '尚小彬', '3458', '2016-01-12');
INSERT INTO `df_order` VALUES ('1178', '2', '王磊', '1356', '2016-01-12');
INSERT INTO `df_order` VALUES ('1179', '2', '许鸣', '1256', '2016-01-12');
INSERT INTO `df_order` VALUES ('1180', '2', '赵洪生', '2,3,5,8', '2016-01-12');
INSERT INTO `df_order` VALUES ('1181', '2', '徐国金', '2358', '2016-01-12');
INSERT INTO `df_order` VALUES ('1182', '2', '赵洪生', '1,5,6,7', '2016-01-13');
INSERT INTO `df_order` VALUES ('1183', '2', '王磊', '1368', '2016-01-13');
INSERT INTO `df_order` VALUES ('1184', '2', '徐阳', '2358', '2016-01-13');
INSERT INTO `df_order` VALUES ('1185', '2', '尚小彬', '1356', '2016-01-13');
INSERT INTO `df_order` VALUES ('1186', '2', '许鸣', '2357', '2016-01-13');
INSERT INTO `df_order` VALUES ('1187', '2', '徐国金', '1267', '2016-01-13');
INSERT INTO `df_order` VALUES ('1188', '2', '徐国金', '2367', '2016-01-14');
INSERT INTO `df_order` VALUES ('1189', '2', '王磊', '2467', '2016-01-14');
INSERT INTO `df_order` VALUES ('1190', '2', '徐阳', '1367', '2016-01-14');
INSERT INTO `df_order` VALUES ('1191', '2', '许鸣', '3467', '2016-01-14');
INSERT INTO `df_order` VALUES ('1192', '2', '赵洪生', '4,5,6,8', '2016-01-15');
INSERT INTO `df_order` VALUES ('1193', '2', '徐阳', '1468', '2016-01-15');
INSERT INTO `df_order` VALUES ('1194', '2', '纪昕阳', '3356', '2016-01-15');
INSERT INTO `df_order` VALUES ('1195', '2', '王磊', '1458', '2016-01-15');
INSERT INTO `df_order` VALUES ('1196', '2', '许鸣', '1456', '2016-01-15');
INSERT INTO `df_order` VALUES ('1197', '2', '王磊', '1456', '2016-01-18');
INSERT INTO `df_order` VALUES ('1198', '2', '徐国金', '1368', '2016-01-18');
INSERT INTO `df_order` VALUES ('1199', '2', '赵洪生', '1,4,6,8', '2016-01-18');
INSERT INTO `df_order` VALUES ('1200', '2', '徐阳', '3467', '2016-01-18');
INSERT INTO `df_order` VALUES ('1202', '2', '纪昕阳', '1466', '2016-01-18');
INSERT INTO `df_order` VALUES ('1203', '2', '赵洪生', '2,5,6,8', '2016-01-19');
INSERT INTO `df_order` VALUES ('1204', '2', '徐阳', '1278', '2016-01-19');
INSERT INTO `df_order` VALUES ('1205', '2', '纪昕阳', '2468', '2016-01-19');
INSERT INTO `df_order` VALUES ('1206', '2', '尚小彬', '1456', '2016-01-19');
INSERT INTO `df_order` VALUES ('1207', '2', '许鸣', '1257', '2016-01-19');
INSERT INTO `df_order` VALUES ('1208', '2', '徐阳', '3467', '2016-01-21');
INSERT INTO `df_order` VALUES ('1209', '2', '王磊', '2467', '2016-01-21');
INSERT INTO `df_order` VALUES ('1210', '2', '尹荐', '2478', '2016-01-21');
INSERT INTO `df_order` VALUES ('1211', '2', '许鸣', '3467', '2016-01-21');
INSERT INTO `df_order` VALUES ('1212', '2', '赵洪生', '2,3,6,7', '2016-01-21');
INSERT INTO `df_order` VALUES ('1213', '2', '赵洪生', '4,5,6,8', '2016-01-22');
INSERT INTO `df_order` VALUES ('1214', '2', '徐国金', '3456', '2016-01-22');
INSERT INTO `df_order` VALUES ('1215', '2', '慈凯', '1,3,5,8', '2016-01-22');
INSERT INTO `df_order` VALUES ('1216', '2', '徐阳', '1468', '2016-01-22');
INSERT INTO `df_order` VALUES ('1217', '2', '许鸣', '1256', '2016-01-22');
INSERT INTO `df_order` VALUES ('1218', '2', '邵勇', '2467', '2016-01-22');
INSERT INTO `df_order` VALUES ('1220', '2', '赵洪生', '1,4,6,8', '2016-01-25');
INSERT INTO `df_order` VALUES ('1221', '2', '尚小彬', '3678', '2016-01-25');
INSERT INTO `df_order` VALUES ('1222', '2', '王磊', '1457', '2016-01-25');
INSERT INTO `df_order` VALUES ('1223', '2', '徐阳', '3467', '2016-01-25');
INSERT INTO `df_order` VALUES ('1224', '2', '赵洪生', '2,5,6,8', '2016-01-26');
INSERT INTO `df_order` VALUES ('1225', '2', '王磊', '1356', '2016-01-26');
INSERT INTO `df_order` VALUES ('1226', '2', '许鸣', '1267', '2016-01-26');
INSERT INTO `df_order` VALUES ('1227', '2', '徐阳', '1278', '2016-01-26');
INSERT INTO `df_order` VALUES ('1228', '2', '尚小彬', '2456', '2016-01-26');
INSERT INTO `df_order` VALUES ('1229', '2', '孟祥宇', '2368', '2016-01-26');
INSERT INTO `df_order` VALUES ('1230', '2', '徐阳', '2358', '2016-01-27');
INSERT INTO `df_order` VALUES ('1231', '2', '徐国金', '1257', '2016-01-27');
INSERT INTO `df_order` VALUES ('1232', '2', '赵洪生', '1,5,6,7', '2016-01-27');
INSERT INTO `df_order` VALUES ('1233', '2', '尚小彬', '1368', '2016-01-27');
INSERT INTO `df_order` VALUES ('1234', '2', '王磊', '1368', '2016-01-27');
INSERT INTO `df_order` VALUES ('1235', '2', '赵洪生', '2,3,6,7', '2016-01-28');
INSERT INTO `df_order` VALUES ('1236', '2', '徐国金', '2367', '2016-01-28');
INSERT INTO `df_order` VALUES ('1237', '2', '王磊', '2467', '2016-01-28');
INSERT INTO `df_order` VALUES ('1238', '2', '许鸣', '3467', '2016-01-28');
INSERT INTO `df_order` VALUES ('1239', '2', '孟祥宇', '1467', '2016-01-28');
INSERT INTO `df_order` VALUES ('1240', '2', '徐阳', '1467', '2016-01-28');
INSERT INTO `df_order` VALUES ('1241', '2', '徐国金', '1456', '2016-01-29');
INSERT INTO `df_order` VALUES ('1243', '2', '赵洪生', '4,5,6,8', '2016-01-29');
INSERT INTO `df_order` VALUES ('1244', '2', ' 徐阳', '1468', '2016-01-29');
INSERT INTO `df_order` VALUES ('1246', '2', '徐阳', '3467', '2016-02-01');
INSERT INTO `df_order` VALUES ('1247', '2', '赵洪生', '1,4,6,8', '2016-02-01');
INSERT INTO `df_order` VALUES ('1248', '2', '王磊', '1367', '2016-02-01');
INSERT INTO `df_order` VALUES ('1249', '2', '徐国金', '1368', '2016-02-01');
INSERT INTO `df_order` VALUES ('1250', '2', '尚小彬', '3467', '2016-02-01');
INSERT INTO `df_order` VALUES ('1251', '2', '赵洪生', '2,5,6,8', '2016-02-02');
INSERT INTO `df_order` VALUES ('1252', '2', '徐阳', '2478', '2016-02-02');
INSERT INTO `df_order` VALUES ('1253', '2', '王磊', '2356', '2016-02-02');
INSERT INTO `df_order` VALUES ('1254', '2', '许鸣', '1267', '2016-02-02');
INSERT INTO `df_order` VALUES ('1255', '2', '徐国金', '2368', '2016-02-02');
INSERT INTO `df_order` VALUES ('1256', '2', '徐阳', '2358', '2016-02-03');
INSERT INTO `df_order` VALUES ('1257', '2', '尚小彬', '1467', '2016-02-03');
INSERT INTO `df_order` VALUES ('1258', '2', '孟祥宇', '1356', '2016-02-03');
INSERT INTO `df_order` VALUES ('1259', '2', '徐国金', '1257', '2016-02-03');
INSERT INTO `df_order` VALUES ('1260', '2', '赵洪生', '1,5,6,7', '2016-02-03');
INSERT INTO `df_order` VALUES ('1261', '2', '王磊', '1368', '2016-02-03');
INSERT INTO `df_order` VALUES ('1262', '2', '赵洪生', '2,3,6,7', '2016-02-04');
INSERT INTO `df_order` VALUES ('1263', '2', '徐国金', '2367', '2016-02-04');
INSERT INTO `df_order` VALUES ('1264', '2', '王磊', '2367', '2016-02-04');
INSERT INTO `df_order` VALUES ('1265', '2', '许鸣', '3467', '2016-02-04');
INSERT INTO `df_order` VALUES ('1266', '2', '尚小彬', '1378', '2016-02-04');
INSERT INTO `df_order` VALUES ('1267', '2', '徐阳', '3467', '2016-02-04');
INSERT INTO `df_order` VALUES ('1268', '2', '赵洪生', '4,5,6,8', '2016-02-05');
INSERT INTO `df_order` VALUES ('1269', '2', '徐国金', '3456', '2016-02-05');
INSERT INTO `df_order` VALUES ('1270', '2', '王磊', '1468', '2016-02-05');
INSERT INTO `df_order` VALUES ('1271', '2', '徐阳', '3468', '2016-02-05');
INSERT INTO `df_order` VALUES ('1272', '2', '许鸣', '1456', '2016-02-05');
INSERT INTO `df_order` VALUES ('1273', '2', '赵洪生', '2,4,7,8', '2016-02-18');
INSERT INTO `df_order` VALUES ('1274', '2', '徐阳', '1257', '2016-02-18');
INSERT INTO `df_order` VALUES ('1275', '2', '文欢', '4，5，6，7', '2016-02-18');
INSERT INTO `df_order` VALUES ('1276', '2', '赵洪生', '4,6,7,8', '2016-02-19');
INSERT INTO `df_order` VALUES ('1277', '2', '文欢 ', ' 5，6，7，8', '2016-02-19');
INSERT INTO `df_order` VALUES ('1278', '2', '徐国金', '1468', '2016-02-19');
INSERT INTO `df_order` VALUES ('1279', '2', '赵洪生', '3,4,5,6', '2016-02-29');
INSERT INTO `df_order` VALUES ('1280', '2', '文欢', '1，2，6，8', '2016-02-29');
INSERT INTO `df_order` VALUES ('1281', '2', '徐国金', '1456', '2016-03-01');
INSERT INTO `df_order` VALUES ('1282', '2', '赵洪生', '1,5,6,7', '2016-03-01');
INSERT INTO `df_order` VALUES ('1283', '2', '赵洪生', '3,4,5,6', '2016-03-07');
INSERT INTO `df_order` VALUES ('1284', '2', '徐国金', '1456', '2016-03-08');
INSERT INTO `df_order` VALUES ('1285', '2', '赵洪生', '1,4,5,8', '2016-03-08');
INSERT INTO `df_order` VALUES ('1286', '2', '任贺', '1378', '2016-03-15');
INSERT INTO `df_order` VALUES ('1290', '5', 'asd', 'asd', '2016-03-17');
INSERT INTO `df_order` VALUES ('1291', '5', 'asd', 'asd', '2016-03-17');
INSERT INTO `df_order` VALUES ('1292', '5', 'asd', 'asd', '2016-03-17');
INSERT INTO `df_order` VALUES ('1293', '5', 'asd', 'asd', '2016-03-17');
INSERT INTO `df_order` VALUES ('1294', '5', 'asd', 'asd', '2016-03-17');
INSERT INTO `df_order` VALUES ('1295', '5', 'asd', 'asd', '2016-03-17');
INSERT INTO `df_order` VALUES ('1296', '5', '这里可以订烤肉饭', '烤肉饭', '2016-03-17');
INSERT INTO `df_order` VALUES ('1297', '5', 'wanglei', 'kaoroufan', '2016-03-18');
INSERT INTO `df_order` VALUES ('1298', '5', '徐阳', '烤肉饭', '2016-03-18');
INSERT INTO `df_order` VALUES ('1299', '5', '尚小彬', '鸡块饭', '2016-03-18');

-- ----------------------------
-- Table structure for `game_count`
-- ----------------------------
DROP TABLE IF EXISTS `game_count`;
CREATE TABLE `game_count` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `infor_id` int(8) NOT NULL,
  `all_games_count` int(8) NOT NULL,
  `success_count` int(8) NOT NULL,
  `date` date NOT NULL,
  `game_status` enum('fail','success','equal') NOT NULL,
  `role_id` int(8) NOT NULL,
  `all_werewolf_count` int(8) NOT NULL DEFAULT '0',
  `success_werewolf_count` int(8) NOT NULL DEFAULT '0',
  `all_prophet_count` int(8) NOT NULL DEFAULT '0',
  `success_prophet_count` int(8) NOT NULL DEFAULT '0',
  `all_witch_count` int(8) NOT NULL DEFAULT '0',
  `success_witch_count` int(8) NOT NULL DEFAULT '0',
  `all_hunter_count` int(8) NOT NULL DEFAULT '0',
  `success_hunter_count` int(8) NOT NULL DEFAULT '0',
  `all_civilian_count` int(8) NOT NULL DEFAULT '0',
  `success_civilian_count` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_count
-- ----------------------------
INSERT INTO `game_count` VALUES ('1', '1', '51', '25', '2016-10-26', 'fail', '1', '2', '1', '14', '1', '2', '1', '1', '1', '2', '1');
INSERT INTO `game_count` VALUES ('2', '2', '16', '9', '2016-10-26', 'success', '1', '0', '0', '7', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `game_count` VALUES ('3', '3', '11', '5', '2016-10-26', 'fail', '1', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `game_count` VALUES ('9', '4', '7', '4', '2016-10-26', 'fail', '1', '0', '0', '6', '1', '1', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `information`
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(100) NOT NULL,
  `age` int(8) NOT NULL,
  `gender` enum('girl','boy') NOT NULL DEFAULT 'boy',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('1', '王小远', '0', 'boy');
INSERT INTO `information` VALUES ('2', '纱布雷', '123', 'boy');
INSERT INTO `information` VALUES ('3', '碧莲东', '0', 'boy');
INSERT INTO `information` VALUES ('4', '智障龙', '0', 'girl');
INSERT INTO `information` VALUES ('5', '盛大', '1', 'boy');
INSERT INTO `information` VALUES ('6', 'asd ', '123', 'boy');
INSERT INTO `information` VALUES ('7', 'asd ', '123', 'boy');

-- ----------------------------
-- Table structure for `login_user`
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `login_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `login_name` tinyblob NOT NULL,
  `login_password` tinyblob NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES ('1', 0x7368616E675F7869616F62696E, 0x6261333235333837366165643662633232643461366666353364383430366336616438363431393565643134346162356338373632316236633233336235343862616561653639353664663334366563386331376635656131306633356565336362633531343739376564376464643331343534363465326130626162343133);
INSERT INTO `login_user` VALUES ('5', 0x7368616E677869616F62696E, 0x6261333235333837366165643662633232643461366666353364383430366336616438363431393565643134346162356338373632316236633233336235343862616561653639353664663334366563386331376635656131306633356565336362633531343739376564376464643331343534363465326130626162343133);

-- ----------------------------
-- Table structure for `player`
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `infor_id` int(8) NOT NULL,
  `date` date NOT NULL,
  `game_status` enum('equal','fail','success') NOT NULL DEFAULT 'equal',
  `role_id` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES ('431', '1', '2016-10-13', 'equal', '1');
INSERT INTO `player` VALUES ('513', '1', '2016-10-26', 'equal', '1');
INSERT INTO `player` VALUES ('514', '1', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('515', '1', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('516', '1', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('517', '1', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('518', '1', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('519', '2', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('520', '2', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('521', '2', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('522', '2', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('523', '2', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('524', '2', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('525', '3', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('526', '3', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('527', '4', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('528', '4', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('529', '4', '2016-10-26', 'success', '1');
INSERT INTO `player` VALUES ('530', '4', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('531', '4', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('532', '4', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('533', '3', '2016-10-26', 'fail', '1');
INSERT INTO `player` VALUES ('534', '3', '2016-10-26', 'fail', '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '预言家');
INSERT INTO `role` VALUES ('2', '女巫');
INSERT INTO `role` VALUES ('3', '猎人');
INSERT INTO `role` VALUES ('4', '狼人');
INSERT INTO `role` VALUES ('5', '平民');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'a1231231', '2', '3', 'boy');
INSERT INTO `student` VALUES ('2', 'a1', '123aa', '123', 'girl');
INSERT INTO `student` VALUES ('3', 'aaa', '34', '45', 'girl');
INSERT INTO `student` VALUES ('4', '11', '3', '4', 'boy');
INSERT INTO `student` VALUES ('5', '123aaa', '123', '123', 'boy');
INSERT INTO `student` VALUES ('6', '1', '1', '1', 'girl');
INSERT INTO `student` VALUES ('7', '1', '4', '45', '23');
INSERT INTO `student` VALUES ('8', '1aaaa', '1', '1', 'girl');
INSERT INTO `student` VALUES ('9', '121', '1', '1', 'boy');
INSERT INTO `student` VALUES ('74', '阿斯顿', '1', '1', 'boy');
INSERT INTO `student` VALUES ('75', '是否', '1', '1', 'boy');
INSERT INTO `student` VALUES ('76', '阿斯达', '1', '1', 'boy');
INSERT INTO `student` VALUES ('77', '敖德萨', '1', '1', 'boy');
INSERT INTO `student` VALUES ('78', '阿斯顿', '1', '1', 'boy');
INSERT INTO `student` VALUES ('79', '啊啊', '1', '1', 'boy');
INSERT INTO `student` VALUES ('80', '阿斯顿', '1', '1', 'boy');
INSERT INTO `student` VALUES ('81', '1', '1', '1', 'boy');
INSERT INTO `student` VALUES ('82', '1', '1', '1', 'boy');
INSERT INTO `student` VALUES ('83', '1', '1', '1', 'boy');
INSERT INTO `student` VALUES ('84', '1', '1', '1', 'boy');
INSERT INTO `student` VALUES ('85', '阿斯顿', '1', '1', 'boy');
INSERT INTO `student` VALUES ('86', '1', '1', '1', 'boy');
INSERT INTO `student` VALUES ('87', '双方都', '1', '1', 'boy');
INSERT INTO `student` VALUES ('88', '1', '1', '1', 'boy');
INSERT INTO `student` VALUES ('89', '1', '1', '1', 'boy');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) DEFAULT NULL,
  `password` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1');
