/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t117`;
CREATE DATABASE IF NOT EXISTS `t117` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t117`;

DROP TABLE IF EXISTS `banjixinxi`;
CREATE TABLE IF NOT EXISTS `banjixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='班级信息';

DELETE FROM `banjixinxi`;
INSERT INTO `banjixinxi` (`id`, `addtime`, `banji`) VALUES
	(31, '2021-05-09 01:52:32', '商务一班'),
	(32, '2021-05-09 01:52:32', '班级2'),
	(33, '2021-05-09 01:52:32', '班级3'),
	(34, '2021-05-09 01:52:32', '班级4'),
	(35, '2021-05-09 01:52:32', '班级5'),
	(36, '2021-05-09 01:52:32', '班级6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot4prsj/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot4prsj/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot4prsj/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `gonghao`, `mima`, `jiaoshixingming`, `xingbie`, `touxiang`, `banji`, `youxiang`, `dianhua`) VALUES
	(21, '2021-05-09 01:52:32', '教师1', '123456', '何老师', '女', 'http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang1.jpg', '商务一班', '773890001@qq.com', '13823888881'),
	(22, '2021-05-09 01:52:32', '教师2', '123456', '教师姓名2', '男', 'http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang2.jpg', '班级2', '773890002@qq.com', '13823888882'),
	(23, '2021-05-09 01:52:32', '教师3', '123456', '教师姓名3', '男', 'http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang3.jpg', '班级3', '773890003@qq.com', '13823888883'),
	(24, '2021-05-09 01:52:32', '教师4', '123456', '教师姓名4', '男', 'http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang4.jpg', '班级4', '773890004@qq.com', '13823888884'),
	(25, '2021-05-09 01:52:32', '教师5', '123456', '教师姓名5', '男', 'http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang5.jpg', '班级5', '773890005@qq.com', '13823888885'),
	(26, '2021-05-09 01:52:32', '教师6', '123456', '教师姓名6', '男', 'http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang6.jpg', '班级6', '773890006@qq.com', '13823888886');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '0mpieiht729gz8dxt7xul2f9onamq9jn', '2021-05-09 01:53:32', '2024-04-06 05:20:25'),
	(2, 21, '1', 'jiaoshi', '教师', 'sgm0xbbp2i4tzxbiqe0m9hd1877i7x5q', '2021-05-09 01:54:20', '2024-04-06 05:21:30'),
	(3, 1620525249434, '2', 'xuesheng', '学生', 'kdhelcnjroz0dibw0oufs2adutttonsa', '2021-05-09 01:55:49', '2021-05-09 02:58:07'),
	(4, 11, '学生1', 'xuesheng', '学生', '5kppdxvz99tq90cxwbyng0qyc3bsvkte', '2024-04-06 04:19:36', '2024-04-06 05:21:15');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-09 01:52:32');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525249435 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xueshengxingming`, `xingbie`, `touxiang`, `yuanxi`, `banji`, `shouji`, `youxiang`) VALUES
	(11, '2021-05-09 01:52:32', '学生1', '123456', '学生姓名1', '男', 'http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang1.jpg', '院系1', '班级1', '13823888881', '773890001@qq.com'),
	(12, '2021-05-09 01:52:32', '学生2', '123456', '学生姓名2', '男', 'http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang2.jpg', '院系2', '班级2', '13823888882', '773890002@qq.com'),
	(13, '2021-05-09 01:52:32', '学生3', '123456', '学生姓名3', '男', 'http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang3.jpg', '院系3', '班级3', '13823888883', '773890003@qq.com'),
	(14, '2021-05-09 01:52:32', '学生4', '123456', '学生姓名4', '男', 'http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang4.jpg', '院系4', '班级4', '13823888884', '773890004@qq.com'),
	(15, '2021-05-09 01:52:32', '学生5', '123456', '学生姓名5', '男', 'http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang5.jpg', '院系5', '班级5', '13823888885', '773890005@qq.com'),
	(16, '2021-05-09 01:52:32', '学生6', '123456', '学生姓名6', '男', 'http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang6.jpg', '院系6', '班级6', '13823888886', '773890006@qq.com'),
	(1620525249434, '2021-05-09 01:54:09', '2', '1', '刘倩', '女', 'http://localhost:8080/springboot4prsj/upload/1620525359107.png', '商务系', '商务一班', '15214121411', '12121212@15.com');

DROP TABLE IF EXISTS `zuoyedianping`;
CREATE TABLE IF NOT EXISTS `zuoyedianping` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `wanchengneirong` varchar(200) DEFAULT NULL COMMENT '完成内容',
  `pingyu` longtext COMMENT '评语',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525477899 DEFAULT CHARSET=utf8mb3 COMMENT='作业点评';

