<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'updateIndustryPassword.jsp' starting page</title>
  </head>
  <%
  	String groupLeader = "", groupId = "", pagetype="updateIndustryPassword";
   %>
  <body>
    <h1 align="center">密码修改</h1>
    <form action="toolsPackage/industryuserUpdateServlet" method="post">
    <input type="hidden" name="pagetype" value="<%=pagetype %>">
    <input type="hidden" name="groupId" value="<%=groupId %>">
    <input type="hidden" name="groupLeader" value="<%=groupLeader %>">
    	<table>
    		<tr><td>密码</td><td><input type="password" name="password"></td></tr>
    		<tr><td>确认密码</td><td><input type="password" name="repassword"></td></tr>
    	</table>
    	<table>
    		<tr><td><input type="submit" value="修改"></td>
    		<td><input type="button" value="取消" onclick="window.close()"></td></tr>
    	</table>
    </form>
  </body>
</html>
