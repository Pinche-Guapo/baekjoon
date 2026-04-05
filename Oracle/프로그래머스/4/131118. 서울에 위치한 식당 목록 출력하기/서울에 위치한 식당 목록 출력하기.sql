-- 코드를 입력하세요
-- SELECT a.rest_id, a.rest_name, a.food_type, a.favorites as favorites, a.address, (select round(avg(b.review_score),2) from rest_review b where b.rest_id = a.rest_id) as score from rest_info a order by score desc, favorites desc;

SELECT 
      A.REST_ID
    , A.REST_NAME
    , A.FOOD_TYPE
    , A.FAVORITES
    , A.ADDRESS
    , ROUND(AVG(B.REVIEW_SCORE),2) SCORE
from REST_INFO A, REST_REVIEW B
where A.REST_ID = B.REST_ID
AND A.ADDRESS LIKE '서울%'
GROUP BY A.REST_ID
    , A.REST_NAME
    , A.FOOD_TYPE
    , A.FAVORITES
    , A.ADDRESS
ORDER BY SCORE DESC,FAVORITES DESC