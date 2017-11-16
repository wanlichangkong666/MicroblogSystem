-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: microblogmanagement
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(200) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuid_idx` (`mid`),
  KEY `username_idx` (`username`),
  CONSTRAINT `cusername` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `mid` FOREIGN KEY (`mid`) REFERENCES `microblog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,7,'2017-11-06 12:54:18','我也听说了','邪神'),(2,3,'2017-11-12 20:08:23','有什么好笑的。','万里长空'),(3,6,'2017-11-12 21:16:07','我也好开心~~~~','邪神'),(4,6,'2017-11-12 21:17:37','我也好开心~~~~','邪神'),(5,12,'2017-11-12 21:56:35','不行不行，你太重了。','万里长空'),(6,6,'2017-11-13 10:28:32','对啊，好开心','二狗'),(7,18,'2017-11-13 10:36:22','无视你！！','小王'),(8,10,'2017-11-13 10:36:59','我也觉得。','小王'),(9,20,'2017-11-13 10:41:10','对啊，我感觉自己一夜之间苍老了好多。','邪神'),(10,20,'2017-11-13 11:06:31','对啊对啊。','棒棒糖'),(11,7,'2017-11-13 11:31:17','那你可不敢乱吃。','泡泡糖'),(12,7,'2017-11-13 11:32:03','那你可不敢乱吃。','泡泡糖'),(13,7,'2017-11-13 11:32:17','那你可不敢乱吃。','泡泡糖'),(14,31,'2017-11-13 11:53:10','你看，你是最笨的那种','君临天下'),(15,31,'2017-11-13 11:54:02','你看，你是最需要整容的那种。','二狗'),(16,32,'2017-11-13 11:54:39','想和你一起住，然后收点房租。','二狗'),(17,33,'2017-11-13 11:55:17','贫穷使人理智。','二狗'),(18,32,'2017-11-13 12:13:36','想给你打电话，然后问你收点话费。','丘比特'),(19,32,'2017-11-13 12:14:26','想给你打电话，然后问你收点话费。','丘比特'),(20,32,'2017-11-13 12:39:59','想和你吃饭，然后收点饭费。','小草'),(21,32,'2017-11-13 12:40:40','想和你吃饭，然后收点饭费。','小草'),(22,32,'2017-11-13 16:53:03','想和你去旅行，然后你给我掏门票。','双子座'),(23,32,'2017-11-13 16:53:50','想和你去旅行，然后你给我掏门票。','双子座'),(24,32,'2017-11-13 17:26:37','想和你一起玩耍，然后收点门票费。','玻璃心'),(25,32,'2017-11-13 17:27:31','想和你一起玩耍，然后收点门票费。','玻璃心'),(26,32,'2017-11-13 17:27:56','想和你一起玩耍，然后收点门票费。','玻璃心');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fan`
--

DROP TABLE IF EXISTS `fan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fan` (
  `fusername` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`username`),
  KEY `fanusername_idx` (`fusername`),
  CONSTRAINT `fanusername` FOREIGN KEY (`fusername`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idolusername` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fan`
--

LOCK TABLES `fan` WRITE;
/*!40000 ALTER TABLE `fan` DISABLE KEYS */;
INSERT INTO `fan` VALUES ('万里长空','邪神',3),('万里长空','君临天下',4),('一条狗','君临天下',8),('一条狗','邪神',16),('小草','万里长空',28);
/*!40000 ALTER TABLE `fan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microblog`
--

DROP TABLE IF EXISTS `microblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(200) NOT NULL,
  `theme` varchar(45) DEFAULT 'daily',
  PRIMARY KEY (`id`),
  KEY `muid_idx` (`username`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microblog`
--

LOCK TABLES `microblog` WRITE;
/*!40000 ALTER TABLE `microblog` DISABLE KEYS */;
INSERT INTO `microblog` VALUES (1,'万里长空','2017-10-01 10:20:22','分享一部动漫《画江湖之换世门生》','动漫'),(2,'邪神','2017-10-03 10:21:23','我今天很生气','日常'),(3,'君临天下','2017-10-03 10:21:27','呵呵呵呵呵','其他'),(4,'万里长空','2017-11-02 19:50:30','巧克力和番茄打架，巧克力赢了，为什么？因为巧克力棒呀！','搞笑'),(6,'万里长空','2017-11-02 19:56:37','宋仲基和宋慧乔结婚了，哈哈','明星'),(7,'万里长空','2017-11-02 20:22:32','我好像听说狗不能吃巧克力，吃了巧克力会死，所以我一定不能吃巧克力','新鲜事'),(9,'君临天下','2017-11-02 20:52:47','法媒披露法军舰巡南海遭中国军机绕飞，两次改变航线。','军事'),(10,'邪神','2017-11-03 19:11:11','《画江湖之杯莫停》真的好看。','动漫'),(12,'一条狗','2017-11-12 21:19:32','双十一有木有人租女友，我按斤租。','搞笑'),(18,'二狗','2017-11-13 10:28:16','我要狠狠地刷一波存在感！！！','新鲜事'),(19,'小王','2017-11-13 10:35:58','今天天气真好!','日常'),(20,'小王','2017-11-13 10:40:13','双十一过去了，果然，贫穷使我理智。','搞笑'),(21,'邪神','2017-11-13 10:42:32','今天才知道新浪也有军事频道','军事'),(24,'棉花糖','2017-11-13 10:52:42','哈哈哈！','新鲜事'),(28,'棒棒糖','2017-11-13 11:06:05','双十一使我贫穷','新鲜事'),(30,'泡泡糖','2017-11-13 11:30:40','怎么大风越狠，我心越荡。','搞笑'),(31,'万里长空','2017-11-13 11:50:05','你看，你是最胖的那种。','新鲜事'),(32,'君临天下','2017-11-13 11:51:14','想写情诗给你，然后收点稿费。','搞笑'),(33,'君临天下','2017-11-13 11:52:34','嘘寒问暖，不如打笔巨款。','日常'),(34,'二狗','2017-11-13 12:01:52','虽然我单身，但我心情好啊','其他'),(36,'丘比特','2017-11-13 12:12:45','我刚刚删了自己的第一条微博。','日常'),(38,'小草','2017-11-13 12:39:09','刚刚我瞎说的','搞笑'),(42,'双子座','2017-11-13 16:51:58','我刚刚删了上一条微博。','日常'),(44,'玻璃心','2017-11-13 17:25:30','你们看到我刚刚的微博了么。','新鲜事');
/*!40000 ALTER TABLE `microblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `head` varchar(45) DEFAULT 'D:\\head\\default.jpg',
  `sex` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('一条狗','123','head/11.jpg','女',25),('万里长空','123','head/13.png','男',20),('丘比特','123','head/7.jpg','女',23),('二狗','123','head/11.jpg','女',32),('双子座','123','head/4.jpg','女',21),('君临天下','123','head/1.jpg','男',12),('小王','123','head/1.jpg','女',25),('小草','123','head/9.jpg','女',20),('小风','123','head/8.jpg','女',21),('棉花糖','123','head/12.jpg','女',25),('棒棒糖','123','head/6.jpg','女',21),('泡泡糖','123','head/4.jpg','女',21),('玻璃心','123','head/6.jpg','女',21),('跳跳糖','123','head/6.jpg','女',18),('邪神','123','head/2.jpg','女',23),('随缘','123','head/8.jpg','女',23);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-16 20:14:13
