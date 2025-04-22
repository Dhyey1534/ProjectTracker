<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
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
					<li class="breadcrumb-item active">Edit User</li>
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
										Update User
									</h5>

									<form action="updateuser" method="post">
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">First Name</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="firstName" placeholder="First Name" name="firstName" value="${user.firstName}">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="description" class="col-sm-2 col-form-label">Last Name</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="last Name" value="${user.lastName}">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="technology" class="col-sm-2 col-form-label">Email</label>
										    <div class="col-sm-10">
										        <input type="email" class="form-control" id="email" placeholder="Email" name="email" value="${user.email}">
										    </div>
										</div>
										<br>
										
										<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Gender</label>
							                  <div class="col-sm-10">
							                    <select class="form-select" aria-label="Default select example" name="gender" value="${user.gender }">
							                      <option value="">Select Gender</option>
							                      <option value="male">Male</option>
										            <option value="female">Female</option>
										            <option value="other">Other</option>
							                    </select>
							                  </div>
							                </div>
										<div class="form-group row">
										    <label for="completionDate" class="col-sm-2 col-form-label">Contact Numb</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" placeholder="Mobile No." pattern="[0-9]{10}" required name="contactNum" value="${user.contactNum }">
										    </div>
										</div>
										<br>
										<input type="hidden" name="userId" value="${user.userId}">
										<input type="hidden" name="password" value="${user.password}">
										<div class="card-footer">
						                  <button type="submit" class="btn btn-primary">Update User</button>
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
=

<jsp:include page="AdminJS.jsp"></jsp:include>
		
</body>
</html>