<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Select file to upload</h1>
<br/>
<form action="upload.do" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50"/>
<br/>
<input type="file" name="file" size="50"/>
<br/>
<input type="file" name="file" size="50"/>
<br/>
<input type="submit" value="upload file">
</form>
</body>
</html>