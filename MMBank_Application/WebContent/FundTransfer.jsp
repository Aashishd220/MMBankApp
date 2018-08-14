
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Fund Transfer</title>

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
					<div>
						<header>
							<h3 style="text-align: center; color: black;">Fund Transfer</h3>
						</header>
						<article>
							<form action="fundtransfer.app">
									<div style="text-align: center;">
								<div>
									<div>
										<label>Sender Account Number</label> <input type="number"
											class="form-control" placeholder="Enter Account Number"
											required name="sender"><br>
									</div>
									<div>
										<label>Reciever Account Number</label> <input type="number"
											class="form-control" placeholder="Account Number" required
											name="reciever"><br>
									</div>

								</div>
								<div>
									<div>
										<label>Amount to be transferd Number</label> <input
											type="number" class="form-control" placeholder="Enter Amount"
											required name="amt"><br>
									</div>
									<div>
										<label>Remarks</label> <input type="text" class="form-control"
											placeholder="Enter Remarks" required name="remarks"><br>
									</div>
								</div>
								<div>
									<div>
										<br><input type="submit" value="Transfer" class="btn btn-primary ">
										<input type="reset" value="clear" class="btn btn-light"><br>
									</div>
								</div>
								</div>
							</form>
						</article>
					</div>
				</div>
			</jstl:if>
			<jstl:if test="${sessionScope.viewcust.size() == 0 }">
				<div>
					<header>
						<h5 style="color: black; text-align: center;">OOPS!!! Accounts
							not available yet</h5>
					</header>
				</div>
			</jstl:if>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>