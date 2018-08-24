CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `create_issue` bit(1) NOT NULL,
  `all_issues` bit(1) NOT NULL,
  `reported_by_me` bit(1) NOT NULL,
  `assigned_to_me` bit(1) NOT NULL,
  `users` bit(1) NOT NULL,
  `configuration` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`role_id`) REFERENCES `role`(`id`)
);

CREATE TABLE `issue-type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `issue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `closed` bit(1) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `assigned_to_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`type_id`) REFERENCES `issue-type`(`id`),
  FOREIGN KEY (`assigned_to_id`) REFERENCES `user`(`id`),
  FOREIGN KEY (`created_by_id`) REFERENCES `user`(`id`)
);

INSERT INTO `role`(`name`, `create_issue`, `all_issues`, `reported_by_me`, `assigned_to_me`, `users`, `configuration`)
  VALUES("Admin", 1, 1, 1, 1, 1, 1);

INSERT INTO `user`(`name`, `email`, `password`, `role_id`)
  VALUES("admin", "admin@admin.com", "admin", 1);

INSERT INTO `issue-type`(`name`) VALUES("Bug");
INSERT INTO `issue-type`(`name`) VALUES("New feature");
