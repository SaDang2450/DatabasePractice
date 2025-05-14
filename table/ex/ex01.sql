-- 테이블 만들기

-- 사람의 정보를 저장하는 테이블
-- 이름 생년월일 취미 자기소개

CREATE TABLE `person` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `birth` INT NOT NULL,
    `hobby` VARCHAR(16) NOT NULL,
    `introduce` TEXT, 
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

-- 테이블 설명 확인 
DESC `person`;

-- 테이블 삭제
DROP TABLE `person`;

-- 테이블 수정
-- 테이블 이름 변경
ALTER TABLE `person` RENAME `user`;

DESC `user`;

-- 컬럼 추가
ALTER TABLE `user` ADD COLUMN `email` varchar(16) NOT NULL;

-- 컬럼 수정
ALTER TABLE `user` MODIFY COLUMN `email` VARCHAR(64) NOT NULL;

-- 컬럼 이름 수정
ALTER TABLE `user` CHANGE COLUMN `birth` `yyyymmdd` VARCHAR(8) NOT NULL;

DESC `user`;

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `email`, `introduce`, `createdAt`, `updatedAt`)
VALUE
('김인규', '20030201', '독서', '메일', '소개', NOW(), NOW());

SELECT * 
FROM `user`;

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `email`, `introduce`, `createdAt`, `updatedAt`)
VALUES
('김바다', '20200101', '사냥하기', '바다메일', '집사', NOW(), NOW()),
('유재석', '19990200', '진행하기', '재석메일', '국민', NOW(), NOW()),
('김인규', '20030201', '독서', '메일', NULL, NOW(), NOW());
