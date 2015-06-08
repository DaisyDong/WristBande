<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'updateTerminal.jsp' starting page</title>
  </head>
  <%
  	String terminalId = "",appId  = "";
  	userSelectClass message = new userSelectClass();
  	ResultSet rs = message.selectTerminalData(appId);
   %>
  <body>
    <h1 align="center">修改手环信息</h1>
  	<form action="toolsPackage/userUpdateServlet" method="post">
  	<input type="hidden" name="userpagename" value="updateTerminal">
  	<input type="hidden" name="terminaId" value="<%=terminalId %>">
  	<input type="hidden" name="appId" value="<%=appId %>">
  	<table align="center">
  		<% while(rs.next()){ %>
  		<table align="center">
  			<tr><td>手环ID</td><td><label><%=rs.getString(1) %></label></td></tr>
  			<tr><td>手环是否在线</td><td><label><%=rs.getString(2) %></label></td></tr>
  			<tr><td>是否处于私密时间</td><td><label><%=rs.getString(3) %></label></td></tr>
  			<tr><td>用户名</td><td><input type="text" name="username" value="<%=rs.getString(4) %>"></td></tr>
  			<tr><td>昵称</td><td><input type="text" name="nickname" value="<%=rs.getString(5) %>"></td></tr>
  			<tr><td>生日</td><td><input type="text" name="birthday" value="<%=rs.getString(6) %>"></td></tr>
  			<tr>
  			<% String sex = rs.getString(8);
  			   if(sex=="f"){
  			 %>
  			 <td>性别</td><td><input type="radio" name="sex" value="m">男<input type="radio" name="sex" value="f" checked="checked">女</td>
  			 <% }else{ %>
  			 <td>性别</td><td><input type="radio" name="sex" value="m" checked="checked">男<input type="radio" name="sex" value="f">女</td>
  			 <% } %>
  			</tr>
  		</table>
  		<% } %>
  	</table>
  	<table align="center"><tr><td><input type="submit" value="确定"></td><td><input type="button" value="取消" onclick="window.close()"></td></tr></table>
  	</form>
  </body>
</html>
