<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add User</title>
	<link href="<c:url value="/resources/css/inputmask.css" />" rel="stylesheet">
</head>
<body>
	<div class="dashboard-main-wrapper">
		<%@ include file="menu.jsp" %>  
	
	    <div class="dashboard-wrapper">
			<div class="container-fluid dashboard-content ">
				<div class="row">
					<div class="col-xl-10">
						
						<!-- ============================================================== -->
                        <!-- pageheader  -->
                        <!-- ============================================================== -->
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
								<div class="page-header" id="top">
									<h2 class="pageheader-title">Add User</h2>
									<p class="pageheader-text">Please fill all the required fields(*) to add the user</p>
								</div>
							</div>
						</div>
						
						<!-- ============================================================== -->
                        <!-- end pageheader  -->
                        <!-- ============================================================== -->
						
						
						<!--====================================== --> 
						<!--  Ueer Form-->						
                        <!-- ===================================== -->
                        <div class="row">
                        	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        		<div class="card">
                        			<div class="card-body">
                        			
                        				<form action="insertTest" method="post" id="userForm">
                        				
                        					<div class="row">
	                        					<div class="form-group col-xl-5 col-lg-5 col-md-5 col-sm-5 col-5">
	                                                <label for="firstName" class="col-form-label">First Name*</label>
	                                                <input id="firstName" name="firstName" type="text" class="form-control">
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
	                                                <label for="middleName" class="col-form-label">Middle Name</label>
	                                                <input id="middleName" name="middleName" type="text" class="form-control">
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-5 col-lg-5 col-md-5 col-sm-5 col-5">
	                                                <label for="lastName" class="col-form-label">Last Name*</label>
	                                                <input id="lastName" type="text" name="lastName" class="form-control">
	                                            </div>
                        					
                        					</div>
                        			
                        					<div class="row">
                        						<div class="form-group col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
	                                                <label for="phoneNumber" class="col-form-label">Phone Number</label>
	                                                <input id="phoneNumber" name="phoneNumber" type="text" class="form-control">
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
	                                                <label for="email" class="col-form-label">Email Address</label>
	                                                <input id="email" name="email" type="text" class="form-control">
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
													<label for="sex" class="col-form-label">Sex</label>
													<select class="form-control" id="sex" name="sex">
														<option value="1">Male</option>
														<option value="2">Female</option>
														<option value="3">Others</option>
													</select>
	                                            </div>
                        					
                        						<div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
													<label for="typeOfUser" class="col-form-label">Type of User</label>
													<select class="form-control" id="typeOfUser" name="typeOfUser">
														<option value="1">Admin</option>
													</select>
	                                            </div>
                        					</div>
                        					
											<div class="row">
												<div class="form-group col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
	                                                <label for="userName" class="col-form-label">User Name*</label>
	                                                <input id="userName" type="text" class="form-control" name="userName">
	                                            </div>
											</div>
											
											<div class="row">
												<div class="form-group col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
	                                                <label for="password" class="col-form-label">Password*</label>
	                                                <input id="password" type="password" class="form-control" name="password">
	                                            </div>
											</div>
											
											<div class="row">
												<div class="form-group col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
	                                                <label for="rePassword" class="col-form-label">Re-enter Password*</label>
	                                                <input id="rePassword" type="password" class="form-control" name="rePassword">
	                                            </div>
											</div>
											<br>
											<div class="row">
												<div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
													<button class="btn btn-primary">Add User</button>
												</div>	
											</div>
                        			
                        				</form>
                        			</div>
                        		</div>
                        	</div>
						</div>						
						
						<!--====================================== --> 
						<!--  end Ueer Form-->						
                        <!-- ===================================== -->
					</div>
				</div>

			</div>	
		</div>	
	</div>
</body>

<script src="<c:url value="/resources/css/inputmask.css" />" ></script>

</html>