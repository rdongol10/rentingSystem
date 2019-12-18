<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="<c:url value="/resources/css/datatables.css" />" rel="stylesheet">
	<title>User List</title>
</head>
<body>
	<div class="dashboard-main-wrapper">

		<%@ include file="menu.jsp" %>  
	
	    <div class="dashboard-wrapper">
			<div class="container-fluid dashboard-content ">
			
				<div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						 
						<div class="card ">
							<div class="card-header">
						 		<div class="row">
				                    <h2 class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9 topCardHeader">
					 				
						 				User Lists
						 				
									</h2>
									
				                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
										
								        <a href="${contextPath}/addUser" class="btn btn-success topAddButton" >
									    	<i class="fas fa-plus"></i>  &nbsp; Add User
										</a>
										
									</div>
								</div>
						 	</div>
							<div class="card-body">
								
								<div class="">
									
									<table class="table table-striped table-bordered first" id="userTable">
										<thead>
											<tr>
											    <th>User Name</th>
											    <th>First Name</th>
											    <th>Middle Name</th>
											    <th>Last Name</th>
											    <th>Sex</th>
											    <th>Phone Number</th>
		 									    <th>Email Address</th>
											    <th>Type of User</th>
											    <th>Action</th>
											</tr>
										</thead>
											
										<tbody>
											<c:forEach var="user" items="${users}">
												<tr>									
													<td>
														<c:out value="${user.loginName}"/>
													</td>
													<td>
														<c:out value="${user.firstName}"/>
													</td>
													<td>
														<c:out value="${user.middleName}"/>
													</td>
													<td>
														<c:out value="${user.lastName}"/>
													</td>
													<td>
														
														<c:choose>
															<c:when test="${user.sex==1}">
																Male 
															</c:when>    
															
															<c:when test="${user.sex==2}">
																Female 
															</c:when>   
															<c:when test="${user.sex==3}">
																Others 
															</c:when>   
															<c:otherwise>
																<c:out value="${user.sex}"></c:out>
															</c:otherwise>
														</c:choose>
													</td>
													<td>
														<c:out value="${user.phoneNumber}"/>
													</td>
													<td>
														<c:out value="${user.emailAddress}"/>
													</td>
													<td>
													
														<c:choose>
															<c:when test="${user.typeOfUser==1}">
																Admin 
															</c:when>    
															<c:otherwise>
																<c:out value="${user.typeOfUser}"/>
															</c:otherwise>
														</c:choose>
													</td>
													<td>
													
														<a href="${contextPath}/updateUser/<c:out value='${user.id}'/>" class="btn btn-primary btn-sm" >
															  Edit&nbsp;<i class="fas fa-edit"></i>
														</a>&nbsp;
														<a href="${contextPath}/deleteUser/<c:out value='${user.id}'/>" class="btn btn-danger btn-sm" >
															Delete&nbsp;<i class="fas fa-trash-alt"></i>
														</a>
												
													</td>
												</tr>	
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>	
		</div>	
	</div>
</body>

<script src="<c:url value="/resources/js/datatables.js" />" ></script>

<script>
	jQuery(document).ready(function(){
		jQuery("#userTable").DataTable();
		
	})
</script>
</html>