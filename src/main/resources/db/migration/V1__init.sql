CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `all_issues` bit(1) NOT NULL,
  `assigned_to_me` bit(1) NOT NULL,
  `configuration` bit(1) NOT NULL,
  `create_issue` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reported_by_me` bit(1) NOT NULL,
  `users` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`role_id`) REFERENCES `role`(`id`)
);

CREATE TABLE `issue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `closed` bit(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `assigned_to_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`assigned_to_id`) REFERENCES `user`(`id`),
  FOREIGN KEY (`created_by_id`) REFERENCES `user`(`id`)
);
