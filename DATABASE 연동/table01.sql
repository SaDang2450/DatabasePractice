CREATE TABLE `used_goods` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `sellerId` INT NOT NULL,
    `title` VARCHAR(64) NOT NULL, 
    `price` INT NOT NULL, 
    `description` TEXT NOT NULL, 
    `image` VARCHAR(128), 
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 판매자 정보 : 닉네임, 매너온도(0 ~ 99.9), 프로필 사진
CREATE TABLE `seller` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `nickname` VARCHAR(32) NOT NULL, 
    `temperature` DECIMAL(3, 1) DEFAULT 36.5,
    `profileImage` VARCHAR(128), 
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `seller`;
DESC `used_goods`;

-- 판매자 정보 저장
INSERT INTO `seller`
(`nickname`, `temperature`, `profileImage`)
VALUES 
('마로비', 36.6, 'https://cdn.pixabay.com/photo/2023/12/28/14/09/cat-8474233_1280.png'),
('아메리카노', 48.2, NULL),
('동네주민', 29.0, 'https://cdn.pixabay.com/photo/2023/10/20/19/25/moon-8330104_1280.png'),
('네고왕', 36.5, NULL), 
('하구루', 36.5, 'https://cdn.pixabay.com/photo/2023/12/15/21/47/cat-8451431_1280.jpg');

SELECT * FROM `seller`;

-- 판매물품 저장
INSERT INTO `used_goods`
(`sellerId`, `title`, `price`, `description`, `image`) 
VALUES
(5, '플스5 팝니다', 300000, '쿨거래 하실분들 연락주세요', 'https://cdn.pixabay.com/photo/2023/03/12/10/19/playstation-7846347_1280.png'),
(5, '원피스 팝니다', 20000, '살이 빠져서 사이즈가 커서 못입어요', 'https://cdn.pixabay.com/photo/2015/06/10/13/23/clothesline-804812_1280.jpg'),
(3, '후라다 여성지갑 팝니다', 400000, '오늘 선물하려고 샀는데, 헤어 졌어요', 'https://cdn.pixabay.com/photo/2017/03/07/23/34/wallet-2125548_1280.jpg'),
(2, '바퀴벌레 좀 잡아주세요', 5000, '제발 좀 잡아 주세요 막 날아 다녀요', NULL);

SELECT * FROM `used_goods`;

-- 하구루 판매자가 올린 물품리스트 조회 
SELECT * FROM `seller` WHERE `nickname` = '하구루';
SELECT * FROM `used_goods` WHERE `sellerId` = 5;