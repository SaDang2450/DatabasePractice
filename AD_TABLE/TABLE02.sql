SELECT * FROM `review`;

CREATE TABLE `new_store` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `store` VARCHAR(32) NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `address` VARCHAR(64) NOT NULL,
    `businessNumber` VARCHAR(16) NOT NULL,
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `new_review` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `store_id` INT NOT NULL,
    `menu` VARCHAR(8) NOT NULL,
    `userName` VARCHAR(32) NOT NULL,
    `point` DECIMAL(2,1) DEFAULT 3.5,
    `review` VARCHAR(256),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `new_store`
(`store`, `phoneNumber`, `address`, `businessNumber`, `introduce`)
VALUES
('교촌치킨' 	,'02-000-0000' 	,'서울시 서초구', 	'111-111-1111' 	,'항상 맛있는 닭을 선사 합니다.'),
('BHC' 	,'02-111-0000' 	,'서울시 서초구', 	'111-222-1111' 	,'전지현씨 BHC'),
('버거킹' 	,'02-222-1111' 	,'서울시 서초구', 	'333-222-12222' 	,'맥도날드 가지말고 여기로와요');

SELECT * FROM `new_store`;

INSERT INTO `new_review`
(`store_id`, `menu`, `userName`, `point`, `review`)
VALUES
(1, '오리지날 콤보', '이병헌',4.5, '콤보는 항상 진리입니다.'),
(2, '핫후라이드', '전지현',5, NULL),
(2, '뿌링클', '이정재', 3.5, '내가 뿌링끌 상인가?'),
(3, '와퍼세트', '이병헌', 4.0, '패티 너무 좋아요'),
(1, '오리지날 콤보', '맛있으면짖는개', 4.5, '왈왈왈!! 왈왈!'),
(2, '뿌링클', '전지현', 5, NULL);

SELECT * FROM `new_review`;

SELECT * FROM `new_store` WHERE `store`='교촌치킨'; -- id = 1
SELECT `menu`, `userName`, `point`, `review` FROM `new_review` WHERE `store_id` = 1;
