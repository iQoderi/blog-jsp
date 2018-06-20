# Host: localhost  (Version: 5.6.10)
# Date: 2018-06-20 16:22:40
# Generator: MySQL-Front 5.3  (Build 2.42)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

DROP DATABASE IF EXISTS `blog`;
CREATE DATABASE `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;

#
# Source for table "blog"
#

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  `times` int(11) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "blog"
#

INSERT INTO `blog` VALUES (2,'第一条blog','正式谈话：最好避免使用呵呵，不然会让对方感到你不尊重。\n在 互联网迅速发展特别是聊天工具和BBS的普及发展的情况下，“呵呵”这个词被越来越多地用在网络，电脑屏幕上用来反映自己的表情。当然，在手机短信里同样也得到了广泛的使用。在用语中，表示单纯的笑、浅笑、开心的笑，或表示嘲笑，或表示好笑，或表示无奈，或是想结束本次的聊天，甚至是糊弄的笑。但是也不能片面的理解，有时会产生误解。','banner-img.png','2018-05-02 09:26:16',71,'情感'),(3,'第二天Blog','我好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长','blog-img2.jpg','2018-05-02 09:28:30',11,'情感'),(5,'呵呵是什么意思','呵呵，意为笑声的拟声词。\r\n网络用语：在否定对方的同时，表达强烈的嘲讽和不屑。\r\n正式谈话：最好避免使用呵呵，不然会让对方感到你不尊重。\r\n在 互联网迅速发展特别是聊天工具和BBS的普及发展的情况下，“呵呵”这个词被越来越多地用在网络，电脑屏幕上用来反映自己的表情。当然，在手机短信里同样也得到了广泛的使用。在用语中，表示单纯的笑、浅笑、开心的笑，或表示嘲笑，或表示好笑，或表示无奈，或是想结束本次的聊天，甚至是糊弄的笑。但是也不能片面的理解，有时会产生误解。','NO','2018-05-03 13:59:38',5,'日志'),(6,'这是一个Blog','  世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。\r\n  世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。\r\n 世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。世上只有妈妈好。','027ba.jpg','2018-05-28 15:45:56',3,'情感'),(7,'hello，大家好','hello，大家好\r\n   hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好hello，大家好','NO','2018-05-28 15:59:39',2,'日志'),(8,'巢湖学院','根据校党委中心组理论学习计划，结合学校工作实际，经研究决定于5月29日（星期二）下午2:30在第二会议室召开校党委中心组理论学习扩大会议，现将会议相关事宜通知如下：\r\n\r\n一、会议内容\r\n\r\n1.学习中共中央办公厅印发的《关于进一步激励广大干部新时代新担当新作为的意见》；\r\n\r\n2.学习习近平总书记5月2日考察北京大学时的重要讲话精神；\r\n\r\n3.学习习近平总书记5月4日在纪念马克思诞辰200周年大会上的重要讲话精神；\r\n\r\n4.交流学习十九大精神心得体会。\r\n\r\n二、参加人员\r\n\r\n全校副处级及以上领导干部。\r\n\r\n请与会人员按时参会并签到。','1.png','2018-05-28 22:36:28',11,'日志'),(9,'ORDER BY 语句','ORDER BY 语句用于根据指定的列对结果集进行排序。\r\n\r\nORDER BY 语句默认按照升序对记录进行排序。\r\n\r\n如果您希望按照降序对记录进行排序，可以使用 DESC 关键字','4.png','2018-05-29 00:29:10',3,'分享');

#
# Source for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `blogId` int(11) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "comment"
#

INSERT INTO `comment` VALUES (1,'呵呵',2,'2017-12-18 07:12:02','zhangsan'),(16,'我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试我测试',2,'2018-4-20','李四'),(17,'哈哈',2,'2018-06-04 14:58:45','hehe'),(18,'嘻嘻嘻',2,'2018-06-04 14:59:02','haha'),(19,'这个对吗',2,'2018-06-04 15:00:28','游客-1907561544'),(20,'我是第一个',3,'2018-06-04 15:00:57','游客531623889'),(21,'网络用语：在否定对方的同时，表达强烈的嘲讽和不屑。',5,'2018-06-04 15:05:36','游客550474941');

#
# Source for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'zhangsan','123','我是谁','李四124','1'),(2,'zhangsan1','0','你喜欢吃什么121','百事可乐','1'),(3,'zhangsan2','1','你喜欢吃什么','百事可乐','1'),(5,'zhangsan4','1','你喜欢吃什么','百事可乐','1'),(6,'zhangsan5','1','你喜欢吃什么','百事可乐','1'),(7,'zhangsan6','1','你喜欢吃什么','百事可乐','1'),(8,'zhangsan7','1','你喜欢吃什么','百事可乐','1'),(9,'zhangsan8','1','你喜欢吃什么','百事可乐','1'),(10,'zhangsan9','1','你喜欢吃什么','百事可乐','1'),(11,'zhangsan10','1','你喜欢吃什么','百事可乐','1'),(12,'zhangsan11','1','你喜欢吃什么','百事可乐','1'),(13,'张三','123','你喜欢吃什么','可口可乐','2'),(14,'呵呵','123','你喜欢喝什么','百世可乐33','1'),(15,'哈哈','123','你喜欢吃什么','红烧鱼','1');

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
