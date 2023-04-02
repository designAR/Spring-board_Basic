<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="javatime" uri="http://sargue.net/jsptags/time"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
<link rel="stylesheet" href="style.css">
<style>
body {
  background-color: #fafafa;
}

/* fieldset style */
fieldset {
  background-color: #fff;
  border-radius: 3px;
  border: 1px solid #ddd;
  padding: 20px;
  margin-top: 20px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* legend style */
legend {
  font-size: 20px;
  font-weight: bold;
}

/* p style */
p {
  margin-bottom: 10px;
}

/* button style */
.button {
  display: inline-block;
  background-color: #3897f0;
  color: #fff;
  font-size: 14px;
  font-weight: bold;
  padding: 10px 20px;
  border-radius: 5px;
  text-decoration: none;
}

/* button hover style */
.button:hover {
  background-color: #1877f2;
}
</style>
</head>
<body>
<div style="width: 100%; max-width: 700px; margin: 0 auto;">
	<p style="text-align: right;">
		<a href="<c:url value='/board/list'/>" class="button">목록으로</a>
	</p>
	<fieldset>
		<legend style="color: #3897f0;">${board.num}번 게시글</legend>
		<p>등록일자 : <javatime:format value="${board.regdate}" pattern="yyyy년 MM월 dd일 HH시 mm분"/></p>
		<p>조회수 : ${board.readcnt}</p>
		<p style="font-size: 20px; font-weight: bold; margin-bottom: 20px;">${board.title}</p>
		<p>${board.content}</p>
	</fieldset>
	<p style="text-align: center;">
		<a href="<c:url value='/board/edit/${board.num}'/>" class="button">수정</a>
		<a href="<c:url value='/board/remove/${board.num}'/>" class="button" style="background-color: #fd7e14;">삭제</a>
	</p>
</div>
</body>
</html>