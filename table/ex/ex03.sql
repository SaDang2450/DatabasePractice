SELECT * FROM `user`;

-- 수정하기 // updatedAt 필수 포함
-- id가 4인 행의 email 주소를 hagulu@gmail.com 으로 수정
UPDATE `user` SET `email`='hagulu@gmail.com' , `updatedAt` = NOW() WHERE `id`=4;

-- id 가 2 인 행의 취미와 자기소개를 수정
UPDATE `user` SET `hobby` = '맛집탐방', `introduce` = '맛집', `updatedAt`=NOW() WHERE `id`=2;

-- 삭제
-- id가 1인 행 삭제
SELECT * FROM `user` WHERE `id`=1;
DELETE FROM `user` WHERE `id`=1;

-- 모든 행 삭제
DELETE FROM `user`;

-- 테이블 삭제 -> 테이블 생성
TRUNCATE TABLE `user`;