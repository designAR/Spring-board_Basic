<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="javatime" uri="http://sargue.net/jsptags/time" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link rel="stylesheet" href="style.css">
<script src="script.js"></script>
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
	
	/* 검색 폼 스타일 */
	.search-form {
	  margin: 20px 0;
	}
	
	/* 검색 입력 필드 스타일 */
	.search-form input[type=text] {
	  border: 1px solid #ddd;
	  border-radius: 3px;
	  padding: 10px;
	  width: 70%;
	  font-size: 16px;
	}
	
	/* 검색 버튼 스타일 */
	.search-form input[type=submit] {
	  background-color: #3897f0;
	  color: #fff;
	  border: none;
	  padding: 10px 20px;
	  border-radius: 5px;
	  font-size: 16px;
	  margin-left: 10px;
	  cursor: pointer;
	}
	
	/* 게시글 등록 버튼 스타일 */
	.register-link {
	  text-decoration: none;
	}
	
	.register-link button {
	  background-color: #3897f0;
	  color: #fff;
	  font-size: 16px;
	  font-weight: bold;
	  padding: 10px 20px;
	  border-radius: 5px;
	  border: none;
	  cursor: pointer;
	  transition: background-color 0.2s;
	}
	
	.register-link button:hover {
	  background-color: #1877f2;
	}
	
	/* 제목 스타일 */
	.title-link {
	  text-decoration: none;
	  color: #333;
	  font-weight: bold;
	}
	
	.title-link:hover {
	  text-decoration: underline;
	}
	
	/* 페이지네이션 스타일 */
	.pagination {
	  margin-top: 20px;
	  text-align: center;
	}
	
	.pagination a {
	  display: inline-block;
	  margin: 0 5px;
	  padding: 5px 10px;
	  background-color: #f5f5f5;
	  border: 1px solid #ddd;
	  border-radius: 3px;
	  color: #333;
	  text-decoration: none;
	  font-size: 16px;
	  font-weight: bold;
	}
	
	.container {
	  max-width: 800px;
	  margin: 0 auto;
	  padding: 20px;
	}
	table {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 20px;
	 }
	 
	 th, td {
	   border: 1px solid #ddd;
	   padding: 8px;
	   text-align: left;
	 }
	 
	 th {
	   background-color: #f5f5f5;
	   font-weight: bold;
	 }
	 
	 tr:nth-child(even) {
	   background-color: #f2f2f2;
	 }
	 
	 /* title link style */
	 .title-link {
	   text-decoration: none;
	   color: #333;
	   font-weight: bold;
	 }
	 
	 .title-link:hover {
	   text-decoration: underline;
	 }
</style>
</head>
<body>
<div class="container">
  <h1>게시판 목록</h1>
  <form action="#" class="search-form">
    <input type="text" name="keyword" placeholder="검색하기">
    <input type="submit" value="검색">
  </form>
  <div class="board-list">
    <table>
      <thead>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>등록일</th>
          <th>조회수</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="board" items="${list }">
          <tr>
            <td>${board.num }</td>
            <td><a href="<c:url value='/board/detail/${board.num}'/>">${board.title}</a></td>
            <td><javatime:format value="${board.regdate }" pattern="yyyy년 MM월 dd일 HH시 mm분"/></td>
            <td>${board.readcnt }</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <div class="pagination">
      -- [1] [2] [3] --
    </div>
  </div>
  <div class="action-buttons">
    <a href="<c:url value='/board/regist'/>" class="button register-link">게시글 등록</a>
  </div>
</div>
</body>
</html>