SET NAMES UTF8;
DROP DATABASE IF EXISTS ey;
CREATE DATABASE ey CHARSET=UTF8;
USE ey;

CREATE TABLE ey_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32) DEFAULT NULL,
  upwd  VARCHAR(32) DEFAULT NULL,
  email VARCHAR(64) DEFAULT NULL,
  phone VARCHAR(16) DEFAULT NULL,
);

INSERT INTO ey_user VALUES
(null,'dangdang',123456,'dangdang@qq.com',13588888888),
(null,'dongdong',123456,'dongdong@qq.com',13566666666),
(null,'ranran',123456,'ranran@qq.com',13512345678),
(null,'taotao',123456,'taotao@qq.com',13587654321);

#主页商品列表

CREATE TABLE ey_index_hotel(
  pid int(11) NOT NULL,
  ppublic varchar(128) DEFAULT NULL,
  title varchar(64) DEFAULT NULL,
  ftitle varchar(32) DEFAULT NULL
);
INSERT INTO ey_index_hotel VALUES 
(1,'1_1.jpg','一元居酒屋 MOTO 单人鳗鱼饭','当日现杀鲜活鳗鱼入料'),
(2,'2_1.jpg','馥泰阁海鲜餐吧海鲜饭双人餐','粤式古早味的海鲜餐吧'),
(3,'3_1.jpg','北京希尔顿酒店东方路一号美餐厅单人餐','低至4折的星级体验'),
(4,'4_1.jpg','北京瑰丽酒店赤火锅 Red Bowl 火锅菜单','深夜及周末的超值体验'),
(5,'5_1.jpg','JUSTIN 文秀新品晚餐套餐','新加坡总理御厨送上精致法餐'),
(6,'6_1.jpg','北京国际饭店星光汇旋转餐厅单人餐','京城“老派”星级西餐体验'),
(7,'7_1.jpg','Tiger Pancake House 全天早午餐','阳光早午餐开启活力一天'),
(8,'8_1.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch');
#http://127.0.0.1:3000/1_1.jpg
#http://127.0.0.1:3000/2_1.jpg





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


