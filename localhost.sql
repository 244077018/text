-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2013 年 04 月 25 日 16:50
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `dnf`
-- 
CREATE DATABASE `dnf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dnf`;

-- --------------------------------------------------------

-- 
-- 表的结构 `admin`
-- 

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `pwd` char(32) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `admin`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `auction`
-- 

DROP TABLE IF EXISTS `auction`;
CREATE TABLE IF NOT EXISTS `auction` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '买家id',
  `eqid` int(11) NOT NULL COMMENT '装备id',
  `aumoney` float(8,2) NOT NULL COMMENT '竞拍价格',
  `autime` int(11) NOT NULL COMMENT '竞拍时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='竞拍记录表' AUTO_INCREMENT=53 ;

-- 
-- 导出表中的数据 `auction`
-- 

INSERT INTO `auction` VALUES (1, 14, 24, 80.00, 1366796457);
INSERT INTO `auction` VALUES (2, 16, 23, 80.00, 1366806078);
INSERT INTO `auction` VALUES (3, 16, 22, 140.00, 1366806120);
INSERT INTO `auction` VALUES (4, 16, 23, 98.00, 1366806187);
INSERT INTO `auction` VALUES (5, 17, 52, 55.00, 1366806908);
INSERT INTO `auction` VALUES (6, 17, 53, 40.00, 1366806928);
INSERT INTO `auction` VALUES (7, 16, 53, 45.00, 1366806960);
INSERT INTO `auction` VALUES (8, 17, 53, 50.00, 1366807003);
INSERT INTO `auction` VALUES (9, 16, 53, 60.00, 1366807056);
INSERT INTO `auction` VALUES (10, 17, 53, 70.00, 1366807084);
INSERT INTO `auction` VALUES (11, 17, 55, 88.00, 1366807182);
INSERT INTO `auction` VALUES (12, 17, 23, 100.00, 1366807196);
INSERT INTO `auction` VALUES (13, 17, 13, 80.00, 1366807259);
INSERT INTO `auction` VALUES (14, 17, 19, 88.00, 1366807291);
INSERT INTO `auction` VALUES (15, 17, 6, 100.00, 1366807401);
INSERT INTO `auction` VALUES (16, 16, 23, 110.00, 1366807460);
INSERT INTO `auction` VALUES (17, 14, 52, 66.00, 1366807632);
INSERT INTO `auction` VALUES (18, 14, 54, 40.00, 1366807659);
INSERT INTO `auction` VALUES (19, 14, 55, 90.00, 1366807670);
INSERT INTO `auction` VALUES (20, 14, 24, 85.00, 1366807708);
INSERT INTO `auction` VALUES (21, 14, 18, 90.00, 1366807889);
INSERT INTO `auction` VALUES (22, 14, 55, 95.00, 1366807911);
INSERT INTO `auction` VALUES (23, 16, 24, 90.00, 1366807975);
INSERT INTO `auction` VALUES (24, 14, 22, 150.00, 1366808430);
INSERT INTO `auction` VALUES (25, 14, 70, 88.00, 1366820737);
INSERT INTO `auction` VALUES (26, 14, 54, 45.00, 1366824093);
INSERT INTO `auction` VALUES (27, 16, 21, 80.00, 1366824332);
INSERT INTO `auction` VALUES (28, 15, 43, 100.00, 1366869066);
INSERT INTO `auction` VALUES (29, 15, 44, 200.00, 1366869179);
INSERT INTO `auction` VALUES (30, 14, 30, 232.00, 1366895652);
INSERT INTO `auction` VALUES (31, 14, 30, 240.00, 1366895685);
INSERT INTO `auction` VALUES (32, 14, 32, 259.00, 1366902684);
INSERT INTO `auction` VALUES (33, 14, 28, 255.00, 1366903791);
INSERT INTO `auction` VALUES (34, 16, 28, 260.00, 1366903817);
INSERT INTO `auction` VALUES (35, 14, 39, 100.00, 1366903862);
INSERT INTO `auction` VALUES (36, 16, 40, 340.00, 1366903873);
INSERT INTO `auction` VALUES (37, 17, 25, 65.00, 1366903905);
INSERT INTO `auction` VALUES (38, 17, 29, 333.00, 1366903917);
INSERT INTO `auction` VALUES (39, 14, 44, 220.00, 1366903963);
INSERT INTO `auction` VALUES (40, 16, 28, 280.00, 1366903994);
INSERT INTO `auction` VALUES (41, 16, 28, 300.00, 1366904023);
INSERT INTO `auction` VALUES (42, 17, 30, 250.00, 1366904109);
INSERT INTO `auction` VALUES (43, 14, 63, 90.00, 1366907366);
INSERT INTO `auction` VALUES (44, 14, 62, 80.00, 1366907386);
INSERT INTO `auction` VALUES (45, 14, 39, 110.00, 1366907414);
INSERT INTO `auction` VALUES (46, 16, 30, 260.00, 1366907524);
INSERT INTO `auction` VALUES (47, 16, 27, 140.00, 1366907536);
INSERT INTO `auction` VALUES (48, 16, 61, 75.00, 1366907551);
INSERT INTO `auction` VALUES (49, 17, 63, 97.00, 1366907600);
INSERT INTO `auction` VALUES (50, 17, 28, 320.00, 1366907623);
INSERT INTO `auction` VALUES (51, 17, 61, 80.00, 1366907709);
INSERT INTO `auction` VALUES (52, 17, 34, 340.00, 1366907745);

