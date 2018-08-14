CREATE TABLE `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_user_id` int(11) DEFAULT NULL,
  `room_words` varchar(255) DEFAULT NULL,
  `room_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (1, 1, '我是谁', '问个问题');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (2, 2, '我是2', '哥哥是谁');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (3, 3, '但是可以问7', '我不知道1是谁');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (4, 3, '4也不是', '我不是2你哥');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (5, 4, '有个卵剧情啊', '战狼2不好看啊');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (6, 1, '牛的一比', '看成龙的啊');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (7, 3, '草茫茫', '天灰灰');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (8, 4, '开黑啊', '一起来王者荣耀');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (9, 5, '昆特昆特昆', '巫师3昆特牌啊');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (10, 6, '范冰冰的苹果', '算了我们还是看电影吧');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (11, 2, '比苹果好', '权力的游戏还行吧');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (12, 1, '是电视剧', '权游可不是电影');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (13, 3, '从前有个阿婆', '还是讲点黄色笑话好了');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (14, 9, '讲黄色笑话没意思', '跪求YellowMovie');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (15, 8, '我们是合法的论坛', '9可以，我要封号了');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (16, 7, '狗日的8', '打倒狗管理');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (17, 6, '跟着7上啊', '沃日，反了');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (18, 5, '对，我们要拿起武器', '人民的声音是响亮的');
INSERT INTO `room` (`room_id`, `room_user_id`, `room_words`, `room_title`) VALUES (19, 7, '6和5我封了', '我不是人民，我是狗管理2号机');
