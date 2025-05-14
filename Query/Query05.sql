SELECT * FROM `score`;

UPDATE `score` SET `score`=100 , `updatedAt` = now() WHERE `id`=5;

UPDATE `score` SET `score`=85, `updatedAt` = NOW() WHERE `name`='이광수' AND `year`=2019 AND `semester`=2 AND `subject`='수학';

SELECT * FROM `review`;

UPDATE `review` SET `review`='역시 치킨은 BBQ 인정!', `updatedAt`=NOW() WHERE `id`=10;

UPDATE `review` SET `point`=4.5, `review`='식어도 맛있어요!!', `updatedAt`=NOW() WHERE `id`=8;