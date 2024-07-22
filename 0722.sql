-- create database BookDB;
use BookDB;
/*create table TestTable(
	col_1 int,
    col_2 varchar(20),
    col_3 datetime
);*/
-- drop table TestTable;

/*create table Book(
	bookid int,
    bookname varchar(20),
    publisher varchar(20),
    price int
);*/

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

select * from Book;

select bookname from book;

select publisher from book;

select bookname, publisher from book;

select publisher, bookname from book;

select * from Book where price > 25000;

select * from Book where price >= 30000;

select * from Book where price between 10000 and 25000;

select * from Book where publisher in('길벗','생능출판사');

select * from Book where publisher not in('길벗', '생능출판사');

select publisher from book where bookname like '데이터베이스';

select bookname, publisher from book where bookname like '%데이터베이스%';

select bookname, publisher from book where bookname like '데이터베이스%';

select bookname, publisher from book where bookname like '%데이터베이스';

select bookname from book where bookname like '_이%'

select * from book where publisher = '길벗' or publisher = '생능출판사';

select * from book where bookname like '%데이터%' and price >= 30000;

select bookname, price from book where bookname like '%프로그래밍';

select * from book where bookname like '데이터___'

select * from book where bookname like '%__터%'

select * from book where bookname like '%데이터%' and publisher = '한빛아카데미'