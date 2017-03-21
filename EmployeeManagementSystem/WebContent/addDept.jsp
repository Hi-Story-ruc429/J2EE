<%@page import="dao.DataAccess"%>
<%@page import="model.Department"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="toastr/toastr.css" rel="stylesheet"/>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<%
		int deptNo =  Integer.parseInt(request.getParameter("deptNo"));
		String deptName = request.getParameter("deptName");
		
		Department d = new Department(deptNo,deptName);
		DataAccess da = new DataAccess();
		
		da.addDept(d);
	%>
	
	<script type="text/javascript">
		toastr.success('Have fun storming the castle!', 'Miracle Max Says');
		setTimeout(function(){<% response.sendRedirect("DepartmentServlet"); %>  }, 5000);
	</script>
	
	
	<script type="text/javascript">
			function getLastToast(){
		    	toastr.success('Success!');
		    }		
	</script>
	
	<!-- jQuery -->
    <script src="js/jquery.js"></script>
    
	<script src="toastr/toastr.js"></script>
	
	

</body>
</html>