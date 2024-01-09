-- 코드를 입력하세요
-- 모든 레코드에 대해 각 동물의 아이디와, 들어온 날짜를 조회
SELECT animal_id, name, TO_CHAR(DATETIME,'YYYY-MM-DD') AS 날짜
FROM animal_ins
WHERE 1=1
order by animal_id;