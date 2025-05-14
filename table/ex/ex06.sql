-- INDEX

CREATE TABLE `student` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `major` VARCHAR(16) NOT NULL,
    `number` VARCHAR(32) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `student`;

-- 인덱스 추가하기
ALTER TABLE `student` ADD INDEX `idx_name` (`name`);
-- 유니크 인덱스
ALTER TABLE `student` ADD UNIQUE INDEX `idx_number` (`number`);
-- 복합 컬럼 인덱스 추가
ALTER TABLE `student` ADD INDEX `idx_name_major` (`name`, `major`);