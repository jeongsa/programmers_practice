-- 코드를 입력하세요
-- '경제' 카테고리에 속하는 도서들의 도서 id, 저자명, 출판일 리스트를 출력
SELECT BOOK_ID, AUTHOR_NAME, TO_CHAR(PUBLISHED_DATE,'YYYY-MM-DD')
  FROM BOOK B, AUTHOR A
 WHERE B.AUTHOR_ID = A.AUTHOR_ID 
   AND CATEGORY IN '경제'
ORDER BY PUBLISHED_DATE;