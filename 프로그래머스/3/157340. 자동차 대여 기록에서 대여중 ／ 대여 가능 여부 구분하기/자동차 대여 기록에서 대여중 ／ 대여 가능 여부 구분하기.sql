-- 코드를 입력하세요
-- 2022년 10월 16일에 대여 중인 자동차는 대여 중, 대여 중이 아닌 자동차는 '대여 가능'을 표시하는 컬럼 출력
-- SELECT *
--   FROM (SELECT CAR_ID, 
-- CASE WHEN TO_CHAR(END_DATE,'YYYY-MM-DD') >= '2022-10-16' THEN '대여중'
--  WHEN TO_CHAR(END_DATE,'YYYY-MM-DD') < '2022-10-16' THEN '대여 가능' 
--  ELSE '몰라' END AS AVAILABILITY
--          FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY)
--  GROUP BY CAR_ID
--  ORDER BY CAR_ID desc;

SELECT 
       A.CAR_ID
     , CASE WHEN B.START_DATE IS NOT NULL
            THEN '대여중'
            ELSE '대여 가능'
        END                                 "AVAILABILITY"
  FROM
       (SELECT
               CAR_ID
          FROM 
               CAR_RENTAL_COMPANY_RENTAL_HISTORY
         WHERE 1=1
         GROUP BY CAR_ID)                        "A"
     , CAR_RENTAL_COMPANY_RENTAL_HISTORY         "B"
 WHERE 1=1
   AND A.CAR_ID = B.CAR_ID(+)
   AND TO_CHAR(B.START_DATE(+),'YYYY-MM-DD') <= '2022-10-16' 
   AND TO_CHAR(B.END_DATE(+),'YYYY-MM-DD') >= '2022-10-16'
 ORDER BY A.CAR_ID DESC