# Spring-board_Basic
Spring-게시판만들기(기초)
----------------------------------------------------------------------------------------------------------------------------------------------
 Spring으로 간단한 게시판을 만들어보는 과정입니다. 사용자가 글을 작성하고 다른 사용자들과 공유할 수 있는 기능을 가지고 있고 스프링의 기본 개념과 사용방법에 대해 학습합니다.

1. 개발환경
- JDK11, SpringFramework, Maven, Eclipse2020.06

2. DB
 - Oracle11
num(pk), 제목, 내용, 날짜, 조회 : pk시퀀스

create table "MYBOARD"(
    "NUM" number primary key,
    "TITLE" varchar2(100) not null,
    "CONTENT" varchar2(4000) not null,
    "REGDATE" timestamp,
    "READCNT" number not null
);
create sequence "MYBOARD_SEQ" nocache;

3. 모델
Board, BoardDao, BoardDaoImpl

4. 컨트롤러
BoardCommand, BoardController

5. 서비스
BoardService, BoardServiceImpl
----------------------------------------------------------------------------------------------------------------------------------------------
list
<img width="477" alt="화면 캡처 2023-04-03 005030" src="https://user-images.githubusercontent.com/116303386/229365780-a8d12565-cd25-4fd0-a32c-f196458c0f9f.png">
<img width="452" alt="화면 캡처 2023-04-03 005151" src="https://user-images.githubusercontent.com/116303386/229365795-dffaa8b5-9f03-4af5-9843-1e1cb45ec9ff.png">
----------------------------------------------------------------------------------------------------------------------------------------------
detail
<img width="420" alt="화면 캡처 2023-04-03 005230" src="https://user-images.githubusercontent.com/116303386/229365804-c383270b-ad49-4834-a4a2-8b0f7682165c.png">
----------------------------------------------------------------------------------------------------------------------------------------------
edit
<img width="506" alt="화면 캡처 2023-04-03 005257" src="https://user-images.githubusercontent.com/116303386/229365811-ba4a5107-33c0-41a5-b0ae-54e79827e673.png">
----------------------------------------------------------------------------------------------------------------------------------------------
regist
<img width="437" alt="화면 캡처 2023-04-03 005340" src="https://user-images.githubusercontent.com/116303386/229365829-98909db1-2744-4eaf-b5ea-9555fec9156c.png">
----------------------------------------------------------------------------------------------------------------------------------------------
remove
<img width="340" alt="화면 캡처 2023-04-03 005353" src="https://user-images.githubusercontent.com/116303386/229365837-bb5cb149-6cab-4f7c-987e-f7bef56475a8.png">
----------------------------------------------------------------------------------------------------------------------------------------------
DB
<img width="813" alt="화면 캡처 2023-04-03 005412" src="https://user-images.githubusercontent.com/116303386/229365843-db8b51bd-6d42-4a7a-ba87-73e28a73db7c.png">

