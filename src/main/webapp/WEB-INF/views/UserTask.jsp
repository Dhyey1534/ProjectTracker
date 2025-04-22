<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Task</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
 	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<main id="main" class="main">
		<div class="pagetitle">
				<h1>User Task</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
						<li class="breadcrumb-item active">User Task</li>
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
											Add User Task
										</h5>
	
										
											<form action="saveusertask" method="post">
												<div class="row mb-3">
									                  <label class="col-sm-2 col-form-label">Project</label>
									                  <div class="col-sm-10">
									                    <select class="form-select" aria-label="Default select example" name="userId">
									                      <option value="">Select User</option>
									                      <c:forEach items="${users}" var="a">
																<option value="${a.userId}">${a.firstName}</option>
															</c:forEach>
									                    </select>
							                  		</div>
							                  	</div>
												<div class="row mb-3">
									                  <label class="col-sm-2 col-form-label">Task</label>
									                  <div class="col-sm-10">
									                    <select class="form-select" aria-label="Default select example" name="taskId">
									                      <option value="">Select Task</option>
									                     <c:forEach items="${task}" var="t">
																<option value="${t.taskId}">${t.taskTitle}</option>
															</c:forEach>
									                    </select>
							                  		</div>
							                  	</div>
												
												
												<div class="card-footer">
							                  <button type="submit" class="btn btn-primary">Add User Task</button>
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