<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
<jsp:include page="DevHeader.jsp"></jsp:include>
		<jsp:include page="DevSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Task</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">task</li>
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
										Task
									</h5>

															
							
								
											<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Project</label>
							                  <div class="col-sm-10">
							                   ${project.title}
							                    
							                  </div>
							                </div>
											<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Project Module</label>
							                  <div class="col-sm-10">
							                    ${projectModule.moduleName}
							                  </div>
							                </div>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Title</label>
										    <div class="col-sm-10">
										        ${task.taskTitle}
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Priority</label>
										    <div class="col-sm-10">
										        ${task.priority}
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Description</label>
										    <div class="col-sm-10">
										       ${task.description}
										    </div>
										</div>
										<br>
										<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Status</label>
							                  <div class="col-sm-10">
							                    ${status.statusName}
							                      
							                      
							                  </div>
							                </div>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Total Minutes</label>
										    <div class="col-sm-10">
										        ${task.totalMinutes}
										    </div>
										</div>
										
									
									
								
														
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