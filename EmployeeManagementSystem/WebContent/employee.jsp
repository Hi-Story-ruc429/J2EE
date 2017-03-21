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
                            Employee List
                        </h3>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-user"></i> Employee
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="panel-group">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                <form>
                                    <div class="input-group">
                                        <span class="input-group-addon"> <i class="fa fa-search" aria-hidden="true"></i> </span>
                                        <input id="msg" type="text" class="form-control" name="msg" onkeyup="search()" placeholder="Search">
                                    </div>
                                </form>
                                
                            </div>
                            <div class="col-md-6">
                                <a href="AddEmployeeServlet"><button class="btn btn-primary pull-right"> <i class="fa fa-user-plus" aria-hidden="true"></i> Add</button></a>
                            </div>
                        </div>    
                      </div>
                      <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
		                        <div class="table-responsive">
		                            <table class="table table-hover" id="empTable"> 
		                                <thead>
		                                    <tr>
		                                    	<th>View</th>
		                                        <th>Name</th>
		                                        <th>Department</th>
		                                        <th>Job Title</th>
		                                        <th>Other</th>
		                                    </tr>
		                                </thead>
		                                <tbody>
		                                      <c:forEach items="${Post}" var="p">
											  <tr>
											  	<td><a href='ViewEmployeeServlet?id=${p.empId}'> <button type="button" class="btn btn-primary">View</button></a></td>
											    <td>${p.firstName} ${p.lastName}</td>
											    <td>${p.deptNo}</td> 
											    <td>${p.jobTitle}</td>
											    <td>${p.contactNo}</td>
											  </tr>
										  </c:forEach>
		                                </tbody>
		                            </table>
		                        </div>
                    		</div>
                </div>
                <!-- /.row -->

                      </div>
                    </div>
                </div>

                
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    
    function search(){
    	var input, filter, table, tr, td, i;
	 	  input = document.getElementById("msg");
	 	  filter = input.value.toUpperCase();
	 	  table = document.getElementById("empTable");
	 	  tr = table.getElementsByTagName("tr");
	 	  
	 	 for (i = 0; i < tr.length; i++) {
	 	    td = tr[i].getElementsByTagName("td")[1];
	 	    if (td) {
	 	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	 	        tr[i].style.display = "";
	 	      } else {
	 	        tr[i].style.display = "none";
	 	      }
	 	    } 
	 	  }
    }
    </script>

</body>

</html>
