<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'updateTerminalPassword.jsp' starting page</title>
  </head>
  <%
  	String terminalId = "",appId  = "";
  	userSelectClass message = new userSelectClass();
  	ResultSet rs = message.selectTerminalReward(terminalId);
   %>
  <body>
    <h1 align="center">修改手环密码</h1>
  	<form action="toolsPackage/userUpdateServlet" method="post">
  	<input type="hidden" name="userpagename" value="updateTerminalPassword">
  	<input type="hidden" name="terminaId" value="<%=terminalId %>">
  	<input type="hidden" name="appId" value="<%=appId %>">
  	<table align="center">
  		<tr></td>输入新密码</td><td><input name="password" type="password"></td></tr>
  		<tr><td>确认密码</td><td><input name="confirmpassword" type="password"></td></tr>
  	</table>
  	<table align="center"><tr><td><input type="submit" value="确定"></td><td><input type="button" value="取消" onclick="window.close()"></td></tr></table>
  	</form>
  </body>
</html>
