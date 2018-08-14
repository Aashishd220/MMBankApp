
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Deposit</title>
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
							<h3 style="text-align: center; color: black;">Deopsit</h3>
						</header>
						<article>
						<div style="text-align: center;">
							<form action="deposit.app" >
								<div>
									<div>
										<label>Account Number:</label> <input type="number"
											class="form-control" placeholder="Enter Account Number"
											required name="acNO">
									</div>
									<div>
										<label>Amount to be Deposited:</label> <input type="number"
											class="form-control" placeholder="Enter Amount" required
											name="amt">
									</div>
								</div>
								<div>
									<div>
										<input type="submit" value="Deposit" class="btn btn-primary ">
										<input type="reset" value="Clear" class="btn btn-light">
									</div>
								</div>
							</form>
							</div>
						</article>
					</div>
				</div>
			</jstl:if>
			<jstl:if test="${sessionScope.viewcust.size() == 0 }">
				<div>
					<header >
						<h5 style="color: red; text-align: center;">Account not available yet</h5>
					</header>
				</div>
			</jstl:if>
		</div>


	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>