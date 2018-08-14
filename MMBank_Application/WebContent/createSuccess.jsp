<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table thead tr th {
	color:rgb(30,144,255);
}
</style>
<script>
	window.history.forward(1);
</script>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>

<div>
<header style="background-color:white; ">
	<br/>
	<br/>
	<br/>
	<br/>
	<h5 style="color:black; ">Account Successfully created with Account Number: </h5>
	<h1><b style="color:black;">${sessionScope.accNO}</b></h1>
	<br/>
	<br/>
	
	<br/>
	<br/>
	<br/>
	<br/>
</header>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body></html>