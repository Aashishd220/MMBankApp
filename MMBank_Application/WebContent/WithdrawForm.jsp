
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Withdrawl</title>
<script>
	window.history.forward(1);
</script>
</head>
<style>
label {
	color: black;
}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div>
		<div>
			<jstl:if test="${sessionScope.viewcust.size() != 0 }">
				<div>
					<div >
						<header >
							<h3 style="text-align: center; color: black;">Withdraw</h3>
						</header>
						<article>
							<form action="withdraw.app">
								<div style="text-align: center;">
									<div>
										<label>Account Number</label> <input type="number"
											placeholder="Enter Account Number" required name="acNo">
									</div>
									<div>
										<br><label>Amount to be Withdrawl</label> <input type="number"
											placeholder="Enter Amount" required name="amt"><br>
									</div>

								</div>

								<div style="text-align: center;">

									<div>
										<br><input type="submit" value="Withdraw"> 
										<input type="reset" value="clear">
										
									</div>
								</div>
							</form>
						</article>
					</div>
				</div>
			</jstl:if>
			<jstl:if test="${sessionScope.viewcust.size() == 0 }">
				<div>
					<header style="background-color: rgba(50, 50, 50, 0.8);">
						<h5 style="color: red; text-align: center;">OOPS!!! Accounts
							not available yet</h5>
					</header>
				</div>
			</jstl:if>
		</div>
	</div>
</body>

</html>