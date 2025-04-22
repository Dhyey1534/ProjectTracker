<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<jsp:include page="DevHeader.jsp"></jsp:include>
		<jsp:include page="DevSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>Task List</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Task List</li>
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
										Task List
									</h5>

															
							
								<table border="1" class="table datatable datatable-table table-hover" id="myTable">
									<thead>
										<tr>
											<th>Task Id</th>
											<th>Module Name</th>
											<th>Title</th>
											<th>Task Title</th>
											<th>Priority</th>
											<th>Description</th>
											<th>Status Name</th>
											<th>Total Minutes</th>
											<th>Action</th>
										</tr>
									</thead>
									
									<c:forEach items="${taskList}" var="t">
											<tr>
												<td>${t.taskId}</td>
												<td>${t.moduleName}</td>
												<td>${t.title}</td>
												<td>${t.taskTitle}</td>
												<td>${t.priority}</td>
												<td>${t.description}</td>
												<td>${t.statusName}</td>
												<td>${t.totalMinutes}</td>
												<td><a href="viewdevtask?tasktId=${t.taskId}">View</a> 
													</td>
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
				            { "title": "Task Id" },
				            { "title": "Module Name" },
				            { "title": "Title" },
				            { "title": "Task Title" },
				            { "title": "Priority" },
				            { "title": "Description" },
				            { "title": "Status Name" },
				            { "title": "Total Minutes" },
				            { "title": "Action"}
				        ]
				    });
				});					
			</script>
</body>
</html>