DROP TABLE IF EXISTS ey_product;
CREATE TABLE ey_product(
  pid int PRIMARY KEY AUTO_INCREMENT,
  title varchar(128) DEFAULT NULL,
  ftitle varchar(128) DEFAULT NULL,
  price decimal(10,2) DEFAULT NULL,
  place varchar(128) DEFAULT NULL,
  alcohol varchar(300) DEFAULT NULL,
  content varchar(128) DEFAULT NULL,
  brand varchar(128) DEFAULT NULL,
  manufacturer varchar(128) DEFAULT NULL,
  nc varchar(128) DEFAULT NULL,
  rm varchar(128) DEFAULT NULL,
  qjp varchar(128) DEFAULT NULL,
  packing varchar(128) DEFAULT NULL,
  sm varchar(128) DEFAULT NULL,
  bsimg varchar(128) DEFAULT NULL,
  bstitle varchar(128) DEFAULT NULL,
  bscontent varchar(3000) DEFAULT NULL,
  bsimgs varchar(128) DEFAULT NULL,
  bstitles varchar(128) DEFAULT NULL,
  bscontents varchar(3000) DEFAULT NULL
  
);
INSERT INTO ey_product VALUES
(NULL,
'日本京都 TaKaRa 清爽果实起泡酒6罐套装',
'果汁起泡酒的鼻祖',
108,
'弹丸之地',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'宝酒早主食会社',
'250ml*6',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/lunbo1.jpg',
'每罐都含纯果汁成分',
'日本果汁起泡酒的鼻祖，有着一流清爽感的果汁起泡鸡尾酒，每罐都含纯果汁成分。250ml的小身材，很适合随身携带。天然的水果清甜口感，酸甜不腻，加上爽口的起泡，4.0%的低酒精度数畅饮无压力，冰过之后口感更佳。',
'/jiu8.jpg',
'拥有150余年历史的日本综合性酒类龙头企业',
'来自日本京都的宝酒造（TaKaRa）是一家有着150余年历史的日本综合性酒类龙头企业。1984年，宝酒造公司率先在日本推出全新低酒精饮料——TaKaRa Can CHU－HI，开创了天然汽酒这一全新饮品。作为日本新一代低酒精饮品的出口代表，风靡全世界。');
INSERT INTO ey_product VALUES
(NULL,
'意大利秀俪阁桃红干型起泡葡萄酒',
'味觉与视觉上的享受',
105,
'意大利',
'11.5%',
'意大利秀俪阁桃红干型起泡葡萄酒 1瓶',
'秀俪阁',
'威尼托秀俪阁',
'750mL',
'葡萄汁 二氧化硫',
'不限',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/jiu6.jpg',
'味觉与视觉上的享受',
'这是一款采用白色磨砂瓶包装的桃红起泡酒，迷人的浅粉红色，透过朦胧的磨砂瓶，有着相当迷人的外观。甜美新鲜的红色水果香气伴着花朵的芳香，酸度爽脆悠长，气泡持久。一杯迷人的浅色桃红酒再配上春日的桃花，无论是视觉上还是味觉上都极其诱人。',
'/shi2.jpg',
'意大利生产普罗塞克的前三大酒庄',
'秀俪阁酒庄是由怀着对普罗塞克热爱的葡萄种植者们于1957年联合建立的，坐落在意大利普罗塞克 DOC 等级产区的中心地带。秀俪阁酒庄为意大利生产白葡萄酒和普罗塞克的前三大酒庄，所生产的葡萄酒都具有非常明显的个性。');
INSERT INTO ey_product VALUES
(NULL,
'法国西堤飞鸟酒庄长相思干白葡萄酒2015',
'德国柏林葡萄酒大赛金奖',
149,
'法国',
'12%vol',
'法国西堤飞鸟酒庄长相思干白葡萄酒2015 1瓶',
null,
'西堤飞鸟酒庄',
'750mL',
'葡萄汁 二氧化硫',
'不限',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/jiu1.jpg',
'2015年德国柏林葡萄酒大赛金奖',
'金黄色的酒液里蕴含着浓郁的水果香气，伴随着细腻的花香和些许矿物质的气息，酒体圆润，结构细致。建议冰镇至10-12℃饮用，可以搭配开胃菜以及白肉等料理。此款长相思在2015年德国柏林葡萄酒大赛中荣获金奖。',
'/jiu14.jpg',
'来自法国以白葡萄酒最为盛赞的产区',
'西堤飞鸟酒庄位于法国的加斯科涅产区，现由对酿酒事业充满热情的 Armin 和 Remy 两兄弟掌管着葡萄园。酒庄的葡萄园环绕在一座十八世纪的古堡周围。得天独道的气候，加上由二氧化硅、粘土与沙土风化成的特有彩色土壤，使得园中的白葡萄品种有着新鲜的果实香气与柔美的酸度。');
INSERT INTO ey_product VALUES
(NULL,
'「寿桃」叻沙爽面5连包',
'起源于马来西亚的面食料理',
22.9,
'大陆',
null,
'叻沙爽面5连包',
'寿桃',
null,
'475克',
'小麦、叻沙酱、椰汁、大蒜、咖喱粉等',
'一年',
'袋装',
'存放常温阴凉干燥通风处，避免光线直射',
'/shi1.jpg',
'源于马来西亚 浓郁汤头搭配港式碱水爽面',
'“叻沙”是一道起源于马来西亚的面食料理，为马来西亚和新加坡的代表性料理，讲究椰浆的鲜味、鲜虾的甜味和辣椒辛辣味。「寿桃」叻沙爽面汤头是其鲜明的特色，以咖哩汤汁混合椰浆，口味甜、咸、辣兼备，搭配港式碱水爽面，面条的汤底的结合恰到好处。',
'/shi2.jpg',
'沿袭经典制作工艺 品牌专注制面56年',
'来自香港的「寿桃」专注制面56年，沿袭经典制作工艺，选用优质大米、淀粉，经特殊工艺制作更具韧度，爽滑可口，味道总是令人意犹未尽。');
INSERT INTO ey_product VALUES
(NULL,
'奇奥菈 Muesli Plus 多果营养燕麦片',
'混合十余种果干果实',
88,
'广东',
null,
'Muesli Plus 多果营养燕麦片',
'奇奥菈',
null,
'45克',
'小麦、叻沙酱、椰汁、大蒜、咖喱粉等',
'180天',
'袋装',
'存放常温阴凉干燥通风处，避免光线直射',
'/shi10.jpg',
'缘起于瑞士的营养代餐 由知名厨师精心研制',
'Muesli 是起源于瑞士的营养食物，主要由压榨的麦片和少量水果坚果混合组成，而这款 Muesli Plus 多果营养麦片是由“Chef Rambo 大厨”基于 Muesli 匠心研制的一款可免冲调的即食麦片，风味独特，不仅是早餐食用的营养选择，更可以作为快速补充能量或餐后点心品尝。',
'/shi8.jpg',
'坚持手工选料制作  告别纯谷物的单调口感',
'Muesli Plus 多果营养燕麦片由纯手工制作，所需的各类食材均是单独挑选，加上精确到秒的配比把控，力求对南瓜籽、夏威夷果、椰丝、苹果干、黄桃干等果干果实都进行充分烹饪，味道香酥爽口，告别纯谷物的单调口感。');
INSERT INTO ey_product VALUES
(NULL,
'日本京都 TaKaRa 清爽果实起泡酒6罐套装',
'果汁起泡酒的鼻祖',
108,
'弹丸之地',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'宝酒早主食会社',
'250ml*6',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/lunbo1.jpg',
'每罐都含纯果汁成分',
'日本果汁起泡酒的鼻祖，有着一流清爽感的果汁起泡鸡尾酒，每罐都含纯果汁成分。250ml的小身材，很适合随身携带。天然的水果清甜口感，酸甜不腻，加上爽口的起泡，4.0%的低酒精度数畅饮无压力，冰过之后口感更佳。',
'/sheng6.jpg',
'拥有150余年历史的日本综合性酒类龙头企业',
'来自日本京都的宝酒造（TaKaRa）是一家有着150余年历史的日本综合性酒类龙头企业。1984年，宝酒造公司率先在日本推出全新低酒精饮料——TaKaRa Can CHU－HI，开创了天然汽酒这一全新饮品。作为日本新一代低酒精饮品的出口代表，风靡全世界。');
