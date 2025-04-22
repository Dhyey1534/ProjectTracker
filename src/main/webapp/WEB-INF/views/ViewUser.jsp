<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSidebar.jsp"></jsp:include>

		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Edit User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">User</li>
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
						<div class="col-12">
							<div class="card">

								

								<div class="card-body">
									<h5 class="card-title">
										User
									</h5>

									
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Name</label>
										    <div class="col-sm-10">
										        ${user.firstName}  ${user.lastName}
										    </div>
										</div>
										
										<br>
										<div class="form-group row">
										    <label for="technology" class="col-sm-2 col-form-label">Email</label>
										    <div class="col-sm-10">
										        ${user.email}
										    </div>
										</div>
										<br>
										
										<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Gender</label>
							                  <div class="col-sm-10">
							                    ${user.gender }
							                  </div>
							                </div>
										<div class="form-group row">
										    <label for="completionDate" class="col-sm-2 col-form-label">Contact Numb</label>
										    <div class="col-sm-10">
										        ${user.contactNum }
										    </div>
										</div>
										<br>
										

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
=

<jsp:include page="AdminJS.jsp"></jsp:include>
		
</body>
</html>