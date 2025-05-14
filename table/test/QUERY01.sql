
INSERT INTO `score`
(`name`, `year`, `semester`, `term`, `subject`, `score`, `createdAt`, `updatedAt`)
VALUE
('유재석', '2020', '1', '중간고사', '국어', '80', NOW(), NOW());

INSERT INTO `score`
(`name`, `year`, `semester`, `term`, `subject`, `score`, `createdAt`, `updatedAt`)
VALUE
('유재석', '2020', '1', '중간고사', '영어' ,'90', NOW(), NOW());

INSERT INTO `score`
(`name`, `year`, `semester`, `term`, `subject`, `score`, `createdAt`, `updatedAt`)
VALUE
('유재석', '2020', '1', '중간고사', '수학', '95', NOW(), NOW());

SELECT *
FROM `score`;

INSERT INTO `score`
(`name`, `year`, `semester`, `term`, `subject`, `score`, `createdAt`, `updatedAt`)
VALUES
('조세호', '2020', '1', '중간고사', '국어', '75', NOW(), NOW()),
('조세호', '2020', '1', '중간고사', '영어', '80', NOW(), NOW()),
('조세호', '2020', '1', '중간고사', '수학', '95', NOW(), NOW());
