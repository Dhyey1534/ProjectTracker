<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Status</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Update Status</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Update Status</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						
						<!-- Reports -->
						<div class="col-16">
							<div class="card">

								

								<div class="card-body">
									<h5 class="card-title">
										Update Status
									</h5>

									<form action="updatestatus" method="post">
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Project Status</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="status" placeholder="Status" name="statusName" value="${status.statusName}">
										    </div>
										</div>
										<br>
										<input type="hidden" name="statusId" value="${status.statusId}">
										<div class="card-footer">
						                  <button type="submit" class="btn btn-primary">Update Status</button>
						                </div>
										
									</form>
								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- main content end  -->

		
		<jsp:include page="AdminJS.jsp"></jsp:include>
	
	
</body>
</html>