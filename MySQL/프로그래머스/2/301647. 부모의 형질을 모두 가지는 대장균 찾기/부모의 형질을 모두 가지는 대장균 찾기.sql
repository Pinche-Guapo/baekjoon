-- 코드를 작성해주세요
# SELECT a.id, a.genotype as genotype, b.genotype as parent_genotype FROM ecoli_data as a join ecoli_data as b WHERE a.parent_id = b.id and a.genotype % b.genotype order by a.id asc;
# SELECT a.id, a.genotype as genotype, b.genotype as parent_genotype FROM ecoli_data a join ecoli_data b WHERE a.parent_id = b.id and a.genotype % b.genotype = b.genotype order by a.id asc;
SELECT A.ID, A.GENOTYPE, B.GENOTYPE AS PARENT_GENOTYPE
FROM 
ECOLI_DATA A JOIN ECOLI_DATA B
ON A.PARENT_ID = B.ID 
WHERE A.GENOTYPE & B.GENOTYPE = B.GENOTYPE
ORDER BY A.ID;