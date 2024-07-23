-- create database StudentDB;
use StudentDB;
/*create table StudentInfo(
	id int,
    name varchar(20),
    age int,
    address varchar(20),
    course varchar(20)
); */

insert into StudentInfo(id, name, age, address, course)
values(1, '문종헌', 24, '서울', '영어');
insert into StudentInfo(id, name, age, address, course)
values(2, '오한솔', 22, '부산', '수학');
insert into StudentInfo(id, name, age, address, course)
values(3, '정국철', 25, '서울', '음악');
insert into StudentInfo(id, name, age, address, course)
values(4, '박기석', 27, '대전', '국어');
insert into StudentInfo(id, name, age, address, course)
values(5, '안창범', 20, '광주', '수학');
insert into StudentInfo(id, name, age, address, course)
values(6, '박홍진', 22, '부산', '컴퓨터');
insert into StudentInfo(id, name, age, address, course)
values(7, '공지훈', 28, '강원', '국어');
insert into StudentInfo(id, name, age, address, course)
values(8, '정희성', 30, '제주', '음악');
insert into StudentInfo(id, name, age, address, course)
values(9, '이봉림', 34, '대전', '영어');
insert into StudentInfo(id, name, age, address, course)
values(10, '김현우', 21, '서울', '컴퓨터');


select id, name from StudentInfo;
-- 나이가 30 이상인 학생 정보 검색
select * from StudentInfo where age >= 30;

select * from StudentInfo where course = '컴퓨터';

select * from StudentInfo where name = '박기석';

select * from StudentInfo where age between 20 and 25;

select * from StudentInfo where age in (28 or 34);

select * from StudentInfo where name like '김__';

select * from StudentInfo where name like '_지%';

select * from StudentInfo order by age asc;

select * from StudentInfo order by age desc;