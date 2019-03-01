/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50641
Source Host           : localhost:3308
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-03-01 11:39:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_tab
-- ----------------------------
DROP TABLE IF EXISTS `about_tab`;
CREATE TABLE `about_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `pic_src` varchar(300) NOT NULL,
  `href` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_tab
-- ----------------------------

-- ----------------------------
-- Table structure for amin_tab
-- ----------------------------
DROP TABLE IF EXISTS `amin_tab`;
CREATE TABLE `amin_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of amin_tab
-- ----------------------------
INSERT INTO `amin_tab` VALUES ('1', 'vardy', '42d5d2953cc5d32baaf4a070d31c4487');
INSERT INTO `amin_tab` VALUES ('2', 'admin', 'b64e853e5753e858e633a3f2fda0b90a');
INSERT INTO `amin_tab` VALUES ('3', 'wangwang', '012dd634b58fa5ca7771c050b301fbc9');
INSERT INTO `amin_tab` VALUES ('4', 'user', '3620d18fe6eb5e16419dd3c499642790');

-- ----------------------------
-- Table structure for banner_tab
-- ----------------------------
DROP TABLE IF EXISTS `banner_tab`;
CREATE TABLE `banner_tab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `description` varchar(300) NOT NULL COMMENT '描述文字',
  `type` varchar(32) NOT NULL COMMENT '新闻类型',
  `contentHtml` text NOT NULL COMMENT '新闻内容',
  `pubtime` varchar(64) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner_tab
-- ----------------------------
INSERT INTO `banner_tab` VALUES ('26', '99999', '8888888888888888', 'xw', '<p>666666666666666</p>', '2018/12/10');
INSERT INTO `banner_tab` VALUES ('27', '测试新闻详情1', '详情1详情1详情1详情1详情1详情1详情1详情1详情1详情1', 'xw', '<p>惺惺惜惺惺想</p>', '2018/12/10');
INSERT INTO `banner_tab` VALUES ('28', '测试新闻2', '2222222222222222222222', 'xw', '<p>2</p>', '');
INSERT INTO `banner_tab` VALUES ('29', '测试新闻3', '33333333', 'xw', '<p>66666666666666666<img src=\"/upload/ueditor/1070151048213172224.png\" title=\"\" alt=\"monkey_l.png\"/></p>', '');
INSERT INTO `banner_tab` VALUES ('30', '新闻详情5', '555555', 'xw', '<p><img src=\"/upload/ueditor/1070153727119331328.jpg\" title=\"\" alt=\"ChMkJ1bKya-IHJi5AB8vZ1BkcNIAALIRAKn8WgAHy9_062.jpg\"/></p>', '');
INSERT INTO `banner_tab` VALUES ('31', '2', '2', 'xw', '<p>2</p>,<p>2</p>', '');
INSERT INTO `banner_tab` VALUES ('32', '2', '2222', 'xw', '<p>2222222222222<img src=\"/upload/ueditor/1070232163674361856.jpg\" title=\"\" alt=\"gxsozifcmkt.jpg\"/></p>,<p>2222222222222<img src=\"/upload/ueditor/1070232163674361856.jpg\" title=\"\" alt=\"gxsozifcmkt.jpg\"/></p>', '');
INSERT INTO `banner_tab` VALUES ('35', '55', '5555555555555', 'xw', '<p>88888888888888888888</p>', '');
INSERT INTO `banner_tab` VALUES ('36', '6', '6666666', 'xw', '66666666,<p>66666666<img src=\"http://img.baidu.com/hi/jx2/j_0069.gif\"/></p>', '');
INSERT INTO `banner_tab` VALUES ('37', '8', '88888888888', 'xw', '<p>么么么么么么么么么么么么么么么么</p><p><br/></p><p><em>jjjjjjjjj</em><br/></p><p><em><br/></em></p><p><span style=\"text-decoration: underline;\"><sup><em>vvvvvvvvvvvvvvvvvvvvvvv</em></sup></span></p><p><sup><em>wwwwwwwwwwwwwwww</em></sup></p><p><span style=\"border: 1px solid rgb(0, 0, 0);\">iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii</span></p><p><em>i</em></p><p><em><strong>hhhhhhhhhhhhhhhhhhhhhhhhh</strong><br/></em></p>', '');
INSERT INTO `banner_tab` VALUES ('38', 'i', 'iiiiiiiiiiiiiiiiiii', 'xw', '<p>iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii</p>', '2018/12/6');
INSERT INTO `banner_tab` VALUES ('39', '2', '2', 'xw', '<p>2222222222222222222222222</p>', '2018/12/6');
INSERT INTO `banner_tab` VALUES ('40', '谷歌1', '谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1', 'xw', '<p>谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1谷歌1</p>', '2018/12/6');
INSERT INTO `banner_tab` VALUES ('41', '3601', '3601360136013601360136013601360136013601360136013601', 'xw', '<p>lllllllllllllllllllllll</p>', '2018/12/7');
INSERT INTO `banner_tab` VALUES ('42', '3333333333', '8', 'gl', '<p><img src=\"/upload/ueditor/1070953142776107008.jpg\" title=\"\" alt=\"gxsozifcmkt.jpg\" width=\"1187\" height=\"980\"/></p>', '2018/12/7');
INSERT INTO `banner_tab` VALUES ('43', '新角色：守望者安妮技能介绍', '1111111111', 'gg', '<p><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 0, 0); font-size: 18px; line-height: 50px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">1技能丨流光姿态</strong></span></p><p><img alt=\"1544061681185_4184.jpg\" src=\"http://img.yh.cn/game/news/5/1544061681185_4184.jpg\"/></p><p>带你看星星</p><p>两段技能，使用手枪向前射击，子弹遇到敌人或到极限距离爆炸，随后可向前发冲击并留下区域伤害</p><p>&nbsp;</p><p><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 111, 0); font-size: 18px; line-height: 50px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 0, 0);\">2技能丨防御领域</span></strong></p><p><img alt=\"1544061688112_488.jpg\" src=\"http://img.yh.cn/game/news/5/1544061688112_488.jpg\"/></p><p>能打疼算我输</p><p>架起盾牌，身边出现防御领域，期间大幅减伤且免疫所有控制；再次按键或持续一定时间后，解除防御并爆发强力的能量冲击攻击附近所有敌人</p><p>&nbsp;</p><p><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 111, 0); font-size: 18px; line-height: 50px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 0, 0);\">3技能丨坚盾之力</span></strong></p><p><img alt=\"1544061695128_6851.jpg\" src=\"http://img.yh.cn/game/news/5/1544061695128_6851.jpg\"/></p><p>三百条激光枪技术强，八百个纳米盾不锈钢</p><p>三段攻击，第一段用盾划过地面上挑，对前方造成范围冲击；第二段用盾砸击地面，对自身周围造成范围冲击；第三段跃起，在空中用盾对地面进行重砸爆发超强冲击并打断敌人攻击；每段攻击有少量向前位移，每次冲击比前一次更强力</p><p>&nbsp;</p><p><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 111, 0); font-size: 18px; line-height: 50px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 0, 0);\">4技能丨无敌重炮</span></strong></p><p><img alt=\"1544061701425_8014.jpg\" src=\"http://img.yh.cn/game/news/5/1544061701425_8014.jpg\"/></p><p>我的炮强还是哥哥的强？</p><p>跃到空中（期间无敌），手枪变形成重炮，向地面发射强力射击并留下持续的电流伤害区域</p><p>&nbsp;</p><p><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 111, 0); font-size: 18px; line-height: 50px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 0, 0);\">5技能丨圣盾力场</span></strong></p><p><img alt=\"1544061710460_3836.jpg\" src=\"http://img.yh.cn/game/news/5/1544061710460_3836.jpg\"/></p><p>你对力量一无所知</p><p>向前冲锋使用盾牌撞飞敌人，命中会造成短暂打断并展开力场困住对方</p><p>&nbsp;</p><p><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 111, 0); font-size: 18px; line-height: 50px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(255, 0, 0);\">61大招丨守望羁绊</span></strong></p><p><img alt=\"1544061717113_7944.jpg\" src=\"http://img.yh.cn/game/news/5/1544061717113_7944.jpg\"/></p><p>希望，能和哥哥一起战斗！</p><p>守望者挥舞征服者预留在她身上的舰炮，将征服者传送到他身边并肩作战，给予敌人致命一击</p><p><br/></p>', '2018/12/7');
INSERT INTO `banner_tab` VALUES ('44', '全新史诗宠物，竟然对噩梦女王做出过这样的事情？？', 'gggggggggggggggggggg', 'gg', '<p>相信更新后大家都会发现</p><p>游戏中多了一个“收集乐魂”的活动</p><p>大家需要根据音符提示，找出乐魂</p><p><img alt=\"1542187991205_5148.png\" src=\"http://img.yh.cn/game/news/5/1542187991205_5148.png\"/><br/><img alt=\"1542187997324_1853.png\" src=\"http://img.yh.cn/game/news/5/1542187997324_1853.png\"/></p><p>&nbsp;</p><p>并且，如果留意“庆典预告”的话</p><p>你会发现在11月21日更新</p><p>会上线一个史诗宠物</p><p>画面上是从未见过的身影</p><p>是一位操盘打碟的DJ</p><p><img alt=\"1542188047314_5767.jpg\" src=\"http://img.yh.cn/game/news/5/1542188047314_5767.jpg\"/></p><p>&nbsp;</p><p>&nbsp;</p><p>这位DJ，名叫安娜</p><p>是控制噩梦女王，占据噩梦乐园的“祸首”</p><p><img alt=\"1542188055975_5743.jpg\" src=\"http://img.yh.cn/game/news/5/1542188055975_5743.jpg\"/><br/>&nbsp;</p><p>好好的一位乐师，为什么要这样做？</p><p>她又如何控制噩梦女王？</p><p>&nbsp;</p><p>安娜和歌姬二人，都是乐园中出色的表演者</p><p>有安娜驻场，乐园夜场Party绝对够燥够嗨</p><p>歌姬则是大剧院里最唯美的歌者</p><p>二者互为知音</p><p>然而，随着星球上人们娱乐潮流的改变</p><p>乐园不复往日热闹</p><p>歌姬心有不甘，怨念日益加深</p><p>生性狂躁的安娜和歌姬合计</p><p>利用安娜的躁动音波力量，改造了歌姬的机械生命体</p><p>赋予歌姬强大的音波操控力量</p><p>由此震慑乐园中其他玩偶成员，将乐园变成“恐怖主题馆”</p><p><img alt=\"1542188098329_8852.jpg\" src=\"http://img.yh.cn/game/news/5/1542188098329_8852.jpg\"/></p><p>&nbsp;</p><p>可以说，是安娜，将歌姬变成“噩梦女王”</p><p>而噩梦女王，造就了噩梦乐园</p><p>一切的源头，都起自安娜和歌姬的怨念</p><p>&nbsp;</p><p>猎人击败噩梦女王后，从她口中得知安娜藏在暗处</p><p>于是借助嘉年华庆典的契机，打造一场全宇宙最热闹的Party</p><p>以此感化安娜</p><p>&nbsp;</p><p>安娜心中，始终怀揣乐师的初心</p><p>经历过噩梦乐园一役，以及猎人辛苦收集乐魂，安抚安娜内心</p><p>使安娜觉悟</p><p>最终选择担任嘉年华庆典的主乐师</p><p>并加入猎人组织，成为猎人们的强力伙伴！</p><p>&nbsp;</p><p>安娜的故事就说到这里</p><p>猎人菌探知，安娜属于辅助性质的宠物伙伴</p><p>她的技能到底有什么作用？</p><p>请留意公众号：yhsklr<br/>为你提供最新游戏情报！</p><p>&nbsp;</p><p><br/></p>', '2018/12/7');
INSERT INTO `banner_tab` VALUES ('45', '跑商换专属称号！《时空猎人》11月28日更新公告', 'ddddddddddddddddddddddddddddd', 'xw', '<p>99</p>', '2018/12/10');
INSERT INTO `banner_tab` VALUES ('46', '1', '1', 'xw', '<p><img class=\"loadingclass\" id=\"loading_jpkzpsuj\" src=\"/ueditor/themes/default/images/spacer.gif\" title=\"正在上传...\"/></p>', '2018/12/12');
INSERT INTO `banner_tab` VALUES ('47', '活动一', '活动一活动一活动一活动一', 'hd', '<p>活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一活动一</p>', '2018/12/17');
INSERT INTO `banner_tab` VALUES ('48', '活动二', '活动二活动二活动二活动二活动二活动二活动二活动二活动二活动二活动二活动二活动二', 'hd', '<p><img src=\"/upload/1074493914041421824.png\" title=\"\" alt=\"QQ图片20181212170530.png\"/></p>', '2018/12/17');
INSERT INTO `banner_tab` VALUES ('49', '活动一i意义你', '活动一i意义你活动一i意义你活动一i意义你活动一i意义你活动一i意义你', 'hd', '<p><img src=\"/upload/1074563759235796992.png\" title=\"\" alt=\"fly4.png\"/></p>', '2018/12/17');
INSERT INTO `banner_tab` VALUES ('50', '活动二', '6', 'xw', '<p><img src=\"/upload/1074578438125391872.png\" title=\"\" alt=\"fly2.png\"/></p>', '2018/12/17');

-- ----------------------------
-- Table structure for blog_tab
-- ----------------------------
DROP TABLE IF EXISTS `blog_tab`;
CREATE TABLE `blog_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '博客标题',
  `pic_src` varchar(300) NOT NULL COMMENT '博客列表小图',
  `pic_big_src` varchar(300) NOT NULL COMMENT '博客大图',
  `summary` varchar(500) NOT NULL COMMENT '概要',
  `content` text NOT NULL COMMENT '博客内容',
  `pubtime` int(11) NOT NULL COMMENT '发布时间',
  `author` varchar(32) NOT NULL COMMENT '作者',
  `nview` varchar(32) NOT NULL COMMENT '浏览次数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tab