-- --------------------------------------------------------

-- 
-- 表的结构 `equip`
-- 

DROP TABLE IF EXISTS `equip`;
CREATE TABLE IF NOT EXISTS `equip` (
  `id` int(11) NOT NULL auto_increment COMMENT '装备id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `quid` int(11) NOT NULL COMMENT '大区id',
  `zyid` int(11) NOT NULL COMMENT '职业id',
  `bjid` int(11) NOT NULL COMMENT '装备部件分类id',
  `qiang` int(11) NOT NULL default '0' COMMENT '强化等级',
  `eqname` varchar(30) NOT NULL COMMENT '装备名称',
  `eqdes` text NOT NULL COMMENT '装备简介',
  `price` float(8,2) NOT NULL COMMENT '装备价格',
  `starttime` int(11) NOT NULL COMMENT '开拍时间戳',
  `endtime` int(11) NOT NULL COMMENT '结束竞拍时间戳',
  `pic` varchar(50) NOT NULL COMMENT '装备图片路径',
  `ispush` tinyint(1) NOT NULL default '0' COMMENT '是否推荐',
  `auresult` tinyint(1) NOT NULL default '0' COMMENT '竞拍结果 1为交易成功',
  `autimes` int(11) NOT NULL COMMENT '被竞拍的次数',
  `isorder` tinyint(1) NOT NULL default '0' COMMENT '是否生成过订单',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='装备表' AUTO_INCREMENT=100 ;

-- 
-- 导出表中的数据 `equip`
-- 

INSERT INTO `equip` VALUES (1, 14, 50, 17, 60, 1, '商品a1', '商品a1', 12.00, 1366788780, 1366875180, '51778a7390484.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (2, 14, 52, 35, 63, 2, '商品a2', '商品a2', 23.00, 1366788960, 1366875360, '51778abf19db6.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (3, 14, 52, 34, 63, 4, '商品a3', '商品asaadf', 54.00, 1366789560, 1366875960, '51778aea0fc2b.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (4, 14, 52, 34, 63, 6, '商品a4', '商品aergqqwer', 64.00, 1366789500, 1366875900, '51778b410a0e1.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (5, 14, 52, 32, 64, 2, '商品a5', '商品argtue', 85.00, 1366789260, 1366875660, '51778b5c7e3d6.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (6, 14, 52, 34, 65, 6, '商品a6', '商品akaer', 98.00, 1366789140, 1366875540, '51778b85c5d85.jpg', 0, 0, 1, 1);
INSERT INTO `equip` VALUES (7, 14, 52, 34, 64, 2, '商品a7', '商品atyjwswa', 63.00, 1366789440, 1366875840, '51778b9d2b558.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (8, 14, 55, 36, 67, 76, '商品a7', '', 99.00, 1366789260, 1366875660, '51778bba2a842.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (9, 14, 51, 34, 63, 5, '商品a8', '商品aykeww', 36.00, 1366789380, 1366875780, '51778bd6ef62a.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (10, 14, 52, 34, 61, 2, '商品a9', '商品aerhqq4t', 75.00, 1366789560, 1366875960, '51778bf55f0b4.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (11, 14, 54, 35, 63, 2, '商品a10', '商品arjwew', 73.00, 1366789500, 1366875900, '51778c111f0f9.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (12, 14, 54, 35, 64, 5, '商品a11', '商品aerhyawert', 84.00, 1366789500, 1366875900, '51778c347bf94.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (13, 14, 51, 35, 67, 4, '商品a12', '商品arehqaerg', 74.00, 1366789920, 1366876320, '51778c55abfff.jpg', 0, 0, 1, 1);
INSERT INTO `equip` VALUES (14, 14, 53, 36, 63, 6, '商品a13', '商品atyjhaewrf', 78.00, 1366789860, 1366876260, '51778c9c7a054.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (15, 14, 52, 33, 67, 2, '商品a14', '商品arthqe', 87.00, 1366789560, 1366875960, '51778cbceb644.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (16, 14, 51, 36, 62, 43, '商品a15', '商品agedg', 76.00, 1366789980, 1366833180, '51778d20540d9.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (17, 14, 56, 36, 64, 6, '商品a16', '商品arjhwr', 73.00, 1366789860, 1366833060, '51778d391f560.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (18, 14, 52, 37, 63, 6, '商品a17', '商品atywqwrtf', 84.00, 1366789800, 1366833000, '51778d59334c9.jpg', 0, 0, 1, 1);
INSERT INTO `equip` VALUES (19, 14, 54, 33, 64, 5, '商品a18', '', 72.00, 1366789920, 1366876320, '51778d6f5c620.jpg', 0, 0, 1, 1);
INSERT INTO `equip` VALUES (20, 14, 52, 36, 64, 6, '商品a19', '商品atrjhqaergt', 94.00, 1366790280, 1366833480, '51778d9eb54c9.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (21, 14, 51, 17, 60, 2, '商品a21', '商品aerwgfsg', 63.00, 1366794660, 1366837860, '5177a0c4b255e.jpg', 0, 0, 1, 1);
INSERT INTO `equip` VALUES (22, 14, 53, 35, 63, 5, '商品a22', '商品aregag', 132.00, 1366794840, 1366881240, '5177a0f24bab1.png', 0, 0, 2, 1);
INSERT INTO `equip` VALUES (23, 14, 53, 34, 66, 43, '商品a23', '', 76.00, 1366795260, 1366838460, '5177a1111ef41.jpg', 0, 0, 4, 1);
INSERT INTO `equip` VALUES (24, 14, 52, 36, 64, 6, '商品a23', '商品ajwstre', 74.00, 1366794960, 1366838160, '5177a12e8c66d.png', 0, 0, 3, 1);
INSERT INTO `equip` VALUES (25, 14, 53, 34, 62, 5, '商品a24', '商品adfgwr', 63.00, 1366881300, 1366967700, '5177a23554b38.png', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (26, 14, 52, 34, 63, 7, '商品a25', '商品ajear', 74.00, 1366856160, 1366942560, '5177a25a7d363.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (27, 14, 54, 34, 61, 8, '商品a26', '商品akrytyrwef', 132.00, 1366882200, 1366968600, '5177a27eaa249.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (28, 14, 51, 35, 62, 9, '商品a27', '商品afjtqertf', 244.00, 1366890240, 1366976640, '5177a29bc17f3.jpg', 0, 0, 5, 0);
INSERT INTO `equip` VALUES (29, 14, 51, 36, 64, 14, '商品a28', '商品atrhsfrg', 322.00, 1366881840, 1366925040, '5177a2c108e1d.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (30, 14, 54, 37, 68, 99, '商品a29', '商品artuasfwe', 212.00, 1366894140, 1366937340, '5177a2ee144e6.png', 0, 0, 4, 0);
INSERT INTO `equip` VALUES (31, 14, 50, 33, 64, 65, '商品a30', '商品arhrehryj', 324.00, 1366856940, 1366900140, '5177a33685e3a.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (32, 14, 54, 35, 64, 87, '商品a31', '商品aksfdsf', 246.00, 1366868100, 1366954500, '5177a360f0fdc.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (33, 14, 52, 17, 60, 854, '商品a32', '商品adsheg', 334.00, 1366860600, 1366947000, '5177a381c5140.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (34, 14, 54, 34, 64, 73, '商品a33', '商品aedgerrg', 323.00, 1366875660, 1366918860, '5177a3a48574d.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (35, 14, 54, 35, 62, 83, '商品a34', '商品aergerg', 345.00, 1366932960, 1367019360, '5177a3c7e8ebc.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (36, 14, 52, 34, 64, 63, '商品a35', '商品atrheargaewf', 351.00, 1366960680, 1367003880, '5177a3ee8c60a.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (37, 14, 53, 35, 64, 62, '商品a36', '商品aergheargr', 234.00, 1366971540, 1367057940, '5177a40df26c6.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (38, 14, 52, 34, 63, 63, '商品a35', '商品ahergv', 63.00, 1366946220, 1366989420, '5177a4317fcc5.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (39, 14, 51, 17, 65, 72, '商品a36', '商品aryhjerg', 94.00, 1366882440, 1366968840, '5177a4533cff1.jpg', 0, 0, 2, 0);
INSERT INTO `equip` VALUES (40, 14, 54, 35, 63, 72, '商品a37', '商品ateheargfwer', 321.00, 1366883460, 1366969860, '5177a47b1c314.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (41, 14, 53, 35, 65, 63, '商品a37', '商品aethewar', 70.00, 1366889400, 1366975800, '5177a4a28765e.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (42, 14, 51, 36, 69, 76, '商品a38', '商品ayjhergt', 90.00, 1366939680, 1367026080, '5177a4d0aa350.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (43, 14, 54, 33, 64, 95, '商品a38', '商品arthaerf', 89.00, 1366864200, 1366950600, '5177a53670822.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (44, 14, 53, 34, 62, 8, '商品a40', '商品aerherf', 190.00, 1366856220, 1366942620, '5177a55b9ba20.jpg', 0, 0, 2, 0);
INSERT INTO `equip` VALUES (45, 14, 54, 35, 64, 52, '商品a41', '商品aerher', 96.00, 1366866960, 1366953360, '5177a577bb506.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (46, 14, 52, 35, 66, 72, '商品41', '商品aeherf', 36.00, 1366993980, 1367080380, '5177a59c97c91.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (47, 14, 56, 32, 60, 73, '商品a42', '商品aryjetg', 74.00, 1367032500, 1367118900, '5177a5bc5c94b.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (48, 14, 52, 34, 62, 73, '商品a43', '商品aergewr', 98.00, 1367025120, 1367111520, '5177a5deb6f7b.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (49, 14, 53, 34, 65, 65, '商品a44', 'sdg商品a', 254.00, 1366929000, 1366972200, '5177a60813e9f.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (50, 16, 51, 35, 64, 3, '装备b', '装备brehger', 54.00, 1366807800, 1366894200, '5177cafebac04.JPG', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (51, 16, 53, 35, 62, 45, '装备b2', '装备bregr', 63.00, 1366806120, 1366892520, '5177cb15d7d09.JPG', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (52, 16, 51, 35, 62, 52, '装备b3', '装备bergew', 53.00, 1366806720, 1366849920, '5177cb301b28e.JPG', 0, 0, 2, 1);
INSERT INTO `equip` VALUES (53, 16, 53, 34, 60, 65, '装备b3', '装备berger', 37.00, 1366806600, 1366849800, '5177cb479d3fe.JPG', 0, 0, 5, 1);
INSERT INTO `equip` VALUES (54, 16, 56, 34, 63, 76, '装备b5', '装备btjrtgres', 37.00, 1366806480, 1366892880, '5177cb60939cb.JPG', 0, 0, 2, 1);
INSERT INTO `equip` VALUES (55, 16, 54, 17, 60, 9, '装备b6', '装备bryjrtr', 84.00, 1366806480, 1366849680, '5177cb7d01d1b.jpg', 0, 0, 3, 1);
INSERT INTO `equip` VALUES (56, 16, 52, 34, 64, 8, '装备b7', '装备btrher', 46.00, 1366806000, 1366892400, '5177cb93132cb.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (57, 16, 52, 34, 60, 65, '装备b8', '', 321.00, 1366805940, 1366849140, '5177cbaccfc39.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (58, 16, 55, 17, 60, 33, '装备b9', '装备bkjrtg', 77.00, 1366806300, 1366892700, '5177cbcc231e9.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (59, 16, 54, 34, 63, 43, '装备b10', '装备brtjersf', 84.00, 1366806480, 1366892880, '5177cbeeb16d6.JPG', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (60, 16, 55, 35, 65, 8, '装备b11', '装备berher', 99.00, 1366860300, 1366903500, '5177cc118e790.JPG', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (61, 16, 53, 34, 63, 6, '装备b12', '装备bether', 73.00, 1366879140, 1366922340, '5177cc3305ad7.jpg', 0, 0, 2, 0);
INSERT INTO `equip` VALUES (62, 16, 52, 36, 66, 72, '装备b13', '装备betherwre', 74.00, 1366888920, 1366975320, '5177cc55ed1e6.jpg', 0, 0, 1, 0);
INSERT INTO `equip` VALUES (63, 16, 52, 34, 63, 53, '装备b14', '装备btrher', 84.00, 1366903800, 1366990200, '5177cc792d913.JPG', 0, 0, 2, 0);
INSERT INTO `equip` VALUES (64, 16, 52, 34, 60, 84, '装备b15', '装备brgrewf', 322.00, 1366979520, 1367022720, '5177cc9d0f53c.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (65, 16, 54, 35, 60, 76, '装备b16', '装备btrhuerfw', 93.00, 1366946160, 1366989360, '5177ccbea90f2.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (66, 16, 53, 35, 62, 84, '装备b17', '装备berhwr', 69.00, 1366870860, 1366957260, '5177cce39b61a.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (67, 16, 52, 35, 62, 73, '装备b18', '装备btherew', 231.00, 1366840800, 1366884000, '5177cd04c9b03.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (68, 16, 54, 32, 64, 74, '装备b19', '装备bsagw', 189.00, 1366838340, 1366881540, '5177cd2470cfb.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (69, 16, 54, 36, 64, 23, '装备b20', 's装备brth', 57.00, 1366838640, 1366881840, '5177cd4655574.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (70, 16, 52, 36, 60, 63, '装备b21', '装备bregwe', 84.00, 1366806300, 1366849500, '5177cdb0a73ab.JPG', 0, 0, 1, 1);
INSERT INTO `equip` VALUES (71, 14, 53, 35, 63, 3, '测试1', '测试dfwefwef', 64.00, 1366968960, 1367055360, '5179504a394fd.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (72, 14, 54, 17, 64, 4, '测试2', '测试rthwerg', 87.00, 1366968000, 1367054400, '517950620229a.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (73, 14, 55, 35, 63, 75, '测试3', '测试rehertgf', 77.00, 1366936380, 1367022780, '5179507e28171.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (74, 14, 52, 35, 63, 84, '测试4', '测试ertgewrf', 64.00, 1366946580, 1367032980, '5179509a946ec.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (75, 14, 55, 35, 63, 74, '测试5', '测试rherf', 85.00, 1366967700, 1367010900, '517950b2ee811.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (76, 14, 53, 36, 62, 74, '测试6', '测试dthearg', 99.00, 1367026680, 1367113080, '517950d1979a1.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (77, 14, 52, 35, 60, 35, '测试7', '测试yjerfwef', 85.00, 1367058240, 1367144640, '517950ebe859d.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (78, 14, 52, 35, 60, 35, '测试7', '测试yjerfwef', 85.00, 1367058240, 1367144640, '517950edc33d6.png', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (79, 14, 51, 34, 65, 57, '测试8', '', 93.00, 1367051220, 1367094420, '51795108dff9c.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (80, 14, 53, 35, 65, 64, '测试9', '测试ryhearsf', 98.00, 1367047140, 1367090340, '517951223ab3d.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (81, 14, 53, 34, 63, 76, '测试10', '测试ethqearf', 55.00, 1367032620, 1367119020, '5179513f3e18a.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (82, 14, 56, 35, 65, 64, '测试11', '测试erygef', 86.00, 1367148840, 1367192040, '5179516444a21.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (83, 14, 53, 35, 65, 64, '测试12', '测试ethgearf', 124.00, 1367136780, 1367223180, '51795181c49ed.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (84, 14, 52, 36, 63, 63, '测试13', '测试regrewgfrw', 78.00, 1367145540, 1367231940, '517951a0a59f6.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (85, 14, 53, 34, 64, 64, '测试14', '测试regsfadf', 93.00, 1367144880, 1367188080, '517951c2b3684.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (86, 14, 53, 35, 60, 74, '测试15', '测试ethgearwf', 86.00, 1367138280, 1367224680, '517951e55eef1.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (87, 14, 52, 34, 63, 734, '测试16', '测试ergeargf', 34.00, 1367149500, 1367235900, '5179520895c04.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (88, 14, 51, 34, 63, 72, '测试17', '测试rgasfwef', 45.00, 1367227560, 1367270760, '5179522f982b1.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (89, 14, 53, 36, 64, 74, '测试18', '测试edtherf', 36.00, 1367234940, 1367278140, '5179525306fa1.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (90, 14, 53, 35, 66, 78, '测试19', '测试rthreaf', 23.00, 1367235420, 1367278620, '5179527a1200b.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (91, 14, 53, 34, 63, 63, '测试20', '测试ergasf', 65.00, 1367234640, 1367321040, '5179529f4111d.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (92, 14, 54, 33, 65, 641, '测试22', '测试teherfasfsdf', 3.00, 1367236080, 1367322480, '517952cfde2f1.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (93, 14, 53, 35, 65, 45, '测试23', '测试regwrgwr', 55.00, 1367306760, 1367349960, '517952f84ec38.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (94, 14, 52, 35, 64, 64, '测试24', '测试etheraf', 67.00, 1367280840, 1367324040, '517953161cb3f.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (95, 14, 54, 35, 64, 74, '测试25', '测试reheatgws', 34.00, 1367314200, 1367400600, '5179533257b4d.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (96, 14, 55, 36, 63, 74, '测试26', '测试wergrewf', 33.00, 1367306520, 1367392920, '5179534db0e9e.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (97, 14, 53, 34, 60, 64, '测试27', 'vrthrwf测试', 74.00, 1367310840, 1367397240, '51795369dadec.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (98, 14, 51, 35, 64, 43, '测试28', '测试ethaergtf', 74.00, 1367271960, 1367358360, '51795393be824.jpg', 0, 0, 0, 0);
INSERT INTO `equip` VALUES (99, 14, 52, 35, 60, 64, '测试rasg', '测试eherf', 84.00, 1367310240, 1367396640, '517953b443ff6.jpg', 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `link`
-- 

DROP TABLE IF EXISTS `link`;
CREATE TABLE IF NOT EXISTS `link` (
  `id` int(11) NOT NULL auto_increment,
  `linkname` varchar(20) NOT NULL default '',
  `linkurl` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `link`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `message`
-- 

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `eqid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表' AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `message`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `notice`
-- 

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(40) NOT NULL default '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `notice`
-- 

INSERT INTO `notice` VALUES (1, '今天放假', '今天放假明天不上课了', 1366208578);

-- --------------------------------------------------------

-- 
-- 表的结构 `order`
-- 

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL auto_increment,
  `eqid` int(11) NOT NULL COMMENT '装备id',
  `onum` varchar(50) NOT NULL COMMENT '订单号',
  `total` float(8,2) NOT NULL COMMENT '总计费用',
  `buyerid` int(11) NOT NULL COMMENT '买家id',
  `sellerid` int(11) NOT NULL COMMENT '卖家id',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `otime` int(11) NOT NULL COMMENT '生成订单时间',
  `ostatus` tinyint(1) NOT NULL default '0' COMMENT '处理状态 1 为处理完',
  `paystatus` tinyint(1) NOT NULL default '0' COMMENT '支付状态 1 为已支付',
  `dealtime` int(11) NOT NULL COMMENT '成交时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='订单表' AUTO_INCREMENT=14 ;

-- 
-- 导出表中的数据 `order`
-- 

INSERT INTO `order` VALUES (1, 6, '20130425232148937', 100.00, 17, 14, '', 1366903308, 1, 0, 1366904209);
INSERT INTO `order` VALUES (2, 13, '20130425232148113', 80.00, 17, 14, '', 1366903308, 1, 0, 1366904235);
INSERT INTO `order` VALUES (3, 18, '20130425232148409', 90.00, 14, 14, '', 1366903308, 1, 0, 1366904363);
INSERT INTO `order` VALUES (4, 19, '20130425232148764', 88.00, 17, 14, '', 1366903308, 1, 0, 1366904324);
INSERT INTO `order` VALUES (5, 21, '20130425232148894', 80.00, 16, 14, '', 1366903308, 1, 0, 1366904359);
INSERT INTO `order` VALUES (6, 22, '20130425232148375', 150.00, 14, 14, '', 1366903308, 1, 0, 1366904336);
INSERT INTO `order` VALUES (7, 23, '20130425232148862', 110.00, 16, 14, '', 1366903308, 1, 0, 1366904332);
INSERT INTO `order` VALUES (8, 24, '20130425232148237', 90.00, 16, 14, '', 1366903308, 1, 0, 1366904368);
INSERT INTO `order` VALUES (9, 52, '20130425232148575', 66.00, 14, 16, '', 1366903308, 1, 0, 1366904243);
INSERT INTO `order` VALUES (10, 53, '20130425232148343', 70.00, 17, 16, '', 1366903308, 1, 0, 1366904248);
INSERT INTO `order` VALUES (11, 54, '20130425232148179', 45.00, 14, 16, '', 1366903308, 1, 0, 1366904284);
INSERT INTO `order` VALUES (12, 55, '20130425232148730', 95.00, 14, 16, '', 1366903308, 1, 0, 1366904351);
INSERT INTO `order` VALUES (13, 70, '20130425232148841', 88.00, 14, 16, '', 1366903308, 1, 0, 1366904319);

-- --------------------------------------------------------

-- 
-- 表的结构 `suorder`
-- 

DROP TABLE IF EXISTS `suorder`;
CREATE TABLE IF NOT EXISTS `suorder` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `eqid` int(11) NOT NULL COMMENT '装备id',
  `price` float(8,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `suorder`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `typebj`
-- 

DROP TABLE IF EXISTS `typebj`;
CREATE TABLE IF NOT EXISTS `typebj` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类表' AUTO_INCREMENT=72 ;

-- 
-- 导出表中的数据 `typebj`
-- 

INSERT INTO `typebj` VALUES (59, '装备部件', 0, '0');
INSERT INTO `typebj` VALUES (60, '上衣', 59, '0-59');
INSERT INTO `typebj` VALUES (61, '下装', 59, '0-59');
INSERT INTO `typebj` VALUES (62, '头肩', 59, '0-59');
INSERT INTO `typebj` VALUES (63, '腰带', 59, '0-59');
INSERT INTO `typebj` VALUES (64, '鞋', 59, '0-59');
INSERT INTO `typebj` VALUES (65, '手镯', 59, '0-59');
INSERT INTO `typebj` VALUES (66, '项链', 59, '0-59');
INSERT INTO `typebj` VALUES (67, '戒指', 59, '0-59');
INSERT INTO `typebj` VALUES (68, '武器', 59, '0-59');
INSERT INTO `typebj` VALUES (69, '称号', 59, '0-59');
INSERT INTO `typebj` VALUES (70, '辅助装备', 59, '0-59');
INSERT INTO `typebj` VALUES (71, '魔法石', 59, '0-59');

-- --------------------------------------------------------

-- 
-- 表的结构 `typedq`
-- 

DROP TABLE IF EXISTS `typedq`;
CREATE TABLE IF NOT EXISTS `typedq` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类表' AUTO_INCREMENT=72 ;

-- 
-- 导出表中的数据 `typedq`
-- 

INSERT INTO `typedq` VALUES (49, '大区', 0, '0');
INSERT INTO `typedq` VALUES (50, '华北区', 49, '0-49');
INSERT INTO `typedq` VALUES (51, '华北1区', 50, '0-49-50');
INSERT INTO `typedq` VALUES (52, '华北2区', 50, '0-49-50');
INSERT INTO `typedq` VALUES (53, '华北3区', 50, '0-49-50');
INSERT INTO `typedq` VALUES (54, '华北4区', 50, '0-49-50');
INSERT INTO `typedq` VALUES (55, '北京区', 49, '0-49');
INSERT INTO `typedq` VALUES (56, '北京1区', 55, '0-49-55');
INSERT INTO `typedq` VALUES (57, '北京2区', 55, '0-49-55');
INSERT INTO `typedq` VALUES (58, '北京3区', 55, '0-49-55');

-- --------------------------------------------------------

-- 
-- 表的结构 `typezy`
-- 

DROP TABLE IF EXISTS `typezy`;
CREATE TABLE IF NOT EXISTS `typezy` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类表' AUTO_INCREMENT=73 ;

-- 
-- 导出表中的数据 `typezy`
-- 

INSERT INTO `typezy` VALUES (18, '剑魂-剑圣', 17, '0-15-17');
INSERT INTO `typezy` VALUES (19, '鬼泣-弑魂', 17, '0-15-17');
INSERT INTO `typezy` VALUES (20, '狂战士-狱血魔神', 17, '0-15-17');
INSERT INTO `typezy` VALUES (17, '鬼剑士', 15, '0-15');
INSERT INTO `typezy` VALUES (15, '职业', 0, '0');
INSERT INTO `typezy` VALUES (21, '阿修罗-大暗黑天', 17, '0-15-17');
INSERT INTO `typezy` VALUES (22, '女格斗', 15, '0-15');
INSERT INTO `typezy` VALUES (23, '气功师-百花缭乱', 22, '0-15-22');
INSERT INTO `typezy` VALUES (24, '散打-武神', 22, '0-15-22');
INSERT INTO `typezy` VALUES (25, '街霸-毒王', 22, '0-15-22');
INSERT INTO `typezy` VALUES (26, '柔道-暴风眼', 22, '0-15-22');
INSERT INTO `typezy` VALUES (27, '男格斗', 15, '0-15');
INSERT INTO `typezy` VALUES (28, '气功师-(男)狂虎帝', 27, '0-15-27');
INSERT INTO `typezy` VALUES (29, '散打-(男)武极', 27, '0-15-27');
INSERT INTO `typezy` VALUES (30, '街霸-(男)千手罗汉', 27, '0-15-27');
INSERT INTO `typezy` VALUES (72, '', 0, '0');
INSERT INTO `typezy` VALUES (32, '女神枪手', 15, '0-15');
INSERT INTO `typezy` VALUES (33, '沾血蔷薇', 32, '0-15-32');
INSERT INTO `typezy` VALUES (34, '重炮掌控着', 32, '0-15-32');
INSERT INTO `typezy` VALUES (35, '机械之心', 32, '0-15-32');
INSERT INTO `typezy` VALUES (36, '战争女神', 32, '0-15-32');
INSERT INTO `typezy` VALUES (37, '男神枪手', 15, '0-15');
INSERT INTO `typezy` VALUES (38, '漫游枪手-枪神', 37, '0-15-37');
INSERT INTO `typezy` VALUES (39, '枪炮师-狂暴者', 37, '0-15-37');
INSERT INTO `typezy` VALUES (40, '机械师-机械战神', 37, '0-15-37');
INSERT INTO `typezy` VALUES (41, '弹药专家-大将军', 37, '0-15-37');
INSERT INTO `typezy` VALUES (42, '魔法师', 15, '0-15');
INSERT INTO `typezy` VALUES (43, '元素师-大魔导师', 42, '0-15-42');
INSERT INTO `typezy` VALUES (44, '战斗法师-贝亚娜斗神', 42, '0-15-42');
INSERT INTO `typezy` VALUES (45, '召唤师-月之女皇', 42, '0-15-42');
INSERT INTO `typezy` VALUES (46, '魔道学者-魔术师', 42, '0-15-42');
INSERT INTO `typezy` VALUES (47, '元素爆破师', 42, '0-15-42');
INSERT INTO `typezy` VALUES (48, '冰洁师', 42, '0-15-42');

-- --------------------------------------------------------

-- 
-- 表的结构 `user`
-- 

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `usertype` tinyint(1) NOT NULL default '0' COMMENT '是否管理员 1是',
  `password` char(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sex` tinyint(1) NOT NULL default '1',
  `qq` varchar(11) NOT NULL,
  `pic` varchar(50) NOT NULL COMMENT '头像',
  `money` float(8,2) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- 导出表中的数据 `user`
-- 

INSERT INTO `user` VALUES (1, 'admin', 1, '21232f297a57a5a743894a0e4a801fc3', '623381906@qq.com', 1, '', '', 552.00, '', '', 'dys');
INSERT INTO `user` VALUES (17, 'test', 0, '098f6bcd4621d373cade4e832627b4f6', '', 1, '', '', 4272.00, '', '', 'test');
INSERT INTO `user` VALUES (16, 'dys', 1, 'a851e45c1daa1d762f2500f9d0ab0700', '', 1, '', '5177ca694563b.jpg', 4841.00, '', '', 'dys');
INSERT INTO `user` VALUES (14, 'hjz', 1, '9886067e6afc86c315a37d73057113c2', '418832673@qq.com', 1, '418832673', '517788333052c.jpg', 3943.00, '9', '唔知', 'huangjiezhen');
INSERT INTO `user` VALUES (15, 'luxu', 1, '81dc9bdb52d04dc20036dbd8313ed055', '', 1, '', '', 61500.00, '9', '你妹妹的', '卢旭');
