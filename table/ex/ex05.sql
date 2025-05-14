-- 테이블 생성
CREATE TABLE `entrant` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(8) NOT NULL,
    `license` VARCHAR(32) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 데이터 삽입
INSERT INTO `entrant` 
(`name`, `license`, `score`)
VALUES 
('김인규', '정보처리기사', 87),
('김바다', '컴퓨터활용능력', 95),
('김태형', '정보처리기사', 99),
('박지민', '컴퓨터활용능력', 68),
('김인규', '컴퓨터활용능력', 78),
('김남준', '정보처리산업기사', 40),
('정호석', '컴퓨터활용능력', 99),
('민윤기', '컴퓨터활용능력', 100),
('김바다', '정보처리산업기사', 78),
('김바다', '정보처리기사', 82);

SELECT * FROM `entrant`;

SELECT `name`, count(*) FROM `entrant` GROUP BY `name`;

SELECT `license`, SUM(`score`) FROM `entrant` GROUP BY `license`;

SELECT `license`, AVG(`score`) FROM `entrant` GROUP BY `license`;

-- GROUP BY 결과에 대한 조건
-- 자격증 시험을 2개 이상 본 응시자 조회
-- 1. 응시자별 응시 시험 개수
-- 2. 응시개수 2개 이상 조회
-- WHERE 과 HAVING 의 차이점에 주목.
SELECT `name`, count(*) FROM `entrant` GROUP BY `name` HAVING count(*) >= 2;

-- 자격증별 평균 점수가 80점이 넘는 자격증 조회
SELECT `license`, avg(`score`) AS `average` FROM `entrant` GROUP BY `license` HAVING `average` >= 80;




