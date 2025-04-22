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
			<h1>Project Module List</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Project Module List</li>
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
										Project Module List
									</h5>

									<table border="1" class="table datatable datatable-table table-hover" id="myTable">
											<thead>
												<tr>
													<th title="Module Id">ID</th>
													<th title="Project Ttile">Title</th>
													<th title="Module Name">Mod. Name</th>
													<th title="Decription">Desc.</th>
													<th title="Estimated Hours">Est. Hours</th>
													<th title="Status">Status</th>
													<th title="Start Date">Start Date</th>
													<th title="Action">Action</th>
												</tr>
											</thead>
											<c:forEach items="${projectModuleList}" var="pM">
													<tr>
														<td>${pM.moduleId}</td>
														<td>${pM.title}</td>
														<td>${pM.moduleName}</td>
														<td>${pM.description}</td>
														<td>${pM.estimatedHours}</td>
														<td>${pM.status}</td>
														<td>${pM.startDate}</td>
														<td><a href="viewdevprojectmodule?moduleId=${pM.moduleId}">View</a> </td>
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
				            { "title": "Mod. Name" },
				            { "title": "Desc." },
				            { "title": "Est. Hours" },
				            { "title": "Status" },
				            { "title": "Start Date" },
				            { "title": "Action" }
				        ]
				    });
				});					
	</script>
		
</body>
</html>