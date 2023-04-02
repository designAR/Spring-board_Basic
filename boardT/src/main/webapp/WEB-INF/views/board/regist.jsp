<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<html>
<head>
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
			border: none;
			cursor: pointer;
		}

		/* button hover style */
		.button:hover {
			background-color: #1877f2;
		}

		/* input style */
		input[type="text"],
		input[type="password"],
		textarea {
			border: 1px solid #ddd;
			padding: 10px;
			border-radius: 3px;
			margin-right: 10px;
			margin-bottom: 10px;
			width: 100%;
			box-sizing: border-box;
		}

		/* error style */
		.errors {
			color: red;
			margin-top: 5px;
			margin-bottom: 10px;
		}
	</style>
</head>
<body>
	<form:form>
		<fieldset>
			<legend>게시글 등록</legend>
			<p>
				<form:input path="title" placeholder="제목"/>
				<form:errors path="title" class="errors"/>
			</p>
			<p>
				<form:textarea path="content" placeholder="내용" cols="25" rows="5"></form:textarea>
				<form:errors path="content" class="errors"/>
			</p>
			<p>
				<input type="submit" value="등록" class="button">
			</p>
		</fieldset>
	</form:form>
</body>
</html>