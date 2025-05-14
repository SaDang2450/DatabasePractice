SELECT * FROM `review`;

SELECT * FROM `review` WHERE `id`=22;
DELETE FROM `review` WHERE `id`=22;

SELECT * FROM `review` WHERE `userName`='이정재' AND `point` < 2;
DELETE FROM `review` WHERE `userName`='이정재' AND `point` < 2;
