-- 코드를 입력하세요
-- 이름이 lucy, ella, pickle, rogan, sabrina, mitty인 동물 조회
SELECT ANIMAL_ID, name, sex_upon_intake
FROM ANIMAL_INS
WHERE NAME IN ('Lucy','Ella','Pickle','Rogan','Sabrina','Mitty')
ORDER BY ANIMAL_ID;