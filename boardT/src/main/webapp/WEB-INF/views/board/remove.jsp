<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>remove</title>
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
<body style="background-color: #fafafa; font-family: Arial, sans-serif; color: #262626;">
<div style="max-width: 600px; margin: 0 auto; padding: 20px;">
    <a href="<c:url value='/board/list'/>" style="text-decoration: none;"><button class="button" style="background-color: #ffffff; color: #0095f6; border: 1px solid #0095f6;">목록으로</button></a>
    <h1 style="font-size: 28px; font-weight: bold; margin-top: 30px; margin-bottom: 20px;">[${command.num }]번, ${command.title }</h1>
    <form method="post" style="margin-top: 30px;">
        <p style="font-size: 18px;">정말 삭제하시겠습니까?</p>
        <div style="display: flex; justify-content: space-between; margin-top: 20px;">
            <button type="submit" class="button" style="background-color: #e1306c; border: 1px solid #e1306c;">삭제</button>
            <a href="<c:url value='/board/detail/${command.num}'/>" style="text-decoration: none;"><button type="button" class="button" style="background-color: #ffffff; color: #262626; border: 1px solid #dbdbdb;">취소</button></a>
        </div>
    </form>
</div>
</body>
</html>