<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'insert_Bound_Terminal.jsp' starting page</title>
  </head>
  	<%
  		String appId="";
  	 %>
  <body>
  	<h1 align="center">绑定手环</h1>
    <form action="toolsPackage/userInsertServlet" method="post">
    	<input type="hidden" name="appId" value="<%=appId %>">
    	<input type="hidden" name="pageType" value="user_Bound_Terminal">
    	<table align="center">
    		<tr><td>输入要绑定手环的ID</td><td><input type="text" name="terminalId"></td></tr>
    		<tr><td>输入手环密码</td><td><input type="password" name="password"></td></tr>
    	</table>
    	<table align="center">
    		<tr><td><input type="submit" value="提交"></td>
    		<td><input type="button" value="取消" onclick="window.close()"></td></tr>
    	</table>
    </form>
  </body>
</html>
