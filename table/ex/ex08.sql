SELECT * FROM `user`;

SELECT * FROM `user` WHERE `hobby` LIKE '%독서%';
EXPLAIN SELECT * FROM `user` WHERE `hobby` LIKE '%독서%';

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `email`, `introduce`)
VALUES
('김인규', '19991108', '독서', 'lecture@hagulu.com', '안녕하세요 제 소개 입니다'),
('김인규', '19991108', '노래', 'lecture@hagulu.com', '안녕하세요 제 소개 입니다'),
('김인규', '19991108', '영화', 'lecture@hagulu.com', '안녕하세요 제 소개 입니다');

SELECT * FROM `user` WHERE `hobby` = '독서';
EXPLAIN SELECT * FROM `user` WHERE `hobby` = '독서';

-- 취미를 제외한 사용자 정보 테이블
CREATE TABLE `new_user` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `yyyymmdd` CHAR(8) NOT NULL,
    `email` VARCHAR(32) NOT NULL,
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 취미만 관리하는 테이블
CREATE TABLE `hobby` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `userId` INT NOT NULL, -- 외래키 (foreign key). 다른 테이블과의 관계를 기록
    `hobby` VARCHAR(16) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `new_user`
(`name`, `yyyymmdd`, `email`, `introduce`)
VALUES
('김인규', '19991108', 'lecture@hagulu.com', '안녕하세요 제 소개 입니다'),
('김바다', '20190104', 'bada@gmail.com', '나랑 놀아줄 집사 모집합니다');

INSERT INTO `hobby`
(`userId`, `hobby`)
VALUES
(1, '독서'),
(1, '노래'),
(1, '영화'),
(2, '사냥하기'),
(2, '물먹기');

SELECT * FROM `hobby`;

SELECT * FROM `hobby` WHERE `hobby` = '독서';
SELECT * FROM `new_user` WHERE `id` = 1;