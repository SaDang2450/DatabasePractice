CREATE TABLE `weatherhistory` (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `weather` VARCHAR(16) NOT NULL,
    `temperatures` DECIMAL(3,1) NOT NULL,
    `precipitation` DECIMAL(3,1) NOT NULL,
    `microDust` ENUM('최악', '나쁨', '보통', '좋음') NOT NULL,
    `windSpeed` DECIMAL(2,1) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `weatherhistory`;

SELECT* FROM `weatherhistory`;

INSERT INTO `weatherhistory`
(`date`, `weather`, `temperatures`, `precipitation`, `microDust`, `windSpeed`)
VALUES
('2015-07-01', 	'비', 	21.9, 	83.5, 	'보통', 	2.9),
('2015-07-02', 	'비', 	22.6, 	59.5, 	'보통', 	2.5),
('2015-07-03', 	'흐림', 	27.4, 	0.0,	'좋음', 	2.9),
('2015-07-04', 	'맑음', 	27.3, 	0.0,	'좋음', 	6.1),
('2015-07-05', 	'구름조금', 	25.3, 	0.0, 	'나쁨', 	4.3),
('2015-07-06', 	'맑음', 	23.9, 	0.0, 	'나쁨', 	6.5),
('2015-07-07', 	'맑음', 	23.7, 	0.0, 	'좋음', 	5.8),
('2015-07-08', 	'흐림', 	23.3, 	0.0 ,	'좋음', 	5.4),
('2015-07-09', 	'비', 	20.8, 	14.0,	'보통', 	4.0),
('2015-07-10', 	'비', 	23.7, 	16.5, 	'보통', 	2.5),
('2015-07-11', 	'비', 	26.8, 	3.0, 	'좋음', 	4.7),
('2015-07-12', 	'비', 	26.6, 	1.0, 	'나쁨', 	5.4),
('2015-07-13', 	'구름조금', 	27.3, 	0.0, 	'최악', 	6.5),
('2015-07-14', 	'맑음', 	27.9, 	0.0, 	'보통', 	6.8);

SELECT `date`, `weather`, `temperatures` FROM `weatherhistory`
ORDER BY `temperatures` DESC LIMIT 1;

SELECT `weather`, count(*) AS `count` FROM `weatherhistory`
GROUP BY `weather` ORDER BY `count` DESC;

SELECT `microDust`, ROUND(AVG(`precipitation`), 1) AS `precipitation` FROM `weatherhistory`
GROUP BY `microDust` HAVING `precipitation` > 0;

SELECT `microDust`, AVG(`windSpeed`) AS `windSpeed` FROM `weatherhistory`
GROUP BY `microDust`  HAVING `windSpeed` > 4 ORDER BY `windSpeed` DESC;

