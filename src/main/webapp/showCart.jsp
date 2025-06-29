<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JBM Book store</h1>
<br/>
<h2>Search book</h2>
<br/>
<%Object obj=request.getAttribute("message");
if(obj!=null){%>
<br/>
<font color="blue" size="10"><%=obj %></font>
<br/>
<%}
else{
	obj=session.getAttribute("cart");
	ArrayList<String> bookList=(ArrayList<String>)obj;
	for(String book:bookList){
%>
<form action="removeFromCart.do" method="post">
<%=book%>  <input type="hidden" name="bookName" value="<%=book%>"/>
<input type="submit" value="removeFromCart"/>
</form>
<%} %>
<br/>
<a href="placeOrder.jsp">Place Order</a>
<%} %>
<br/>
<a href="showBooks.jsp">Add to cart</a>
</body>
</html>