-- ----------------------------

-- ----------------------------
-- Table structure for contact_tab
-- ----------------------------
DROP TABLE IF EXISTS `contact_tab`;
CREATE TABLE `contact_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addr` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(32) NOT NULL,
  `weibo` varchar(64) NOT NULL,
  `wx` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_tab
-- ----------------------------

-- ----------------------------
-- Table structure for custom_evalution_tab
-- ----------------------------
DROP TABLE IF EXISTS `custom_evalution_tab`;
CREATE TABLE `custom_evalution_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `description` varchar(200) NOT NULL COMMENT '评价详情',
  `src` varchar(300) NOT NULL COMMENT '用户头像',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_evalution_tab
-- ----------------------------
INSERT INTO `custom_evalution_tab` VALUES ('24', '11111', '11111111111嘻嘻嘻嘻i嘻嘻嘻嘻嘻ii嘻嘻嘻i嘻嘻嘻嘻i嘻嘻  ', '170aad30fa57799fb5cfd74e5909de8d.jpg');
INSERT INTO `custom_evalution_tab` VALUES ('26', '33333333333333', '3333333333333333', '49c5b1762c7ea2ec798d68d7131c6495.png');
INSERT INTO `custom_evalution_tab` VALUES ('27', '上传', '呵呵呵呵呵呵呵呵呵', '8efd982a34b31b1ed02fc3519f1c6e13.jpg');
INSERT INTO `custom_evalution_tab` VALUES ('28', '33333333333333', '1', 'null');
INSERT INTO `custom_evalution_tab` VALUES ('29', '12222', '', 'null');

-- ----------------------------
-- Table structure for intro_tab
-- ----------------------------
DROP TABLE IF EXISTS `intro_tab`;
CREATE TABLE `intro_tab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'da',
  `title` varchar(300) NOT NULL COMMENT '大标题',
  `description` varchar(200) NOT NULL COMMENT '描述文字',
  `href` varchar(300) NOT NULL COMMENT '点击链接',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intro_tab
