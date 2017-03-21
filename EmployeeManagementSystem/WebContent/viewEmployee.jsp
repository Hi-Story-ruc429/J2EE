<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Employee</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	
	<link href="toastr/toastr.css" rel="stylesheet"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">
    
		<%@ include file="header.jsp" %>
		<div id="page-wrapper">
		
		<!-- Modal -->
				  <div class="modal fade" id="deleteModal" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <h4 class="modal-title">Delete <i class="fa fa-trash-o" aria-hidden="true"></i></h4>
				        </div>
				        <div class="modal-body">
				          <p>Are you sure?</p>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-danger" onClick="cmdDelete()">Yes</button>
				          <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
				        </div>
				      </div>
				      
				    </div>
				  </div>
		
			<form action = "EditEmployeeManager" id="empForm" name="empForm" method="get">
            <div class="container-fluid">
		
				<!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">
                            Employee Detail
                        </h3>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-user"></i> <a href="EmployeeServlet">Employee</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-user-circle"></i> View Employee
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="col-md-6">
                
                <div class="panel-group">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                       Employee Info
                      </div>
                      
                      <div class="panel-body">
                      
                      <div class="col-md-4">
  							<br/>
  							<img src="pics/icon.png" class="img-thumbnail" alt="Cinque Terre" width="550" height="750"> 
							<br/><br/>
							<button type="button" class="btn btn-primary btn-xs">Upload photo</button>
                      </div>
                      
                      <div class="col-md-8">
                       <c:forEach items="${getEmployee}" var="p">
                      	
							
	                          <div class="form-group">
	                          	 <div class="row">
	                          	 <div class="col-xs-7">
		                         <label>ID No.</label>
		                         <input class="form-control requiredField" name="idNo" id="idDiv" value="${p.empId}" readonly>
		                         </div></div>
		                        
	                  		  </div>
	                  		  
	                  		  <div class="form-group">
	                  		  	<div class="row">
	                  		  	<div class="col-xs-9">
		                         <label>Job Title</label>
		                         <input class="form-control requiredField" name="jobTitle" value="${p.jobTitle}" id="jobTitleDiv" readonly>
		                         </div></div>
	                  		  </div>
	                  		  
	                  		  <div class="form-group">
		                         <label>Department</label>
		                         <select class="form-control" id="department" name="deptNo">
		                          <c:forEach items="${getAllDepartment}" var="e">
								    <option value="${e.deptNo}" ${e.deptNo == p.deptNo ? 'selected="selected"' : ''}> ${e.deptName}</option>
								  </c:forEach>
								  </select>
	                  		  </div>
                      </c:forEach>
                      </div>
                      
                      </div>
                    </div>
               </div>
               
               
               <div class="panel panel-default">
				  <div class="panel-heading">Contact Info</div>
				  <div class="panel-body">
				  <c:forEach items="${getEmployee}" var="p">
				  	
	                  <div class="form-group">
	                  	   <div class="col-xs-7">
		                   <label>Contact No.</label>
		                   <input class="form-control requiredField" value="${p.contactNo}" id="contactNoDiv" name="contactNo" readonly>
		                   </div>
	           		  </div>
	           		  <br/><br/><br/><br/>
	           		  <div class="form-group">
	                  	   <div class="col-xs-6">
		                   <label>Email</label>
		                   <input class="form-control requiredField" value="${p.email}" id="emailDiv" name="email" readonly>
		                   </div>
	           		  </div>
			
				  	</c:forEach>
				  </div>
				</div>
                
                </div>
                
                <div class="col-md-6">
                
                	<div class="panel-group">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        Basic Info  
                      </div>
                      <div class="panel-body">
                      
	                      <div class="col-md-12">
	                      <c:forEach items="${getEmployee}" var="p">
							
								
		                          <div class="form-group">
			                         <label>Last Name</label>
			                         <input class="form-control requiredField" value="${p.lastName}" id="lastNameDiv" name= "lastName"readonly>
		                  		  </div>
		                  		  
		                  		  <div class="form-group">
			                         <label>First Name</label>
			                         <input class="form-control requiredField" value="${p.firstName}" id="firstNameDiv" name="firstName" readonly>
		                  		  </div>
		                  		  
		                  		  <div class="form-group">
			                         <label>Middle Name</label>
			                         <input class="form-control" value="${p.middleName}" id="middleNameDiv" name="middleName" readonly>
		                  		  </div>
		                  		  
		                  		  <div class="form-group">
			                         <label>Birthday</label>
			                        
