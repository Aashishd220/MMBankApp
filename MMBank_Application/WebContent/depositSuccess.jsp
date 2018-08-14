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
<script>
	window.history.forward(1);
</script>
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div >
	<jstl:if test="${sessionScope.viewcustd != null }">
<div  >
<header >
	<h5 style="color:black ;">Transaction Successful</h5>
</header>
	
<table >
  <thead>
    <tr>
      <th scope="col">CustomerID</th>
      <th scope="col">CustomerName</th>
      <th scope="col">AccountNumber</th>
      <th scope="col">Email ID</th>
      <th scope="col">Updated Balance</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>${sessionScope.viewcustd.accountHolder.customerId}</td>
      <td>${sessionScope.viewcustd.accountHolder.customerName}</td>
      <td>${sessionScope.viewcustd.accountNumber}</td>
      <td>${sessionScope.viewcustd.accountHolder.emailId}</td> 
     	<td>${sessionScope.viewcustd.accountBalance}</td>
    </tr></tbody>
</table>
</div></jstl:if>
<jstl:if test="${sessionScope.viewcustd == null }">
<div  >
<header>
	<h5  style="color:black;text-align: center;">Customer Not Found</h5>
</header></div>
</jstl:if>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>