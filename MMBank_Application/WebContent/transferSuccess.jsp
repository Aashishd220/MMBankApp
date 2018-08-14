<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
	window.history.forward(1);
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div  >
<jstl:if test="${sessionScope.transfer == true}">
<div  >
<header>
	<br/>
	<br/>
	<br/>
	<br/>
	<h5  style="margin-left: 35%;color:black; ">Successfully transfered </h5>
	<h3><span style="color:black;margin-left: 20%;text-align: center;"><b style="color:black;">Rs. ${sessionScope.amount}</b>  from Account Number  <b style="color:black;">${sessionScope.sender}</b> to <b style="color:black;">${sessionScope.reciever}</b> </span> </h3>
	
	<h5  style="margin-left:20%;color:black; ">Remarks: ${sessionScope.remarks} </h5>
	<br/>
	
	<br/>
	<br/>
	<br/>
	<br/>
</header>
</div></jstl:if>
<jstl:if test="${sessionScope.transfer == false }">
<div  >
<header >
	<h5  style="color:red;text-align: center;">Customer Not Found</h5>
	<a href="WithdrawForm.jsp" style="margin-left: 38%;text-align: center;" class="btn btn-light btn-lg">Click here to go back</a>
</header></div>
</jstl:if>
</div>
</body>
</html>