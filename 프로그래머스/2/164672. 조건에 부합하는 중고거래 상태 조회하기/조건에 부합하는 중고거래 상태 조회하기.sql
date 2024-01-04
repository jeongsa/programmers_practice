-- 코드를 입력하세요
-- 2022년 10월 5일에 등록된 중고거래 게시물의 게시글 id,작성자 id, 게시글 제목, 가격, 거래상태 조회
SELECT BOARD_ID,WRITER_ID,TITLE,PRICE,
CASE WHEN STATUS = 'SALE' THEN '판매중'
WHEN STATUS = 'RESERVED' THEN '예약중'
ELSE '거래완료' END AS STATUS
FROM USED_GOODS_BOARD
WHERE TO_CHAR(CREATED_DATE,'YYYY-MM-DD') = '2022-10-05'
ORDER BY BOARD_ID desc;