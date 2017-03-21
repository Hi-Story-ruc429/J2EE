<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Employee</title>

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
		
		<form action = "AddEmployeeManager" method = "get" id = "emp" name="emp">
		
		<div id="page-wrapper">

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
                                <i class="fa fa-user-plus"></i> Add Employee
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
                      
                      		
							
	                          <div class="form-group">
	                          	 <div class="row">
	                          	 <div class="col-xs-7">
		                         <label>ID No.</label>
		                         <input class="form-control requiredField" name="idNo" id="empNo">
		                         </div></div>
		                        
	                  		  </div>
	                  		  
	                  		  <div class="form-group">
	                  		  	<div class="row">
	                  		  	<div class="col-xs-9">
		                         <label>Job Title</label>
		                         <input class="form-control requiredField" name="jobTitle">
		                         </div></div>
	                  		  </div>
	                  		  
	                  		  <div class="form-group">
		                         <label>Department</label>
		                         <select class="form-control" id="department" name="deptNo">
			                         <c:forEach items="${getAllDepartment}" var="e">
			                        	 <option value="${e.deptNo}">${e.deptName}</option>
			                         </c:forEach>
							  </select>
	                  		  </div>
	                  		  
	                       
                      
                      </div>
                      
                      </div>
                    </div>
               </div>
               
               
               <div class="panel panel-default">
				  <div class="panel-heading">Contact Info</div>
				  <div class="panel-body">
			
	                  <div class="form-group">
	                  	   <div class="col-xs-7">
		                   <label>Contact No.</label>
		                   <input class="form-control requiredField" name="contactNo">
		                   </div>
	           		  </div>
	           		  <br/><br/><br/><br/>
	           		  <div class="form-group">
	                  	   <div class="col-xs-6">
		                   <label>Email</label>
		                   <input class="form-control requiredField" name="email">
		                   </div>
	           		  </div>
				
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
	                      
								
								
		                          <div class="form-group">
			                         <label>Last Name</label>
			                         <input class="form-control requiredField" name="lastName">
		                  		  </div>
		                  		  
		                  		  <div class="form-group">
			                         <label>First Name</label>
			                         <input class="form-control requiredField" name="firstName">
		                  		  </div>
		                  		  
		                  		  <div class="form-group">
			                         <label>Middle Name</label>
			                         <input class="form-control" name="middleName">
		                  		  </div>
		                  		  
		                  		  <div class="form-group">
			                         <label>Birthday</label>
			                        
		                         <div class="input-group date form_date col-md-7" data-date="" data-date-format="yyyy mm dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						                    <input class="form-control requiredField" size="16" type="text" readonly>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						                </div>
										<input type="hidden" id="dtp_input2" name="birthday" /><br/>
						            </div>
			                        
		                  		  </div>
		                  		  <br/><br/><br/>
		                  		   <div class="form-group">
									  <label>Address</label>
									  <textarea class="form-control requiredField" rows="2" id="comment" name="address"></textarea>
									</div>
		                  		  
		               
		                        
	                        </div>
	                        
	                        
                      </div>
                    </div>
                    <button type="button" class="btn btn-primary pull-right" onClick="addEmployee()"> <i class="fa fa-plus" aria-hidden="true"></i> Add</button>
               </div>
                
                </div>
                
			</div>
			<!-- /.container-fluid -->
			
		
			</form>
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
		
		var empIdList =
			[
			<c:forEach items="${getEmployee}" var="p" varStatus="status"> 
			'${p.empId}'<c:if test="${!status.last}">,    
			</c:if>  
			</c:forEach> 
			];
		
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
		
	    function alreadyExist(n){
			var ret = 0;
			
			if(empIdList.length == 0){
				ret = 1;
			}else{
				for(i=0;i<empIdList.length;i++){
					if(n == empIdList[i]){
						ret = 0; break;
						console.log("deptNo"+empIdList[i]);
					}else{
						ret = 1;
					}
				}
			}
			
			return ret;
		}
		
		function addEmployee(){
			
			var empNo = document.getElementById("empNo").value;
			
			if (taskEntryValidation() == false) {
				toastr.error("Fill out form");
			}else{
				if(alreadyExist(empNo) == 0){
					toastr.error("ID no. already exists");  
				}else if(alreadyExist(empNo) == 1){
					toastr.success("Success");  
			    	setTimeout(function(){ document.emp.submit(); }, 1000);
				}
			}
		
		}
		
	</script>

</body>
</html>