-- ----------------------------

-- ----------------------------
-- Table structure for msg_tab
-- ----------------------------
DROP TABLE IF EXISTS `msg_tab`;
CREATE TABLE `msg_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` text NOT NULL COMMENT '提交的内容主体',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_tab
-- ----------------------------

-- ----------------------------
-- Table structure for news_tab
-- ----------------------------
DROP TABLE IF EXISTS `news_tab`;
CREATE TABLE `news_tab` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '新闻标题',
  `summary` varchar(500) NOT NULL COMMENT '简介',
  `ico_src` varchar(300) NOT NULL COMMENT '列表小图标',
  `big_pic_src` varchar(300) NOT NULL COMMENT '新闻大图',
  `content` text NOT NULL COMMENT '新闻详情',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_tab
-- ----------------------------

-- ----------------------------
-- Table structure for slide_tab
-- ----------------------------
DROP TABLE IF EXISTS `slide_tab`;
CREATE TABLE `slide_tab` (
  `ID` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 NOT NULL,
  `href` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slide_tab
-- ----------------------------
INSERT INTO `slide_tab` VALUES ('1', '6', '570381ebaa4f88f63ff34148c6e356d8.gif', '6');
INSERT INTO `slide_tab` VALUES ('2', '测试新闻轮播1', 'd59a5e233aa8af2c9410699b12f485b9.jpg', '测试新闻轮播1测试新闻轮播1测试新闻轮播1');
INSERT INTO `slide_tab` VALUES ('3', '测试新闻轮播2', '4f0e1526bf00ea6ab68b7403cf84f84a.jpg', '测试新闻轮播2测试新闻轮播2');
INSERT INTO `slide_tab` VALUES ('4', '1', '2cc0bac1a23d0f204f92f109be7f82b6.png', '1');
