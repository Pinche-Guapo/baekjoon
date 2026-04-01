-- 코드를 작성해주세요
# select id, email, first_name, last_name from developers where skill_code & 1024 > 0 or skill_code & 256 > 0 order by id ;
# select id, email, first_name, last_name from developers where skill_code & 1024 = (select code from skillcodes where name = 'C#') or skill_code & 256 = (select code from skillcodes where name = 'Python') order by id ;

select id, email, first_name, last_name from developers where skill_code & (select code from skillcodes where name = 'Python') or skill_code & (select code from skillcodes where name = 'C#') order by id ;