<!-- 		                         <div class="form-group"> -->
<!-- 								     <div class="col-xs-2"> -->
<!-- 								       <label for="ex1">Month</label> -->
<!-- 								       <input class="form-control" id="month" maxlength="2"> -->
									 
<!-- 								     </div> -->
<!-- 								     <div class="col-xs-2"> -->
<!-- 								       <label for="ex2">Day</label> -->
<!-- 								       <input class="form-control" id="day" maxlength="2"> -->
									    
<!-- 								     </div> -->
<!-- 								     <div class="col-xs-3"> -->
<!-- 								       <label for="ex3">Year</label> -->
<!-- 								       <input class="form-control" id="year" maxlength="4"> -->
									 
<!-- 								     </div> -->
								   
<!-- 								   </div> -->
								   
<!-- 								    <div class="input-group date"> -->
<!-- 									    <input type="text" class="form-control" value="12-02-2012"> -->
<!-- 									    <div class="input-group-addon"> -->
<!-- 									        <span class="glyphicon glyphicon-th"></span> -->
<!-- 									    </div> -->
<!-- 									</div> -->

									
						            <div class="input-group date form_date col-md-7" data-date="" data-date-format="yyyy mm dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						                    <input class="form-control" size="16" type="text" value="${p.birthday}" readonly>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						                </div>
										<input type="hidden" id="dtp_input2" value="${p.birthday}" name="birthday" /><br/>
						            </div>
			                        
		                  		  
		                  		  
		                  		   <div class="form-group">
									  <label>Address</label>
									  <textarea class="form-control requiredField" rows="2" id="addressDiv" name="address" readonly>${p.address}</textarea>
									</div>
		                  		  
		                        
		                        </c:forEach>
		                        
		                        
				                
		                        </div>
		                        
	                        </div>
                      </div>
                    </div>
                    
                    <div align="right">
		               <button type="button" class="btn btn-info" id="editButton" onClick="cmdEdit()"><i class="fa fa-edit" aria-hidden="true"></i> Edit</button>
		               <button type="button" class="btn btn-primary" id="saveButton" onClick="cmdSave()" disabled> <i class="fa fa-floppy-o" aria-hidden="true" ></i> Save</button>
		               <button type="button" class="btn btn-danger" id="deleteButton" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>
		               
	                </div>
               </div>
     
                
                </div>
                
                
                </form>
			</div>
			<!-- /.container-fluid -->
			
			</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    
	<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	
	<script src="toastr/toastr.js"></script>
	
	<script type="text/javascript">
	
		$('.form_date').datetimepicker({
	        language:  'en',
	        weekStart: 1,
	        todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
		
		var id =  getParam('id');
	    
	    function getParam(name) {
	        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
	        var regexS = "[\\?&]" + name + "=([^&#]*)";
	        var regex = new RegExp(regexS);
	        var results = regex.exec(window.location.href);
	        if (results == null) {
	            return "";
	        } else {
	            return results[1];
	        }
	    }
		
		// =========================
	    // Task Entry Validation
	    // =========================
	    function taskEntryValidation() {
	        var isValid = true;
	        $('.requiredField').each(function () {
	            if ($.trim($(this).val()) == '') {
	                isValid = false;
	                $(this).css({
	                    "border": "1px solid red"
	                });
	            } else {
	                $(this).css({
	                    "border": "",
	                });
	            }
	        });

	        return isValid;
	    }
		
		function cmdEdit(){
	    	$('#saveButton').prop('disabled', false);
	    	$('#editButton').prop('disabled', true);
	    	$('#deleteButton').prop('disabled', true);
	    	$('#jobTitleDiv').prop('readonly', false);
	    	$('#contactNoDiv').prop('readonly', false);
	    	$('#emailDiv').prop('readonly', false);
	    	$('#lastNameDiv').prop('readonly', false);
	    	$('#firstNameDiv').prop('readonly', false);
	    	$('#middleNameDiv').prop('readonly', false);
	    	$('#addressDiv').prop('readonly', false);
		}
		
		function cmdSave(){
			if (taskEntryValidation() == false) {
				toastr.error("Fill out form");
	    	}else{
	    		$('#saveButton').prop('disabled', true);
	        	toastr.success("Success");  
	        	setTimeout(function(){ document.empForm.submit(); }, 1000);
	    	}
		}
		
		function cmdDelete(){
	    	toastr.success("Success"); 
	    	setTimeout(function(){ window.location.href="DeleteEmployeeServlet?id="+id; }, 1000);
	    	
	    }
	</script>
    
</body>
</html>