DESC `user`;

-- 모든 행 조회
SELECT * FROM `user`;

-- 특정 컬럼 조회
SELECT `name`, `email`, `introduce` FROM `user`;

-- 조회 결과의 컬럼명 바꾸기
SELECT `name` AS `이름`, `yyyymmdd` AS `생년월일`, `email` FROM `user`;

-- 특정 컬럼 중복 제거 조회
SELECT DISTINCT `name` FROM `user`;

-- 개수 조회
SELECT count(*) FROM `user`;
SELECT count(1) AS `count` FROM `user`;

-- 조건 조회
-- id가 3인 행 조회
SELECT * FROM `user` WHERE `id`=3;

-- 이름이 김바다인 사용자의 생년월일 조회
SELECT * FROM `user` WHERE `name` = '김바다';

-- 이름이 김인규가 아닌 사용자 조회
SELECT * FROM `user` WHERE `name` != '김인규';

-- 날짜 기준 조회
-- 날짜 시간을 모두 저장하고 있는 컴럶은 비교 조건에서 시간을 꼭 명시한다.
SELECT * FROM `user` WHERE `createdAt` > '2025-04-16 16:21:26';

-- 이름이 김인규인 사용자의 개수 조회
SELECT count(*) FROM `user` WHERE `name` = '김인규';

-- 자기소개가 없는 행 조회
SELECT * FROM `user` WHERE `introduce` IS NULL;

-- 자기소개가 있는 행 조회
SELECT * FROM `user` WHERE `introduce` IS NOT NULL;

-- 조건이 여러가지인 결과 조회
-- 이름이 김인규이고 취미가 독서인 행 조회 + 소개가 소개인 행
SELECT * FROM `user` WHERE `name` = '김인규' AND `hobby` = '독서' AND `introduce` = '소개';

-- id가 3 이거나, id가 4 인 행 조회
SELECT * FROM `user` WHERE `id`=3 OR `id`=4;


