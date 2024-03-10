/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qingshaoniankepujiaoxuepingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qingshaoniankepujiaoxuepingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qingshaoniankepujiaoxuepingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shipin_types','视频类型',1,'视频类型1',NULL,NULL,'2022-05-19 13:45:09'),(2,'shipin_types','视频类型',2,'视频类型2',NULL,NULL,'2022-05-19 13:45:09'),(3,'shipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-19 13:45:09'),(4,'shipin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-05-19 13:45:09'),(5,'shipin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-05-19 13:45:09'),(6,'wenzhang_types','文章类型',1,'文章类型1',NULL,NULL,'2022-05-19 13:45:09'),(7,'wenzhang_types','文章类型',2,'文章类型2',NULL,NULL,'2022-05-19 13:45:09'),(8,'wenzhang_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-19 13:45:09'),(9,'wenzhang_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-05-19 13:45:09'),(10,'wenzhang_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-05-19 13:45:09'),(11,'kechuangzuopin_types','作品类型',1,'作品类型1',NULL,NULL,'2022-05-19 13:45:09'),(12,'kechuangzuopin_types','作品类型',2,'作品类型2',NULL,NULL,'2022-05-19 13:45:09'),(13,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-19 13:45:09'),(14,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-19 13:45:09'),(15,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-05-19 13:45:09'),(16,'sex_types','性别',1,'男',NULL,NULL,'2022-05-19 13:45:09'),(17,'sex_types','性别',2,'女',NULL,NULL,'2022-05-19 13:45:09');

/*Table structure for table `kechuangzuopin` */

DROP TABLE IF EXISTS `kechuangzuopin`;

CREATE TABLE `kechuangzuopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechuangzuopin_name` varchar(200) DEFAULT NULL COMMENT '作品标题  Search111 ',
  `kechuangzuopin_types` int(11) DEFAULT NULL COMMENT '作品类型 Search111',
  `kechuangzuopin_photo` varchar(200) DEFAULT NULL COMMENT '作品封面',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kechuangzuopin_content` text COMMENT '作品内容 ',
  `insert_time` date DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作品信息';

/*Data for the table `kechuangzuopin` */

insert  into `kechuangzuopin`(`id`,`kechuangzuopin_name`,`kechuangzuopin_types`,`kechuangzuopin_photo`,`yonghu_id`,`kechuangzuopin_content`,`insert_time`,`create_time`) values (1,'作品标题1',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/kechuangzuopin1.jpg',2,'作品内容1','2022-05-19','2022-05-19 13:46:49'),(3,'作品标题3',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/kechuangzuopin3.jpg',1,'作品内容3','2022-05-19','2022-05-19 13:46:49'),(4,'作品标题4',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/kechuangzuopin4.jpg',1,'作品内容4','2022-05-19','2022-05-19 13:46:49'),(5,'作品标题5',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/kechuangzuopin5.jpg',3,'作品内容5','2022-05-19','2022-05-19 13:46:49');

/*Table structure for table `kechuangzuopin_liuyan` */

DROP TABLE IF EXISTS `kechuangzuopin_liuyan`;

CREATE TABLE `kechuangzuopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechuangzuopin_id` int(11) DEFAULT NULL COMMENT '作品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kechuangzuopin_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='作品评论';

/*Data for the table `kechuangzuopin_liuyan` */

insert  into `kechuangzuopin_liuyan`(`id`,`kechuangzuopin_id`,`yonghu_id`,`kechuangzuopin_liuyan_text`,`insert_time`,`create_time`) values (1,1,1,'评论内容1','2022-05-19 13:46:49','2022-05-19 13:46:49'),(3,3,1,'评论内容3','2022-05-19 13:46:49','2022-05-19 13:46:49'),(4,4,3,'评论内容4','2022-05-19 13:46:49','2022-05-19 13:46:49'),(5,5,3,'评论内容5','2022-05-19 13:46:49','2022-05-19 13:46:49'),(6,5,1,'333333','2022-05-19 14:49:34','2022-05-19 14:49:34');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/news1.jpg','2022-05-19 13:46:49','公告详情1','2022-05-19 13:46:49'),(2,'公告标题2',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/news2.jpg','2022-05-19 13:46:49','公告详情2','2022-05-19 13:46:49'),(3,'公告标题3',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/news3.jpg','2022-05-19 13:46:49','公告详情3','2022-05-19 13:46:49'),(4,'公告标题4',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/news4.jpg','2022-05-19 13:46:49','公告详情4','2022-05-19 13:46:49'),(5,'公告标题5',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/news5.jpg','2022-05-19 13:46:49','公告详情5','2022-05-19 13:46:49');

/*Table structure for table `shipin` */

DROP TABLE IF EXISTS `shipin`;

CREATE TABLE `shipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题  Search111 ',
  `shipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `shipin_photo` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `shipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shipin_content` text COMMENT '视频内容 ',
  `insert_time` date DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='视频信息';

/*Data for the table `shipin` */

insert  into `shipin`(`id`,`shipin_name`,`shipin_types`,`shipin_photo`,`shipin_video`,`zan_number`,`cai_number`,`shipin_content`,`insert_time`,`create_time`) values (1,'视频标题1',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/shipin1.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/video.mp4',298,392,'视频内容1','2022-05-19','2022-05-19 13:46:49'),(2,'视频标题2',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/shipin2.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/video.mp4',311,349,'视频内容2','2022-05-19','2022-05-19 13:46:49'),(3,'视频标题3',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/shipin3.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/video.mp4',332,500,'视频内容3','2022-05-19','2022-05-19 13:46:49'),(4,'视频标题4',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/shipin4.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/video.mp4',41,236,'视频内容4','2022-05-19','2022-05-19 13:46:49'),(5,'视频标题5',1,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/shipin5.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/video.mp4',242,386,'视频内容5','2022-05-19','2022-05-19 13:46:49');

/*Table structure for table `shipin_collection` */

DROP TABLE IF EXISTS `shipin_collection`;

CREATE TABLE `shipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='视频收藏';

