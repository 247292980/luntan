CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (1, '2', '2', '2', '2', '男');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (2, '1', '2', '1', '1', '女');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (3, '3', '3', '3', '3', '男');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (4, '4', '4', '4', '4', '男');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (5, '5', '5', '5', '5', '男');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (6, '6', '6   ', '6', '6', '女');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (7, '7', '7', '7', '7', '女');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (8, '8', '8', '8', '8', '男');
INSERT INTO `user` (`user_id`, `username`, `password`, `mobile`, `address`, `sex`) VALUES (9, '9', '9', '9', '9', '女');
