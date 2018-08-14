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
	color: rgb(30, 144, 255);
}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div>
		<div>

			<jstl:if test="${sessionScope.viewcust.size() != 0 }">
			<div style="text-align: center;">
				<header >
					<h5 style="color: black;">Enter Account Number</h5>
					<form action="searchCust.app">
						<div>
							<input type="search" id="amt" placeholder="Enter Account Number" required
								name="acS">
							<div>
								<span id="basic-addon2"><input type="submit"
									value="Search" style="border-style: none;"></span>
							</div>
						</div>
					</form>
				</header>
				</div>
			</jstl:if>
			<jstl:if test="${sessionScope.viewcust.size() == 0 }">
				<div>
					<header>
						<h5 style="color: red; text-align: center;">
						Account not created yet</h5>
					</header>
				</div>
			</jstl:if>

		</div>
		<br />
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>