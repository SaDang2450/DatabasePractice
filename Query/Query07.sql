CREATE TABLE `booking` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(4) NOT NULL,
    `headcount` INT NOT NULL,
    `day` INT NOT NULL,
    `date` DATE NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `state` ENUM('대기중','확정','취소') NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `booking`;

SELECT * FROM `booking`;

INSERT INTO `booking`
(`name`, `headcount`, `day`, `date`, `phoneNumber`, `state`)
VALUES
('강하늘', 2, 1, '2025-07-21', '010-1234-1111', '대기중'),
('김종국', 4, 1, '2025-08-04', '010-1212-2121', '확정'),
('박명수', 	2, 4, 	'2025-06-12', 	'010-0000-0000', 	'취소'),
('마동석', 	2, 	1, 	'2025-10-30', 	'010-1010-0101', 	'대기중'),
('박나래', 	10, 3, 	'2025-06-23', 	'010-1111-2222', 	'확정'),
('혜리', 	2, 	2, 	'2025-04-12', 	'010-9999-9999', 	'확정'),
('황찬성', 	25, 1, 	'2025-09-11', 	'010-0000-2222', 	'확정'),
('탁재훈', 4,	3, 	'2025-07-12', 	'010-1111-0000', 	'대기중'),
('장나라', 	2, 	1, 	'2025-09-12', 	'010-2222-0000', 	'확정');

SELECT `name`,`date`,`state` FROM `booking` WHERE `date`>'2025-08-01';

SELECT `name`, `headcount`, `day`, `state` FROM `booking` WHERE `state`='확정' AND (`headcount` >= 4 OR `day` >= 2);

SELECT count(0) FROM `booking` WHERE `day` = 1 AND `state` = '대기중';

UPDATE `booking`
SET `state`='취소', `updatedAt`=NOW()
WHERE `name`='마동석' OR `name`='탁재훈';

DELETE FROM `booking` WHERE `state` = '취소';
