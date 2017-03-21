<%@page import="dao.DataAccess"%>
<%@page import="model.Department"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String d = request.getParameter("deptNo");
		int deptNo =  Integer.parseInt(d);
		String deptName = request.getParameter("deptName");
		
		System.out.println(d);
		DataAccess da = new DataAccess();
		da.edit(deptNo,deptName);
		
		response.sendRedirect("ViewDepartmentServlet?id="+deptNo);
	%>
	
	
        
</body>
</html>