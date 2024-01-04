-- 코드를 입력하세요
-- 보호소 동물의 중성화 여부  출력 
SELECT ANIMAL_ID, NAME, 
CASE WHEN SEX_UPON_INTAKE like '%Neutered%' or SEX_UPON_INTAKE like '%Spayed%'  THEN 'O'
ELSE 'X' END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAl_ID;