drop database if exists ExerciseDB;

create database IF NOT EXISTS ExerciseDB;

USE ExerciseDB;

drop table IF EXISTS student2;

CREATE TABLE IF NOT EXISTS Student2(
   num int NOT NULL,
   pwd VARCHAR(20),
   depart  VARCHAR(20),
   name VARCHAR(30), 
   address VARCHAR(50), 
   phone VARCHAR(20),
   email VARCHAR(30),
   PRIMARY KEY (num)
);

INSERT INTO STUDENT2 (num, pwd, depart, name, address, phone, email) VALUES (2018100001, '12', '모바일과', '홍길순', '서울시','010-9002-1234', 'ab@naver.com');
INSERT INTO STUDENT2 (num, pwd, depart, name, address, phone, email) VALUES (2018100002, 'qw', '모바일과', '홍길동', '경기도','010-2009-4321', 'qwe@kangwon.ac.kr');
INSERT INTO STUDENT2 (num, pwd, depart, name, address, phone, email) VALUES (2018200001, 'qwe', '영어과', '수여인', '인천시','010-3918-0007', 'zxc@a.c');
INSERT INTO STUDENT2 (num, pwd, depart, name, address, phone, email) VALUES (2018200002, '34', '영어과', '김다운', '서울시','010-3002-0101', 'aqz@daum.net');

select * from student;