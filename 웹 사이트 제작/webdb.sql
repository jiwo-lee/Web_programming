create database webdb;

use webdb;

create table member(
	id varchar(50) not null,
    name varchar(20) not null,
    passwd varchar(50) not null,
    primary key (id)
);

insert into member (id, name, passwd) values ('admin12', 'admin', 'admin1234');

select * from member;

create table community(
	id int not null auto_increment,
    title varchar(30) not null,
    post varchar(10000) not null,
    user_name varchar(20) not null,
    primary key (id)
);

insert into community (title, post, user_name) values ('안녕하세요', '테스트용 글입니다.', 'admin');
insert into community (title, post, user_name) values ('테스트용 글입니다.', '자유 게시판엔 아무 주제나 작성하여도 좋습니다.', 'admin');

select * from community;