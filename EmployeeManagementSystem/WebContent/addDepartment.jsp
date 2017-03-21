<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Department</title>

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
                                <i class="fa fa-building-o"></i> Add Department
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <form action="addDept.jsp" method="get" id="dept" name="dept">
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
		                         <input class="form-control requiredField" type="number" id="deptNoId" name="deptNo" required>
		                         </div></div>
		                        
	                  		  </div>
	                  		  
	                  		  <div class="form-group">
	                  		  	<div class="row">
	                  		  	<div class="col-xs-5">
		                         <label>Department Name</label>
		                         <input class="form-control requiredField" name="deptName" required>
		                         </div></div>
	                  		  </div>
	                  		 
                      </div>
                     
                    </div>
                     
               </div>
               
               <div align="right">
<!-- 	               <button class="btn btn-primary pull-right" type="submit" form="dept" value="Add"> <i class="fa fa-plus" aria-hidden="true"></i> Add</button> -->
                	<button class="btn btn-primary pull-right" type="button" onClick="submitForm()"> <i class="fa fa-plus" aria-hidden="true"></i> Add</button>
                	
                </div>
                
                
                
                </div>
                </form>
                
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
    
    var deptNoList =
	[
	<c:forEach items="${getAllDepartment}" var="p" varStatus="status"> 
	'${p.deptNo}'<c:if test="${!status.last}">,    
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
		
		if(deptNoList.length == 0){
			ret = 1;
		}else{
			for(i=0;i<deptNoList.length;i++){
				if(n == deptNoList[i]){
					ret = 0; break;
					console.log("deptNo"+deptNoList[i]);
				}else{
					ret = 1;
				}
			}
		}
		
		return ret;
	}
	
    function submitForm(){
    	//for(i=0;i<deptNoList.length;i++){
    		//console.log(deptNoList[i]);	
    	//}
    	
    	var deptNo = document.getElementById("deptNoId").value;
		console.log(deptNo);    	
		
		if (taskEntryValidation() == false) {
			toastr.error("Fill out form");
		}else{
			if(alreadyExist(deptNo) == 0){
	    		toastr.error("Department no. already exists");  
	    	}else if(alreadyExist(deptNo) == 1){
	    	
	    	toastr.success("Success");  
	    	setTimeout(function(){ document.dept.submit(); }, 1000);
	    	}
		}
    }
    
    function getLastToast(){
    	setTimeout(function(){ toastr.success('Success');  }, 2000);
    	//toastr.success('Great Success');
    	
    }		
    
    </script>

</body>
</html>