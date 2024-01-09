-- 코드를 입력하세요
-- 이름에 'EL'이 들어가는 개의 아이디와 이름 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE 1=1 and ANIMAL_TYPE = 'Dog' 
and UPPER(NAME) LIKE UPPER('%el%')
ORDER BY name;