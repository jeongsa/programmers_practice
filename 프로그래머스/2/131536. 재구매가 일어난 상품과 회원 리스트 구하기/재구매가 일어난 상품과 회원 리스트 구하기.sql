-- 코드를 입력하세요
-- 동일한 회원이 동일한 상품을 재구매한 데이터,
-- 재구매한 회원id, 상품id 출력

SELECT distinct USER_ID, PRODUCT_ID 
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >= 2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;