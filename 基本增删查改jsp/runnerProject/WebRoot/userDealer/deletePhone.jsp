<%@page import="toolsPackage.userDeleteClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'deletePhone.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("terminalId"); 
  	String phoneId,phoneUser,phoneNumber,phonetype;
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalPhoneRecord(terminalId);
  	userDeleteClass userdelete = new userDeleteClass();
   %>
  <body>
    <h1 align="center">删除电话</h1>
    <table align="center">
    	<tr>
    		<th>电话 ID</th><th>电话使用者</th><th>电话号</th><th>电话类型</th><th>删除</th>
    	</tr>
    	<% 
    		while(rs.next()){
    			phoneId = rs.getString(1);
    			phoneUser = rs.getString(2);
    			phoneNumber = rs.getString(3);
    			phonetype = rs.getString(4);
    	 %>
    	 <tr>
    	 <td><%=phoneId %></td>
    	 <td><%=phoneUser %></td>
    	 <td><%=phoneNumber %></td>
    	 <td><%=phonetype %></td>
    	 <td><button onclick="<%=userdelete.deleteTerminalPhone(terminalId, phoneId) %>">删除</button></td>
    	 </tr>
    	 <% } %>
    </table>
  </body>
</html>
