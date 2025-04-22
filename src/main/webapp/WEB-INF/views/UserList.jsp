<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<title>User List</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<style type="text/css">
	th, td {
	    text-align: left !important; /* Force left alignment */
	    padding-left: 10px; /* Optional: Add some space */
	}
</style>
</head>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
		<main id="main" class="main">

		<div class="pagetitle">
			<h1>User List</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">User List</li>
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
										User List
									</h5>

									<table border="1" class="table datatable datatable-table table-hover" id="myTable">
											<thead>
												<tr>
													<th title="User ID">ID</th>
											        <th title="Name">Name</th>
											        <th title="Email">Email</th>
											        <th title="Contact Number">Contact Num.</th>
											        <th title="Gender">Gender</th>
											        <th title="Role">Role</th>
											        <th title="Created At">Created At</th>
											        <th title ="Status">Status</th>
											        <th title="Action">Action</th>
												</tr>
											</thead>
											<c:forEach items="${users}" var="u">
													<tr>
														<td>${u.userId}</td>
														<td>${u.firstName} ${u.lastName}</td>
														<td>${u.email}</td>
														<td>${u.contactNum}</td>
														<td>${u.gender}</td>
														<td>${u.role}</td>
														<td>${u.createdAt}</td>
														<td>${u.status}</td>
														<td><a href="viewuser?userId=${u.userId}">View</a> | <a href="deleteuser?userId=${u.userId}">Delete</a> |<a href="edituser?userId=${u.userId}">Edit</a> </td>
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
				            { "title": "Name" },
				            { "title": "Email" },
				            { "title": "Contact Num." },
				            { "title": "Gender" },
				            { "title": "Role" },
				            { "title": "Created At" },
				            { "title": "Status" },
				            { "title": "Action" }
				        ]
				    });
				});					
			</script>
</body>
</html>