-- sakila Database 사용

SELECT * FROM `city`;

-- 조회 개수 제한
SELECT * FROM `city` LIMIT 50;
SELECT * FROM `city` LIMIT 100, 50;

-- 특정 문자열 포함 조건
SELECT * FROM `city` WHERE `city` LIKE 'C%';
SELECT * FROM `city` WHERE `city` LIKE '%C';
SELECT * FROM `city` WHERE `city` LIKE '%C%';
-- 대문자 C가 포함된 도시이름 조회
SELECT * FROM `city` WHERE `city` LIKE binary('%C%');

-- 정렬하기
SELECT * FROM `city` ORDER BY `country_id`;
SELECT * FROM `city` ORDER BY `country_id` DESC;

-- C로 시작하는 도시를 country_id로 오름차순으로 10개만 조회 > 정렬하기 전에 데이터를 최소화한다
SELECT * FROM `city` WHERE `city` LIKE 'C%' ORDER BY `country_id` LIMIT 10;

-- concat 함수
SELECT concat('Hello', 'World');

-- 도시이름 : ~~~ 나라코드 : @@ 
-- 형태로 조회
SELECT concat('도시이름 : ', `city`, ' 나라코드 : ', `country_id`) AS `list` FROM `city`;

