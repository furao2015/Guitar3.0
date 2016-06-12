<%@ page import="java.io.*,java.util.*,java.sql.*,javax.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <meta charset="UTF-8">
    <title>新增吉他</title>
</head>
<body>
<form action="addguitar.jsp" method="post" id="myform" name="myform" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>价格：</th>
                                <td>
                                    <input class="common-text required" id="title" name="price" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                 <th><i class="require-red">*</i>ID：</th>
                                <td><input class="common-text" name="ID" size="50"  type="text"></td>
                            </tr>
                            <tr>
                               <th><i class="require-red">*</i>生产者：</th>
                                <td><input class="common-text" name="bulider" size="50"  type="text"></td>
                            </tr>
                            <tr>
                                 <th><i class="require-red">*</i>大小：</th>
                                <td><input name="model" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></td>
                            </tr>
                            <tr>
                                 <th><i class="require-red">*</i>类型：</th>
                                <td><input name="type" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></td>
                            </tr>
                            <tr>
                                 <th><i class="require-red">*</i>木材：</th>
                                <td><input name="wood" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></td>
                            </tr>
                            <tr>
                                 <th><i class="require-red">*</i>库存：</th>
                                <td><input name="number" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    
                                </td>
                            </tr>
                        </tbody></table>
                </form>
</body>
</html>