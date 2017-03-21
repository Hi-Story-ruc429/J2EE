<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Department</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
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

            <div class="container-fluid">
            <c:forEach items="${getDepartMent}" var="p">
            
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
		
				<!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">
                            Department Detail
                        </h3>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-building"></i> <a href="DepartmentServlet">Department</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-building-o"></i> View Department
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <form action="editDept.jsp" method="post" id="dept" name="dept">
                <div class="col-md-12">
                
                <div class="panel-group">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                       Department Info
                      </div>
                      
                      
                      <div class="panel-body">
                      	 
                    	
							
	                          <div class="form-group">
	                          	 <div class="row">
	                          	 <div class="col-xs-3">
		                         <label>Department No.</label>
		                         <input class="form-control " value="${p.deptNo}" id="deptNoDiv" name="deptNo" readonly>
		                         </div></div>
		                        
	                  		  </div>
	                  		  
	                  		  <div class="form-group">
	                  		  	<div class="row">
	                  		  	<div class="col-xs-5">
		                         <label>Department Name</label>
		                         <input class="form-control requiredField" value="${p.deptName}" id="deptNameDiv" name="deptName" readonly>
		                         </div></div>
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
                </form>
                
<!--                 <form id="myForm" action="editDept.jsp"> -->
<!-- 				  Dept No: <input type="text" name="deptNo"><br> -->
<!-- 				  Dept Name: <input type="text" name="deptName"><br><br> -->
<!-- 				  <input type="submit" value="Submit form"> -->
<!-- 				</form> -->
                </c:forEach>
			</div>
			<!-- /.container-fluid -->
			
			</div>
			
		</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <script src="toastr/toastr.js"></script>
    
    <script type="text/javascript">
    
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
    	$('#deptNameDiv').prop('readonly', false);
    	$('#deleteButton').prop('disabled', true);
    }
    
    function cmdSave(){
    	
    	if (taskEntryValidation() == false) {
			toastr.error("Fill out form");
    	}else{
    		$('#saveButton').prop('disabled', true);
        	toastr.success("Success");  
        	setTimeout(function(){ document.dept.submit(); }, 1000);
    	}
    }
    
    function cmdDelete(){
    	toastr.success("Success"); 
    	setTimeout(function(){ window.location.href="DeleteServlet?id="+id; }, 1000);
    	
    }
    
    </script>

</body>
</html>