/*Data for the table `shipin_collection` */

insert  into `shipin_collection`(`id`,`shipin_id`,`yonghu_id`,`shipin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(2,2,1,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(3,3,1,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(5,5,2,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(7,5,1,1,'2022-05-19 14:48:39','2022-05-19 14:48:39');

/*Table structure for table `shipin_liuyan` */

DROP TABLE IF EXISTS `shipin_liuyan`;

CREATE TABLE `shipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shipin_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='视频评论';

/*Data for the table `shipin_liuyan` */

insert  into `shipin_liuyan`(`id`,`shipin_id`,`yonghu_id`,`shipin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评论内容1','2022-05-19 13:46:49','回复信息1','2022-05-19 13:46:49','2022-05-19 13:46:49'),(2,2,3,'评论内容2','2022-05-19 13:46:49','回复信息2','2022-05-19 13:46:49','2022-05-19 13:46:49'),(3,3,3,'评论内容3','2022-05-19 13:46:49','回复信息3','2022-05-19 13:46:49','2022-05-19 13:46:49'),(4,4,2,'评论内容4','2022-05-19 13:46:49','回复信息4','2022-05-19 13:46:49','2022-05-19 13:46:49'),(5,5,1,'评论内容5','2022-05-19 13:46:49','回复信息5','2022-05-19 13:46:49','2022-05-19 13:46:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','bpgpsmtds44gma42ysctn6wgnm8g3l8j','2022-05-19 14:06:37','2022-05-19 16:07:29'),(2,1,'a1','yonghu','用户','cksys6zrxrl23s9ibtqp54crzlmlvi1l','2022-05-19 14:20:13','2022-05-19 15:48:26');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `wenzhang` */

DROP TABLE IF EXISTS `wenzhang`;

CREATE TABLE `wenzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_name` varchar(200) DEFAULT NULL COMMENT '文章标题  Search111 ',
  `wenzhang_types` int(11) DEFAULT NULL COMMENT '文章类型 Search111',
  `wenzhang_photo` varchar(200) DEFAULT NULL COMMENT '文章封面',
  `wenzhang_file` varchar(200) DEFAULT NULL COMMENT '文章',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `wenzhang_content` text COMMENT '文章内容 ',
  `insert_time` date DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文章信息';

/*Data for the table `wenzhang` */

insert  into `wenzhang`(`id`,`wenzhang_name`,`wenzhang_types`,`wenzhang_photo`,`wenzhang_file`,`zan_number`,`cai_number`,`wenzhang_content`,`insert_time`,`create_time`) values (1,'文章标题1',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/wenzhang1.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/file.rar',79,244,'文章内容1','2022-05-19','2022-05-19 13:46:49'),(2,'文章标题2',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/wenzhang2.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/file.rar',289,311,'文章内容2','2022-05-19','2022-05-19 13:46:49'),(3,'文章标题3',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/wenzhang3.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/file.rar',262,257,'文章内容3','2022-05-19','2022-05-19 13:46:49'),(4,'文章标题4',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/wenzhang4.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/file.rar',74,369,'文章内容4','2022-05-19','2022-05-19 13:46:49'),(5,'文章标题5',2,'http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/wenzhang5.jpg','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/file.rar',164,395,'文章内容5','2022-05-19','2022-05-19 13:46:49');

/*Table structure for table `wenzhang_collection` */

DROP TABLE IF EXISTS `wenzhang_collection`;

CREATE TABLE `wenzhang_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_id` int(11) DEFAULT NULL COMMENT '文章',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenzhang_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='文章收藏';

/*Data for the table `wenzhang_collection` */

insert  into `wenzhang_collection`(`id`,`wenzhang_id`,`yonghu_id`,`wenzhang_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(2,2,2,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(3,3,2,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(4,4,1,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(5,5,2,1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(8,5,1,1,'2022-05-19 14:50:39','2022-05-19 14:50:39');

/*Table structure for table `wenzhang_liuyan` */

DROP TABLE IF EXISTS `wenzhang_liuyan`;

CREATE TABLE `wenzhang_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_id` int(11) DEFAULT NULL COMMENT '文章',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenzhang_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章评论';

/*Data for the table `wenzhang_liuyan` */

insert  into `wenzhang_liuyan`(`id`,`wenzhang_id`,`yonghu_id`,`wenzhang_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评论内容1','2022-05-19 13:46:49','回复信息1','2022-05-19 13:46:49','2022-05-19 13:46:49'),(2,2,3,'评论内容2','2022-05-19 13:46:49','回复信息2','2022-05-19 13:46:49','2022-05-19 13:46:49'),(3,3,3,'评论内容3','2022-05-19 13:46:49','回复信息3','2022-05-19 13:46:49','2022-05-19 13:46:49'),(4,4,1,'评论内容4','2022-05-19 13:46:49','回复信息4','2022-05-19 13:46:49','2022-05-19 13:46:49'),(5,5,1,'评论内容5','2022-05-19 13:46:49','回复信息51','2022-05-19 14:54:36','2022-05-19 13:46:49');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/yonghu1.jpg',2,'17703786901','1@qq.com',1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(2,'a2','123456','用户姓名2','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/yonghu2.jpg',1,'17703786902','2@qq.com',1,'2022-05-19 13:46:49','2022-05-19 13:46:49'),(3,'a3','123456','用户姓名3','http://localhost:8080/qingshaoniankepujiaoxuepingtai/upload/yonghu3.jpg',1,'17703786903','3@qq.com',1,'2022-05-19 13:46:49','2022-05-19 13:46:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
