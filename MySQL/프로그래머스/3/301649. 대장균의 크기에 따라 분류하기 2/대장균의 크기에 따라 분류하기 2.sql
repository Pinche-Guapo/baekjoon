-- 코드를 작성해주세요
WITH RANK_DATA as (
    SELECT 
        id,
        PERCENT_RANK() OVER (ORDER BY size_of_colony DESC) AS percent 
    FROM ECOLI_DATA
)
SELECT 
    id
    ,CASE 
        WHEN percent <= 0.25 THEN 'CRITICAL'
        WHEN percent <= 0.50 THEN 'HIGH'
        WHEN percent <= 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END colony_name
FROM RANK_DATA
ORDER BY id
# SELECT 
# PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY column_name) OVER() as p95,
# PERCENTILE_DISC(0.95) WITHIN GROUP (ORDER BY column_name) OVER() as p95_discrete
# FROM table_name;

# select id, 
# percentile_cont(0.25) within group (order by size_of_colony asc) 'CRITICAL',
# percentile_cont(0.5) within group (order by size_of_colony asc) 'HIGH',
# percentile_cont(0.75) within group (order by size_of_colony asc) 'MEDIUM',
# percentile_cont(1) within group (order by size_of_colony asc) 'LOW'
# from ecoli_data order by id asc;