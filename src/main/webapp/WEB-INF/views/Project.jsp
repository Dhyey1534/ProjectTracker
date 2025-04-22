<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Add Project</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Add Project</li>
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
										Add Project
									</h5>

									<form action="saveproject" method="post">
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Title</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="title" placeholder="Title" name="title">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="description" class="col-sm-2 col-form-label">Description</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="description" placeholder="Description" name="description">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="technology" class="col-sm-2 col-form-label">Technology</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="technology" placeholder="Technology" name="technology">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="estimatedHours" class="col-sm-2 col-form-label">Estimated Hours</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="estimatedHours" placeholder="Estimated Hours" name="estimatedHours">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="startDate" class="col-sm-2 col-form-label">Start Date</label>
										    <div class="col-sm-10">
										        <input type="date" class="form-control" id="startDate" placeholder="Start Date" name="startDate">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="completionDate" class="col-sm-2 col-form-label">Completion Date</label>
										    <div class="col-sm-10">
										        <input type="date" class="form-control" id="completionDate" placeholder="Completion Date" name="completionDate">
										    </div>
										</div><br>
										
										<div class="card-footer">
						                  <button type="submit" class="btn btn-primary">Add Project</button>
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

