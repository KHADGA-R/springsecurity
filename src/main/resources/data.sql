INSERT IGNORE INTO users (username, password, enabled) VALUES 
('user', '{noop}MeHero@12345', true),
('admin', '{bcrypt}$2a$10$lwECMIp/YSO.Ews8OYsJi.Tmkih20xTIJEp8jP2yw3TPzGIIibzWW', true);

INSERT IGNORE INTO authorities (username, authority) VALUES 
('user', 'read'),
('admin', 'admin');

-- Customer data for BankUserDetailsService
INSERT IGNORE INTO customer (email, pwd, role) VALUES 
('user@example.com', '{noop}MeHero@12345', 'ROLE_USER'),
('admin@example.com', '{bcrypt}$2a$10$lwECMIp/YSO.Ews8OYsJi.Tmkih20xTIJEp8jP2yw3TPzGIIibzWW', 'ROLE_ADMIN');