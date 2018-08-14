CREATE TABLE `words` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `words_user_id` int(11) DEFAULT NULL,
  `words_room_id` int(11) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `words` (`word_id`, `words_user_id`, `words_room_id`, `words`) VALUES (1, 1, 1, '111111');
INSERT INTO `words` (`word_id`, `words_user_id`, `words_room_id`, `words`) VALUES (5, 2, 1, '这次对了吧\r\n');
INSERT INTO `words` (`word_id`, `words_user_id`, `words_room_id`, `words`) VALUES (6, 2, 2, '我很想知道啊\r\n');
INSERT INTO `words` (`word_id`, `words_user_id`, `words_room_id`, `words`) VALUES (7, 2, 3, '7没上线啊');
