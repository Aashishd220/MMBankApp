<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<jsp:include page="header.jsp"></jsp:include>
<!-- <h1 align="center" style="font-family: fantasy; color: blue;">Welcome To HK Bank</h1> -->
<div align="center">
	<table>
	
		<tr>
			<td><a href="AddNewAccount.jsp"><input type="button" value="Open New Account"></a></td>
		</tr>
		<tr>
			<td><a href="ViewAccounts.app"><input type="button" value="View All Accounts"></a></td>
		</tr>
		<tr>
			<td><a href="viewcust.app"><input type="button" value="View All Customers"></a></td>
		</tr>
		<tr>
			<td><a href="WithdrawForm.jsp"><input type="button" value="Withdraw"></a></td>
		</tr>
		<tr>
			<td><a href="DepositForm.jsp"><input type="button" value="Deposit"></a></td>
		</tr>
		<tr>
			<td><a href="FundTransfer.jsp"><input type="button" value="Fund Transfer"></a></td>
		</tr>
		<tr>
			<td><a href="searchAccount.jsp"><input type="button" value="Search by Account No"></a></td>
		</tr>
	</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>