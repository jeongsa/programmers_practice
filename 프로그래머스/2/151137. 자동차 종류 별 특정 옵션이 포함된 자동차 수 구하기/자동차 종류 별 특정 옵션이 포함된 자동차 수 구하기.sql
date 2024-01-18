-- 코드를 입력하세요
-- 통풍시트, 열선시트, 가죽시트 중 하나 이상의 옵션이 포함된 자동차를 종류 별로 몇 대인지 출력
SELECT CAR_TYPE, COUNT(CAR_TYPE) AS CARS
  FROM CAR_RENTAL_COMPANY_CAR
 WHERE REGEXP_LIKE(OPTIONS,'통풍시트|열선시트|가죽시트')
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE