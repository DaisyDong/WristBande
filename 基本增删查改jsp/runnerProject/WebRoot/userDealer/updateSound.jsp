<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'updateSound.jsp' starting page</title>
  </head>
  <%
  	String terminalId = "",appId  = "";
  	userSelectClass message = new userSelectClass();
  	ResultSet rs = message.selectTerminalReward(terminalId);
   %>
  <body>
    <h1 align="center">修改声音文件信息</h1>
  	
  	<table align="center">
  	<tr>
  	<th>声音文件地址</th>
  	<th>声音文件生成时间</th>
  	<th>主题</th>
  	<th>声音记录地点</th>
  	<th>时间长短</th>
  	<th></th>
  	</tr>
  		<% while(rs.next()){ %>
  		<form action="toolsPackage/userUpdateServlet" method="post">
  		<input type="hidden" name="userpagename" value="updateSound">
  		<input type="hidden" name="terminaId" value="<%=terminalId %>">
  		<input type="hidden" name="appId" value="<%=appId %>">
  		<tr><label><%=rs.getString(1) %></label></td>
  		<td><label><%=rs.getString(2) %></label></td>
  		<td><input type="text" name="theme" value="<%=rs.getString(3) %>"></td>
  		<td><label><%=rs.getString(4) %></label></td>
  		<td><label><%=rs.getString(5) %></label><input type="hidden" name="soundId" value="<%=rs.getString(6) %>"></td>
  		<td><input type="submit" value="确定"></td>
  		</tr>
  		</form>
  		<% } %>
  	</table>
  	
  	
  </body>
</html>
