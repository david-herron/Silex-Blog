use silex_blog_a9;

insert into roles (role)
values ('ROLE_COMMENTER');

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `comments` varchar(128) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


ALTER TABLE comments
ADD FOREIGN KEY userid_fk(userid)
REFERENCES users(id)

ALTER TABLE comments
ADD FOREIGN KEY post_id_fk(post_id)
REFERENCES posts(id)

UPDATE user_roles
SET role_id=3
WHERE user_id=3;