CREATE TABLE `singer` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `debut` INT NOT NULL,
    `agency` VARCHAR(32) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `album` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`singerId` INT NOT NULL,
    `title` VARCHAR(32) NOT NULL,
    `releaseDate` DATE NOT NULL,
    `tracks` INT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `music` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`albumId` INT NOT NULL,
    `title` VARCHAR(32) NOT NULL,
    `playTime` INT NOT NULL,
    `lyricist` VARCHAR(16) NOT NULL,
    `composer` VARCHAR(16) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `singer`
(`name`, `debut`, `agency`)
VALUES
('성시경',	2000,	'에스케이재원'),
('AKMU',	2014,	'YG엔터테인먼트'),
('아이유',	2008,	'이담엔터테인먼트');

INSERT INTO `album`
(`singerId`, `title`, `releaseDate`, `tracks`)
VALUES
(1,	'The Ballads'		,'2006-10-10'	,16),
(1,	'여기, 내 맘속에...	'	,'2008-06-12'	,11),
(2,	'항해'				,'2019-09-25'	,10),
(2,	'SUMMER EPISODE'	,'2017-07-20'	,4),
(3,	'LOVE poem'			,'2019-11-18'	,6),
(3,	'Palette'			,'2017-04-21'	,6);

INSERT INTO `music`
(`albumId`, `title`, `playTime`, `lyricist`, `composer`)
VALUES
(1,	'거리에서'								,279,	'윤종신',	'윤종신'),
(1,	'그리운 날엔'								,250,	'심재희',	'김형석'),
(1,	'바람, 그대'								,250,	'이미나',	'하림'),
(2,	'여기 내 맘 속에'							,250,	'이미나',	'유희열'),
(2,	'안녕 나의 사랑'							,257,	'유희열',	'성시경'),
(3,	'어떻게 이별까지 사랑하겠어, 널 사랑하는 거지'		,290,	'이찬혁',	'이찬혁'),
(4,	'DINOSAUR'								,240,	'이찬혁',	'이찬혁'),
(4,	'MY DARLING'							,225,	'이찬혁',	'이찬혁'),
(5,	'Blueming'								,217,	'아이유',	'이종훈'),
(5,	'Love poem'								,258,	'아이유',	'이종훈'),
(6,	'밤편지'									,253,	'아이유',	'김희원'),
(6,	'팔레트'									,217,	'아이유',	'김희원');

SELECT music.title, music.composer, album.title
FROM `album`
JOIN `music`
ON album.id = music.albumId
WHERE album.releaseDate >= '2010-01-01' AND album.releaseDate < '2021-01-01';

SELECT singer.name, singer.debut, count(*) AS count
FROM `singer`
JOIN `album`
ON singer.id = album.singerId
JOIN `music`
ON album.id = music.albumId
WHERE singer.debut >= '2005-01-01' 
GROUP BY singer.id
ORDER BY `count` DESC;

SELECT singer.name, music.title, music.playTime, album.title AS `album title`
FROM `singer`
JOIN `album`
ON singer.id = album.singerId
JOIN `music`
ON album.id = music.albumId
WHERE singer.name = 'AKMU';

SELECT music.title, singer.name, music.playTime, album.title AS `album title`
FROM `singer`
JOIN `album`
ON singer.id = album.singerId
JOIN `music`
ON album.id = music.albumId
WHERE album.releaseDate >= '2008-01-01' AND album.releaseDate < '2019-01-01' AND music.playTime >= 240;

SELECT singer.name, album.title, album.tracks, SUM(music.playTime) AS playTime
FROM `singer`
JOIN `album`
ON singer.id = album.singerId
JOIN `music`
ON album.id = music.albumId
GROUP BY album.id HAVING `playTime` > 470
ORDER BY `playTime`;
