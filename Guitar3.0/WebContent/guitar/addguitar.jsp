<%@ page import="java.sql.*,javax.sql.*" language="java" contentType="text/html; charset=UTF-8"
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
	
	PreparedStatement stmt=conn.prepareStatement("insert into guitar(price,ID,builder,model,type,wood,number) values('"+request.getParameter("price")+"','"+request.getParameter("ID")+"','"+request.getParameter("builder")+"','"+request.getParameter("model")+"','"+request.getParameter("type")+"','"+request.getParameter("wood")+"','"+request.getParameter("number")+"')");
	
	
	ResultSet rs= stmt.executeQuery();
	
	stmt.close();
	conn.close();
	response.sendRedirect("result.jsp");   
  %> 
  </body>
</html>