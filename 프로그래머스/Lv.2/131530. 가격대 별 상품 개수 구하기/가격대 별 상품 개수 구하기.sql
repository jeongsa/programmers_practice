-- 코드를 입력하세요
-- 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL문 작성.

SELECT
    PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM (
    SELECT
        TRUNC(PRICE / 10000) * 10000 AS PRICE_GROUP
    FROM
        PRODUCT
)
GROUP BY
    PRICE_GROUP
ORDER BY
    PRICE_GROUP;