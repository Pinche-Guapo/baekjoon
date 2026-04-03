-- 코드를 작성해주세요
#select id, (select size_of_colony from ecoli_data b where b.id = a.id) from ecoli_data a;
select id,
    CASE 
        WHEN size_of_colony <= 100 THEN 'LOW'
        WHEN size_of_colony > 100 AND size_of_colony <= 1000 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS size
from ecoli_data
order by id asc;