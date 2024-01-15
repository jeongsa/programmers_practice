-- 코드를 입력하세요
-- 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수 조회
SELECT NAME, COUNT(NAME) AS COUNT
  FROM ANIMAL_INS
HAVING COUNT(NAME) > 1
GROUP BY NAME
ORDER BY NAME;