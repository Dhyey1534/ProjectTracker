<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Task</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Update Task</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Update task</li>
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
										Update Task
									</h5>

															
							
								<form action="updatetask" method="post">
											<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Project</label>
							                  <div class="col-sm-10">
							                    <select class="form-select" aria-label="Default select example" name="projectId" value="${task.projectId}">
							                      
							                      <c:forEach items="${project}" var="a">
														<option value="${a.projectId}">${a.title}</option>
													</c:forEach>
							                    </select>
							                  </div>
							                </div>
											<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Project Module</label>
							                  <div class="col-sm-10">
							                    <select class="form-select" aria-label="Default select example" name="moduleId" value="${task.moduleId}">
							                      
							                      <c:forEach items="${projectModule}" var="b">
														<option value="${b.moduleId}">${b.moduleName}</option>
													</c:forEach>
							                    </select>
							                  </div>
							                </div>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Title</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="title" placeholder="Title" name="taskTitle"  value="${task.taskTitle}">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Priority</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="priority" placeholder="Priority" name="priority" value="${task.priority}">
										    </div>
										</div>
										<br>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Description</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="description" placeholder="Description" name="description" value="${task.description}">
										    </div>
										</div>
										<br>
										<div class="row mb-3">
							                  <label class="col-sm-2 col-form-label">Status</label>
							                  <div class="col-sm-10">
							                    <select class="form-select" aria-label="Default select example" name="statusId" value="${task.statusId}">
							                      
							                      <c:forEach items="${status}" var="a">
														<option value="${a.statusId}">${a.statusName}</option>
													</c:forEach>
							                    </select>
							                  </div>
							                </div>
										<div class="form-group row">
										    <label for="title" class="col-sm-2 col-form-label">Total Minutes</label>
										    <div class="col-sm-10">
										        <input type="text" class="form-control" id="totalMinutes" placeholder="Total Minutes" name="totalMinutes" value="${task.totalMinutes}">
										    </div>
										</div>
										<input type="hidden" name="taskId" value="${task.taskId}">
									<div class="card-footer">
						                  <button type="submit" class="btn btn-primary">Update Task</button>
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