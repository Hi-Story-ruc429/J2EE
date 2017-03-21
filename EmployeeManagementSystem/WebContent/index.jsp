<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home</title>

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
                        <h1 class="page-header">
                            Dashboard <small>Statistics Overview</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-users fa-5x" ></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">26</div>
                                        <div>Employees</div>
                                    </div>
                                </div>
                            </div>
                           			
                                <div class="panel-footer">
                                     <a href="EmployeeServlet"> <span class="pull-left">View Details</span> </a>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                
                                </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-tasks fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">12</div>
                                        <div>Departments</div>
                                    </div>
                                </div>
                            </div>
                            
                                <div class="panel-footer">
                                    <a href="DepartmentServlet"><span class="pull-left">View Details</span> </a>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                           
                        </div>
                    </div>
<!--                     <div class="col-lg-3 col-md-6"> -->
<!--                         <div class="panel panel-yellow"> -->
<!--                             <div class="panel-heading"> -->
<!--                                 <div class="row"> -->
<!--                                     <div class="col-xs-3"> -->
<!--                                         <i class="fa fa-address-card fa-5x"></i> -->
<!--                                     </div> -->
<!--                                     <div class="col-xs-9 text-right"> -->
<!--                                         <div class="huge">124</div> -->
<!--                                         <div>Job Title</div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <a href="#"> -->
<!--                                 <div class="panel-footer"> -->
<!--                                     <span class="pull-left">View Details</span> -->
<!--                                     <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!--                                     <div class="clearfix"></div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->
<!--                     </div> -->
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-user-circle fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">13</div>
                                        <div>Users</div>
                                    </div>
                                </div>
                            </div>
                            
                                <div class="panel-footer">
                                    <a href="UserServlet"><span class="pull-left">View Details</span> </a>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                           
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                
              

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
    
    <script src="toastr/toastr.js"></script>
    
    <script type="text/javascript">
    
    function getLastToast(){
    	toastr.success('Great Success');
    	
    }		
	</script>

</body>

</html>
