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
<div>
	<jstl:if test="${sessionScope.viewcustw != null }">
<div  >
<header>
	<h3 style="color:black;">Transaction Successful</h3>
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
   
      <td>${sessionScope.viewcustw.accountHolder.customerId}</td>
      <td>${sessionScope.viewcustw.accountHolder.customerName}</td>
      <td>${sessionScope.viewcustw.accountNumber}</td>
      <td>${sessionScope.viewcustw.accountHolder.emailId}</td> 
     	<td>${sessionScope.viewcustw.accountBalance}</td>
    </tr></tbody>
</table>

</div></jstl:if>
<jstl:if test="${sessionScope.viewcustw == null }">
<div>
<header>
	<h5  style="color:red;text-align: center;">Customer Not Found or Insufficient Balance</h5>
</header></div>
</jstl:if>
</div>
</body>

</html>