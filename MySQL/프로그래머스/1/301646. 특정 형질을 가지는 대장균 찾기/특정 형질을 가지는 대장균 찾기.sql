-- 코드를 작성해주세요
 # select * from ecoli_data;
 select count(*) as 'COUNT' from ecoli_data where genotype & 2 = 0 and (genotype & 1 > 0 or genotype & 4 > 0);