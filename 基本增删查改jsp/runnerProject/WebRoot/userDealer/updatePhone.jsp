<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>   
    <title>My JSP 'updatePhone.jsp' starting page</title>
  </head>
  	<%
  		String terminalId = "",appId  = "";
  		userSelectClass message = new userSelectClass();
  		ResultSet rs = message.selectTerminalPhoneRecord(terminalId);
  	 %>
  <body>
    <h1 align="center">修改电话簿</h1>
  	
  		<table align="center">
  		<tr>
  		<th>电话ID</th>
  		<th>姓名</th>
  		<th>电话号码</th>
  		<th>电话类型</th>
  		<th></th>
  		</tr>
  		<% while(rs.next()){ %>
  		<form action="toolsPackage/userUpdateServlet" method="post">
  		<input type="hidden" name="userpagename" value="updatePhone">
  		<input type="hidden" name="terminaId" value="<%=terminalId %>">
  		<input type="hidden" name="appId" value="<%=appId %>">
  			<tr>
  			<td><label><%=rs.getString(1) %></label>
  			<input type="hidden" name="phoneId" value="<%=rs.getString(1) %>"></td>
  			<td><input type="text" name="username" value="<%=rs.getString(2) %>"></td>
  			<td><input type="text" name="phoneNumber" value="<%=rs.getString(3) %>"></td>
  			<td><input name="phonetype" value="<%=rs.getString(4) %>"></td>
  			<td><input type="submit" value="确定"></td>
  			</tr>
  			</form>
  		<% } %>
  		</table>
  	
   </body>
  </html>