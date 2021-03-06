<%@ include file="schoolheader.jsp"%>

<div class="container-fluid pt-3">
	<div class="row justify-content-sm-center">
		<%@ include file="schoolsidenavbar.jsp"%>
		<div class="col-sm-9 col-md-9">
			<div class="card border-info text-center">
				<div class="card-header bg-info text-white">
					<span class="form-Heading">Send Admission Link</span>
				</div>
				<div class="card-body">
					<form class="form-signin" action="WebSendAdmissionLink"
						method="post">
						<div class="container-fluid">
							<div class="row justify-content-sm-center">
								<div class="col-sm-6 col-md-6">
									<input type="email" class="form-control mb-2"
										placeholder="Email Id" name="emailId" required autofocus>
								</div>
								<div class="col-sm-6 col-md-6">
									<input type="text" class="form-control mb-2"
										placeholder="Mobile Number" name="mobileNumber" required
										autofocus>
								</div>
								<div class="col-sm-6 col-md-6">
									<button class="btn btn-lg btn-info btn-block mb-1 mt-1"
										type="submit">Send</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<br>
<br>
<br>

<%@ include file="schoolfooter.jsp"%>