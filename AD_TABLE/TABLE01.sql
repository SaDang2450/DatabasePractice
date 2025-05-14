SELECT * FROM `score`;

CREATE TABLE `new_student` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `phoneNumber` VARCHAR(32) NOT NULL,
    `email` VARCHAR(64) NOT NULL,
    `dreamjob` VARCHAR (64) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `new_score` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `student_id` INT NOT NULL,
    `year` INT NOT NULL,
    `semester` INT NOT NULL,
    `term` VARCHAR(8) NOT NULL,
    `subject` VARCHAR(4) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `new_student`
(`name`, `phoneNumber`, `email`, `dreamjob`)
VALUES
('유재석', 	'01000001111', 	'mc_u@naver.com', 	'프로그래머'),
('조세호', 	'01011110000', 	'mrjo@gmail.com', 	'모델');

INSERT INTO `new_score`
(`student_id`, `year`, `semester`, `term`, `subject`, `score`)
VALUES
(1, 2020, 	1, 	'중간고사', 	'국어', 	80),
(1, 2020, 	1, 	'중간고사', 	'영어', 	95),
(1, 2020, 	1, 	'중간고사', 	'수학', 	90),
(2, 2020, 	1, 	'중간고사', 	'국어', 	85),
(2, 2020, 	1, 	'중간고사', 	'영어', 	90),
(2, 2020, 	1, 	'중간고사', 	'수학', 	70);

SELECT * FROM `new_student` WHERE `name` = '조세호'; -- id = 2
SELECT `year`, `semester`, `term`, `subject`, `score` FROM `new_score` WHERE `student_id` = 2;

