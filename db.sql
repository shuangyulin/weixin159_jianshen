/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmqm166
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmqm166` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmqm166`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796942978 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-30 23:15:21',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-30 23:15:21',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-30 23:15:21',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-30 23:15:21',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-30 23:15:21',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-30 23:15:21',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619796942977,'2021-04-30 23:35:42',1619796062059,'王府井','健儿','13852652365','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'peixunkecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796952509 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmqm166/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmqm166/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmqm166/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/ssmqm166/upload/1619796482829.jpg');

/*Table structure for table `discussjiaolianxinxi` */

DROP TABLE IF EXISTS `discussjiaolianxinxi`;

CREATE TABLE `discussjiaolianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796782901 DEFAULT CHARSET=utf8 COMMENT='教练信息评论表';

/*Data for the table `discussjiaolianxinxi` */

insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-30 23:15:21',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-04-30 23:15:21',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-04-30 23:15:21',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-04-30 23:15:21',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-04-30 23:15:21',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-04-30 23:15:21',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussjiaolianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619796782900,'2021-04-30 23:33:01',1619796462456,1619796062059,'001','教练不错，这里可以评论教练','');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619797035527 DEFAULT CHARSET=utf8 COMMENT='论坛表';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-04-30 23:15:21','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (92,'2021-04-30 23:15:21','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (93,'2021-04-30 23:15:21','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (94,'2021-04-30 23:15:21','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (95,'2021-04-30 23:15:21','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (96,'2021-04-30 23:15:21','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619796730518,'2021-04-30 23:32:10','21天练腹肌','21天练腹肌',0,1619796085783,'20','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619797024308,'2021-04-30 23:37:03','怎么锻炼','怎么锻炼',0,1619796062059,'001','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619797035526,'2021-04-30 23:37:14',NULL,'？？？',1619796730518,1619796062059,'001',NULL);

/*Table structure for table `jianshenshipin` */

DROP TABLE IF EXISTS `jianshenshipin`;

CREATE TABLE `jianshenshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) NOT NULL COMMENT '视频名称',
  `shipinleixing` varchar(200) DEFAULT NULL COMMENT '视频类型',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `shipin` varchar(200) NOT NULL COMMENT '视频',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796656478 DEFAULT CHARSET=utf8 COMMENT='健身视频';

/*Data for the table `jianshenshipin` */

insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (31,'2021-04-30 23:15:21','视频名称1','视频类型1','http://localhost:8080/ssmqm166/upload/jianshenshipin_fengmiantu1.jpg','','视频介绍1','2021-04-30',1,1);
insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (32,'2021-04-30 23:15:21','视频名称2','视频类型2','http://localhost:8080/ssmqm166/upload/jianshenshipin_fengmiantu2.jpg','','视频介绍2','2021-04-30',2,2);
insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (33,'2021-04-30 23:15:21','视频名称3','视频类型3','http://localhost:8080/ssmqm166/upload/jianshenshipin_fengmiantu3.jpg','','视频介绍3','2021-04-30',3,3);
insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (34,'2021-04-30 23:15:21','视频名称4','视频类型4','http://localhost:8080/ssmqm166/upload/jianshenshipin_fengmiantu4.jpg','','视频介绍4','2021-04-30',4,4);
insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (35,'2021-04-30 23:15:21','视频名称5','视频类型5','http://localhost:8080/ssmqm166/upload/jianshenshipin_fengmiantu5.jpg','','视频介绍5','2021-04-30',5,5);
insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (36,'2021-04-30 23:15:21','视频名称6','视频类型6','http://localhost:8080/ssmqm166/upload/jianshenshipin_fengmiantu6.jpg','','视频介绍6','2021-04-30',7,6);
insert  into `jianshenshipin`(`id`,`addtime`,`shipinmingcheng`,`shipinleixing`,`fengmiantu`,`shipin`,`shipinjieshao`,`faburiqi`,`clicknum`,`userid`) values (1619796656477,'2021-04-30 23:30:55','健身简单锻炼','健身','http://localhost:8080/ssmqm166/upload/1619796626319.jpg','http://localhost:8080/ssmqm166/upload/1619796655550.mp4','健身简单锻炼','2021-04-30',4,1619796085783);

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoliangonghao` (`jiaoliangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796085784 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (21,'2021-04-30 23:15:21','教练1','123456','教练姓名1','男','年龄1','http://localhost:8080/ssmqm166/upload/jiaolian_zhaopian1.jpg','773890001@qq.com','13823888881',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (22,'2021-04-30 23:15:21','教练2','123456','教练姓名2','男','年龄2','http://localhost:8080/ssmqm166/upload/jiaolian_zhaopian2.jpg','773890002@qq.com','13823888882',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (23,'2021-04-30 23:15:21','教练3','123456','教练姓名3','男','年龄3','http://localhost:8080/ssmqm166/upload/jiaolian_zhaopian3.jpg','773890003@qq.com','13823888883',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (24,'2021-04-30 23:15:21','教练4','123456','教练姓名4','男','年龄4','http://localhost:8080/ssmqm166/upload/jiaolian_zhaopian4.jpg','773890004@qq.com','13823888884',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (25,'2021-04-30 23:15:21','教练5','123456','教练姓名5','男','年龄5','http://localhost:8080/ssmqm166/upload/jiaolian_zhaopian5.jpg','773890005@qq.com','13823888885',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (26,'2021-04-30 23:15:21','教练6','123456','教练姓名6','男','年龄6','http://localhost:8080/ssmqm166/upload/jiaolian_zhaopian6.jpg','773890006@qq.com','13823888886',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`nianling`,`zhaopian`,`youxiang`,`shoujihao`,`money`) values (1619796085783,'2021-04-30 23:21:25','20','20','里尔','女','30','http://localhost:8080/ssmqm166/upload/1619796416721.jpg','20@qq.com','15232536523',0);

/*Table structure for table `jiaolianxinxi` */

DROP TABLE IF EXISTS `jiaolianxinxi`;

CREATE TABLE `jiaolianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `zhiyelvli` longtext COMMENT '职业履历',
  `gerenjieshao` longtext COMMENT '个人介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796462457 DEFAULT CHARSET=utf8 COMMENT='教练信息';

/*Data for the table `jiaolianxinxi` */

insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (71,'2021-04-30 23:15:21','教练姓名1','性别1','年龄1','身高1','http://localhost:8080/ssmqm166/upload/jiaolianxinxi_zhaopian1.jpg','13823888881','体重1','职业履历1','个人介绍1',1,1);
insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (72,'2021-04-30 23:15:21','教练姓名2','性别2','年龄2','身高2','http://localhost:8080/ssmqm166/upload/jiaolianxinxi_zhaopian2.jpg','13823888882','体重2','职业履历2','个人介绍2',2,2);
insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (73,'2021-04-30 23:15:21','教练姓名3','性别3','年龄3','身高3','http://localhost:8080/ssmqm166/upload/jiaolianxinxi_zhaopian3.jpg','13823888883','体重3','职业履历3','个人介绍3',3,3);
insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (74,'2021-04-30 23:15:21','教练姓名4','性别4','年龄4','身高4','http://localhost:8080/ssmqm166/upload/jiaolianxinxi_zhaopian4.jpg','13823888884','体重4','职业履历4','个人介绍4',4,4);
insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (75,'2021-04-30 23:15:21','教练姓名5','性别5','年龄5','身高5','http://localhost:8080/ssmqm166/upload/jiaolianxinxi_zhaopian5.jpg','13823888885','体重5','职业履历5','个人介绍5',5,5);
insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (76,'2021-04-30 23:15:21','教练姓名6','性别6','年龄6','身高6','http://localhost:8080/ssmqm166/upload/jiaolianxinxi_zhaopian6.jpg','13823888886','体重6','职业履历6','个人介绍6',6,6);
insert  into `jiaolianxinxi`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`zhaopian`,`shoujihao`,`tizhong`,`zhiyelvli`,`gerenjieshao`,`thumbsupnum`,`crazilynum`) values (1619796462456,'2021-04-30 23:27:41','里尔','女','30','168','http://localhost:8080/ssmqm166/upload/1619796416721.jpg','15232536523','40','体操获得全国第一','喜欢体操',1,1);

/*Table structure for table `jiaolianyuyue` */

DROP TABLE IF EXISTS `jiaolianyuyue`;

CREATE TABLE `jiaolianyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学员账号',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796992680 DEFAULT CHARSET=utf8 COMMENT='教练预约';

/*Data for the table `jiaolianyuyue` */

insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (81,'2021-04-30 23:15:21','预约编号1','教练姓名1','http://localhost:8080/ssmqm166/upload/jiaolianyuyue_zhaopian1.jpg','手机号1','学员账号1','学员姓名1','2021-04-30','备注1');
insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (82,'2021-04-30 23:15:21','预约编号2','教练姓名2','http://localhost:8080/ssmqm166/upload/jiaolianyuyue_zhaopian2.jpg','手机号2','学员账号2','学员姓名2','2021-04-30','备注2');
insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (83,'2021-04-30 23:15:21','预约编号3','教练姓名3','http://localhost:8080/ssmqm166/upload/jiaolianyuyue_zhaopian3.jpg','手机号3','学员账号3','学员姓名3','2021-04-30','备注3');
insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (84,'2021-04-30 23:15:21','预约编号4','教练姓名4','http://localhost:8080/ssmqm166/upload/jiaolianyuyue_zhaopian4.jpg','手机号4','学员账号4','学员姓名4','2021-04-30','备注4');
insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (85,'2021-04-30 23:15:21','预约编号5','教练姓名5','http://localhost:8080/ssmqm166/upload/jiaolianyuyue_zhaopian5.jpg','手机号5','学员账号5','学员姓名5','2021-04-30','备注5');
insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (86,'2021-04-30 23:15:21','预约编号6','教练姓名6','http://localhost:8080/ssmqm166/upload/jiaolianyuyue_zhaopian6.jpg','手机号6','学员账号6','学员姓名6','2021-04-30','备注6');
insert  into `jiaolianyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiaolianxingming`,`zhaopian`,`shoujihao`,`xueyuanzhanghao`,`xueyuanxingming`,`yuyueshijian`,`beizhu`) values (1619796992679,'2021-04-30 23:36:32','1619796987862','里尔','http://localhost:8080/ssmqm166/upload/1619796416721.jpg','15232536523','001','健儿','2021-04-30','');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796570545 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (61,'2021-04-30 23:15:21','类型1');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (62,'2021-04-30 23:15:21','类型2');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (63,'2021-04-30 23:15:21','类型3');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (64,'2021-04-30 23:15:21','类型4');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (65,'2021-04-30 23:15:21','类型5');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (66,'2021-04-30 23:15:21','类型6');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (1619796570544,'2021-04-30 23:29:30','课程分类');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'peixunkecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796968410 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619796949004,'2021-04-30 23:35:48','202143023354954445695','peixunkecheng',1619796062059,1619796709233,'21天练腹肌','http://localhost:8080/ssmqm166/upload/1619796684867.jpg',1,50,50,50,50,1,'未支付','王府井','13852652365','健儿');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619796968409,'2021-04-30 23:36:07','20214302336866833640','peixunkecheng',1619796062059,1619796709233,'21天练腹肌','http://localhost:8080/ssmqm166/upload/1619796684867.jpg',1,50,50,50,50,1,'已支付','王府井','13852652365','健儿');

/*Table structure for table `peixunkecheng` */

DROP TABLE IF EXISTS `peixunkecheng`;

CREATE TABLE `peixunkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangkeshijian` date DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `price` float NOT NULL COMMENT '价格',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796709234 DEFAULT CHARSET=utf8 COMMENT='培训课程';

/*Data for the table `peixunkecheng` */

insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (51,'2021-04-30 23:15:21','课程编号1','课程名称1','课程类型1','http://localhost:8080/ssmqm166/upload/peixunkecheng_tupian1.jpg','2021-04-30','上课地点1','课程介绍1','是','',99.9,1);
insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (52,'2021-04-30 23:15:21','课程编号2','课程名称2','课程类型2','http://localhost:8080/ssmqm166/upload/peixunkecheng_tupian2.jpg','2021-04-30','上课地点2','课程介绍2','是','',99.9,2);
insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (53,'2021-04-30 23:15:21','课程编号3','课程名称3','课程类型3','http://localhost:8080/ssmqm166/upload/peixunkecheng_tupian3.jpg','2021-04-30','上课地点3','课程介绍3','是','',99.9,3);
insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (54,'2021-04-30 23:15:21','课程编号4','课程名称4','课程类型4','http://localhost:8080/ssmqm166/upload/peixunkecheng_tupian4.jpg','2021-04-30','上课地点4','课程介绍4','是','',99.9,4);
insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (55,'2021-04-30 23:15:21','课程编号5','课程名称5','课程类型5','http://localhost:8080/ssmqm166/upload/peixunkecheng_tupian5.jpg','2021-04-30','上课地点5','课程介绍5','是','',99.9,5);
insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (56,'2021-04-30 23:15:21','课程编号6','课程名称6','课程类型6','http://localhost:8080/ssmqm166/upload/peixunkecheng_tupian6.jpg','2021-04-30','上课地点6','课程介绍6','是','',99.9,6);
insert  into `peixunkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`shangkeshijian`,`shangkedidian`,`kechengjieshao`,`sfsh`,`shhf`,`price`,`userid`) values (1619796709233,'2021-04-30 23:31:49','1619796662267','21天练腹肌','课程分类','http://localhost:8080/ssmqm166/upload/1619796684867.jpg','2021-04-30','某市某路教师101','21天练腹肌','是','教练发布课程，要管理员审核',50,1619796085783);

/*Table structure for table `shipinleixing` */

DROP TABLE IF EXISTS `shipinleixing`;

CREATE TABLE `shipinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796537457 DEFAULT CHARSET=utf8 COMMENT='视频类型';

/*Data for the table `shipinleixing` */

insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (41,'2021-04-30 23:15:21','类型1');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (42,'2021-04-30 23:15:21','类型2');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (43,'2021-04-30 23:15:21','类型3');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (44,'2021-04-30 23:15:21','类型4');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (45,'2021-04-30 23:15:21','类型5');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (46,'2021-04-30 23:15:21','类型6');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (1619796537456,'2021-04-30 23:28:57','健身');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796799265 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619796763129,'2021-04-30 23:32:42',1619796062059,1619796462456,'jiaolianxinxi','里尔','http://localhost:8080/ssmqm166/upload/1619796416721.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619796799264,'2021-04-30 23:33:18',1619796062059,1619796656477,'jianshenshipin','健身简单锻炼','http://localhost:8080/ssmqm166/upload/1619796626319.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619796085783,'20','jiaolian','教练','5vigcx3e8x0p60pd571ix9os0vbtv114','2021-04-30 23:21:36','2021-05-01 00:37:41');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','ujxpw8sq9rszlnzmxb2k8sbsdb9r3j40','2021-04-30 23:26:07','2021-05-01 00:38:38');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619796062059,'001','xueyuan','学员','l0c4gzl48f91y3d30ua8fld8f5ayc7e4','2021-04-30 23:32:23','2021-05-01 00:32:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-30 23:15:21');

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanzhanghao` varchar(200) NOT NULL COMMENT '学员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuanzhanghao` (`xueyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619796062060 DEFAULT CHARSET=utf8 COMMENT='学员';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`shouji`,`touxiang`,`money`) values (11,'2021-04-30 23:15:21','学员1','123456','学员姓名1','男',1,'身高1','体重1','13823888881','http://localhost:8080/ssmqm166/upload/xueyuan_touxiang1.jpg',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`shouji`,`touxiang`,`money`) values (12,'2021-04-30 23:15:21','学员2','123456','学员姓名2','男',2,'身高2','体重2','13823888882','http://localhost:8080/ssmqm166/upload/xueyuan_touxiang2.jpg',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`shouji`,`touxiang`,`money`) values (13,'2021-04-30 23:15:21','学员3','123456','学员姓名3','男',3,'身高3','体重3','13823888883','http://localhost:8080/ssmqm166/upload/xueyuan_touxiang3.jpg',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`shouji`,`touxiang`,`money`) values (14,'2021-04-30 23:15:21','学员4','123456','学员姓名4','男',4,'身高4','体重4','13823888884','http://localhost:8080/ssmqm166/upload/xueyuan_touxiang4.jpg',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`shouji`,`touxiang`,`money`) values (15,'2021-04-30 23:15:21','学员5','123456','学员姓名5','男',5,'身高5','体重5','13823888885','http://localhost:8080/ssmqm166/upload/xueyuan_touxiang5.jpg',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`shouji`,`touxiang`,`money`) values (1619796062059,'2021-04-30 23:21:02','001','001','健儿','男',18,'180','160','13852365236','http://localhost:8080/ssmqm166/upload/1619796382336.jpg',150);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
