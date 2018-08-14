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
<body>
<jsp:include page="header.jsp"></jsp:include>

<div>
<div>
<jstl:if test="${sessionScope.viewcust.size() != 0 }">

<table>
  <thead>
    <tr>
      <th scope="col">Account Number</th>
      <th scope="col">Customer ID</th>
      <th scope="col">Account Type</th>
      <th scope="col">Account Balance</th>
      <th scope="col">Overdraft Limit</th>
      <th scope="col">Salary Account </th>

    </tr>
  </thead>
  <tbody>
   <jstl:forEach var="viewaccount" items="${sessionScope.ViewAccounts}">
    <tr>
      <td>${viewaccount.accountNumber}</td>
      <td>${viewaccount.accountHolder.customerId}</td>
      <td>${viewaccount.accountType}</td>
      <td>${viewaccount.accountBalance}</td> 
      <td>${viewaccount.odLimit}</td>
     <td>${viewaccount.salary}</td>
      
    </tr></jstl:forEach>
  </tbody>
</table></jstl:if> </div></div>
<jstl:if test="${sessionScope.viewcust.size() == 0 }">
<div >
<header>
	<h5 style="color:black;text-align: center;">No account created yet!!</h5>
</header></div>
</jstl:if>
</body></html>