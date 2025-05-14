CREATE TABLE `recruit_company` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(32) NOT NULL,
    `business` VARCHAR(32) NOT NULL,
    `scale` VARCHAR(16) NOT NULL,
    `headcount` INT NOT NULL,
    `region` VARCHAR(64) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `recruit_job` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `companyId` INT NOT NULL,
	`position` VARCHAR(64) NOT NULL,
    `responsibilities` VARCHAR(64) NOT NULL,
    `qualification` VARCHAR(64) NOT NULL,
    `type` VARCHAR(4) NOT NULL,
    `salary` INT NOT NULL,
    `deadline` DATE NOT NULL,
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `recruit_company`
(`name`, `business`, `scale`, `headcount`, `region`)
VALUES
('Cacao', '인터넷포털', '대기업', 2848, '성남시 분당구'),
('Rine', '모바일무선', '대기업', 1138, '성남시 분당구'),
('NG소프트', '컨텐츠게임', '중견기업', 4430, '성남시 분당구'),
('쿠퐁', '쇼핑몰', '중견기업', 5350, '서울시 송파구'),
('Naber', '인터넷포털', '대기업', 4048, '성남시 분당구'),
('우와한형제들', '소프트웨어 솔루션', '중견기업', 926, '서울시 송파구');

SELECT * FROM `recruit_company`;
SELECT * FROM `recruit_job`;

INSERT INTO `recruit_job`
(`companyId`, `position`, `responsibilities`, `qualification`, `type`, `salary`, `deadline`)
VALUES
(1, 	'안드로이드 개발자',				'메신저 앱 개발' 			,'kotlin 경력 3년 이상' 		,'정규직' 	,7300 	,'2026-03-13'),
(1, 	'안드로이드 개발자',				'쇼핑 서비스 개발' 			,'kotlin 경력 3년 이상' 		,'정규직' 	,6300 	,'2026-04-04'),
(1, 	'웹 back-end 개발자', 		'이모티콘 샵 API 서버 개발' 	,'spring 경력 3년 이상' 		,'정규직' 	,7000 	,'2026-03-28'),
(2, 	'아이폰 앱 개발자', 			'메신져 앱 개발' 			,'RxSwift 개발 경력 3년 이상' 	,'정규직' 	,7600 	,'2026-04-01'),
(2,  	'웹 back-end 개발자', 		'Rine 포스팅 기능 API 개발' ,'spring 개발 경력 3년 이상' 	,'정규직' 	,6600 	,'2026-03-29'),
(3, 	'게임 개발자', 				'게임 개발' 				,'Unreal Engine 개발 5년 이상' ,'정규직' 	,8400 	,'2026-04-20'),
(3, 	'모바일 게임 개발자', 			'리뉘쥐 모바일 게임 개발'		,'Unreal Engine 개발 가능자' 	,'계약직' 	,8500 	,'2026-04-05'),
(4,		'웹 back-end 개발자', 		'오픈마켓 웹 개발' 			,'spring 개발 가능자' 			,'정규직' 	,8100 	,'2026-05-02'),
(4, 	'웹 front-end 개발자',	 	'오픈마켓 웹 개발' 			,'react 개발 가능자' 			,'계약직' 	,9000 	,'2026-04-10'),
(5, 	'웹 back-end 개발자', 		'Naber 메일 기능 개발' 		,'spring 개발 경력 5년 이상' 	,'계약직' 	,9800 	,'2026-04-20'),
(5, 	'동영상 플레이어 개발자', 		'네이버TV 플레이어 개발' 	,'동영상 코덱 기술 개발가능자' 	,'정규직'  	,7800 	,'2026-05-01'),
(5, 	'웹 front-end 개발자', 		'Now 웹 개발'				,'Vue.js 개발 가능자' 			,'정규직' 	,7000 	,'2026-04-15'),
(6, 	'웹 back-end 개발자', 		'사내 인트라넷 개발' 		,'spring 개발경력 3년이상' 		,'계약직' 	,8800 	,'2026-04-15'),
(6, 	'웹 back-end 개발자',	 		'쇼핑 라이브 API 개발' 		,'spring 개발경력 3년이상' 		,'정규직' 	,8200	,'2026-05-12');

SELECT recruit_company.name, recruit_job.position, recruit_job.qualification, recruit_job.type, recruit_job.salary
FROM `recruit_company`
JOIN `recruit_job`
ON recruit_company.id = recruit_job.companyId
ORDER BY recruit_job.salary DESC;

SELECT recruit_company.name, recruit_company.scale, recruit_job.position, recruit_job.qualification, recruit_job.type, recruit_job.salary
FROM `recruit_company`
JOIN `recruit_job`
ON recruit_company.id = recruit_job.companyId
WHERE recruit_company.scale = '대기업' AND recruit_job.type = '정규직' AND recruit_job.salary >= 7000
ORDER BY recruit_job.salary DESC
LIMIT 3;

SELECT recruit_company.name, count(*) AS count, recruit_company.business, recruit_company.headcount
FROM `recruit_company`
JOIN `recruit_job`
ON recruit_company.id = recruit_job.companyId
WHERE recruit_job.deadline < '2026-05-01' AND recruit_job.type = '정규직'
GROUP BY recruit_company.id
ORDER BY count DESC;

SELECT recruit_job.type, avg(recruit_job.salary) AS salary
FROM `recruit_company`
JOIN `recruit_job`
ON recruit_company.id = recruit_job.companyId
WHERE recruit_company.scale = '중견기업'
GROUP BY recruit_job.type;

SELECT recruit_company.name, avg(recruit_job.salary) AS `salary`, recruit_company.scale, recruit_company.headcount
FROM `recruit_company`
JOIN `recruit_job`
ON recruit_company.id = recruit_job.companyId
WHERE recruit_company.region = '성남시 분당구' 
GROUP BY recruit_company.id HAVING `salary` >= 7000
ORDER BY recruit_company.headcount DESC;
