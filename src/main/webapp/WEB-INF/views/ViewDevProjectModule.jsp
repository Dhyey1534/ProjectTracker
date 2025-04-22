<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Module</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
		<jsp:include page="DevHeader.jsp"></jsp:include>
		<jsp:include page="DevSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Project Module</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Project Module</li>
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
										Project Module
									</h5>

									
										
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Module Name</label>
											    <div class="col-sm-10">
											        ${projectModule.moduleName}
											    </div>
											</div>
											<br>
											<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Project</label>
							                  <div class="col-sm-10">
							                    ${project.title}
							                      
							                      
														
							                    
							                  </div>
							                </div>
											
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Description</label>
											    <div class="col-sm-10">
											        ${projectModule.description}
											    </div>
											</div><br>
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Estimated Hours :</label>
											    <div class="col-sm-10">
											        ${projectModule.estimatedHours}
											    </div>
											</div><br>
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Status</label>
											    <div class="col-sm-10">
											        ${projectModule.status}
											    </div>
											</div><br>
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Start Date :</label>
											    <div class="col-sm-10">
											        ${projectModule.startDate}
											    </div>
											</div><br>
											
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