-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-08-11 05:59:06
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xiaomi`
--

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `xm_product` (
  `pid` int(11) NOT NULL,
	`leibie` int(10) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `mainimage` varchar(500) DEFAULT NULL,
  `detail` text,
  `price` decimal(20,2) DEFAULT NULL,
  `price2` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `xm_product` (`pid`,`leibie`, `pname`, `subtitle`, `mainimage`, `detail`, `price`, `price2`) VALUES
(1001,1, '小米 9', '自清洁 | 小米互联网空调 1.5匹', 'img/list/01.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1002,1, '小米 10', '自清洁 | 小米互联网空调 1.5匹', 'img/list/02.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1003,1, 'Redmi 9', '自清洁 | 小米互联网空调 1.5匹', 'img/list/03.png', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1004,1, 'Redmi K30', '自清洁 | 小米互联网空调 1.5匹', 'img/list/04.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1005,1, '小米 8', '自清洁 | 小米互联网空调 1.5匹', 'img/list/05.png', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1006,1, '小米10 青春版', '自清洁 | 小米互联网空调 1.5匹', 'img/list/06.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1007,1, '腾讯黑鲨游戏手机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/07.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1008,1, 'Redmi K30 尊享纪念版', '自清洁 | 小米互联网空调 1.5匹', 'img/list/09.png', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1009,1, 'Redmi K30 Pro 变焦版', '自清洁 | 小米互联网空调 1.5匹', 'img/list/10.png', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1010,1, 'Redmi K30 Pro', '自清洁 | 小米互联网空调 1.5匹', 'img/list/11.png', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1011,1, 'Redmi 8A', '自清洁 | 小米互联网空调 1.5匹', 'img/list/08.png', '高效制冷/热，全屋互联', '1799.00', '2699.00'),

(1012,2, '小米透明电视', '自清洁 | 小米互联网空调 1.5匹', 'img/list/12.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1013,2, '小米电视 大师 65英寸OLED', '自清洁 | 小米互联网空调 1.5匹', 'img/list/13.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1014,2, 'Redmi 智能电视 X65', '自清洁 | 小米互联网空调 1.5匹', 'img/list/14.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1015,2, 'Redmi 智能电视 X55', '自清洁 | 小米互联网空调 1.5匹', 'img/list/15.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1016,2, 'Redmi 智能电视 MAX 98"', '自清洁 | 小米互联网空调 1.5匹', 'img/list/16.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1017,2, '小米电视5 55英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/17.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1018,2, '小米电视5 65英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/18.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1019,2, '小米电视5 75英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/19.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1020,2, '小米电视5 Pro 55英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/20.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1021,2, '小米电视5 Pro 65英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/21.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1022,2, '小米电视5 Pro 75英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/22.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1023,2, 'Redmi 红米电视 70英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/23.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1024,2, '全面屏电视Pro 65英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/24.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1025,2, '全面屏电视Pro 55英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/25.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1026,2, '小米壁画电视 65英寸', '自清洁 | 小米互联网空调 1.5匹', 'img/list/26.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1027,2, '小米全面屏电视', '自清洁 | 小米互联网空调 1.5匹', 'img/list/27.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),

(1028,3, '料理机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/28.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1029,3, '体重秤', '自清洁 | 小米互联网空调 1.5匹', 'img/list/29.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1030,3, '视频门铃', '自清洁 | 小米互联网空调 1.5匹', 'img/list/30.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1031,3, '跑步机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/31.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1032,3, '电烤箱', '自清洁 | 小米互联网空调 1.5匹', 'img/list/32.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1033,3, '微波炉', '自清洁 | 小米互联网空调 1.5匹', 'img/list/33.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1034,3, '智能记录仪', '自清洁 | 小米互联网空调 1.5匹', 'img/list/34.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1035,3, '吹风机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/35.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1036,3, '电饭煲', '自清洁 | 小米互联网空调 1.5匹', 'img/list/36.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1037,3, '电茶壶', '自清洁 | 小米互联网空调 1.5匹', 'img/list/37.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1038,3, '洗衣机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/38.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1039,3, '扫地机器人', '自清洁 | 小米互联网空调 1.5匹', 'img/list/39.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1040,3, '电冰箱', '自清洁 | 小米互联网空调 1.5匹', 'img/list/40.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1041,3, '投影仪', '自清洁 | 小米互联网空调 1.5匹', 'img/list/41.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1042,3, '平衡车', '自清洁 | 小米互联网空调 1.5匹', 'img/list/42.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1043,3, '打印机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/43.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),

(1044,4, 'VR', '小米VR一体机 白色', 'img/list/44.jpg', '无线无束缚，真正的 VR 一体机！', '1399.00', '1599.00'),
(1045,4, '石英表', '米家石英表经典版 白色', 'img/list/45.jpg', '进口机芯 / 精钢表壳 / 真皮表带/ 两年续航', '179.00', '269.00'),
(1046,4, '双肩包', '小米极简都市双肩包 2 深灰', 'img/list/46.jpg', '可容纳15.6英寸电脑 / 耐磨防水 / 方形简约造型 / 轻巧坚固', '119.00', '159.00'),
(1047,4, '无线车充', '小米无线车充', 'img/list/47.jpg', '电动变形，20W 高速无线闪充*', '129.00', '169.00'),
(1050,4, '洗手机', '米家自动洗手机', 'img/list/50.jpg', '伸手出泡，抑菌有效', '79.00', '79.00'),
(1049,4, '小米AI音箱', '小米AI音箱', 'img/list/49.jpg', '听音乐、语音遥控家电的人工智能音箱', '1299.00', '1699.00'),
(1048,4, '空气净化器', '米家新风机C1 80风量 白色', 'img/list/48.jpg', '安装便捷 | 身材小巧 | 降低室内甲醛浓度 | 通风换气', '1299.00', '1699.00'),
(1051,4, '插线板', '米家插线板6位基础版', 'img/list/51.jpg', '更多，更满足', '1799.00', '2699.00'),
(1052,4, '插线板', '插线板', 'img/list/52.jpg', '插线板中的艺术品', '49.00', '59.00'),
(1053,4, '牙刷', '米家声波电动牙刷T100 白色', 'img/list/53.jpg', '高频震动 / 两档模式 / 进口纤密软毛 / 长续航 / 强防水 / 轻整机', '49.00', '69.00'),
(1054,4, '小米小爱触屏音箱', '好听，更好看', 'img/list/54.jpg', 'QQ音乐丰富曲库，边听边看歌词', '39.00', '59.00'),
(1055,4, '蓝牙耳机', '小米真无线蓝牙耳机Air 2s 白色', 'img/list/55.jpg', '左右双主耳，同步传输，性能全面提升 ', '149.00', '199.00'),
(1056,4, '蓝牙音箱', '小米无线充蓝牙音箱', 'img/list/56.jpg', '通用快充 / 30W大功率无线充电 /', '199.00', '299.00'),
(1057,4, '头戴耳机', '自清洁 | 小米互联网空调 1.5匹', 'img/list/57.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1058,4, 'Redmi音箱', '自清洁 | 小米互联网空调 1.5匹', 'img/list/58.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00'),
(1059,4, '床垫', '自清洁 | 小米互联网空调 1.5匹', 'img/list/59.jpg', '高效制冷/热，全屋互联', '1799.00', '2699.00');
-- --------------------------------------------------------

--
-- 表的结构 `xm_user`
--

CREATE TABLE `xm_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xm_user`
--

INSERT INTO `xm_user` (`uid`, `uname`, `upwd`, `phone`, `email`) VALUES
(1, 'dingding', '12345678', '18955556666', 'sss@ss.com'),
(2, 'dongdong', '12345678', '15012345678', 'dde@sss.vvv'),
(3, 'ranran', '12345678', '16898765432', 'rrrr@ff.ggg'),
(4, 'dongdong', '12345678', '15012345678', 'ddd@ddd.ddd'),
(5, 'dingding', 'xiaoxiao', '18945612354', '124s@xon.con');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`) USING BTREE;

--
-- Indexes for table `xm_user`
--
ALTER TABLE `xm_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
--
-- 使用表AUTO_INCREMENT `xm_user`
--
ALTER TABLE `xm_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
