SELECT * FROM `review`;

SELECT * FROM `review` WHERE (`userName`='맛있으면 짖는 개' OR `userName`='맛있으면짖는개') AND `review` LIKE '왈왈%';

SELECT * FROM `review` ORDER BY `createdAt` DESC LIMIT 10;

SELECT * FROM `review` WHERE `storeName`='교촌치킨' ORDER BY `point` DESC;

SELECT  `userName`, `storeName` FROM `review` ORDER BY `point` LIMIT 1;

