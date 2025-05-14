SELECT * FROM `review`;

SELECT * FROM `review` WHERE `userName` = '이정재';
ALTER TABLE `review` ADD INDEX `idx_userName`(`userName`);
EXPLAIN SELECT * FROM `review` WHERE `userName` = '이정재';
