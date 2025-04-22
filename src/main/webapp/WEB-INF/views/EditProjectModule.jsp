<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Project Module</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Update Project Module</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Update project Module</li>
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
										Update Project Module
									</h5>

									
										<form action="updateprojectmodule" method="post">
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Module Name</label>
											    <div class="col-sm-10">
											        <input type="text" class="form-control" id="title" placeholder="Title" name="moduleName" value="${projectModule.moduleName}">
											    </div>
											</div>
											<br>
											<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Project</label>
							                  <div class="col-sm-10">
							                    <select class="form-select" aria-label="Default select example" name="projectId" value="${projectModule.projectId}">
							                      
							                      
														<c:forEach items="${allProject}" var="a">
															<option value="${a.projectId}">${a.title}</option>
														</c:forEach>
							                    </select>
							                  </div>
							                </div>
											
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Description</label>
											    <div class="col-sm-10">
											        <input type="text" class="form-control" id="title" placeholder="Title" name="description" value="${projectModule.description}" >
											    </div>
											</div><br>
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Estimated Hours :</label>
											    <div class="col-sm-10">
											        <input type="text" class="form-control" id="title" placeholder="Title" name="estimatedHours" value="${projectModule.estimatedHours}">
											    </div>
											</div><br>
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Status</label>
											    <div class="col-sm-10">
											        <input type="text" class="form-control" id="title" placeholder="Title" name="status" value="${projectModule.status}">
											    </div>
											</div><br>
											<div class="form-group row">
											    <label for="title" class="col-sm-2 col-form-label">Start Date :</label>
											    <div class="col-sm-10">
											        <input type="text" class="form-control" id="startDate" name="startDate" value="${projectModule.startDate}">
											    </div>
											</div><br>
											<input type="hidden" name="moduleId" value="${projectModule.moduleId}">
											<div class="card-footer">
						                  <button type="submit" class="btn btn-primary">Update Project Module</button>
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