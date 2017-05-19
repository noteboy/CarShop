SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `carshop`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrator`
--

CREATE TABLE `administrator` (
  `a_id` int(10) NOT NULL COMMENT '管理员id',
  `u_id` int(10) NOT NULL COMMENT '用户id的外键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `c_id` int(10) NOT NULL COMMENT 'car的主键自增',
  `c_name` varchar(40) NOT NULL COMMENT '汽车名',
  `c_price` varchar(40) NOT NULL COMMENT '汽车价格',
  `c_type` varchar(40) NOT NULL COMMENT '汽车类型',
  `c_band` varchar(40) NOT NULL COMMENT '商标',
  `c_color` varchar(40) NOT NULL COMMENT '颜色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车';

-- --------------------------------------------------------

--
-- 表的结构 `customer`
--

CREATE TABLE `customer` (
  `c_id` int(10) NOT NULL COMMENT '顾客id',
  `u_id` int(10) NOT NULL COMMENT '用户id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='顾客表';

-- --------------------------------------------------------

--
-- 表的结构 `orderform`
--

CREATE TABLE `orderform` (
  `o_id` int(10) NOT NULL COMMENT '订单主键自增',
  `car_id` int(10) NOT NULL COMMENT '汽车id外键',
  `user_id` int(10) NOT NULL COMMENT '用户id外键',
  `create_time` varchar(40) NOT NULL COMMENT '订单创建日期',
  `orign_price` int(11) NOT NULL COMMENT '初始价格',
  `final_price` int(11) NOT NULL COMMENT '最终价格',
  `number` int(11) NOT NULL COMMENT '购买数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- --------------------------------------------------------

--
-- 表的结构 `shopcar`
--

CREATE TABLE `shopcar` (
  `sc_id` int(10) NOT NULL COMMENT '购物车主键自增',
  `u_id` int(10) NOT NULL COMMENT '用户id外键',
  `c_id` int(10) NOT NULL COMMENT '汽车id外键',
  `create_time` varchar(40) NOT NULL COMMENT '创建时间',
  `number` int(11) NOT NULL COMMENT '购买数量',
  `total_price` int(11) NOT NULL COMMENT '总价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL COMMENT '用户id',
  `u_password` varchar(40) NOT NULL COMMENT '用户密码',
  `u_name` varchar(40) NOT NULL COMMENT '用户名',
  `u_email` varchar(40) DEFAULT NULL COMMENT '用户邮箱',
  `u_tellphone` varchar(40) DEFAULT NULL COMMENT '用户电话'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- --------------------------------------------------------

--
-- 表的结构 `vipcustomer`
--

CREATE TABLE `vipcustomer` (
  `v_id` int(10) NOT NULL COMMENT 'vip id',
  `u_id` int(10) NOT NULL COMMENT '用户表的外键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vip表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `administrator_ibfk_1` (`u_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `u_id_3` (`u_id`);

--
-- Indexes for table `orderform`
--
ALTER TABLE `orderform`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `orderform_ibfk_1` (`user_id`),
  ADD KEY `orderform_ibfk_2` (`car_id`);

--
-- Indexes for table `shopcar`
--
ALTER TABLE `shopcar`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `shopcar_ibfk_2` (`c_id`),
  ADD KEY `shopcar_ibfk_3` (`u_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vipcustomer`
--
ALTER TABLE `vipcustomer`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `vipcustomer_ibfk_1` (`u_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `administrator`
--
ALTER TABLE `administrator`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员id';
--
-- 使用表AUTO_INCREMENT `car`
--
ALTER TABLE `car`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'car的主键自增';
--
-- 使用表AUTO_INCREMENT `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '顾客id';
--
-- 使用表AUTO_INCREMENT `orderform`
--
ALTER TABLE `orderform`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单主键自增';
--
-- 使用表AUTO_INCREMENT `shopcar`
--
ALTER TABLE `shopcar`
  MODIFY `sc_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '购物车主键自增';
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id';
--
-- 使用表AUTO_INCREMENT `vipcustomer`
--
ALTER TABLE `vipcustomer`
  MODIFY `v_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'vip id';
--
-- 限制导出的表
--

--
-- 限制表 `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- 限制表 `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- 限制表 `orderform`
--
ALTER TABLE `orderform`
  ADD CONSTRAINT `orderform_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`),
  ADD CONSTRAINT `orderform_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`c_id`);

--
-- 限制表 `shopcar`
--
ALTER TABLE `shopcar`
  ADD CONSTRAINT `shopcar_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `car` (`c_id`),
  ADD CONSTRAINT `shopcar_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- 限制表 `vipcustomer`
--
ALTER TABLE `vipcustomer`
  ADD CONSTRAINT `vipcustomer_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);



