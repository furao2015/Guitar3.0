<%@ page import="java.sql.*,javax.sql.*,a.Dbutil" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%   String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
  </head>
  <body>
  <%  request.setCharacterEncoding("utf-8");
  Connection conn=Dbutil.getConnection();
	//创建查询
	
	PreparedStatement stmt=conn.prepareStatement("delete from guitar where ID=4");
	
	
	ResultSet rs= stmt.executeQuery();
	
	stmt.close();
	conn.close();
	response.sendRedirect("result.jsp");   
  %> 
  </body>
</html>