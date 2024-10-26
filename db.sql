/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoxingyiyuanyiliaoshebei
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoxingyiyuanyiliaoshebei` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoxingyiyuanyiliaoshebei`;

/*Table structure for table `caigoujihua` */

DROP TABLE IF EXISTS `caigoujihua`;

CREATE TABLE `caigoujihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '科室职员',
  `caigoujihua_number` int(11) DEFAULT NULL COMMENT '采购数量',
  `caigoujihua_text` longtext COMMENT '备注',
  `caigoujihua_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `caigoujihua_yesno_text` longtext COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='设备采购';

/*Data for the table `caigoujihua` */

insert  into `caigoujihua`(`id`,`shebei_id`,`yonghu_id`,`caigoujihua_number`,`caigoujihua_text`,`caigoujihua_yesno_types`,`caigoujihua_yesno_text`,`insert_time`,`create_time`) values (1,1,1,429,'备注1',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,2,2,347,'备注2',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,3,3,378,'备注3',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,4,2,290,'备注4',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,5,3,71,'备注5',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,6,2,263,'备注6',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,7,2,27,'备注7',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,8,3,455,'备注8',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,9,1,483,'备注9',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,10,2,279,'备注10',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,11,1,468,'备注11',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,12,2,283,'备注12',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,13,2,499,'备注13',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,14,2,202,'备注14',2,'同意11111','2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kufang_types','库房类型',1,'库房类型1',NULL,NULL,'2023-03-24 09:26:27'),(2,'kufang_types','库房类型',2,'库房类型2',NULL,NULL,'2023-03-24 09:26:27'),(3,'kufang_types','库房类型',3,'库房类型',NULL,NULL,'2023-03-24 09:26:27'),(4,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-24 09:26:28'),(5,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-24 09:26:28'),(6,'shebei_types','设备类型',1,'设备类型1',NULL,NULL,'2023-03-24 09:26:28'),(7,'shebei_types','设备类型',2,'设备类型2',NULL,NULL,'2023-03-24 09:26:28'),(8,'shebei_types','设备类型',3,'设备类型3',NULL,NULL,'2023-03-24 09:26:28'),(9,'caigoujihua_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 09:26:28'),(10,'caigoujihua_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-24 09:26:28'),(11,'caigoujihua_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 09:26:28'),(12,'shebiebaosun_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 09:26:28'),(13,'shebiebaosun_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-24 09:26:28'),(14,'shebiebaosun_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 09:26:28'),(15,'shebieweixiu_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 09:26:28'),(16,'shebieweixiu_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-24 09:26:28'),(17,'shebieweixiu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 09:26:28'),(18,'shebiejiance_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 09:26:28'),(19,'shebiejiance_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-24 09:26:28'),(20,'shebiejiance_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 09:26:28'),(21,'shebeizhuanke_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 09:26:28'),(22,'shebeizhuanke_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-24 09:26:28'),(23,'shebeizhuanke_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 09:26:28'),(24,'shebeichuruku_types','出入库类型',1,'出库',NULL,NULL,'2023-03-24 09:26:28'),(25,'shebeichuruku_types','出入库类型',2,'入库',NULL,NULL,'2023-03-24 09:26:28'),(26,'shebeichuruku_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 09:26:28'),(27,'shebeichuruku_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-24 09:26:28'),(28,'shebeichuruku_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 09:26:28'),(29,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-24 09:26:28'),(30,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-24 09:26:28'),(31,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-24 09:26:28'),(32,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-24 09:26:28'),(33,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-24 09:26:28'),(34,'keshi_types','科室',1,'科室1',NULL,NULL,'2023-03-24 09:26:28'),(35,'keshi_types','科室',2,'科室2',NULL,NULL,'2023-03-24 09:26:28'),(36,'keshi_types','科室',3,'科室3',NULL,NULL,'2023-03-24 09:26:28');

/*Table structure for table `kufang` */

DROP TABLE IF EXISTS `kufang`;

CREATE TABLE `kufang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kufang_uuid_number` varchar(200) DEFAULT NULL COMMENT '库房编号',
  `kufang_name` varchar(200) DEFAULT NULL COMMENT '库房名称  Search111 ',
  `kufang_types` int(11) DEFAULT NULL COMMENT '库房类型 Search111',
  `kufang_address` varchar(200) DEFAULT NULL COMMENT '库房地址',
  `kufang_content` longtext COMMENT '库房介绍 ',
  `kufang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='库房';

/*Data for the table `kufang` */

insert  into `kufang`(`id`,`kufang_uuid_number`,`kufang_name`,`kufang_types`,`kufang_address`,`kufang_content`,`kufang_delete`,`insert_time`,`create_time`) values (1,'1679621228430','库房名称1',3,'库房地址1','库房介绍1',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,'1679621228434','库房名称2',3,'库房地址2','库房介绍2',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,'1679621228411','库房名称3',3,'库房地址3','库房介绍3',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,'1679621228400','库房名称4',1,'库房地址4','库房介绍4',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,'1679621228397','库房名称5',3,'库房地址5','库房介绍5',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,'1679621228428','库房名称6',2,'库房地址6','库房介绍6',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,'1679621228388','库房名称7',3,'库房地址7','库房介绍7',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,'1679621228388','库房名称8',3,'库房地址8','库房介绍8',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,'1679621228421','库房名称9',2,'库房地址9','库房介绍9',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,'1679621228434','库房名称10',1,'库房地址10','库房介绍10',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,'1679621228411','库房名称11',2,'库房地址11','库房介绍11',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,'1679621228450','库房名称12',2,'库房地址12','库房介绍12',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,'1679621228389','库房名称13',1,'库房地址13','库房介绍13',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,'1679621228463','库房名称14',3,'库房地址14','库房介绍14',1,'2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `lingdao` */

DROP TABLE IF EXISTS `lingdao`;

CREATE TABLE `lingdao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `lingdao_name` varchar(200) DEFAULT NULL COMMENT '领导名称 Search111 ',
  `lingdao_phone` varchar(200) DEFAULT NULL COMMENT '领导手机号',
  `lingdao_id_number` varchar(200) DEFAULT NULL COMMENT '领导身份证号',
  `lingdao_photo` varchar(200) DEFAULT NULL COMMENT '领导头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `lingdao_email` varchar(200) DEFAULT NULL COMMENT '领导邮箱',
  `lingdao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='领导';

/*Data for the table `lingdao` */

insert  into `lingdao`(`id`,`username`,`password`,`lingdao_name`,`lingdao_phone`,`lingdao_id_number`,`lingdao_photo`,`sex_types`,`lingdao_email`,`lingdao_delete`,`insert_time`,`create_time`) values (1,'a1','123456','领导名称1','17703786901','410224199010102001','upload/lingdao1.jpg',2,'1@qq.com',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,'a2','123456','领导名称2','17703786902','410224199010102002','upload/lingdao2.jpg',1,'2@qq.com',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,'a3','123456','领导名称3','17703786903','410224199010102003','upload/lingdao3.jpg',1,'3@qq.com',1,'2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-24 09:27:08','公告详情1','2023-03-24 09:27:08'),(2,'公告标题2',1,'upload/news2.jpg','2023-03-24 09:27:08','公告详情2','2023-03-24 09:27:08'),(3,'公告标题3',3,'upload/news3.jpg','2023-03-24 09:27:08','公告详情3','2023-03-24 09:27:08'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-24 09:27:08','公告详情4','2023-03-24 09:27:08'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-24 09:27:08','公告详情5','2023-03-24 09:27:08'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-24 09:27:08','公告详情6','2023-03-24 09:27:08'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-24 09:27:08','公告详情7','2023-03-24 09:27:08'),(8,'公告标题8',3,'upload/news8.jpg','2023-03-24 09:27:08','公告详情8','2023-03-24 09:27:08'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-24 09:27:08','公告详情9','2023-03-24 09:27:08'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-24 09:27:08','公告详情10','2023-03-24 09:27:08'),(11,'公告标题11',3,'upload/news11.jpg','2023-03-24 09:27:08','公告详情11','2023-03-24 09:27:08'),(12,'公告标题12',1,'upload/news12.jpg','2023-03-24 09:27:08','公告详情12','2023-03-24 09:27:08'),(13,'公告标题13',3,'upload/news13.jpg','2023-03-24 09:27:08','公告详情13','2023-03-24 09:27:08'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-24 09:27:08','公告详情14','2023-03-24 09:27:08');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_uuid_number` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebei_name` varchar(200) DEFAULT NULL COMMENT '设备名称  Search111 ',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备类型 Search111',
  `shebei_kucun_number` int(11) DEFAULT NULL COMMENT '设备库存',
  `kufang_id` int(11) DEFAULT NULL COMMENT '库房',
  `keshi_types` int(11) DEFAULT NULL COMMENT '所在科室 Search111',
  `shebei_content` longtext COMMENT '设备介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shebei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='设备';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`shebei_uuid_number`,`shebei_name`,`shebei_types`,`shebei_kucun_number`,`kufang_id`,`keshi_types`,`shebei_content`,`shangxia_types`,`shebei_delete`,`insert_time`,`create_time`) values (1,'1679621228405','设备名称1',2,101,1,1,'设备介绍1',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,'1679621228478','设备名称2',2,102,2,1,'设备介绍2',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,'1679621228409','设备名称3',1,103,3,2,'设备介绍3',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,'1679621228406','设备名称4',1,104,4,1,'设备介绍4',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,'1679621228414','设备名称5',3,105,5,1,'设备介绍5',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,'1679621228418','设备名称6',3,106,6,1,'设备介绍6',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,'1679621228456','设备名称7',1,107,7,1,'设备介绍7',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,'1679621228451','设备名称8',3,108,8,1,'设备介绍8',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,'1679621228454','设备名称9',3,109,9,1,'设备介绍9',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,'1679621228406','设备名称10',3,1010,10,2,'设备介绍10',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,'1679621228461','设备名称11',1,1011,11,1,'设备介绍11',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,'1679621228399','设备名称12',2,1012,12,1,'设备介绍12',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,'1679621228404','设备名称13',1,693,13,3,'设备介绍13',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,'1679621228431','设备名称14',2,1222,14,2,'设备介绍14',1,1,'2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `shebeichuruku` */

DROP TABLE IF EXISTS `shebeichuruku`;

CREATE TABLE `shebeichuruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '科室职员',
  `shebeichuruku_types` int(11) DEFAULT NULL COMMENT '出入库类型 Search111',
  `shebeichuruku_number` int(11) DEFAULT NULL COMMENT '出入库数量',
  `shebeichuruku_text` longtext COMMENT '备注',
  `shebeichuruku_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shebeichuruku_yesno_text` longtext COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='设备出入库房';

/*Data for the table `shebeichuruku` */

insert  into `shebeichuruku`(`id`,`shebei_id`,`yonghu_id`,`shebeichuruku_types`,`shebeichuruku_number`,`shebeichuruku_text`,`shebeichuruku_yesno_types`,`shebeichuruku_yesno_text`,`insert_time`,`create_time`) values (1,1,1,1,27,'备注1',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,2,2,1,104,'备注2',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,3,2,2,406,'备注3',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,4,1,1,215,'备注4',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,5,3,2,413,'备注5',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,6,2,2,175,'备注6',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,7,2,2,53,'备注7',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,8,2,2,146,'备注8',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,9,1,1,155,'备注9',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,10,1,1,399,'备注10',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,11,1,2,463,'备注11',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,12,1,1,192,'备注12',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,13,2,1,320,'备注13',2,'123123','2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,14,2,2,6,'备注14',2,'123','2023-03-24 09:27:08','2023-03-24 09:27:08'),(15,14,1,1,20,'xxx日期出口20要干啥',2,'拒绝就啥也不会发生','2023-03-24 09:51:15','2023-03-24 09:51:15'),(16,14,1,2,20,'xxxx日期 入库 设备14 20台 原因',2,'通过后就会修改相应的数值','2023-03-24 09:51:51','2023-03-24 09:51:51');

/*Table structure for table `shebeizhuanke` */

DROP TABLE IF EXISTS `shebeizhuanke`;

CREATE TABLE `shebeizhuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '科室职员',
  `keshi_types` int(11) DEFAULT NULL COMMENT '要转的科室 Search111',
  `shebeizhuanke_text` longtext COMMENT '备注',
  `shebeizhuanke_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shebeizhuanke_yesno_text` longtext COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='设备转科';

/*Data for the table `shebeizhuanke` */

insert  into `shebeizhuanke`(`id`,`shebei_id`,`yonghu_id`,`keshi_types`,`shebeizhuanke_text`,`shebeizhuanke_yesno_types`,`shebeizhuanke_yesno_text`,`insert_time`,`create_time`) values (1,1,3,1,'备注1',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,2,2,1,'备注2',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,3,2,1,'备注3',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,4,3,1,'备注4',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,5,3,2,'备注5',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,6,2,1,'备注6',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,7,3,2,'备注7',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,8,1,1,'备注8',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,9,2,3,'备注9',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,10,3,3,'备注10',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,11,2,2,'备注11',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,12,3,2,'备注12',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,13,1,1,'备注13',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,14,1,3,'备注14',2,'12312','2023-03-24 09:27:08','2023-03-24 09:27:08'),(15,14,1,1,'123',1,'','2023-03-24 09:49:14','2023-03-24 09:49:14'),(16,14,1,2,'职员登录后只能看到自己相关的信息',2,'111111111111','2023-03-24 09:52:29','2023-03-24 09:52:29');

/*Table structure for table `shebiebaosun` */

DROP TABLE IF EXISTS `shebiebaosun`;

CREATE TABLE `shebiebaosun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '科室职员',
  `shebiebaosun_number` int(11) DEFAULT NULL COMMENT '报损数量',
  `shebiebaosun_text` longtext COMMENT '备注',
  `shebiebaosun_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shebiebaosun_yesno_text` longtext COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='设备报损';

/*Data for the table `shebiebaosun` */

insert  into `shebiebaosun`(`id`,`shebei_id`,`yonghu_id`,`shebiebaosun_number`,`shebiebaosun_text`,`shebiebaosun_yesno_types`,`shebiebaosun_yesno_text`,`insert_time`,`create_time`) values (1,1,2,486,'备注1',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,2,2,185,'备注2',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,3,1,324,'备注3',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,4,3,260,'备注4',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,5,3,103,'备注5',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,6,3,485,'备注6',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,7,1,231,'备注7',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,8,3,47,'备注8',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,9,2,31,'备注9',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,10,1,140,'备注10',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,11,3,353,'备注11',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,12,1,81,'备注12',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,13,3,203,'备注13',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,14,3,89,'备注14',3,'设备完好不需要报损','2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `shebiejiance` */

DROP TABLE IF EXISTS `shebiejiance`;

CREATE TABLE `shebiejiance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '科室职员',
  `shebiejiance_number` int(11) DEFAULT NULL COMMENT '质量检测登记数量',
  `shebiejiance_text` longtext COMMENT '备注',
  `shebiejiance_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shebiejiance_yesno_text` longtext COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='质量检测登记';

/*Data for the table `shebiejiance` */

insert  into `shebiejiance`(`id`,`shebei_id`,`yonghu_id`,`shebiejiance_number`,`shebiejiance_text`,`shebiejiance_yesno_types`,`shebiejiance_yesno_text`,`insert_time`,`create_time`) values (1,1,2,474,'备注1',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,2,2,345,'备注2',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,3,1,185,'备注3',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,4,3,344,'备注4',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,5,2,126,'备注5',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,6,2,169,'备注6',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,7,3,201,'备注7',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,8,3,178,'备注8',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,9,2,256,'备注9',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,10,1,277,'备注10',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,11,3,129,'备注11',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,12,2,361,'备注12',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,13,2,156,'备注13',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,14,1,175,'备注14',2,'111111','2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `shebieweixiu` */

DROP TABLE IF EXISTS `shebieweixiu`;

CREATE TABLE `shebieweixiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '科室职员',
  `shebieweixiu_number` int(11) DEFAULT NULL COMMENT '维修数量',
  `shebieweixiu_text` longtext COMMENT '备注',
  `shebieweixiu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shebieweixiu_yesno_text` longtext COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='设备维修';

/*Data for the table `shebieweixiu` */

insert  into `shebieweixiu`(`id`,`shebei_id`,`yonghu_id`,`shebieweixiu_number`,`shebieweixiu_text`,`shebieweixiu_yesno_types`,`shebieweixiu_yesno_text`,`insert_time`,`create_time`) values (1,1,1,368,'备注1',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,2,1,328,'备注2',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,3,1,136,'备注3',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(4,4,1,365,'备注4',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(5,5,2,65,'备注5',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(6,6,3,331,'备注6',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(7,7,3,468,'备注7',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(8,8,1,469,'备注8',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(9,9,2,336,'备注9',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(10,10,1,221,'备注10',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(11,11,2,308,'备注11',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(12,12,2,493,'备注12',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(13,13,1,215,'备注13',1,NULL,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(14,14,3,151,'备注14',2,'12312312','2023-03-24 09:27:08','2023-03-24 09:27:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '医院id',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','科室职员','rf6r249jhf7kmfycklbrnd4eu8948sqg','2023-03-24 09:36:32','2023-03-24 10:50:40'),(2,1,'a1','lingdao','领导','10noqet3foj9r94c27bpimya66hsck7e','2023-03-24 09:48:01','2023-03-24 10:52:59'),(3,1,'admin','users','管理员','tk9j9o7jjoufsr0pvon6lr8was2l1pm0','2023-03-24 09:56:25','2023-03-24 10:59:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-24 09:26:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '职员名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '职员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '职员身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '职员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `keshi_types` int(11) DEFAULT NULL COMMENT '科室 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '职员邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='科室职员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`keshi_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','职员名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,1,'1@qq.com',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(2,'a2','123456','职员名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,2,'2@qq.com',1,'2023-03-24 09:27:08','2023-03-24 09:27:08'),(3,'a3','123456','职员名称3','17703786903','410224199010102003','upload/yonghu3.jpg',1,1,'3@qq.com',1,'2023-03-24 09:27:08','2023-03-24 09:27:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
