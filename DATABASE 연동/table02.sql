SELECT * FROM `new_user`;
DESC `new_user`;

INSERT INTO `new_user`
(`name`, `yyyymmdd`, `email`, `introduce`)
VALUE
('유재석', '20041224', 'yu@gmail.com', '안녕하세요 국민 MC 입니다.');

CREATE TABLE `bookmark` (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(16) NOT NULL,
    `url` VARCHAR(128) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bookmark`
(`name`, `url`)
VALUES
('마론달', 	'http://marondal.com'),
('구글', 		'https://google.com'),
('네이버', 	'https://naver.com'),
('다음', 		'https://daum.net');

SELECT * FROM `bookmark` ORDER BY `id` DESC;
