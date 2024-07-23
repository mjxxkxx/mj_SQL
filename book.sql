-- create database BookDB;
use BookDB;
/* create table TestTable(
	col_1 int,
-- -- col_2 varchar(20),
-- -- col_3 datetime
);-*/
-- drop table TestTable;

/* create table Book(
	bookid int,
-- -- bookname varchar(20),
-- -- publisher varchar(20),
-- -- price int
);

insert into Book(bookid, bookname, publisher, price)
values(100, '데이터베이스', '한빛아카데미', 27000);
insert into Book(bookid, bookname, publisher, price)
values(101, '파이썬', '한빛아카데미', 22000);
insert into Book(bookid, bookname, publisher, price)
values(102, 'JSP 프로그래밍', '생능출판사', 26000);
insert into Book(bookid, bookname, publisher, price)
values(103, '자바스크립트', '길벗', 45000);
insert into Book(bookid, bookname, publisher, price)
values(104, '데이터베이스 배움터', '생능출판사', 30000);
insert into Book(bookid, bookname, publisher, price)
values(105, 'HTML 기초', '한빛아카데미', 37000);
insert into Book(bookid, bookname, publisher, price)
values(106, '파이썬 데이터분석', '이지스퍼블리싱', 25000);
insert into Book(bookid, bookname, publisher, price)
values(107, 'Chat GPT', '생능출판사', 29000);
insert into Book(bookid, bookname, publisher, price)
values(108, 'ReactJS', '이지스퍼블리싱', 41000);
insert into Book(bookid, bookname, publisher, price)
values(109, '홈페이지 만들기 기초', '한빛아카데미', 32000);
insert into Book(bookid, bookname, publisher, price)
values(110, '데이터 시각화', '생능출판사', 27000);*/

-- 'Book' 테이블에 저장된 전체 데이터 조회
select * from Book;

-- 'Book' 테이블에 저장된 bookname만 조회
select bookname from book;

select publisher from book;

-- 'Book' 테이블에 저장된 bookname만 조회
select bookname, publisher from book;

-- 'Book' 테이블에 저장된 publisher만 조회
select publisher from book;

-- 'Book' 테이블에 저장된 bookname, publisher를 조회
select bookname, publisher from book;

select publisher, bookname from book;

-- 가격이 25,000원 이상인 책 정보 검색
select * from Book where price > 25000;

select * from Book where price >= 30000;

-- 가격이 10,000원 이상 25,000원 이하인 책 정보 검색
select * from Book where price between 10000 and 25000;

-- 출판사가 '길벗' 또는 '생능출판사'인 책 정보 검색
select * from Book where publisher in('길벗','생능출판사');

-- 출판사가 '길벗' 또는 '생능출판사'가 아닌 책 정보 검색
select * from Book where publisher not in('길벗', '생능출판사');

-- '데이터베이스'를 출간한 출판사 검색
select publisher from book where bookname like '데이터베이스';

-- 책 이름에 '데이터베이스'가 포함된 책 이름과 출판사 검색
select bookname, publisher from book where bookname like '%데이터베이스%';

select bookname, publisher from book where bookname like '데이터베이스%';

select bookname, publisher from book where bookname like '%데이터베이스';

-- 왼쪽 두 번째 위치에 '이'라는 문자를 갖는 책 이름을 검색
select bookname from book where bookname like '_이%';

-- 출판사가 '길벗' 또는 '생능출판사'인 책 정보 검색
select * from book where publisher = '길벗' or publisher = '생능출판사';

-- 데이터 관련 도서 중, 가격이 30,000원 이상인 책 검색
select * from book where bookname like '%데이터%' and price >= 30000;

-- 2-1 제목이 '프로그래밍'으로 끝나는 책 정보 검색
select bookname, price from book where bookname like '%프로그래밍';

-- 2-2 제목이 '데이터'로 시작하면서 6자인 책 정보 검색
select * from book where bookname like '데이터___';

-- 2-3 제목의 세 번째 글자가 '터'인 책 정보 검색
select * from book where bookname like '%__터%';

-- 2-4 '한빛아카데미'의 도서 중 '데이터' 관련된 책 정보 검색
select * from book where bookname like '%데이터%' and publisher = '한빛아카데미';

-- 도서를 이름순으로 검색(오름차순)
select * from book order by bookname asc;

-- 도서를 이름순으로 검색(오름차순)
select * from book order by bookname;

-- 도서를 가격순으로 검색(오름차순)
select * from book order by price;

-- 도서를 이름순으로 검색(내림차순)
select * from book order by bookname desc;

-- 도서를 가격순으로 검색(내림차순)
select * from book order by price desc;

-- 전체 도서 가격의 합 출력
select sum(price) from book;

-- 전체 도서 가격의 합 출력 - 열 제목 추가
select sum(price) as '가격 총합' from book;

-- 전체 도서들의 평균 가격 출력
select avg(price) as '평균 가격' from book;

-- 도서의 총 개수 출력
select count(*) as '총 개수' from book;

select count(price) as '총 개수' from book;

-- 최저가 도서 계산
select min(price) as '최저가' from book;

-- 최고가 도서 계산
select max(price) as '최고가' from book;

-- 4-1 데이터베이스 관련 책 가격의 총액 계산
select sum(price) as '총액' from book 
where bookname like '%데이터베이스%';

-- 4-2 출판사가 '한빛아카데미'인 책의 개수 출력
select count(*) as '한빛아카데미' from book 
where publisher = '한빛아카데미';

-- 각 출판사별 도서 금액의 총합 계산
select publisher, sum(price) from book 
group by publisher;

-- 출판사를 기준으로 그룹화 후, '생능출판사'의 데이터만 검색하여 도서 금액의 총합 계산
select publisher, sum(price) from book 
group by publisher 
having publisher = '생능출판사';

-- 출판사를 기준으로 그룹화 후, 가격이 20,000원 이상인 도서만 검색하여 도서 금액의 총합 계산
select publisher, sum(price) from book 
where price >= 20000 
group by publisher;

-- 4-3 출판사 별로 가격이 30,000원 이상인 도서의 총 수량을 계산
select publisher, count(*) as '도서수량' from book 
where price >= 30000 
group by publisher;

-- 4-4 출판사 별로 가격이 30,000원 이상인 도서의 총 수량을 계산 총 수량이 두 권 이상인 출판사만 조회
select publisher, count(*) as '도서수량' from book 
where price >= 30000 
group by publisher
having count(*) >= 2;

-- 출판사 이름의 중복을 제거하여 검색
select distinct publisher from book;

-- 책의 가격을 23,000원으로 수정
update Book set price = 23000 where bookid = 101;

-- VARCHAR(10) 자료형을 가진 isbn 속성 추가
alter table Book add isbn varchar(10);
select * from book;

-- Book 테이블의 isbn 속성의 데이터 타입을 INT로 변경
alter table book modify isbn int;

-- Book 테이블의 isbn 속성의 이름을 '일련번호'로 변경
-- alter table book change isbn 일련번호 int;
alter table book change 일렬번호 일련번호 int;

-- Book 테이블의 일련번호 속성을 삭제
alter table book drop column 일련번호;