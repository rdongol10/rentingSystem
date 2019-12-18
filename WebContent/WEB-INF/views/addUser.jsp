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
	    
			<c:choose>
				<c:when test="${empty user}">
				      <c:set var = "mode" value = "insertUser"/>
				</c:when>
				<c:otherwise>
				      <c:set var = "mode" value = "editUser"/>
				</c:otherwise>
			</c:choose>
			
			
			<div class="container-fluid dashboard-content ">
				<div class="row">
					<div class="col-xl-10">
						
						<!--====================================== --> 
						<!--  Ueer Form-->						
                        <!-- ===================================== -->
                        <div class="row">
                        	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        		<div class="card">
                        		
	                        		<div class="card-header">
								 		<div class="row">
								 			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							                    <h2 class=" pageheader-title">
									 				<c:choose>
									 					<c:when test="${mode == 'insertUser' }">
									 						Add User
									 					</c:when>
									 					<c:otherwise>
									 						Edit User
									 					</c:otherwise>
									 				</c:choose>
									 				
												</h2>
												<p class="pageheader-text">Please fill all the required fields(<span class="requiredField">*</span>) to add the user</p>
								 			</div>
											
										</div>
								 	</div>
								 	
                        			<div class="card-body">
                        				<c:choose>
                        					<c:when test="${mode == 'insertUser' }">
										    	<c:set var = "action" value = "insertUser"/>
                        					</c:when>
                        					<c:otherwise>
           								      <c:set var = "action" value = "../editUser"/>
                        					</c:otherwise>
                        				</c:choose>
                        				<form action='<c:out value="${action}"></c:out>' method="post" id="userForm">
                        					<input name="id" value='<c:out value="${user.id}"></c:out>' style ="display:none">
                        					<div class="row">
	                        					<div class="form-group col-xl-5 col-lg-5 col-md-5 col-sm-5 col-5">
	                                                <label for="firstName" class="col-form-label">First Name<span class="requiredField">*</span></label>
	                                                <input id="firstName" name="firstName" type="text" class="form-control requiredInputs" value='<c:out value="${user.firstName}"></c:out>'>
													<div class="errorFeedback" id="firstName-errorFeedback"> 
														
													</div>
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
	                                                <label for="middleName" class="col-form-label">Middle Name</label>
	                                                <input id="middleName" name="middleName" type="text" class="form-control required"  value='<c:out value="${user.middleName}"></c:out>'>
	                                            	<div class="errorFeedback" id="middleName-errorFeedback">
														
													</div>
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-5 col-lg-5 col-md-5 col-sm-5 col-5">
	                                                <label for="lastName" class="col-form-label">Last Name<span class="requiredField">*</span></label>
	                                                <input id="lastName" type="text" name="lastName" class="form-control requiredInputs"  value='<c:out value="${user.lastName}"></c:out>'>
	                                            	<div class="errorFeedback" id="lastName-errorFeedback">
														
													</div>
	                                            </div>
                        					
                        					</div>
                        			
                        					<div class="row">
                        						<div class="form-group col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
	                                                <label for="phoneNumber" class="col-form-label"><span class="requiredField">*</span>Phone Number</label>
	                                                <input id="phoneNumber" name="phoneNumber" type="text" class="form-control phonenumber-inputmask requiredInputs"  value='<c:out value="${user.phoneNumber}"></c:out>'>
	                                           		<div class="errorFeedback" id="phoneNumber-errorFeedback">
														
													</div>
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
	                                                <label for="email" class="col-form-label">Email Address</label>
	                                                <input id="email" name="email" type="text" class="form-control email-inputmask"  value='<c:out value="${user.emailAddress}"></c:out>'>
	                                                <div class="errorFeedback" id="email-errorFeedback">
														
													</div>
	                                            </div>
	                                            
	                                            <div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
													<label for="sex" class="col-form-label">Sex</label>
													<select class="form-control" id="sex" name="sex">
														<option value="1" ${user.sex == 1 ? 'selected' : '' }>Male</option>
														<option value="2" ${user.sex == 2 ? 'selected' : '' }>Female</option>
														<option value="3" ${user.sex == 3 ? 'selected' : '' }>Others</option>
													</select>
													<div class="errorFeedback" id="sex-errorFeedback">
														
													</div>
	                                            </div>
                        					
                        						<div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
													<label for="typeOfUser" class="col-form-label">Type of User</label>
													<select class="form-control" id="typeOfUser" name="typeOfUser">
														<option value="1" ${user.typeOfUser == 1 ? 'selected' : '' }>Admin</option>
													</select>
													<div class="errorFeedback" id="typeOfUser-errorFeedback">
														
													</div>
	                                            </div>
                        					</div>
                        					
											<div class="row">
												<div class="form-group col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
	                                                <label for="userName" class="col-form-label">User Name<span class="requiredField">*</span></label>
	                                                <input id="userName" type="text" class="form-control requiredInputs" name="userName"  value='<c:out value="${user.loginName}"></c:out>'>
	                                                <div class="errorFeedback" id="userName-errorFeedback">
														
													</div>
	                                            </div>
											</div>
											
											<div class="row passwordRow">
												<div class="form-group col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
	                                                <label for="password" class="col-form-label">Password<span class="requiredField">*</span></label>
	                                                <input id="password" type="password" class="form-control requiredInputs" name="password">
	                                                <div class="errorFeedback" id="password-errorFeedback">
														
													</div>
	                                            </div>
											</div>
											
											<div class="row passwordRow">
												<div class="form-group col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
	                                                <label for="rePassword" class="col-form-label">Re-enter Password<span class="requiredField">*</span></label>
	                                                <input id="rePassword" type="password" class="form-control requiredInputs" name="rePassword">
	                                                <div class="errorFeedback" id="rePassword-errorFeedback">
														
													</div>
	                                            </div>
											</div>
											<br>
											<div class="row">
												<div class="form-group col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
													<button class="btn btn-primary" id="addUser">
														<c:choose>
									 					<c:when test="${mode == 'insertUser' }">
									 						Add User
									 					</c:when>
									 					<c:otherwise>
									 						Update User
									 					</c:otherwise>
									 				</c:choose>
													</button>
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

