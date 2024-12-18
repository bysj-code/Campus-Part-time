/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanjianzhi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanjianzhi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanjianzhi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-25 13:44:16'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-25 13:44:16'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-25 13:44:16'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-25 13:44:16'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-25 13:44:16'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-25 13:44:16'),(7,'jianzhi_jiesuan_types','结算类型',1,'结算类型1',NULL,NULL,'2023-03-25 13:44:17'),(8,'jianzhi_jiesuan_types','结算类型',2,'结算类型2',NULL,NULL,'2023-03-25 13:44:17'),(9,'jianzhi_types','兼职类型',1,'兼职类型1',NULL,NULL,'2023-03-25 13:44:17'),(10,'jianzhi_types','兼职类型',2,'兼职类型2',NULL,NULL,'2023-03-25 13:44:17'),(11,'jianzhi_types','兼职类型',3,'兼职类型3',NULL,NULL,'2023-03-25 13:44:17'),(12,'jianzhi_types','兼职类型',4,'兼职类型4',NULL,NULL,'2023-03-25 13:44:17'),(13,'jianzhi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-25 13:44:17'),(14,'jianzhi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-25 13:44:17'),(15,'jianzhi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-25 13:44:17'),(16,'jianzhi_order_types','订单类型',101,'已申请',NULL,NULL,'2023-03-25 13:44:17'),(17,'jianzhi_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-03-25 13:44:17'),(18,'jianzhi_order_types','订单类型',103,'已同意',NULL,NULL,'2023-03-25 13:44:17');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',236,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(2,'帖子标题2',1,NULL,'发布内容2',389,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(3,'帖子标题3',2,NULL,'发布内容3',161,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(4,'帖子标题4',3,NULL,'发布内容4',110,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(5,'帖子标题5',1,NULL,'发布内容5',439,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(6,'帖子标题6',3,NULL,'发布内容6',156,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(7,'帖子标题7',2,NULL,'发布内容7',291,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(8,'帖子标题8',3,NULL,'发布内容8',121,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(9,'帖子标题9',1,NULL,'发布内容9',335,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(10,'帖子标题10',2,NULL,'发布内容10',47,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(11,'帖子标题11',1,NULL,'发布内容11',430,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(12,'帖子标题12',2,NULL,'发布内容12',36,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(13,'帖子标题13',1,NULL,'发布内容13',192,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(14,'帖子标题14',3,NULL,'发布内容14',288,1,'2023-03-25 13:44:54','2023-03-25 13:44:54','2023-03-25 13:44:54'),(15,'帖子',1,NULL,'13212313',NULL,1,'2023-03-25 13:57:35',NULL,'2023-03-25 13:57:35'),(16,NULL,NULL,NULL,'123136666',15,2,'2023-03-25 14:00:24',NULL,'2023-03-25 14:00:24');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-25 13:44:54','公告详情1','2023-03-25 13:44:54'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-25 13:44:54','公告详情2','2023-03-25 13:44:54'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-25 13:44:54','公告详情3','2023-03-25 13:44:54'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-25 13:44:54','公告详情4','2023-03-25 13:44:54'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-25 13:44:54','公告详情5','2023-03-25 13:44:54'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-25 13:44:54','公告详情6','2023-03-25 13:44:54'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-25 13:44:54','公告详情7','2023-03-25 13:44:54'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-25 13:44:54','公告详情8','2023-03-25 13:44:54'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-25 13:44:54','公告详情9','2023-03-25 13:44:54'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-25 13:44:54','公告详情10','2023-03-25 13:44:54'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-25 13:44:54','公告详情11','2023-03-25 13:44:54'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-25 13:44:54','公告详情12','2023-03-25 13:44:54'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-25 13:44:54','公告详情13','2023-03-25 13:44:54'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-25 13:44:54','公告详情14','2023-03-25 13:44:54');

/*Table structure for table `jianzhi` */

DROP TABLE IF EXISTS `jianzhi`;

CREATE TABLE `jianzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `jianzhi_name` varchar(200) DEFAULT NULL COMMENT '兼职名称  Search111 ',
  `jianzhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '兼职编号',
  `jianzhi_photo` varchar(200) DEFAULT NULL COMMENT '兼职照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jianzhi_types` int(11) DEFAULT NULL COMMENT '兼职类型 Search111',
  `jianzhi_jiesuan_types` int(11) DEFAULT NULL COMMENT '结算类型 Search111',
  `jianzhi_kucun_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `jianzhi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jianzhi_address` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `jianzhi_shijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `jianzhi_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资/小时',
  `jianzhi_content` longtext COMMENT '工作内容介绍 ',
  `jianzhi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='兼职';