DELETE FROM `zuoyedianping`;
INSERT INTO `zuoyedianping` (`id`, `addtime`, `zuoyebianhao`, `zuoyebiaoti`, `xuehao`, `xueshengxingming`, `wanchengneirong`, `pingyu`, `riqi`, `gonghao`, `jiaoshixingming`, `banji`) VALUES
	(61, '2021-05-09 01:52:32', '作业编号1', '作业标题1', '学号1', '学生姓名1', '完成内容1', '评语1', '2021-05-09 09:52:32', '工号1', '教师姓名1', '班级1'),
	(62, '2021-05-09 01:52:32', '作业编号2', '作业标题2', '学号2', '学生姓名2', '完成内容2', '评语2', '2021-05-09 09:52:32', '工号2', '教师姓名2', '班级2'),
	(63, '2021-05-09 01:52:32', '作业编号3', '作业标题3', '学号3', '学生姓名3', '完成内容3', '评语3', '2021-05-09 09:52:32', '工号3', '教师姓名3', '班级3'),
	(64, '2021-05-09 01:52:32', '作业编号4', '作业标题4', '学号4', '学生姓名4', '完成内容4', '评语4', '2021-05-09 09:52:32', '工号4', '教师姓名4', '班级4'),
	(65, '2021-05-09 01:52:32', '作业编号5', '作业标题5', '学号5', '学生姓名5', '完成内容5', '评语5', '2021-05-09 09:52:32', '工号5', '教师姓名5', '班级5'),
	(66, '2021-05-09 01:52:32', '作业编号6', '作业标题6', '学号6', '学生姓名6', '完成内容6', '评语6', '2021-05-09 09:52:32', '工号6', '教师姓名6', '班级6'),
	(1620525477898, '2021-05-09 01:57:57', '1', '英语作业', '2', '刘倩', '测试', '可以下载学生的作业然后进行点评，做的很不错的。。。', '2021-05-09 09:57:41', '1', '何老师', '商务一班');

DROP TABLE IF EXISTS `zuoyetijiao`;
CREATE TABLE IF NOT EXISTS `zuoyetijiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `zuoyeneirong` varchar(200) DEFAULT NULL COMMENT '作业内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `neirongbiaoti` varchar(200) DEFAULT NULL COMMENT '内容标题',
  `wanchengneirong` varchar(200) DEFAULT NULL COMMENT '完成内容',
  `tijiaozuoye` varchar(200) DEFAULT NULL COMMENT '提交作业',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525448470 DEFAULT CHARSET=utf8mb3 COMMENT='作业提交';

DELETE FROM `zuoyetijiao`;
INSERT INTO `zuoyetijiao` (`id`, `addtime`, `zuoyebianhao`, `zuoyebiaoti`, `zuoyeneirong`, `gonghao`, `jiaoshixingming`, `banji`, `neirongbiaoti`, `wanchengneirong`, `tijiaozuoye`, `tijiaoriqi`, `xuehao`, `xueshengxingming`) VALUES
	(51, '2021-05-09 01:52:32', '作业编号1', '作业标题1', '作业内容1', '工号1', '教师姓名1', '班级1', '内容标题1', '完成内容1', '', '2021-05-09', '学号1', '学生姓名1'),
	(52, '2021-05-09 01:52:32', '作业编号2', '作业标题2', '作业内容2', '工号2', '教师姓名2', '班级2', '内容标题2', '完成内容2', '', '2021-05-09', '学号2', '学生姓名2'),
	(53, '2021-05-09 01:52:32', '作业编号3', '作业标题3', '作业内容3', '工号3', '教师姓名3', '班级3', '内容标题3', '完成内容3', '', '2021-05-09', '学号3', '学生姓名3'),
	(54, '2021-05-09 01:52:32', '作业编号4', '作业标题4', '作业内容4', '工号4', '教师姓名4', '班级4', '内容标题4', '完成内容4', '', '2021-05-09', '学号4', '学生姓名4'),
	(55, '2021-05-09 01:52:32', '作业编号5', '作业标题5', '作业内容5', '工号5', '教师姓名5', '班级5', '内容标题5', '完成内容5', '', '2021-05-09', '学号5', '学生姓名5'),
	(56, '2021-05-09 01:52:32', '作业编号6', '作业标题6', '作业内容6', '工号6', '教师姓名6', '班级6', '内容标题6', '完成内容6', '', '2021-05-09', '学号6', '学生姓名6'),
	(1620525448469, '2021-05-09 01:57:28', '1', '英语作业', '222222', '1', '何老师', '商务一班', '测试', '测试', 'http://localhost:8080/springboot4prsj/upload/1620525428815.doc', '2021-05-09', '2', '刘倩');

DROP TABLE IF EXISTS `zuoyexinxi`;
CREATE TABLE IF NOT EXISTS `zuoyexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) NOT NULL COMMENT '作业标题',
  `zuoyewenjian` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoyeneirong` varchar(200) DEFAULT NULL COMMENT '作业内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuoyebianhao` (`zuoyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525340085 DEFAULT CHARSET=utf8mb3 COMMENT='作业信息';

DELETE FROM `zuoyexinxi`;
INSERT INTO `zuoyexinxi` (`id`, `addtime`, `zuoyebianhao`, `zuoyebiaoti`, `zuoyewenjian`, `zuoyeneirong`, `faburiqi`, `gonghao`, `jiaoshixingming`, `banji`) VALUES
	(41, '2021-05-09 01:52:32', '作业编号1', '作业标题1', '', '作业内容1', '2021-05-09', '工号1', '教师姓名1', '班级1'),
	(42, '2021-05-09 01:52:32', '作业编号2', '作业标题2', '', '作业内容2', '2021-05-09', '工号2', '教师姓名2', '班级2'),
	(43, '2021-05-09 01:52:32', '作业编号3', '作业标题3', '', '作业内容3', '2021-05-09', '工号3', '教师姓名3', '班级3'),
	(44, '2021-05-09 01:52:32', '作业编号4', '作业标题4', '', '作业内容4', '2021-05-09', '工号4', '教师姓名4', '班级4'),
	(45, '2021-05-09 01:52:32', '作业编号5', '作业标题5', '', '作业内容5', '2021-05-09', '工号5', '教师姓名5', '班级5'),
	(46, '2021-05-09 01:52:32', '作业编号6', '作业标题6', '', '作业内容6', '2021-05-09', '工号6', '教师姓名6', '班级6'),
	(1620525340084, '2021-05-09 01:55:39', '1', '英语作业', 'http://localhost:8080/springboot4prsj/upload/1620525334726.doc', '222222', '2021-05-09', '1', '何老师', '商务一班');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