<script src="<c:url value="/resources/js/jquery.inputmask.bundle.js" />" ></script>
<script src="<c:url value="/resources/js/inputmask.js" />" ></script>

<script>

	
	var errorFields = []
	var mode = '${mode}'
	console.log(mode)
	jQuery(document).ready(function() {

		if(mode == "editUser"){
		
			jQuery("#userName").attr("disabled","disabled");
			jQuery(".passwordRow").hide();
			
		}
		
		jQuery(".form-control").on("focus",function(){
			var id = jQuery(this).attr("id");	
			jQuery(this).css("border-color","");
			jQuery("#"+id+"-errorFeedback").html("");
		})
			
		jQuery("#addUser").on("click", function(event) {
			event.preventDefault()

			if (validateInputs()) {
				jQuery("#userForm").submit()
			} else {
				highlightErrorFields()
			}

		});

	});

	function validateInputs() {

		if(!validateRequiredFields()){
			return false;
		}
		
		if(!validateOtherFields()){
			return false;
		}
		
		return true;
	}

	function validateRequiredFields() {
		errorFields = []
		jQuery(".requiredInputs:visible").each(function() {
			var errorField = {};

			if (this.value.trim() == "") {
				errorField.id = jQuery(this).attr("id");
				errorField.message = "Required field connot be empty";
				errorFields.push(errorField)
			}

		})

		return !errorFields.length > 0

	}
	
	function validateOtherFields(){
		errorFields = []
		validatePhoneNumber();
		
		if(mode == "insertUser"){
			
			validatePasswords();
			doesUserNameExists();

		}
		
		return !errorFields.length > 0;
	}
	
	function validatePasswords(){
		var password=jQuery("#password").val();
		var repassword=jQuery("#rePassword").val()
		if(password!=repassword){
			var errorField = {};
			errorField.id = "rePassword"
			errorField.message = "Passwords did not match ";
			errorFields.push(errorField)
		}

	}

	
	function validatePhoneNumber() {
		if(!/^[0-9]{10}$/.test(jQuery("#phoneNumber").val())){
			var errorField = {};
			errorField.id = "phoneNumber"
			errorField.message = "Phone Number should be of 10 digits";
			errorFields.push(errorField)
		}

	}
	
	function validateUserName(){
		
		if(doesUserNameExists()){
			errorField.id = "userName"
			errorField.message = "User Name already exists";
			errorFields.push(errorField)
		}
	}
	function highlightErrorFields() {
		if (errorFields.length < 1) {
			return;
		}

		errorFields.forEach(function(value, index) {
			var id = value.id;
			var message = value.message
			jQuery("#" + id).css("border-color", "red");
			jQuery("#" + id + "-errorFeedback").html(message)
		})
	}
	
	function doesUserNameExists(){
		var userName=jQuery("#userName").val()
		jQuery.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/userNameExists",
			async: false,
			data:{
				username :userName
			},error:function(data){
				console.log("error")
			},success:function(data){
				var results = jQuery.parseJSON(data)
				if( results.UserExists == "true"){
					var errorField = {};
					errorField.id = "userName"
					errorField.message = "User Name already exists";
					errorFields.push(errorField)
				}
			}
			
		});
		
	}
</script>
</html>