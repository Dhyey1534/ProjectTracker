<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project List</title>
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
			<h1>Project List</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Project List</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height:500px">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						
						<!-- Reports -->
						<div class="col-16">
							<div class="card">

								

								<div class="card-body">
									<h5 class="card-title">
										Project List
									</h5>

									<table border="1" class="table datatable datatable-table table-hover" id="myTable">
											<thead>
												<tr>
													<th title="Project ID">ID</th>
											        <th title="Title">Title</th>
											        <th title="Description">Desc</th>
											        <th title="Technology">Tech</th>
											        <th title="Estimated Hours">Est. Hours</th>
											        <th title="Start Date">Start</th>
											        <th title="Completion Date">Completion</th>
											        <th title="Action">Action</th>
												</tr>
											</thead>
											<c:forEach items="${projectList}" var="p">
													<tr>
														<td>${p.projectId}</td>
														<td>${p.title}</td>
														<td>${p.description}</td>
														<td>${p.technology}</td>
														<td>${p.estimatedHours}</td>
														<td>${p.startDate}</td>
														<td>${p.completionDate}</td>
														<td><a href="viewproject?projectId=${p.projectId}">View</a> | 
														<a href="deleteproject?projectId=${p.projectId}">Delete</a> | 
														<a href="editproject?projectId=${p.projectId}">Edit</a></td>
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
				            { "title": "ID" },
				            { "title": "Title" },
				            { "title": "Desc" },
				            { "title": "Tech" },
				            { "title": "Est. Hours" },
				            { "title": "Start" },
				            { "title": "Completion" },
				            { "title": "Action" }
				        ]
				    });
				});					
			</script>
	
</body>
</html>