<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Team List</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<style type="text/css">
	th, td {
	    text-align: left !important; /* Force left alignment */
	    padding-left: 10px; /* Optional: Add some space */
	}
</style>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Project Team List</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Project Team List</li>
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
										Project Team List
									</h5>

															
							
								<table border="1" class="table datatable datatable-table table-hover" id="myTable">
									<thead>
										<tr>
											<th>Project Team Id</th>
											<th>Project Name</th>
											<th>User Name</th>
											<th>Action</th>
										</tr>
									</thead>
									<c:forEach items="${projectTeamList}" var="pM">
											<tr>
												<td>${pM.projectTeamId}</td>
												<td>${pM.title}</td>
												<td>${pM.firstName}</td>
												<td><a href="viewprojectteam?projectTeamId=${pM.projectTeamId}">View</a> | 
													<a href="deleteprojectteam?projectTeamId=${pM.projectTeamId}">Delete</a> | 
													<a href="editprojectteam?projectTeamId=${pM.projectTeamId}">Edit</a> </td>
											</tr>
									</c:forEach>
								</table>
														
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
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
				$( document ).ready(function() {
					$('#myTable').DataTable({
				        "columns": [
				            { "title": "Project Team Id" },
				            { "title": "Project Name" },
				            { "title": "User Name" },
				            { "title": "Action" }
				        ]
				    });
				});					
			</script>
</body>
</html>