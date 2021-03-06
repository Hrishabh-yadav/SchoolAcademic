<%@ include file="teacherheader.jsp"%>
<c:set var="classes" value="${requestScope.classes}" scope="page" />
<div class="container-fluid">
	<div class="row">
		<%@ include file="teachersidenavbar.jsp"%>
		<div class="col-md-9 mt-3">
			<div class="card border-info text-center">
				<div class="card-header bg-info text-white">
						<span class="form-Heading"> Select Class And Section</span>
				</div>
				<div class="card-body">
						<form class="form-signin" action="WebTakeAttendance1" method="post">
							<div class="container-fluid">
								<div class="row justify-content-sm-center">
									<div class="col-sm-6 col-md-6">
										<select name="classId" class="form-control mb-2 company1"
											onchange="user1_change()">
											<option selected disabled="disabled">Select Class</option>
											<c:forEach var="class1" items="${classes}"
												varStatus="counter">
												<option value="${class1[0]}">${class1[1]}</option>
											</c:forEach>
										</select>
									</div>

									<div class="col-sm-6 col-md-6">
										<select class="form-control mb-2 company11" name="sectionId">
											<option selected="selected">Select Section</option>
										</select>
									</div>
									<div class="col-sm-6 col-md-4 col-offset-4">
										<button class="btn btn-lg btn-info btn-block mb-2"
											type="submit">Select</button>
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

<%@ include file="teacherfooter.jsp"%>

<script>
	function user1_change() {

		var user1 = $(".company1").val();

		$.ajax({
			type : "Get",
			url : "WebGetSection",
			data : "user_id=" + user1,
			cache : false,
			success : function(response) {
				$(".company11").html(response);
			}
		});
	}
</script>