-- sakila 데이터베이스 활용

SELECT * FROM `customer`;

-- Primary Key (PK) 조건 조회 : const
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` = 5;
SELECT * FROM `customer` WHERE `customer_id` = 5;

-- PK 범위 조건 : range
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` < 20;

-- 인덱스가 적용되지 않은 컬럼 조건 조회 : all
EXPLAIN SELECT * FROM `customer` WHERE `active` = 1;

-- 인덱스가 있는 컬럼 조회 : ref
EXPLAIN SELECT * FROM `customer` WHERE `address_id` = 36;

-- 인덱스가 있는 컬럼 LIKE 조회
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE 'A%';
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE '%A';

SELECT * FROM `film`;

-- length 가 50 이하인 조건 조회
EXPLAIN SELECT * FROM `film` WHERE `length` <= 50; -- range
EXPLAIN SELECT * FROM `film` WHERE `length` <= 150; -- ALL
-- 조회 결과가 많은 경우 굳이 INDEX를 활용하지 않을 수 있다.



-- length 인덱스 추가
ALTER TABLE `film` ADD INDEX `idx_length`(`length`);

