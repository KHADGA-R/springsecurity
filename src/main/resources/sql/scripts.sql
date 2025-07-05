create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);


INSERT IGNORE INTO `users` VALUES ('user', '{noop}MeHero@12345', '1');
INSERT INTO `authorities` VALUES ('user', 'read');


INSERT IGNORE INTO `users` VALUES ('admin', '{bcrypt}$2a$12$Gr7Q.ZmM9Twzwu.UJokz4uwULTaRejhLsR64uvgg79821Gx8ReZue', '1');
INSERT INTO `authorities` VALUES ('admin', 'admin');


UPDATE authorities SET authority = 'ROLE_USER' WHERE username = 'admin';
UPDATE users
SET password = '{bcrypt}$2a$10$lwECMIp/YSO.Ews8OYsJi.Tmkih20xTIJEp8jP2yw3TPzGIIibzWW'
WHERE username = 'admin';


CREATE TABLE `customer` (
`id` int NOT NULL AUTO_INCREMENT,
`email` varchar(45) NOT NULL,
`pwd` varchar(200) NOT NULL,
`role` varchar(45) NOT NULL,
PRIMARY KEY(`id`)
);

INSERT INTO `customer` (`email`, `pwd`, `role`) VALUES ('user@example.com', '{noop}MeHero@12345', 'read');
INSERT INTO `customer` (`email`, `pwd`, `role`) VALUES ('admin@example.com', '{bcrypt}$2a$10$lwECMIp/YSO.Ews8OYsJi.Tmkih20xTIJEp8jP2yw3TPzGIIibzWW', 'admin');