SET NAMES UTF8;
DROP DATABASE IF EXISTS ey;
CREATE DATABASE ey CHARSET=UTF8;
USE ey;


DROP TABLE IF EXISTS ey_user;
CREATE TABLE ey_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32) DEFAULT NULL,
  upwd  VARCHAR(32) DEFAULT NULL,
  email VARCHAR(64) DEFAULT NULL,
  phone VARCHAR(16) DEFAULT NULL,
  username VARCHAR(32) DEFAULT NULL,
  gender INT(11) DEFAULT NULL
);

INSERT INTO ey_user VALUES
(null,'dangdang',123456,'dangdang@qq.com',13588888888,'铃铛',0),
(null,'dongdong',123456,'dongdong@qq.com',13566666666,'铃铛',1),
(null,'ranran',123456,'ranran@qq.com',13512345678,'铃铛',0),
(null,'taotao',123456,'taotao@qq.com',13587654321,'铃铛',1);

#主页商品列表

DROP TABLE IF EXISTS ey_index_hotel;
CREATE TABLE ey_index_hotel(
  pid int(11) NOT NULL,
  ppublic varchar(128) DEFAULT NULL,
  title varchar(64) DEFAULT NULL,
  ftitle varchar(32) DEFAULT NULL
);
INSERT INTO ey_index_hotel VALUES 
(1,'public/1_1.jpg','一元居酒屋 MOTO 单人鳗鱼饭','当日现杀鲜活鳗鱼入料'),
(2,'public/2_1.jpg','馥泰阁海鲜餐吧海鲜饭双人餐','粤式古早味的海鲜餐吧'),
(3,'public/3_1.jpg','北京希尔顿酒店东方路一号美餐厅单人餐','低至4折的星级体验'),
(4,'public/4_1.jpg','北京瑰丽酒店赤火锅 Red Bowl 火锅菜单','深夜及周末的超值体验'),
(5,'public/5_1.jpg','JUSTIN 文秀新品晚餐套餐','新加坡总理御厨送上精致法餐'),
(6,'public/6_1.jpg','北京国际饭店星光汇旋转餐厅单人餐','京城“老派”星级西餐体验'),
(7,'public/7_1.jpg','Tiger Pancake House 全天早午餐','阳光早午餐开启活力一天'),
(8,'public/8_1.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch');





DROP TABLE IF EXISTS ey_hotel;
CREATE TABLE ey_hotel(
  lid int(11) NOT NULL,
  title varchar(128) DEFAULT NULL,
  price decimal(10,2) DEFAULT NULL,
  apublic varchar(128) DEFAULT NULL,
  bpublic varchar(128) DEFAULT NULL,
  cpublic varchar(128) DEFAULT NULL,
  dpublic varchar(128) DEFAULT NULL,
  epublic varchar(128) DEFAULT NULL,
  fpublic varchar(128) DEFAULT NULL,
  gpublic varchar(128) DEFAULT NULL,
  hpublic varchar(128) DEFAULT NULL
);

INSERT INTO ey_hotel VALUES
(1,'一元居酒屋 MOTO 单人鳗鱼饭',135,'public/1_1.jpg','public/1_2.jpg','public/1_3.jpg','public/1_4.jpg','public/1_5.jpg','public/1_6.jpg','public/1_7.jpg','public/2_8.jpg'),
(2,'馥泰阁海鲜餐吧海鲜饭双人餐',235,'public/2_1.jpg','public/2_2.jpg','public/2_3.jpg','public/2_4.jpg','public/2_5.jpg','public/2_6.jpg','public/2_7.jpg','public/2_8.jpg'), 
(3,'北京希尔顿酒店东方路一号美餐厅单人餐',335,'public/3_1.jpg','public/3_2.jpg','public/3_3.jpg','public/3_4.jpg','public/3_5.jpg','public/3_6.jpg','public/3_7.jpg','public/3_8.jpg');
