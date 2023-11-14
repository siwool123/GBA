create table member(
    id varchar2(30) primary key,
    pw varchar2(30) not null,
    name varchar2(30) not null,
    email varchar2(60) not null,
    birth varchar2(30) not null,
    phone varchar2(30) not null,
    add1 number(10),
    add2 varchar2(100),
    add3 varchar2(100),
    regidate date default sysdate not null,
    grade number(1)
);
insert into member values 
('admin', '1234', '°ü¸®ÀÚ', 'admin123@navr.com', 'y', '010-1111-2222', null, null, null, sysdate, 1);
commit;
alter table member drop column emailok;
commit;
alter table member add birth varchar(30);
commit;
select * from member where id='siwool123';
select * from member where id='siwool321';
create sequence seq_board
    increment by 1
    start with 2
    minvalue 2
    nomaxvalue
    nocycle
    nocache;