/*Data for the table `jianzhi` */

insert  into `jianzhi`(`id`,`shangjia_id`,`jianzhi_name`,`jianzhi_uuid_number`,`jianzhi_photo`,`zan_number`,`cai_number`,`jianzhi_types`,`jianzhi_jiesuan_types`,`jianzhi_kucun_number`,`jianzhi_phone`,`jianzhi_address`,`jianzhi_shijian`,`jianzhi_daiyu`,`jianzhi_content`,`jianzhi_delete`,`insert_time`,`create_time`) values (1,3,'兼职名称1','1679723094425','upload/jianzhi1.jpg',226,419,2,1,101,'17703786901','工作地点1','工作时间1','薪资/小时1','工作内容介绍1',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(2,2,'兼职名称2','1679723094465','upload/jianzhi2.jpg',287,175,2,2,102,'17703786902','工作地点2','工作时间2','薪资/小时2','工作内容介绍2',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(3,2,'兼职名称3','1679723094441','upload/jianzhi3.jpg',97,52,4,1,103,'17703786903','工作地点3','工作时间3','薪资/小时3','工作内容介绍3',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(4,1,'兼职名称4','1679723094463','upload/jianzhi4.jpg',465,51,2,2,104,'17703786904','工作地点4','工作时间4','薪资/小时4','工作内容介绍4',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(5,3,'兼职名称5','1679723094427','upload/jianzhi5.jpg',297,62,3,2,105,'17703786905','工作地点5','工作时间5','薪资/小时5','工作内容介绍5',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(6,2,'兼职名称6','1679723094466','upload/jianzhi6.jpg',180,476,2,1,106,'17703786906','工作地点6','工作时间6','薪资/小时6','工作内容介绍6',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(7,1,'兼职名称7','1679723094409','upload/jianzhi7.jpg',417,109,3,1,107,'17703786907','工作地点7','工作时间7','薪资/小时7','工作内容介绍7',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(8,1,'兼职名称8','1679723094447','upload/jianzhi8.jpg',499,236,3,2,107,'17703786908','工作地点8','工作时间8','薪资/小时8','工作内容介绍8',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(9,3,'兼职名称9','1679723094437','upload/jianzhi9.jpg',195,192,3,1,109,'17703786909','工作地点9','工作时间9','薪资/小时9','工作内容介绍9',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(10,2,'兼职名称10','1679723094420','upload/jianzhi10.jpg',193,307,4,1,1010,'17703786910','工作地点10','工作时间10','薪资/小时10','工作内容介绍10',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(11,3,'兼职名称11','1679723094426','upload/jianzhi11.jpg',250,262,3,2,1011,'17703786911','工作地点11','工作时间11','薪资/小时11','工作内容介绍11',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(12,2,'兼职名称12','1679723094429','upload/jianzhi12.jpg',347,246,1,1,1012,'17703786912','工作地点12','工作时间12','薪资/小时12','工作内容介绍12',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(13,3,'兼职名称13','1679723094468','upload/jianzhi13.jpg',266,456,1,1,1013,'17703786913','工作地点13','工作时间13','薪资/小时13','工作内容介绍13',1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(14,3,'兼职名称14','1679723094421','upload/jianzhi14.jpg',337,297,4,2,1013,'17703786914','工作地点14','工作时间14','薪资/小时14','工作内容介绍14',1,'2023-03-25 13:44:54','2023-03-25 13:44:54');

/*Table structure for table `jianzhi_collection` */

DROP TABLE IF EXISTS `jianzhi_collection`;

CREATE TABLE `jianzhi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianzhi_id` int(11) DEFAULT NULL COMMENT '兼职',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianzhi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='兼职收藏';

/*Data for the table `jianzhi_collection` */

insert  into `jianzhi_collection`(`id`,`jianzhi_id`,`yonghu_id`,`jianzhi_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(2,2,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(3,3,2,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(4,4,2,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(5,5,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(6,6,1,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(7,7,1,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(8,8,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(9,9,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(10,10,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(11,11,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(12,12,3,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(13,13,2,1,'2023-03-25 13:44:54','2023-03-25 13:44:54'),(14,14,1,1,'2023-03-25 13:44:54','2023-03-25 13:44:54');

/*Table structure for table `jianzhi_liuyan` */

DROP TABLE IF EXISTS `jianzhi_liuyan`;

CREATE TABLE `jianzhi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianzhi_id` int(11) DEFAULT NULL COMMENT '兼职',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianzhi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='兼职留言';

/*Data for the table `jianzhi_liuyan` */

insert  into `jianzhi_liuyan`(`id`,`jianzhi_id`,`yonghu_id`,`jianzhi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-25 13:44:54','回复信息1','2023-03-25 13:44:54','2023-03-25 13:44:54'),(2,2,2,'留言内容2','2023-03-25 13:44:54','回复信息2','2023-03-25 13:44:54','2023-03-25 13:44:54'),(3,3,2,'留言内容3','2023-03-25 13:44:54','回复信息3','2023-03-25 13:44:54','2023-03-25 13:44:54'),(4,4,2,'留言内容4','2023-03-25 13:44:54','回复信息4','2023-03-25 13:44:54','2023-03-25 13:44:54'),(5,5,1,'留言内容5','2023-03-25 13:44:54','回复信息5','2023-03-25 13:44:54','2023-03-25 13:44:54'),(6,6,2,'留言内容6','2023-03-25 13:44:54','回复信息6','2023-03-25 13:44:54','2023-03-25 13:44:54'),(7,7,1,'留言内容7','2023-03-25 13:44:54','回复信息7','2023-03-25 13:44:54','2023-03-25 13:44:54'),(8,8,2,'留言内容8','2023-03-25 13:44:54','回复信息8','2023-03-25 13:44:54','2023-03-25 13:44:54'),(9,9,1,'留言内容9','2023-03-25 13:44:54','回复信息9','2023-03-25 13:44:54','2023-03-25 13:44:54'),(10,10,3,'留言内容10','2023-03-25 13:44:54','回复信息10','2023-03-25 13:44:54','2023-03-25 13:44:54'),(11,11,1,'留言内容11','2023-03-25 13:44:54','回复信息11','2023-03-25 13:44:54','2023-03-25 13:44:54'),(12,12,3,'留言内容12','2023-03-25 13:44:54','回复信息12','2023-03-25 13:44:54','2023-03-25 13:44:54'),(13,13,1,'留言内容13','2023-03-25 13:44:54','回复信息13','2023-03-25 13:44:54','2023-03-25 13:44:54'),(14,14,2,'留言内容14','2023-03-25 13:44:54','回复信息14','2023-03-25 13:44:54','2023-03-25 13:44:54'),(15,8,1,'丫丫','2023-03-25 13:56:52','4564','2023-03-25 13:59:52','2023-03-25 13:56:52');

/*Table structure for table `jianzhi_order` */

DROP TABLE IF EXISTS `jianzhi_order`;

CREATE TABLE `jianzhi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianzhi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jianzhi_id` int(11) DEFAULT NULL COMMENT '兼职',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianzhi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='兼职申请';

/*Data for the table `jianzhi_order` */

insert  into `jianzhi_order`(`id`,`jianzhi_order_uuid_number`,`jianzhi_id`,`yonghu_id`,`jianzhi_order_types`,`insert_time`,`create_time`) values (1,'1679723436809',14,1,102,'2023-03-25 13:50:37','2023-03-25 13:50:37'),(2,'1679723829957',8,1,103,'2023-03-25 13:57:10','2023-03-25 13:57:10');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_address` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_address`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','商家地址1','商家介绍1',1,'2023-03-25 13:44:54'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','商家地址2','商家介绍2',1,'2023-03-25 13:44:54'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','商家地址3','商家介绍3',1,'2023-03-25 13:44:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','gn34lyba6zms2kwqnz5g2wihqhjszw8j','2023-03-25 13:50:16','2023-03-25 14:56:26'),(2,1,'admin','users','管理员','mymuy9wryb41xjvmfa8dzgvhfxh52st6','2023-03-25 13:50:22','2023-03-25 15:00:32'),(3,1,'a1','shangjia','商家','finrhq3fzx0bnnhzdhvdaqa0hiqp00sj','2023-03-25 13:55:03','2023-03-25 14:59:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-25 13:44:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-25 13:44:54'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-03-25 13:44:54'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-25 13:44:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
