<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
    body {
        background-color: #fafafa;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    h1 {
        color: #262626;
        text-align: center;
        margin-top: 40px;
        font-weight: bold;
    }

    .form-field {
        margin: 20px 0;
    }

    label {
        color: #9e9e9e;
        font-size: 14px;
        font-weight: 500;
    }

    input[type=text]:focus:not([readonly]) {
        border-bottom: 1px solid #0095f6;
        box-shadow: 0 1px 0 0 #0095f6;
    }

    textarea:focus:not([readonly]) {
        border-bottom: 1px solid #0095f6;
        box-shadow: 0 1px 0 0 #0095f6;
    }

    input[type=submit] {
        background-color: #0095f6;
        color: #fff;
        padding: 8px 16px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    input[type=submit]:hover {
        background-color: #0077c2;
    }

    .back-button {
        position: absolute;
        top: 20px;
        left: 20px;
    }

    .back-button i {
        color: #0095f6;
        font-size: 24px;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="container">
    <a href="<c:url value='/board/list'/>" class="back-button"><i class="material-icons">arrow_back</i></a>
    <h1>게시글 수정</h1>
    <p style="text-align: right;">
		<a href="<c:url value='/board/list'/>" class="button">목록으로</a>
	</p>
    <form:form>
        <fieldset>
            <form:hidden path="num"/>
            <div class="form-field">
                <label for="title">제목</label>
                <form:input path="title" placeholder="제목" id="title"/>
                <form:errors path="title"/>
            </div>
            <div class="form-field">
                <label for="content">내용</label>
                <form:textarea path="content" placeholder="내용" id="content" class="materialize-textarea"></form:textarea>
                <form:errors path="content"/>
            </div>
            <div class="form-field">
                <input type="submit" value="수정">
            </div>
               
        </fieldset>
    </form:form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>