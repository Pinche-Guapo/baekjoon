-- 코드를 입력하세요
# select * from member_profile;
# SELECT * from member_profile where gender = 'W' and tlno is not null and date_format(date_of_birth, '%Y-%m-%d') in (select date_of_birth from member_profile where date_format(date_of_birth, '%m') = 3) ;
# SELECT * from member_profile where gender = 'W' and tlno is not null and month(date_of_birth) = 3;
# SELECT member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d') from member_profile where gender = 'W' and tlno is not null and date_of_birth in (select date_of_birth from member_profile where date_format(date_of_birth, '%m') = 3) ;
SELECT member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d') from member_profile where month(date_of_birth) = 3 and tlno is not null and gender = 'W';