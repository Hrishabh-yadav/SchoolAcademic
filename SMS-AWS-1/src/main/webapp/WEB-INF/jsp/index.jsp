<%@ include file = "header.jsp" %>


	
	
	<br>
	<br>
	<br>
	<div class="container pt-3">
		<div class="row justify-content-sm-center">
			<div class="col-sm-6 col-md-5">

				<div class="card border-info text-center">
					<div class="card-header bg-info text-white">
						<span class="form-Heading">Login</span>
					</div>
					<div class="card-body">
						<form  method="post" action="WebLogin">
							<input type="text" class="form-control mb-2"
								placeholder="Email or Mobile Number or Username" name="username" required
								autofocus> <input type="password"
								class="form-control mb-2" placeholder="Password" name="password" required>
							<button class="btn btn-lg btn-info btn-block mb-1" type="submit">Login</button>
							<label class="checkbox float-left"> <input
								type="checkbox" value="remember-me"> Remember me
							</label> <a href="#" class="float-right">Need help?</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>

<%@ include file = "footer.jsp" %>
	
