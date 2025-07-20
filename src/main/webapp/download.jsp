<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
<head>
    <title>Download Files</title>
</head>
<body>

<c:choose>
    <c:when test="${empty files}">
        <p style="color:red; font-size:20px;">No files to download.</p>
    </c:when>
    <c:otherwise>
        <c:forEach var="name" items="${files}">
            <p>
                ${name} :
                <a href="download.do?filename=${name}">Download</a>
            </p>
        </c:forEach>
    </c:otherwise>
</c:choose>

</body>
</html>
